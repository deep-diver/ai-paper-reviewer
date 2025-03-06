---
title: "KodCode: A Diverse, Challenging, and Verifiable Synthetic Dataset for Coding"
summary: "KODCODE: A new synthetic coding dataset with verified solutions and tests, enabling state-of-the-art performance for coding LLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Deep Learning", "🏢 Microsoft GenAI",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02951 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhangchen Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02951" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02951" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02951/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models for coding are powerful, but require high-quality, verifiable training data. Current code resources fail to cover a broad range of coding tasks, from simple to algorithmic, and often lack verifiable correctness, such as unit tests. This presents a challenge for training robust and reliable coding models. Datasets are either limited in scale, lack diversity and complexity, or don't offer reliable response verification, hindering the development of truly capable coding assistants. 



To address this, this paper introduces KODCODE, a synthetic dataset of 447K coding questions with verified solutions and unit tests. KODCODE uses a three-step pipeline: question synthesis from 12 sources, solution and test generation with self-verification, and post-training data synthesis to diversify questions. It evaluates its effectiveness on coding benchmarks, demonstrating state-of-the-art performance surpassing models such as Qwen2.5-Coder and DeepSeek-R1, showing its potential to advance SFT and RL post-training pipelines.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} KODCODE is a diverse and challenging synthetic dataset for coding, comprising 447K verified question-solution-test triplets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The dataset is systematically validated via a self-verification procedure, ensuring high-quality training data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Models fine-tuned on KODCODE achieve state-of-the-art performance on coding benchmarks, surpassing existing models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This work introduces a **large-scale, diverse, and verifiable synthetic dataset** that boosts coding LLM performance, offering a **new benchmark** and directions for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02951/x5.png)

> 🔼 This figure illustrates the three-step pipeline used to create the KodCode-V1 dataset.  First, coding questions are synthesized using diverse methods. Second, solutions and corresponding unit tests are generated, undergoing a self-verification process to ensure correctness.  Finally, post-training data synthesis expands the dataset by rewriting questions and creating chain-of-thought responses via a reasoning model. The resulting dataset contains 447,000 question-solution-test triplets, with the distribution of each subset shown on the right side of the figure.
> <details>
> <summary>read the caption</summary>
> Figure 1: This figure demonstrates the pipeline for generating KodCode-V1. Our approach follows a three-step pipeline: Coding Question Synthesis, Solution & Test Generation, and Post-training Data Synthesis. The final KodCode-V1 dataset contains 447K verified question-solution-test triplets. The distribution of each subset is demonstrated on the right.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.22.22">
<tr class="ltx_tr" id="S1.T1.22.22.23">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T1.22.22.23.1">Dataset Name</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.22.22.23.2">#Problems</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.22.22.23.3">Diversity</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.22.22.23.4">Difficulty</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T1.22.22.23.5">
<span class="ltx_text" id="S1.T1.22.22.23.5.1"></span> <span class="ltx_text" id="S1.T1.22.22.23.5.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.22.22.23.5.2.1">
<span class="ltx_tr" id="S1.T1.22.22.23.5.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.22.22.23.5.2.1.1.1">Unit</span></span>
<span class="ltx_tr" id="S1.T1.22.22.23.5.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.22.22.23.5.2.1.2.1">Test</span></span>
</span></span><span class="ltx_text" id="S1.T1.22.22.23.5.3"></span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S1.T1.22.22.23.6">
<span class="ltx_text" id="S1.T1.22.22.23.6.1"></span> <span class="ltx_text" id="S1.T1.22.22.23.6.2">
<span class="ltx_tabular ltx_align_middle" id="S1.T1.22.22.23.6.2.1">
<span class="ltx_tr" id="S1.T1.22.22.23.6.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.22.22.23.6.2.1.1.1">Verified</span></span>
<span class="ltx_tr" id="S1.T1.22.22.23.6.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.22.22.23.6.2.1.2.1">Solution</span></span>
</span></span><span class="ltx_text" id="S1.T1.22.22.23.6.3"></span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.2.2.2.3">APPS <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Hendrycks et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib12" title=""><span class="ltx_text" style="color:#000000;">2021</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.4">10K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.5">High</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.2.2.2.6">High</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.1.1.1.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.1.1.1.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.1.1.1.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.1.1.1.1.1.1.m1.1"><semantics id="S1.T1.1.1.1.1.1.1.m1.1a"><mo id="S1.T1.1.1.1.1.1.1.m1.1.1" xref="S1.T1.1.1.1.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.1.1.1.1.1.1.m1.1b"><ci id="S1.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S1.T1.1.1.1.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.1.1.1.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.1.1.1.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.2.2.2.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.2.2.2.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.2.2.2.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.2.2.2.2.1.1.m1.1"><semantics id="S1.T1.2.2.2.2.1.1.m1.1a"><mo id="S1.T1.2.2.2.2.1.1.m1.1.1" xref="S1.T1.2.2.2.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.2.2.2.2.1.1.m1.1b"><ci id="S1.T1.2.2.2.2.1.1.m1.1.1.cmml" xref="S1.T1.2.2.2.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.2.2.2.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.2.2.2.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.4.4.4">
<td class="ltx_td ltx_align_left" id="S1.T1.4.4.4.3">CodeContests <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Li et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib28" title=""><span class="ltx_text" style="color:#000000;">2022</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.4.4.4">13K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.4.4.5">High</td>
<td class="ltx_td ltx_align_center" id="S1.T1.4.4.4.6">High</td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.3.3.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.3.3.3.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.3.3.3.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.3.3.3.1.1.1.m1.1"><semantics id="S1.T1.3.3.3.1.1.1.m1.1a"><mo id="S1.T1.3.3.3.1.1.1.m1.1.1" xref="S1.T1.3.3.3.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.3.3.1.1.1.m1.1b"><ci id="S1.T1.3.3.3.1.1.1.m1.1.1.cmml" xref="S1.T1.3.3.3.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.3.3.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.3.3.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.4.4.4.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.4.4.4.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.4.4.4.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.4.4.4.2.1.1.m1.1"><semantics id="S1.T1.4.4.4.2.1.1.m1.1a"><mo id="S1.T1.4.4.4.2.1.1.m1.1.1" xref="S1.T1.4.4.4.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.4.4.4.2.1.1.m1.1b"><ci id="S1.T1.4.4.4.2.1.1.m1.1.1.cmml" xref="S1.T1.4.4.4.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.4.4.4.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.4.4.4.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.6.6.6">
<td class="ltx_td ltx_align_left" id="S1.T1.6.6.6.3">TACO <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Li et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib27" title=""><span class="ltx_text" style="color:#000000;">2023</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.6.4">26K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.6.5">High</td>
<td class="ltx_td ltx_align_center" id="S1.T1.6.6.6.6">High</td>
<td class="ltx_td ltx_align_center" id="S1.T1.5.5.5.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.5.5.5.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.5.5.5.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.5.5.5.1.1.1.m1.1"><semantics id="S1.T1.5.5.5.1.1.1.m1.1a"><mo id="S1.T1.5.5.5.1.1.1.m1.1.1" xref="S1.T1.5.5.5.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.5.5.5.1.1.1.m1.1b"><ci id="S1.T1.5.5.5.1.1.1.m1.1.1.cmml" xref="S1.T1.5.5.5.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.5.5.5.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.5.5.5.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.6.6.6.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.6.6.6.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.6.6.6.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.6.6.6.2.1.1.m1.1"><semantics id="S1.T1.6.6.6.2.1.1.m1.1a"><mo id="S1.T1.6.6.6.2.1.1.m1.1.1" xref="S1.T1.6.6.6.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.6.6.6.2.1.1.m1.1b"><ci id="S1.T1.6.6.6.2.1.1.m1.1.1.cmml" xref="S1.T1.6.6.6.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.6.6.6.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.6.6.6.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S1.T1.8.8.8.3">Code Alpaca <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Chaudhary</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib2" title=""><span class="ltx_text" style="color:#000000;">2023</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.8.8.8.4">20K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.8.8.8.5">Low</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.8.8.8.6">Low</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.7.7.7.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.7.7.7.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.7.7.7.1.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.7.7.7.1.1.1.m1.1"><semantics id="S1.T1.7.7.7.1.1.1.m1.1a"><mo id="S1.T1.7.7.7.1.1.1.m1.1.1" xref="S1.T1.7.7.7.1.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.7.7.7.1.1.1.m1.1b"><compose id="S1.T1.7.7.7.1.1.1.m1.1.1.cmml" xref="S1.T1.7.7.7.1.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.7.7.7.1.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.7.7.7.1.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.8.8.8.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.8.8.8.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.8.8.8.2.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.8.8.8.2.1.1.m1.1"><semantics id="S1.T1.8.8.8.2.1.1.m1.1a"><mo id="S1.T1.8.8.8.2.1.1.m1.1.1" xref="S1.T1.8.8.8.2.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.8.8.8.2.1.1.m1.1b"><compose id="S1.T1.8.8.8.2.1.1.m1.1.1.cmml" xref="S1.T1.8.8.8.2.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.8.8.8.2.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.8.8.8.2.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S1.T1.10.10.10.3">SelfCodeAlign <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Wei et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib46" title=""><span class="ltx_text" style="color:#000000;">2024a</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.10.10.10.4">50K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.10.10.10.5">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.10.10.10.6">Low</td>
<td class="ltx_td ltx_align_center" id="S1.T1.9.9.9.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.9.9.9.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.9.9.9.1.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.9.9.9.1.1.1.m1.1"><semantics id="S1.T1.9.9.9.1.1.1.m1.1a"><mo id="S1.T1.9.9.9.1.1.1.m1.1.1" xref="S1.T1.9.9.9.1.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.9.9.9.1.1.1.m1.1b"><compose id="S1.T1.9.9.9.1.1.1.m1.1.1.cmml" xref="S1.T1.9.9.9.1.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.9.9.9.1.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.9.9.9.1.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.10.10.10.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.10.10.10.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.10.10.10.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.10.10.10.2.1.1.m1.1"><semantics id="S1.T1.10.10.10.2.1.1.m1.1a"><mo id="S1.T1.10.10.10.2.1.1.m1.1.1" xref="S1.T1.10.10.10.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.10.10.10.2.1.1.m1.1b"><ci id="S1.T1.10.10.10.2.1.1.m1.1.1.cmml" xref="S1.T1.10.10.10.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.10.10.10.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.10.10.10.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.12.12.12">
<td class="ltx_td ltx_align_left" id="S1.T1.12.12.12.3">OSS Instruct <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Wei et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib48" title=""><span class="ltx_text" style="color:#000000;">2024c</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.4">75K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.5">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.12.12.12.6">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.11.11.11.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.11.11.11.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.11.11.11.1.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.11.11.11.1.1.1.m1.1"><semantics id="S1.T1.11.11.11.1.1.1.m1.1a"><mo id="S1.T1.11.11.11.1.1.1.m1.1.1" xref="S1.T1.11.11.11.1.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.11.11.11.1.1.1.m1.1b"><compose id="S1.T1.11.11.11.1.1.1.m1.1.1.cmml" xref="S1.T1.11.11.11.1.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.11.11.11.1.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.11.11.11.1.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.12.12.12.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.12.12.12.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.12.12.12.2.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.12.12.12.2.1.1.m1.1"><semantics id="S1.T1.12.12.12.2.1.1.m1.1a"><mo id="S1.T1.12.12.12.2.1.1.m1.1.1" xref="S1.T1.12.12.12.2.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.12.12.12.2.1.1.m1.1b"><compose id="S1.T1.12.12.12.2.1.1.m1.1.1.cmml" xref="S1.T1.12.12.12.2.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.12.12.12.2.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.12.12.12.2.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.14.14.14">
<td class="ltx_td ltx_align_left" id="S1.T1.14.14.14.3">AceCoder <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Zeng et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib57" title=""><span class="ltx_text" style="color:#000000;">2025</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.14.4">87K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.14.5">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.14.14.14.6">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.13.13.13.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.13.13.13.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.13.13.13.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.13.13.13.1.1.1.m1.1"><semantics id="S1.T1.13.13.13.1.1.1.m1.1a"><mo id="S1.T1.13.13.13.1.1.1.m1.1.1" xref="S1.T1.13.13.13.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.13.13.13.1.1.1.m1.1b"><ci id="S1.T1.13.13.13.1.1.1.m1.1.1.cmml" xref="S1.T1.13.13.13.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.13.13.13.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.13.13.13.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.14.14.14.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.14.14.14.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.14.14.14.2.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.14.14.14.2.1.1.m1.1"><semantics id="S1.T1.14.14.14.2.1.1.m1.1a"><mo id="S1.T1.14.14.14.2.1.1.m1.1.1" xref="S1.T1.14.14.14.2.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.14.14.14.2.1.1.m1.1b"><compose id="S1.T1.14.14.14.2.1.1.m1.1.1.cmml" xref="S1.T1.14.14.14.2.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.14.14.14.2.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.14.14.14.2.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.16.16.16">
<td class="ltx_td ltx_align_left" id="S1.T1.16.16.16.3">Evol Instruct <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Luo et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib31" title=""><span class="ltx_text" style="color:#000000;">2023</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.16.16.16.4">111K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.16.16.16.5">Low</td>
<td class="ltx_td ltx_align_center" id="S1.T1.16.16.16.6">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.15.15.15.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.15.15.15.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.15.15.15.1.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.15.15.15.1.1.1.m1.1"><semantics id="S1.T1.15.15.15.1.1.1.m1.1a"><mo id="S1.T1.15.15.15.1.1.1.m1.1.1" xref="S1.T1.15.15.15.1.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.15.15.15.1.1.1.m1.1b"><compose id="S1.T1.15.15.15.1.1.1.m1.1.1.cmml" xref="S1.T1.15.15.15.1.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.15.15.15.1.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.15.15.15.1.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.16.16.16.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.16.16.16.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.16.16.16.2.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.16.16.16.2.1.1.m1.1"><semantics id="S1.T1.16.16.16.2.1.1.m1.1a"><mo id="S1.T1.16.16.16.2.1.1.m1.1.1" xref="S1.T1.16.16.16.2.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.16.16.16.2.1.1.m1.1b"><compose id="S1.T1.16.16.16.2.1.1.m1.1.1.cmml" xref="S1.T1.16.16.16.2.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.16.16.16.2.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.16.16.16.2.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.18.18.18">
<td class="ltx_td ltx_align_left" id="S1.T1.18.18.18.3">Educational Instruct <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Huang et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib16" title=""><span class="ltx_text" style="color:#000000;">2024</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.4">118K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.5">Low</td>
<td class="ltx_td ltx_align_center" id="S1.T1.18.18.18.6">Low</td>
<td class="ltx_td ltx_align_center" id="S1.T1.17.17.17.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.17.17.17.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.17.17.17.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.17.17.17.1.1.1.m1.1"><semantics id="S1.T1.17.17.17.1.1.1.m1.1a"><mo id="S1.T1.17.17.17.1.1.1.m1.1.1" xref="S1.T1.17.17.17.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.17.17.17.1.1.1.m1.1b"><ci id="S1.T1.17.17.17.1.1.1.m1.1.1.cmml" xref="S1.T1.17.17.17.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.17.17.17.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.17.17.17.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.18.18.18.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.18.18.18.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.18.18.18.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.18.18.18.2.1.1.m1.1"><semantics id="S1.T1.18.18.18.2.1.1.m1.1a"><mo id="S1.T1.18.18.18.2.1.1.m1.1.1" xref="S1.T1.18.18.18.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.18.18.18.2.1.1.m1.1b"><ci id="S1.T1.18.18.18.2.1.1.m1.1.1.cmml" xref="S1.T1.18.18.18.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.18.18.18.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.18.18.18.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.20.20.20">
<td class="ltx_td ltx_align_left" id="S1.T1.20.20.20.3">Package Instruct <cite class="ltx_cite ltx_citemacro_citep">(<span class="ltx_text" style="color:#000000;">Huang et al.</span>, <a class="ltx_ref" href="https://arxiv.org/html/2503.02951v1#bib.bib16" title=""><span class="ltx_text" style="color:#000000;">2024</span></a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.4">171K</td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.5">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.20.20.20.6">Mid</td>
<td class="ltx_td ltx_align_center" id="S1.T1.19.19.19.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.19.19.19.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.19.19.19.1.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.19.19.19.1.1.1.m1.1"><semantics id="S1.T1.19.19.19.1.1.1.m1.1a"><mo id="S1.T1.19.19.19.1.1.1.m1.1.1" xref="S1.T1.19.19.19.1.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.19.19.19.1.1.1.m1.1b"><compose id="S1.T1.19.19.19.1.1.1.m1.1.1.cmml" xref="S1.T1.19.19.19.1.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.19.19.19.1.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.19.19.19.1.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.20.20.20.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.20.20.20.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.20.20.20.2.1.1"><math alttext="\circ" class="ltx_Math" display="inline" id="S1.T1.20.20.20.2.1.1.m1.1"><semantics id="S1.T1.20.20.20.2.1.1.m1.1a"><mo id="S1.T1.20.20.20.2.1.1.m1.1.1" xref="S1.T1.20.20.20.2.1.1.m1.1.1.cmml">∘</mo><annotation-xml encoding="MathML-Content" id="S1.T1.20.20.20.2.1.1.m1.1b"><compose id="S1.T1.20.20.20.2.1.1.m1.1.1.cmml" xref="S1.T1.20.20.20.2.1.1.m1.1.1"></compose></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.20.20.20.2.1.1.m1.1c">\circ</annotation><annotation encoding="application/x-llamapun" id="S1.T1.20.20.20.2.1.1.m1.1d">∘</annotation></semantics></math></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S1.T1.22.22.22">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S1.T1.22.22.22.3">
<span class="ltx_text ltx_font_smallcaps" id="S1.T1.22.22.22.3.1">KodCode </span><span class="ltx_text ltx_font_bold" id="S1.T1.22.22.22.3.2">-V1</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.22.22.22.4"><span class="ltx_text ltx_font_bold" id="S1.T1.22.22.22.4.1">447K</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.22.22.22.5">High</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.22.22.22.6">Mix</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.21.21.21.1">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.21.21.21.1.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.21.21.21.1.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.21.21.21.1.1.1.m1.1"><semantics id="S1.T1.21.21.21.1.1.1.m1.1a"><mo id="S1.T1.21.21.21.1.1.1.m1.1.1" xref="S1.T1.21.21.21.1.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.21.21.21.1.1.1.m1.1b"><ci id="S1.T1.21.21.21.1.1.1.m1.1.1.cmml" xref="S1.T1.21.21.21.1.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.21.21.21.1.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.21.21.21.1.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb ltx_border_t" id="S1.T1.22.22.22.2">
<div class="ltx_inline-block ltx_transformed_outer" id="S1.T1.22.22.22.2.1" style="width:7.5pt;height:6.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="transform:translate(1.3pt,-1.1pt) scale(1.5,1.5) ;">
<p class="ltx_p" id="S1.T1.22.22.22.2.1.1"><math alttext="\bullet" class="ltx_Math" display="inline" id="S1.T1.22.22.22.2.1.1.m1.1"><semantics id="S1.T1.22.22.22.2.1.1.m1.1a"><mo id="S1.T1.22.22.22.2.1.1.m1.1.1" xref="S1.T1.22.22.22.2.1.1.m1.1.1.cmml">∙</mo><annotation-xml encoding="MathML-Content" id="S1.T1.22.22.22.2.1.1.m1.1b"><ci id="S1.T1.22.22.22.2.1.1.m1.1.1.cmml" xref="S1.T1.22.22.22.2.1.1.m1.1.1">∙</ci></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.22.22.22.2.1.1.m1.1c">\bullet</annotation><annotation encoding="application/x-llamapun" id="S1.T1.22.22.22.2.1.1.m1.1d">∙</annotation></semantics></math></p>
</span></div>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares KodCode to other code datasets used for training Large Language Models (LLMs).  It highlights key differences in terms of data source (human-curated vs. synthetic), the number of problems available, diversity of coding tasks, difficulty levels of the problems, and whether the dataset includes unit tests for verifying solution correctness.  KodCode is shown to stand out by offering a large-scale, synthetically generated dataset with a built-in self-verification mechanism and three distinct difficulty levels, addressing limitations found in existing datasets.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison of KodCode with existing code datasets for LLM post-training. The first three rows show human-curated datasets, while the remaining rows represent synthetic datasets. KodCode offers three difficulty labels (e.g., “easy”, “medium”, and “hard”), which we denote as “Mix”.
> </details>





### In-depth insights


#### Code Data Synthesis
Code data synthesis is an essential strategy for augmenting training datasets, particularly in scenarios where high-quality data is scarce. **Synthetic data offers a scalable and cost-effective way** to improve the performance of models. **Techniques like prompt engineering and LLM-based augmentation are leveraged** for data generation. Moreover, **diverse data distribution and complexity, along with reliable response verification, is vital** in order to successfully fine-tune data.

#### Self-Verifying LLM
**Self-verifying LLMs represent a crucial shift towards more reliable AI**. These models aim to intrinsically assess the correctness of their outputs, rather than relying solely on external validation. **This is particularly important in applications where mistakes can be costly**. Approaches range from incorporating confidence scores to generating justifications that support the final answer. **A key challenge is preventing overconfidence, where the model inaccurately assigns high certainty to incorrect outputs**. Furthermore, effectively utilizing self-verification to guide iterative refinement and error correction is a complex research area. Success in this domain could significantly improve the trustworthiness and deployment of LLMs in sensitive real-world scenarios. **This approach could allow for AI to more accurately flag its errors, increasing safety**.

#### Dataset Diversity
Dataset diversity is crucial for training robust and generalizable coding LLMs. **A diverse dataset should span a wide range of programming languages, coding tasks, and difficulty levels**. Including examples from various domains, such as web development, data science, and system administration, can help the model learn different coding styles and patterns. It is crucial to address different skill level, **from beginner-level to expert-level problems**, to ensure the model can assist users with varying coding needs and also covering various aspect of coding and reasoning is extremely important. LLMs trained on diverse datasets tend to perform better on unseen tasks and generalize well across different coding scenarios. **Diversity should also encompass a range of code complexities, from short snippets to complex projects**, to train the model's ability to handling coding tasks of varying scales.

#### Style Transfer SFT
The concept of "Style Transfer SFT", though not explicitly mentioned in the paper, evokes the crucial task of adapting models to diverse input formats. **Style transfer in this context involves transforming coding questions into various representations without altering the underlying logic.** The success of KODCODE in fine-tuning models hinges on its LLM-based style conversion, making the model robust to different question phrasing and presentation styles. **This helps bridge the gap between training datasets and the real world by enabling the model to generalize across variable input styles.** By reformatting coding questions into more natural and non-natural language formats, the effectiveness in improving the model performance can be demonstrated and shows greater flexibility. Style transfer improves versatility for SFT.

#### Scale for Hardness
While not explicitly a header, the concept of 'Scale for Hardness' is implicitly addressed within the paper's methodology. The paper details a process of allocating **additional attempts** at self-verification for more challenging coding questions. This mechanism effectively scales the computational resources dedicated to problems based on their inherent difficulty. This is critical as simply discarding problems that initially fail self-verification risks biasing the dataset towards simpler tasks. By allowing more attempts, the pipeline retains a broader range of difficulties, thus contributing to a more **robust and challenging training dataset**. The observed pass rate improvements with increased attempts, particularly for tasks from Codeforces, Taco, and Docs, confirms that scaling efforts enhance the inclusion of harder, algorithmically complex problems. This ensures that the dataset isn't skewed towards easier, more readily solvable questions, which ultimately contributes to the ability of models trained on it to tackle a **more diverse and complex range of coding challenges**.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.02951/x6.png)

> 🔼 This figure visualizes the success rate of the self-verification process in Step 2 of the KODCODE dataset generation pipeline.  It displays the pass rate for each subset of coding questions (Prefill, LeetCode, Codeforces, etc.) with varying numbers of self-verification attempts (1, 5, and 10).  Higher pass rates indicate that the questions in that subset were generally easier to solve and verify, while lower pass rates may reflect increased difficulty. The graph allows assessment of the effectiveness of increasing verification attempts in generating verifiable solutions, showing how many more successful solutions are produced with more attempts.
> <details>
> <summary>read the caption</summary>
> Figure 2: Statistics on pass rates via self-verification in Step 2 by subset with varing number of attempts.
> </details>



![](https://arxiv.org/html/2503.02951/x7.png)

> 🔼 This figure presents three distinct histograms visualizing the distribution of token lengths for questions and their corresponding responses across various subsets of the KODCODE dataset.  A supplementary bar chart displays the average number of unit tests associated with each question in these subsets. This allows for a comparative analysis of the textual length characteristics of questions and answers, and the associated test suite complexity across different question categories within the dataset. This analysis helps to understand the diversity and challenge level within the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 3: Distribution of token lengths for questions and responses, along with unit test counts across different subsets.
> </details>



![](https://arxiv.org/html/2503.02951/extracted/6242597/figs_v1.1/tsne_kodcode_v1.1.jpg)

> 🔼 This figure uses t-distributed Stochastic Neighbor Embedding (t-SNE) to visualize the high-dimensional vector representations of coding instructions from KODCODE and four other datasets: OSS Instruct, ACECoder, Educational Instruct, and Package Instruct.  Each point represents a coding instruction, and the proximity of points indicates semantic similarity. The visualization reveals KODCODE's superior diversity compared to the baseline datasets, as its instructions span a wider range of the embedding space. This indicates that KODCODE covers a broader range of coding topics and styles than the other datasets.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of t-SNE visualization between KodCode  (by subset) and baseline datasets (OSS Instruct, ACECoder, Educational Instruct, and Package Instruct), with 2,000 sampled instructions per dataset.
> </details>



![](https://arxiv.org/html/2503.02951/x8.png)

> 🔼 This figure shows the distribution of question difficulty across different subsets of the KODCODE dataset.  The difficulty is measured by the pass rate of the self-verification process for each question, using the number of successful attempts out of a maximum of 10.  The subsets are categorized into four difficulty levels: easy (pass rate > 2/3), medium (1/3 to 2/3), hard (<1/3), and fail (all failures). The chart displays the percentage of questions in each difficulty level for every subset, providing a visual representation of the distribution of question difficulty in the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 5: Difficulty distribution across subsets measured by pass rates.
> </details>



![](https://arxiv.org/html/2503.02951/x9.png)

> 🔼 Figure 6 presents a detailed analysis of potential overlaps between the KODCODE dataset and existing code benchmarks.  Part (a) is a confusion matrix that visually represents the number of KODCODE samples exhibiting high similarity (cosine similarity > 0.95) to each benchmark. The percentages and raw counts are provided within the matrix cells, illustrating the extent of potential contamination for each KODCODE subset. Part (b) provides a supplementary histogram showing the distribution of maximum cosine similarity scores within each KODCODE subset. Horizontal lines on the histogram highlight the average maximum similarity for each subset, offering a clearer picture of the overall similarity levels.
> <details>
> <summary>read the caption</summary>
> Figure 6: Contamination analysis between KodCode  subsets and existing benchmarks. (a) Confusion matrix showing the percentage and absolute number (in parentheses) of contaminated samples with cosine similarity > 0.95. (b) Distribution of maximum cosine similarity scores across different KodCode subsets, with horizontal lines indicating subset averages.
> </details>



![](https://arxiv.org/html/2503.02951/x10.png)

> 🔼 This figure illustrates the data flow within the KODCODE dataset creation pipeline.  Starting from twelve initial subsets of coding questions (left), the pipeline proceeds through a deduplication step to remove redundant questions (middle).  The remaining questions then undergo a reject sampling process where solutions and tests are generated, and those that fail verification are removed (right).  The red paths highlight questions removed during the deduplication and reject sampling phases. The final dataset is considerably smaller than the initial number of coding questions indicating the effectiveness of the data cleaning steps.
> <details>
> <summary>read the caption</summary>
> Figure 7: Data flow visualization through our pipeline: from initial subsets (left) through deduplication (middle) to final filtered sets after reject sampling (right). Red paths indicate discarded instances.
> </details>



![](https://arxiv.org/html/2503.02951/x11.png)

> 🔼 This figure shows a pie chart illustrating the distribution of various coding task categories within the Magpie Coding dataset *before* any filtering was applied.  The pie chart visually represents the proportion of questions in each category, providing an overview of the dataset's initial composition before any refinement or selection processes were implemented. This helps illustrate the diversity of tasks addressed in the original Magpie data and the impact that subsequent filtering steps had on the final dataset composition.
> <details>
> <summary>read the caption</summary>
> Figure 8: Task categories of the collected Magpie Coding data before filtering.
> </details>



![](https://arxiv.org/html/2503.02951/x12.png)

> 🔼 This figure shows a coding task (Task 511) from the MBPP dataset that failed the self-verification process during the KODCODE dataset generation. The task requires writing a Python function to find the minimum sum of factors for a given number.  The figure displays the GPT-40 generated response (incorrect), the correct solution, and the associated unit tests.
> <details>
> <summary>read the caption</summary>
> Figure 9: Failed Task 511.
> </details>



![](https://arxiv.org/html/2503.02951/x13.png)

> 🔼 This figure shows a failed example from the MBPP validation dataset (Task 525).  The task is to write a Python function to determine if two lines are parallel.  The function should accept two lines represented as tuples, handling both two-element (a,b) and three-element (a,b,c) tuples. The GPT-40 response's solution incorrectly assumes all input lines are represented by three-element tuples (a,b,c), resulting in a failed unit test when only two-element tuples are provided. This highlights a limitation of the GPT-40 model in handling edge cases and generalizing to different input formats.
> <details>
> <summary>read the caption</summary>
> Figure 10: Failed Task 525.
> </details>



![](https://arxiv.org/html/2503.02951/x14.png)

> 🔼 This figure shows an example of data contamination found in the KODCODE dataset.  It highlights a question from KODCODE that is nearly identical to a question from the MBPP benchmark dataset. Specifically, it demonstrates a KODCODE question about counting uppercase letters in a string and its almost exact equivalent from MBPP. This illustrates a potential limitation in the dataset generation process, where some synthetically generated questions closely resemble pre-existing questions from other established benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 11: Example 1 of Contaminated Data
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.1.1">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1.1" style="color:#000000;">Model Name</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.2.1" style="color:#000000;">HumanEval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1" style="color:#000000;">MBPP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.4.1" style="color:#000000;">BigCodeBench-C</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T2.1.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.5.1" style="color:#000000;">BigCodeBench-I</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.1.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.6.1" style="color:#000000;">LiveCodeBench (v5)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1.7" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.7.1" style="color:#000000;">Average</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.1.1" style="color:#000000;">Base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.2.1" style="color:#000000;">Plus</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.3.1" style="color:#000000;">Base</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.4.1" style="color:#000000;">Plus</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.5.1" style="color:#000000;">Full</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.6.1" style="color:#000000;">Hard</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.7.1" style="color:#000000;">Full</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.8.1" style="color:#000000;">Hard</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.9.1" style="color:#000000;">Easy</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.10.1" style="color:#000000;">Medium</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.2.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.2.11.1" style="color:#000000;">Hard</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.1" rowspan="5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.1.1" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.3.1.1.1">
<span class="ltx_tr" id="S3.T2.1.1.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.3.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.1.1.1.1.1.1">Non-Reasoning</span></span></span>
<span class="ltx_tr" id="S3.T2.1.1.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.3.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.3.1.1.1.2.1.1">Models</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.2.1" style="color:#000000;">Llama-3.1-Tulu-3-70B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.3.1" style="color:#000000;">83.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.4.1" style="color:#000000;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.5.1" style="color:#000000;">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.6.1" style="color:#000000;">65.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.7.1" style="color:#000000;">55.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.8.1" style="color:#000000;">25.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.9.1" style="color:#000000;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.10.1" style="color:#000000;">20.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.11.1" style="color:#000000;">61.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.12.1" style="color:#000000;">15.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.13.1" style="color:#000000;">3.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.3.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.3.14.1" style="color:#000000;">50.15</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.4">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.1.1" style="color:#000000;">Llama-3.3-70B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.2.1" style="color:#000000;">82.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.3.1" style="color:#000000;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.4.1" style="color:#000000;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.5.1" style="color:#000000;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.6.1" style="color:#000000;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.7.1" style="color:#000000;">29.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.8.1" style="color:#000000;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.9.1" style="color:#000000;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.10.1" style="color:#000000;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.11.1" style="color:#000000;">21.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.12.1" style="color:#000000;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.4.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.4.13.1" style="color:#000000;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.5">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.1.1" style="color:#000000;">Qwen2.5-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.2.1" style="color:#000000;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.3.1" style="color:#000000;">79.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.4.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.5.1" style="color:#000000;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.6.1" style="color:#000000;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.7.1" style="color:#000000;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.8.1" style="color:#000000;">45.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.9.1" style="color:#000000;">22.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.10.1" style="color:#000000;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.11.1" style="color:#000000;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.12.1" style="color:#000000;">8.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.5.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.5.13.1" style="color:#000000;">56.27</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.6">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.1.1" style="color:#000000;">Qwen2.5-72B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.2.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.3.1" style="color:#000000;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.4.1" style="color:#000000;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.5.1" style="color:#000000;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.6.1" style="color:#000000;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.7.1" style="color:#000000;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.8.1" style="color:#000000;">46.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.9.1" style="color:#000000;">21.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.10.1" style="color:#000000;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.11.1" style="color:#000000;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.12.1" style="color:#000000;">7.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.6.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.6.13.1" style="color:#000000;">57.15</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.7">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.1.1" style="color:#000000;">Qwen2.5-Coder-32B-Instruct</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.2.1" style="color:#000000;">90.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.3.1" style="color:#000000;">85.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.4.1" style="color:#000000;">90.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.7.5.1" style="color:#000000;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.6.1" style="color:#000000;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.7.1" style="color:#000000;">31.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.8.1" style="color:#000000;">49.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.9.1" style="color:#000000;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.10.1" style="color:#000000;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.11.1" style="color:#000000;">39.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.12.1" style="color:#000000;">8.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.7.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.7.13.1" style="color:#000000;">59.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.1" rowspan="5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.1.1" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.8.1.1.1">
<span class="ltx_tr" id="S3.T2.1.1.8.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.8.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.8.1.1.1.1.1.1">Reasoning</span></span></span>
<span class="ltx_tr" id="S3.T2.1.1.8.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.8.1.1.1.2.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.8.1.1.1.2.1.1">Models</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.2.1" style="color:#000000;">Sky-T1-32B-Preview</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.3.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.4.1" style="color:#000000;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.5.1" style="color:#000000;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.6.1" style="color:#000000;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.7.1" style="color:#000000;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.8.1" style="color:#000000;">27.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.9.1" style="color:#000000;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.10.1" style="color:#000000;">24.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.11.1" style="color:#000000;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.12.1" style="color:#000000;">21.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.13.1" style="color:#000000;">8.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.8.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.8.14.1" style="color:#000000;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.9">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.1.1" style="color:#000000;">QwQ-32B-Preview</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.2.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.3.1" style="color:#000000;">82.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.4.1" style="color:#000000;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.5.1" style="color:#000000;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.6.1" style="color:#000000;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.7.1" style="color:#000000;">26.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.8.1" style="color:#000000;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.9.1" style="color:#000000;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.10.1" style="color:#000000;">90.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.11.1" style="color:#000000;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.12.1" style="color:#000000;">10.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.9.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.9.13.1" style="color:#000000;">56.75</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.10">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.1.1" style="color:#000000;">DeepSeek-R1-Distill-Qwen-32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.2.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.3.1" style="color:#000000;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.4.1" style="color:#000000;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.5.1" style="color:#000000;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.6.1" style="color:#000000;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.7.1" style="color:#000000;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.8.1" style="color:#000000;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.9.1" style="color:#000000;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.10.1" style="color:#000000;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.11.1" style="color:#000000;">52.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.12.1" style="color:#000000;">17.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.10.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.10.13.1" style="color:#000000;">57.51</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.11">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.1.1" style="color:#000000;">DeepSeek-R1-Distill-Llama-70B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.2.1" style="color:#000000;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.3.1" style="color:#000000;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.4.1" style="color:#000000;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.5.1" style="color:#000000;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.6.1" style="color:#000000;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.7.1" style="color:#000000;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.8.1" style="color:#000000;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.9.1" style="color:#000000;">25.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.10.1" style="color:#000000;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.11.1" style="color:#000000;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.11.12.1" style="color:#000000;">18.9</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.11.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.11.13.1" style="color:#000000;">57.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.12">
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.1.1" style="color:#000000;">Bespoke-Stratos-32B</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.2.1" style="color:#000000;">88.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.3.1" style="color:#000000;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.4.1" style="color:#000000;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.5.1" style="color:#000000;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.6.1" style="color:#000000;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.7.1" style="color:#000000;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.8.1" style="color:#000000;">47.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.9.1" style="color:#000000;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.10.1" style="color:#000000;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.11.1" style="color:#000000;">49.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.12.1" style="color:#000000;">10.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.1.12.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.12.13.1" style="color:#000000;">59.64</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.1.13.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.1.1" style="color:#000000;">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.1.1.13.1.1.1">
<span class="ltx_tr" id="S3.T2.1.1.13.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.1.1.13.1.1.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T2.1.1.13.1.1.1.1.1.1">KodCode</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.13.2.1" style="color:#000000;">KodCode</span><span class="ltx_text" id="S3.T2.1.1.13.2.2" style="color:#000000;">-32B-50K</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.3.1" style="color:#000000;">92.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.4.1" style="color:#000000;">85.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.5.1" style="color:#000000;">89.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.6.1" style="color:#000000;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.7.1" style="color:#000000;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.8.1" style="color:#000000;">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.9.1" style="color:#000000;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.13.10.1" style="color:#000000;">32.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.11.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.12.1" style="color:#000000;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.13.1" style="color:#000000;">6.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.13.14" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.13.14.1" style="color:#000000;">61.22</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_text ltx_font_smallcaps" id="S3.T2.1.1.14.1.1" style="color:#000000;">KodCode</span><span class="ltx_text" id="S3.T2.1.1.14.1.2" style="color:#000000;">-32B-18K-Hard</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.2.1" style="color:#000000;">90.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.3.1" style="color:#000000;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.4.1" style="color:#000000;">89.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.5.1" style="color:#000000;">77.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.6.1" style="color:#000000;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.7.1" style="color:#000000;">37.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.8.1" style="color:#000000;">50.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.9" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.9.1" style="color:#000000;">31.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.10" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.10.1" style="color:#000000;">90.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.11" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.11.1" style="color:#000000;">39.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.12" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S3.T2.1.1.14.12.1" style="color:#000000;">5.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.1.14.13" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.14.13.1" style="color:#000000;">61.26</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of various large language models (LLMs) on five different coding benchmarks: HumanEval, MBPP, BigCodeBench-Complete, BigCodeBench-Instruct, and LiveCodeBench.  The models compared include several strong baseline LLMs and two models fine-tuned using the KodCode dataset. For each benchmark, sub-metrics were averaged, and then the average across all five benchmarks is reported.  Bold values indicate the highest score for each metric. The results demonstrate that LLMs fine-tuned on the KodCode dataset significantly outperform larger baseline models, highlighting KodCode's high quality and diversity as a training dataset. 
> <details>
> <summary>read the caption</summary>
> Table 2: This table compares the model performances between KodCode-tuned models and strong baseline models across various benchmarks. Average scores are computed by first averaging sub-metrics within each benchmark and then taking the mean across all five benchmarks (HumanEval, MBPP, BCB-Complete, BCB-Instruct, and LiveCodeBench). Bold numbers indicate the best performance for each metric. KodCode-tuned models outperform larger baseline models, demonstrating the dataset’s high quality and diversity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="color:#000000;">Benchmarks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.2">
<span class="ltx_inline-block" id="S4.T3.1.1.1.2.1">
<span class="ltx_p" id="S4.T3.1.1.1.2.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.1.1.1.2.1.1.1" style="color:#000000;">KodCode</span></span>
<span class="ltx_p" id="S4.T3.1.1.1.2.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1.2.1" style="color:#000000;">Hard-10K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.3">
<span class="ltx_inline-block" id="S4.T3.1.1.1.3.1">
<span class="ltx_p" id="S4.T3.1.1.1.3.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.1.1.1.3.1.1.1" style="color:#000000;">KodCode</span></span>
<span class="ltx_p" id="S4.T3.1.1.1.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.3.1.2.1" style="color:#000000;">-10K</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.4">
<span class="ltx_inline-block" id="S4.T3.1.1.1.4.1">
<span class="ltx_p" id="S4.T3.1.1.1.4.1.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T3.1.1.1.4.1.1.1" style="color:#000000;">KodCode</span></span>
<span class="ltx_p" id="S4.T3.1.1.1.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.4.1.2.1" style="color:#000000;">NoConvert-10K</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.2.1"><span class="ltx_text" id="S4.T3.1.1.2.1.1" style="color:#000000;">BigCodeBench-C Full (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.2"><span class="ltx_text" id="S4.T3.1.1.2.2.1" style="color:#000000;">60.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.2.3.1" style="color:#000000;">61.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.4"><span class="ltx_text" id="S4.T3.1.1.2.4.1" style="color:#000000;">60.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.3.1"><span class="ltx_text" id="S4.T3.1.1.3.1.1" style="color:#000000;">BigCodeBench-C Hard (%)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.3.2.1" style="color:#000000;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.3"><span class="ltx_text" id="S4.T3.1.1.3.3.1" style="color:#000000;">38.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.4"><span class="ltx_text" id="S4.T3.1.1.3.4.1" style="color:#000000;">35.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.4.1"><span class="ltx_text" id="S4.T3.1.1.4.1.1" style="color:#000000;">BigCodeBench-I Full (%)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.2.1" style="color:#000000;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.3"><span class="ltx_text" id="S4.T3.1.1.4.3.1" style="color:#000000;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4.4"><span class="ltx_text" id="S4.T3.1.1.4.4.1" style="color:#000000;">49.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.5.1"><span class="ltx_text" id="S4.T3.1.1.5.1.1" style="color:#000000;">BigCodeBench-I Hard (%)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.5.2.1" style="color:#000000;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.3"><span class="ltx_text" id="S4.T3.1.1.5.3.1" style="color:#000000;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.5.4"><span class="ltx_text" id="S4.T3.1.1.5.4.1" style="color:#000000;">28.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.1.1.6.1"><span class="ltx_text" id="S4.T3.1.1.6.1.1" style="color:#000000;">LiveCodeBench Easy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.2.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.6.3.1" style="color:#000000;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.6.4"><span class="ltx_text" id="S4.T3.1.1.6.4.1" style="color:#000000;">86.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.7">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.7.1"><span class="ltx_text" id="S4.T3.1.1.7.1.1" style="color:#000000;">LiveCodeBench Medium</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.7.2.1" style="color:#000000;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.3"><span class="ltx_text" id="S4.T3.1.1.7.3.1" style="color:#000000;">32.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.7.4"><span class="ltx_text" id="S4.T3.1.1.7.4.1" style="color:#000000;">32.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.1.1.8.1"><span class="ltx_text" id="S4.T3.1.1.8.1.1" style="color:#000000;">LiveCodeBench Hard</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.8.2.1" style="color:#000000;">6.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.3"><span class="ltx_text" id="S4.T3.1.1.8.3.1" style="color:#000000;">4.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.8.4"><span class="ltx_text" id="S4.T3.1.1.8.4.1" style="color:#000000;">5.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of data selection on the performance of the Qwen2.5-Coder-32B-Instruct model when fine-tuned on the KodCode-SFT dataset.  Three different subsets of the KodCode-SFT dataset were sampled, each containing 10,000 data points.  The first subset was a random sample from the full KodCode-SFT dataset (KODCODE-10K). The second contained only the most challenging instances (KODCODE-Hard-10K). The third (NoConvert-10K) excluded data augmented by a style converter.  The table compares the performance of the model trained on each subset across four different benchmarks (BigCodeBench-C Full, BigCodeBench-C Hard, BigCodeBench-I Full, BigCodeBench-I Hard, LiveCodeBench Easy, LiveCodeBench Medium, LiveCodeBench Hard).  The results show how different data sampling strategies affect the model's ability to perform well across various difficulty levels and benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of data selection when fine-tuning Qwen2.5-Coder-32B-Instruct on KodCode-SFT. Each model is trained on 10K sampled data. Bold numbers indicate best performance for each metric.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T4.9">
<tr class="ltx_tr" id="A3.T4.9.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T4.9.10.1"><span class="ltx_text ltx_font_bold" id="A3.T4.9.10.1.1" style="color:#000000;">Hyper-parameter</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T4.9.10.2"><span class="ltx_text ltx_font_bold" id="A3.T4.9.10.2.1" style="color:#000000;">Value</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.2"><span class="ltx_text" id="A3.T4.1.1.2.1" style="color:#000000;">Learning Rate</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T4.1.1.1"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A3.T4.1.1.1.m1.1"><semantics id="A3.T4.1.1.1.m1.1a"><mrow id="A3.T4.1.1.1.m1.1.1" xref="A3.T4.1.1.1.m1.1.1.cmml"><mn id="A3.T4.1.1.1.m1.1.1.2" mathcolor="#000000" xref="A3.T4.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A3.T4.1.1.1.m1.1.1.1" lspace="0.222em" mathcolor="#000000" rspace="0.222em" xref="A3.T4.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A3.T4.1.1.1.m1.1.1.3" xref="A3.T4.1.1.1.m1.1.1.3.cmml"><mn id="A3.T4.1.1.1.m1.1.1.3.2" mathcolor="#000000" xref="A3.T4.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A3.T4.1.1.1.m1.1.1.3.3" xref="A3.T4.1.1.1.m1.1.1.3.3.cmml"><mo id="A3.T4.1.1.1.m1.1.1.3.3a" mathcolor="#000000" xref="A3.T4.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A3.T4.1.1.1.m1.1.1.3.3.2" mathcolor="#000000" xref="A3.T4.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.1.1.1.m1.1b"><apply id="A3.T4.1.1.1.m1.1.1.cmml" xref="A3.T4.1.1.1.m1.1.1"><times id="A3.T4.1.1.1.m1.1.1.1.cmml" xref="A3.T4.1.1.1.m1.1.1.1"></times><cn id="A3.T4.1.1.1.m1.1.1.2.cmml" type="integer" xref="A3.T4.1.1.1.m1.1.1.2">1</cn><apply id="A3.T4.1.1.1.m1.1.1.3.cmml" xref="A3.T4.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A3.T4.1.1.1.m1.1.1.3.1.cmml" xref="A3.T4.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A3.T4.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A3.T4.1.1.1.m1.1.1.3.2">10</cn><apply id="A3.T4.1.1.1.m1.1.1.3.3.cmml" xref="A3.T4.1.1.1.m1.1.1.3.3"><minus id="A3.T4.1.1.1.m1.1.1.3.3.1.cmml" xref="A3.T4.1.1.1.m1.1.1.3.3"></minus><cn id="A3.T4.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A3.T4.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A3.T4.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.3.3">
<td class="ltx_td ltx_align_left" id="A3.T4.3.3.3"><span class="ltx_text" id="A3.T4.3.3.3.1" style="color:#000000;">Number of Epochs</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.3.3.2">
<math alttext="2(&gt;20K)" class="ltx_Math" display="inline" id="A3.T4.2.2.1.m1.1"><semantics id="A3.T4.2.2.1.m1.1a"><mrow id="A3.T4.2.2.1.m1.1.1" xref="A3.T4.2.2.1.m1.1.1.cmml"><mn id="A3.T4.2.2.1.m1.1.1.3" mathcolor="#000000" xref="A3.T4.2.2.1.m1.1.1.3.cmml">2</mn><mspace id="A3.T4.2.2.1.m1.1.1a" width="0.3888888888888889em" xref="A3.T4.2.2.1.m1.1.1.cmml"></mspace><mrow id="A3.T4.2.2.1.m1.1.1.1.1" xref="A3.T4.2.2.1.m1.1.1.1.1.1.cmml"><mo id="A3.T4.2.2.1.m1.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="A3.T4.2.2.1.m1.1.1.1.1.1.cmml">(</mo><mrow id="A3.T4.2.2.1.m1.1.1.1.1.1" xref="A3.T4.2.2.1.m1.1.1.1.1.1.cmml"><mi id="A3.T4.2.2.1.m1.1.1.1.1.1.2" xref="A3.T4.2.2.1.m1.1.1.1.1.1.2.cmml"></mi><mo id="A3.T4.2.2.1.m1.1.1.1.1.1.1" mathcolor="#000000" xref="A3.T4.2.2.1.m1.1.1.1.1.1.1.cmml">&gt;</mo><mrow id="A3.T4.2.2.1.m1.1.1.1.1.1.3" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.cmml"><mn id="A3.T4.2.2.1.m1.1.1.1.1.1.3.2" mathcolor="#000000" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.2.cmml">20</mn><mo id="A3.T4.2.2.1.m1.1.1.1.1.1.3.1" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="A3.T4.2.2.1.m1.1.1.1.1.1.3.3" mathcolor="#000000" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.3.cmml">K</mi></mrow></mrow><mo id="A3.T4.2.2.1.m1.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="A3.T4.2.2.1.m1.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.2.2.1.m1.1b"><apply id="A3.T4.2.2.1.m1.1.1.cmml" xref="A3.T4.2.2.1.m1.1.1"><csymbol cd="latexml" id="A3.T4.2.2.1.m1.1.1.2.cmml" xref="A3.T4.2.2.1.m1.1.1">annotated</csymbol><cn id="A3.T4.2.2.1.m1.1.1.3.cmml" type="integer" xref="A3.T4.2.2.1.m1.1.1.3">2</cn><apply id="A3.T4.2.2.1.m1.1.1.1.1.1.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1"><gt id="A3.T4.2.2.1.m1.1.1.1.1.1.1.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1.1.1"></gt><csymbol cd="latexml" id="A3.T4.2.2.1.m1.1.1.1.1.1.2.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1.1.2">absent</csymbol><apply id="A3.T4.2.2.1.m1.1.1.1.1.1.3.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3"><times id="A3.T4.2.2.1.m1.1.1.1.1.1.3.1.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.1"></times><cn id="A3.T4.2.2.1.m1.1.1.1.1.1.3.2.cmml" type="integer" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.2">20</cn><ci id="A3.T4.2.2.1.m1.1.1.1.1.1.3.3.cmml" xref="A3.T4.2.2.1.m1.1.1.1.1.1.3.3">𝐾</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.2.2.1.m1.1c">2(&gt;20K)</annotation><annotation encoding="application/x-llamapun" id="A3.T4.2.2.1.m1.1d">2 ( &gt; 20 italic_K )</annotation></semantics></math><span class="ltx_text" id="A3.T4.3.3.2.1" style="color:#000000;"> / </span><math alttext="3(&lt;20K)" class="ltx_Math" display="inline" id="A3.T4.3.3.2.m2.1"><semantics id="A3.T4.3.3.2.m2.1a"><mrow id="A3.T4.3.3.2.m2.1.1" xref="A3.T4.3.3.2.m2.1.1.cmml"><mn id="A3.T4.3.3.2.m2.1.1.3" mathcolor="#000000" xref="A3.T4.3.3.2.m2.1.1.3.cmml">3</mn><mspace id="A3.T4.3.3.2.m2.1.1a" width="0.3888888888888889em" xref="A3.T4.3.3.2.m2.1.1.cmml"></mspace><mrow id="A3.T4.3.3.2.m2.1.1.1.1" xref="A3.T4.3.3.2.m2.1.1.1.1.1.cmml"><mo id="A3.T4.3.3.2.m2.1.1.1.1.2" mathcolor="#000000" stretchy="false" xref="A3.T4.3.3.2.m2.1.1.1.1.1.cmml">(</mo><mrow id="A3.T4.3.3.2.m2.1.1.1.1.1" xref="A3.T4.3.3.2.m2.1.1.1.1.1.cmml"><mi id="A3.T4.3.3.2.m2.1.1.1.1.1.2" xref="A3.T4.3.3.2.m2.1.1.1.1.1.2.cmml"></mi><mo id="A3.T4.3.3.2.m2.1.1.1.1.1.1" mathcolor="#000000" xref="A3.T4.3.3.2.m2.1.1.1.1.1.1.cmml">&lt;</mo><mrow id="A3.T4.3.3.2.m2.1.1.1.1.1.3" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.cmml"><mn id="A3.T4.3.3.2.m2.1.1.1.1.1.3.2" mathcolor="#000000" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.2.cmml">20</mn><mo id="A3.T4.3.3.2.m2.1.1.1.1.1.3.1" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.1.cmml">⁢</mo><mi id="A3.T4.3.3.2.m2.1.1.1.1.1.3.3" mathcolor="#000000" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.3.cmml">K</mi></mrow></mrow><mo id="A3.T4.3.3.2.m2.1.1.1.1.3" mathcolor="#000000" stretchy="false" xref="A3.T4.3.3.2.m2.1.1.1.1.1.cmml">)</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="A3.T4.3.3.2.m2.1b"><apply id="A3.T4.3.3.2.m2.1.1.cmml" xref="A3.T4.3.3.2.m2.1.1"><csymbol cd="latexml" id="A3.T4.3.3.2.m2.1.1.2.cmml" xref="A3.T4.3.3.2.m2.1.1">annotated</csymbol><cn id="A3.T4.3.3.2.m2.1.1.3.cmml" type="integer" xref="A3.T4.3.3.2.m2.1.1.3">3</cn><apply id="A3.T4.3.3.2.m2.1.1.1.1.1.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1"><lt id="A3.T4.3.3.2.m2.1.1.1.1.1.1.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1.1.1"></lt><csymbol cd="latexml" id="A3.T4.3.3.2.m2.1.1.1.1.1.2.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1.1.2">absent</csymbol><apply id="A3.T4.3.3.2.m2.1.1.1.1.1.3.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3"><times id="A3.T4.3.3.2.m2.1.1.1.1.1.3.1.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.1"></times><cn id="A3.T4.3.3.2.m2.1.1.1.1.1.3.2.cmml" type="integer" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.2">20</cn><ci id="A3.T4.3.3.2.m2.1.1.1.1.1.3.3.cmml" xref="A3.T4.3.3.2.m2.1.1.1.1.1.3.3">𝐾</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.3.3.2.m2.1c">3(&lt;20K)</annotation><annotation encoding="application/x-llamapun" id="A3.T4.3.3.2.m2.1d">3 ( &lt; 20 italic_K )</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T4.4.4">
<td class="ltx_td ltx_align_left" id="A3.T4.4.4.2"><span class="ltx_text" id="A3.T4.4.4.2.1" style="color:#000000;">Number of Devices</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.4.4.1"><math alttext="32" class="ltx_Math" display="inline" id="A3.T4.4.4.1.m1.1"><semantics id="A3.T4.4.4.1.m1.1a"><mn id="A3.T4.4.4.1.m1.1.1" mathcolor="#000000" xref="A3.T4.4.4.1.m1.1.1.cmml">32</mn><annotation-xml encoding="MathML-Content" id="A3.T4.4.4.1.m1.1b"><cn id="A3.T4.4.4.1.m1.1.1.cmml" type="integer" xref="A3.T4.4.4.1.m1.1.1">32</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.4.4.1.m1.1c">32</annotation><annotation encoding="application/x-llamapun" id="A3.T4.4.4.1.m1.1d">32</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.5.5">
<td class="ltx_td ltx_align_left" id="A3.T4.5.5.2"><span class="ltx_text" id="A3.T4.5.5.2.1" style="color:#000000;">Per-device Batch Size</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.5.5.1"><math alttext="1" class="ltx_Math" display="inline" id="A3.T4.5.5.1.m1.1"><semantics id="A3.T4.5.5.1.m1.1a"><mn id="A3.T4.5.5.1.m1.1.1" mathcolor="#000000" xref="A3.T4.5.5.1.m1.1.1.cmml">1</mn><annotation-xml encoding="MathML-Content" id="A3.T4.5.5.1.m1.1b"><cn id="A3.T4.5.5.1.m1.1.1.cmml" type="integer" xref="A3.T4.5.5.1.m1.1.1">1</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.5.5.1.m1.1c">1</annotation><annotation encoding="application/x-llamapun" id="A3.T4.5.5.1.m1.1d">1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.6.6">
<td class="ltx_td ltx_align_left" id="A3.T4.6.6.2"><span class="ltx_text" id="A3.T4.6.6.2.1" style="color:#000000;">Gradient Accumulation Steps</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.6.6.1"><math alttext="4" class="ltx_Math" display="inline" id="A3.T4.6.6.1.m1.1"><semantics id="A3.T4.6.6.1.m1.1a"><mn id="A3.T4.6.6.1.m1.1.1" mathcolor="#000000" xref="A3.T4.6.6.1.m1.1.1.cmml">4</mn><annotation-xml encoding="MathML-Content" id="A3.T4.6.6.1.m1.1b"><cn id="A3.T4.6.6.1.m1.1.1.cmml" type="integer" xref="A3.T4.6.6.1.m1.1.1">4</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.6.6.1.m1.1c">4</annotation><annotation encoding="application/x-llamapun" id="A3.T4.6.6.1.m1.1d">4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.7.7">
<td class="ltx_td ltx_align_left" id="A3.T4.7.7.2"><span class="ltx_text" id="A3.T4.7.7.2.1" style="color:#000000;">Effective Batch Size</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.7.7.1"><math alttext="128" class="ltx_Math" display="inline" id="A3.T4.7.7.1.m1.1"><semantics id="A3.T4.7.7.1.m1.1a"><mn id="A3.T4.7.7.1.m1.1.1" mathcolor="#000000" xref="A3.T4.7.7.1.m1.1.1.cmml">128</mn><annotation-xml encoding="MathML-Content" id="A3.T4.7.7.1.m1.1b"><cn id="A3.T4.7.7.1.m1.1.1.cmml" type="integer" xref="A3.T4.7.7.1.m1.1.1">128</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.7.7.1.m1.1c">128</annotation><annotation encoding="application/x-llamapun" id="A3.T4.7.7.1.m1.1d">128</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.9.11">
<td class="ltx_td ltx_align_left" id="A3.T4.9.11.1"><span class="ltx_text" id="A3.T4.9.11.1.1" style="color:#000000;">Optimizer</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.9.11.2"><span class="ltx_text ltx_font_typewriter" id="A3.T4.9.11.2.1" style="color:#000000;">Adamw</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.9.12">
<td class="ltx_td ltx_align_left" id="A3.T4.9.12.1"><span class="ltx_text" id="A3.T4.9.12.1.1" style="color:#000000;">Learning Rate Scheduler</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.9.12.2"><span class="ltx_text ltx_font_typewriter" id="A3.T4.9.12.2.1" style="color:#000000;">cosine</span></td>
</tr>
<tr class="ltx_tr" id="A3.T4.8.8">
<td class="ltx_td ltx_align_left" id="A3.T4.8.8.2"><span class="ltx_text" id="A3.T4.8.8.2.1" style="color:#000000;">Warmup Steps</span></td>
<td class="ltx_td ltx_align_left" id="A3.T4.8.8.1"><math alttext="100" class="ltx_Math" display="inline" id="A3.T4.8.8.1.m1.1"><semantics id="A3.T4.8.8.1.m1.1a"><mn id="A3.T4.8.8.1.m1.1.1" mathcolor="#000000" xref="A3.T4.8.8.1.m1.1.1.cmml">100</mn><annotation-xml encoding="MathML-Content" id="A3.T4.8.8.1.m1.1b"><cn id="A3.T4.8.8.1.m1.1.1.cmml" type="integer" xref="A3.T4.8.8.1.m1.1.1">100</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.8.8.1.m1.1c">100</annotation><annotation encoding="application/x-llamapun" id="A3.T4.8.8.1.m1.1d">100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A3.T4.9.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.9.9.2"><span class="ltx_text" id="A3.T4.9.9.2.1" style="color:#000000;">Max Sequence Length</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T4.9.9.1"><math alttext="16384" class="ltx_Math" display="inline" id="A3.T4.9.9.1.m1.1"><semantics id="A3.T4.9.9.1.m1.1a"><mn id="A3.T4.9.9.1.m1.1.1" mathcolor="#000000" xref="A3.T4.9.9.1.m1.1.1.cmml">16384</mn><annotation-xml encoding="MathML-Content" id="A3.T4.9.9.1.m1.1b"><cn id="A3.T4.9.9.1.m1.1.1.cmml" type="integer" xref="A3.T4.9.9.1.m1.1.1">16384</cn></annotation-xml><annotation encoding="application/x-tex" id="A3.T4.9.9.1.m1.1c">16384</annotation><annotation encoding="application/x-llamapun" id="A3.T4.9.9.1.m1.1d">16384</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the hyperparameters used during the supervised fine-tuning process of the Qwen-2.5 model on the KODCODE dataset.  It lists the hyperparameter name and its corresponding value, providing details such as the learning rate, number of epochs, batch size, optimizer used (Adamw), learning rate scheduler (cosine), and maximum sequence length. This table is crucial for understanding the specific settings used in the model's training phase.
> <details>
> <summary>read the caption</summary>
> Table 4: This table shows the hyper-parameters for supervised fine-tuning.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02951/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02951/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}