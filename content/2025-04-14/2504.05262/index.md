---
title: "Do PhD-level LLMs Truly Grasp Elementary Addition? Probing Rule Learning vs. Memorization in Large Language Models"
summary: "LLMs may ace benchmarks, but do they truly grasp elementary addition? This paper probes the depths of their arithmetic understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zhejiang University",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05262 {{< /keyword >}}
{{< keyword icon="writer" >}} Yang Yan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05262" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05262" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05262/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) have shown remarkable performance on complex benchmarks, but they often fail at simple problems. This raises the question: do LLMs learn math principles or memorize patterns?  Current benchmarks might not effectively distinguish between genuine rule comprehension and pattern matching, potentially overestimating LLMs' true mathematical capabilities. This paper investigates this by focusing on elementary two-integer addition (0 to 264), a task with a clear algorithmic structure. 



Instead of designing more complex benchmarks, this research uses two properties to test the addition skill of LLMs: commutativity(A+B=B+A) and compositional generalization (symbol mapping) when they are asked to do the addition. The results indicate that current LLMs primarily depend on memory pattern instead of learning the principle, indicating architectural limits.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs struggle to generalize addition rules, especially when using symbolic representations instead of standard digits. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLMs often violate fundamental mathematical properties like commutativity, indicating a lack of true understanding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Providing LLMs with explicit addition rules can actually worsen their performance, suggesting a conflict between external instructions and internalized knowledge. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper unveils that LLMs struggle with truly understanding elementary addition, relying on pattern matching rather than grasping core principles. **The work introduces a novel methodology for controlled arithmetic experiments, revealing key differences between LLM computation and human mathematical cognition.** These findings open new avenues for designing effective benchmarks that can better assess genuine mathematical reasoning in AI systems.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05262/x1.png)

> 🔼 This figure illustrates how the authors evaluated the true arithmetic comprehension of large language models (LLMs).  While LLMs often perform well on complex math problems, this work probed their understanding of basic addition.  The evaluation focused on two key properties: commutativity (whether A+B equals B+A) and compositional generalization (whether the LLMs can correctly perform the same operation even if the numbers are represented by symbols instead of digits).  The results (detailed in Section 4) showed that LLMs struggled to consistently demonstrate these basic arithmetic properties, suggesting they rely more on pattern-matching than on true understanding of mathematical principles.
> <details>
> <summary>read the caption</summary>
> Figure 1: Illustration of Evaluating LLMs’ Arithmetic Comprehension. While LLMs demonstrate impressive performance on complex mathematical benchmarks, we examine their fundamental understanding through elementary addition, focusing on two essential arithmetic properties: (1) Commutativity (A+B=B+A𝐴𝐵𝐵𝐴A+B=B+Aitalic_A + italic_B = italic_B + italic_A) and (2) Compositional Generalization (invariance under symbolic transformations). Our systematic evaluation in Section 4 reveals that models fail to maintain these basic properties, suggesting they rely on pattern matching rather than demonstrating genuine arithmetic comprehension.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.23.23">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.2">Models</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.3">ZS</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.4">S</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.3.3.3">Llama3.3-70b-It</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.2.2.2.1"><math alttext="79.75_{\pm 40.19}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><msub id="S4.T1.2.2.2.1.m1.1.1" xref="S4.T1.2.2.2.1.m1.1.1.cmml"><mn id="S4.T1.2.2.2.1.m1.1.1.2" xref="S4.T1.2.2.2.1.m1.1.1.2.cmml">79.75</mn><mrow id="S4.T1.2.2.2.1.m1.1.1.3" xref="S4.T1.2.2.2.1.m1.1.1.3.cmml"><mo id="S4.T1.2.2.2.1.m1.1.1.3a" xref="S4.T1.2.2.2.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.2.2.2.1.m1.1.1.3.2" xref="S4.T1.2.2.2.1.m1.1.1.3.2.cmml">40.19</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><apply id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.2.2.2.1.m1.1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">subscript</csymbol><cn id="S4.T1.2.2.2.1.m1.1.1.2.cmml" type="float" xref="S4.T1.2.2.2.1.m1.1.1.2">79.75</cn><apply id="S4.T1.2.2.2.1.m1.1.1.3.cmml" xref="S4.T1.2.2.2.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.2.2.2.1.m1.1.1.3.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.2.2.2.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.2.2.2.1.m1.1.1.3.2">40.19</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">79.75_{\pm 40.19}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">79.75 start_POSTSUBSCRIPT ± 40.19 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T1.3.3.3.2"><math alttext="4.30_{\pm 20.29}" class="ltx_Math" display="inline" id="S4.T1.3.3.3.2.m1.1"><semantics id="S4.T1.3.3.3.2.m1.1a"><msub id="S4.T1.3.3.3.2.m1.1.1" xref="S4.T1.3.3.3.2.m1.1.1.cmml"><mn id="S4.T1.3.3.3.2.m1.1.1.2" xref="S4.T1.3.3.3.2.m1.1.1.2.cmml">4.30</mn><mrow id="S4.T1.3.3.3.2.m1.1.1.3" xref="S4.T1.3.3.3.2.m1.1.1.3.cmml"><mo id="S4.T1.3.3.3.2.m1.1.1.3a" xref="S4.T1.3.3.3.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.3.3.3.2.m1.1.1.3.2" xref="S4.T1.3.3.3.2.m1.1.1.3.2.cmml">20.29</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.2.m1.1b"><apply id="S4.T1.3.3.3.2.m1.1.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.3.3.3.2.m1.1.1.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1">subscript</csymbol><cn id="S4.T1.3.3.3.2.m1.1.1.2.cmml" type="float" xref="S4.T1.3.3.3.2.m1.1.1.2">4.30</cn><apply id="S4.T1.3.3.3.2.m1.1.1.3.cmml" xref="S4.T1.3.3.3.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.3.3.3.2.m1.1.1.3.1.cmml" xref="S4.T1.3.3.3.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.3.3.3.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.3.3.3.2.m1.1.1.3.2">20.29</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.2.m1.1c">4.30_{\pm 20.29}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.2.m1.1d">4.30 start_POSTSUBSCRIPT ± 20.29 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.4">-75.45</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.5.3">Gemma-2-27b-it</td>
<td class="ltx_td ltx_align_right" id="S4.T1.4.4.4.1"><math alttext="83.65_{\pm 36.98}" class="ltx_Math" display="inline" id="S4.T1.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.1.m1.1a"><msub id="S4.T1.4.4.4.1.m1.1.1" xref="S4.T1.4.4.4.1.m1.1.1.cmml"><mn id="S4.T1.4.4.4.1.m1.1.1.2" xref="S4.T1.4.4.4.1.m1.1.1.2.cmml">83.65</mn><mrow id="S4.T1.4.4.4.1.m1.1.1.3" xref="S4.T1.4.4.4.1.m1.1.1.3.cmml"><mo id="S4.T1.4.4.4.1.m1.1.1.3a" xref="S4.T1.4.4.4.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.4.4.4.1.m1.1.1.3.2" xref="S4.T1.4.4.4.1.m1.1.1.3.2.cmml">36.98</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.1.m1.1b"><apply id="S4.T1.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.4.4.4.1.m1.1.1.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1">subscript</csymbol><cn id="S4.T1.4.4.4.1.m1.1.1.2.cmml" type="float" xref="S4.T1.4.4.4.1.m1.1.1.2">83.65</cn><apply id="S4.T1.4.4.4.1.m1.1.1.3.cmml" xref="S4.T1.4.4.4.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.4.4.4.1.m1.1.1.3.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.4.4.4.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.4.4.4.1.m1.1.1.3.2">36.98</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.1.m1.1c">83.65_{\pm 36.98}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.1.m1.1d">83.65 start_POSTSUBSCRIPT ± 36.98 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.5.5.5.2"><math alttext="2.76_{\pm 16.38}" class="ltx_Math" display="inline" id="S4.T1.5.5.5.2.m1.1"><semantics id="S4.T1.5.5.5.2.m1.1a"><msub id="S4.T1.5.5.5.2.m1.1.1" xref="S4.T1.5.5.5.2.m1.1.1.cmml"><mn id="S4.T1.5.5.5.2.m1.1.1.2" xref="S4.T1.5.5.5.2.m1.1.1.2.cmml">2.76</mn><mrow id="S4.T1.5.5.5.2.m1.1.1.3" xref="S4.T1.5.5.5.2.m1.1.1.3.cmml"><mo id="S4.T1.5.5.5.2.m1.1.1.3a" xref="S4.T1.5.5.5.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.5.5.5.2.m1.1.1.3.2" xref="S4.T1.5.5.5.2.m1.1.1.3.2.cmml">16.38</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.2.m1.1b"><apply id="S4.T1.5.5.5.2.m1.1.1.cmml" xref="S4.T1.5.5.5.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.5.5.5.2.m1.1.1.1.cmml" xref="S4.T1.5.5.5.2.m1.1.1">subscript</csymbol><cn id="S4.T1.5.5.5.2.m1.1.1.2.cmml" type="float" xref="S4.T1.5.5.5.2.m1.1.1.2">2.76</cn><apply id="S4.T1.5.5.5.2.m1.1.1.3.cmml" xref="S4.T1.5.5.5.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.5.5.5.2.m1.1.1.3.1.cmml" xref="S4.T1.5.5.5.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.5.5.5.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.5.5.5.2.m1.1.1.3.2">16.38</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.2.m1.1c">2.76_{\pm 16.38}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.2.m1.1d">2.76 start_POSTSUBSCRIPT ± 16.38 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.4">-80.89</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_left" id="S4.T1.7.7.7.3">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_right" id="S4.T1.6.6.6.1"><math alttext="96.13_{\pm 19.30}" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><msub id="S4.T1.6.6.6.1.m1.1.1" xref="S4.T1.6.6.6.1.m1.1.1.cmml"><mn id="S4.T1.6.6.6.1.m1.1.1.2" xref="S4.T1.6.6.6.1.m1.1.1.2.cmml">96.13</mn><mrow id="S4.T1.6.6.6.1.m1.1.1.3" xref="S4.T1.6.6.6.1.m1.1.1.3.cmml"><mo id="S4.T1.6.6.6.1.m1.1.1.3a" xref="S4.T1.6.6.6.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.6.6.6.1.m1.1.1.3.2" xref="S4.T1.6.6.6.1.m1.1.1.3.2.cmml">19.30</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><apply id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.6.6.6.1.m1.1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1">subscript</csymbol><cn id="S4.T1.6.6.6.1.m1.1.1.2.cmml" type="float" xref="S4.T1.6.6.6.1.m1.1.1.2">96.13</cn><apply id="S4.T1.6.6.6.1.m1.1.1.3.cmml" xref="S4.T1.6.6.6.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.6.6.6.1.m1.1.1.3.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.6.6.6.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.6.6.6.1.m1.1.1.3.2">19.30</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">96.13_{\pm 19.30}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">96.13 start_POSTSUBSCRIPT ± 19.30 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.7.7.7.2"><math alttext="6.29_{\pm 24.28}" class="ltx_Math" display="inline" id="S4.T1.7.7.7.2.m1.1"><semantics id="S4.T1.7.7.7.2.m1.1a"><msub id="S4.T1.7.7.7.2.m1.1.1" xref="S4.T1.7.7.7.2.m1.1.1.cmml"><mn id="S4.T1.7.7.7.2.m1.1.1.2" xref="S4.T1.7.7.7.2.m1.1.1.2.cmml">6.29</mn><mrow id="S4.T1.7.7.7.2.m1.1.1.3" xref="S4.T1.7.7.7.2.m1.1.1.3.cmml"><mo id="S4.T1.7.7.7.2.m1.1.1.3a" xref="S4.T1.7.7.7.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.7.7.7.2.m1.1.1.3.2" xref="S4.T1.7.7.7.2.m1.1.1.3.2.cmml">24.28</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.2.m1.1b"><apply id="S4.T1.7.7.7.2.m1.1.1.cmml" xref="S4.T1.7.7.7.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.7.7.7.2.m1.1.1.1.cmml" xref="S4.T1.7.7.7.2.m1.1.1">subscript</csymbol><cn id="S4.T1.7.7.7.2.m1.1.1.2.cmml" type="float" xref="S4.T1.7.7.7.2.m1.1.1.2">6.29</cn><apply id="S4.T1.7.7.7.2.m1.1.1.3.cmml" xref="S4.T1.7.7.7.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.7.7.7.2.m1.1.1.3.1.cmml" xref="S4.T1.7.7.7.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.7.7.7.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.7.7.7.2.m1.1.1.3.2">24.28</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.2.m1.1c">6.29_{\pm 24.28}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.2.m1.1d">6.29 start_POSTSUBSCRIPT ± 24.28 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.4">-89.84</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.9">
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.9.3">DeepSeek-V3</td>
<td class="ltx_td ltx_align_right" id="S4.T1.8.8.8.1"><math alttext="98.92_{\pm 10.34}" class="ltx_Math" display="inline" id="S4.T1.8.8.8.1.m1.1"><semantics id="S4.T1.8.8.8.1.m1.1a"><msub id="S4.T1.8.8.8.1.m1.1.1" xref="S4.T1.8.8.8.1.m1.1.1.cmml"><mn id="S4.T1.8.8.8.1.m1.1.1.2" xref="S4.T1.8.8.8.1.m1.1.1.2.cmml">98.92</mn><mrow id="S4.T1.8.8.8.1.m1.1.1.3" xref="S4.T1.8.8.8.1.m1.1.1.3.cmml"><mo id="S4.T1.8.8.8.1.m1.1.1.3a" xref="S4.T1.8.8.8.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.8.8.8.1.m1.1.1.3.2" xref="S4.T1.8.8.8.1.m1.1.1.3.2.cmml">10.34</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.1.m1.1b"><apply id="S4.T1.8.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.8.8.8.1.m1.1.1.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1">subscript</csymbol><cn id="S4.T1.8.8.8.1.m1.1.1.2.cmml" type="float" xref="S4.T1.8.8.8.1.m1.1.1.2">98.92</cn><apply id="S4.T1.8.8.8.1.m1.1.1.3.cmml" xref="S4.T1.8.8.8.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.8.8.8.1.m1.1.1.3.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.8.8.8.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.8.8.8.1.m1.1.1.3.2">10.34</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.1.m1.1c">98.92_{\pm 10.34}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.1.m1.1d">98.92 start_POSTSUBSCRIPT ± 10.34 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.9.9.9.2"><math alttext="16.14_{\pm 36.79}" class="ltx_Math" display="inline" id="S4.T1.9.9.9.2.m1.1"><semantics id="S4.T1.9.9.9.2.m1.1a"><msub id="S4.T1.9.9.9.2.m1.1.1" xref="S4.T1.9.9.9.2.m1.1.1.cmml"><mn id="S4.T1.9.9.9.2.m1.1.1.2" xref="S4.T1.9.9.9.2.m1.1.1.2.cmml">16.14</mn><mrow id="S4.T1.9.9.9.2.m1.1.1.3" xref="S4.T1.9.9.9.2.m1.1.1.3.cmml"><mo id="S4.T1.9.9.9.2.m1.1.1.3a" xref="S4.T1.9.9.9.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.9.9.9.2.m1.1.1.3.2" xref="S4.T1.9.9.9.2.m1.1.1.3.2.cmml">36.79</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.2.m1.1b"><apply id="S4.T1.9.9.9.2.m1.1.1.cmml" xref="S4.T1.9.9.9.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.9.9.9.2.m1.1.1.1.cmml" xref="S4.T1.9.9.9.2.m1.1.1">subscript</csymbol><cn id="S4.T1.9.9.9.2.m1.1.1.2.cmml" type="float" xref="S4.T1.9.9.9.2.m1.1.1.2">16.14</cn><apply id="S4.T1.9.9.9.2.m1.1.1.3.cmml" xref="S4.T1.9.9.9.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.9.9.9.2.m1.1.1.3.1.cmml" xref="S4.T1.9.9.9.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.9.9.9.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.9.9.9.2.m1.1.1.3.2">36.79</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.2.m1.1c">16.14_{\pm 36.79}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.2.m1.1d">16.14 start_POSTSUBSCRIPT ± 36.79 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.4">-82.78</td>
</tr>
<tr class="ltx_tr" id="S4.T1.11.11.11">
<td class="ltx_td ltx_align_left" id="S4.T1.11.11.11.3">gemini-2.0-flash-thinking-exp-01-21</td>
<td class="ltx_td ltx_align_right" id="S4.T1.10.10.10.1"><math alttext="91.07_{\pm 28.52}" class="ltx_Math" display="inline" id="S4.T1.10.10.10.1.m1.1"><semantics id="S4.T1.10.10.10.1.m1.1a"><msub id="S4.T1.10.10.10.1.m1.1.1" xref="S4.T1.10.10.10.1.m1.1.1.cmml"><mn id="S4.T1.10.10.10.1.m1.1.1.2" xref="S4.T1.10.10.10.1.m1.1.1.2.cmml">91.07</mn><mrow id="S4.T1.10.10.10.1.m1.1.1.3" xref="S4.T1.10.10.10.1.m1.1.1.3.cmml"><mo id="S4.T1.10.10.10.1.m1.1.1.3a" xref="S4.T1.10.10.10.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.10.10.10.1.m1.1.1.3.2" xref="S4.T1.10.10.10.1.m1.1.1.3.2.cmml">28.52</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.1.m1.1b"><apply id="S4.T1.10.10.10.1.m1.1.1.cmml" xref="S4.T1.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.10.10.10.1.m1.1.1.1.cmml" xref="S4.T1.10.10.10.1.m1.1.1">subscript</csymbol><cn id="S4.T1.10.10.10.1.m1.1.1.2.cmml" type="float" xref="S4.T1.10.10.10.1.m1.1.1.2">91.07</cn><apply id="S4.T1.10.10.10.1.m1.1.1.3.cmml" xref="S4.T1.10.10.10.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.10.10.10.1.m1.1.1.3.1.cmml" xref="S4.T1.10.10.10.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.10.10.10.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.10.10.10.1.m1.1.1.3.2">28.52</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.1.m1.1c">91.07_{\pm 28.52}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.1.m1.1d">91.07 start_POSTSUBSCRIPT ± 28.52 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.11.11.11.2"><math alttext="10.81_{\pm 31.05}" class="ltx_Math" display="inline" id="S4.T1.11.11.11.2.m1.1"><semantics id="S4.T1.11.11.11.2.m1.1a"><msub id="S4.T1.11.11.11.2.m1.1.1" xref="S4.T1.11.11.11.2.m1.1.1.cmml"><mn id="S4.T1.11.11.11.2.m1.1.1.2" xref="S4.T1.11.11.11.2.m1.1.1.2.cmml">10.81</mn><mrow id="S4.T1.11.11.11.2.m1.1.1.3" xref="S4.T1.11.11.11.2.m1.1.1.3.cmml"><mo id="S4.T1.11.11.11.2.m1.1.1.3a" xref="S4.T1.11.11.11.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.11.11.11.2.m1.1.1.3.2" xref="S4.T1.11.11.11.2.m1.1.1.3.2.cmml">31.05</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.2.m1.1b"><apply id="S4.T1.11.11.11.2.m1.1.1.cmml" xref="S4.T1.11.11.11.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.11.11.11.2.m1.1.1.1.cmml" xref="S4.T1.11.11.11.2.m1.1.1">subscript</csymbol><cn id="S4.T1.11.11.11.2.m1.1.1.2.cmml" type="float" xref="S4.T1.11.11.11.2.m1.1.1.2">10.81</cn><apply id="S4.T1.11.11.11.2.m1.1.1.3.cmml" xref="S4.T1.11.11.11.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.11.11.11.2.m1.1.1.3.1.cmml" xref="S4.T1.11.11.11.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.11.11.11.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.11.11.11.2.m1.1.1.3.2">31.05</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.2.m1.1c">10.81_{\pm 31.05}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.2.m1.1d">10.81 start_POSTSUBSCRIPT ± 31.05 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.11.4">-80.26</td>
</tr>
<tr class="ltx_tr" id="S4.T1.13.13.13">
<td class="ltx_td ltx_align_left" id="S4.T1.13.13.13.3">gemini-2.0-pro-exp-02-05</td>
<td class="ltx_td ltx_align_right" id="S4.T1.12.12.12.1"><math alttext="94.88_{\pm 22.04}" class="ltx_Math" display="inline" id="S4.T1.12.12.12.1.m1.1"><semantics id="S4.T1.12.12.12.1.m1.1a"><msub id="S4.T1.12.12.12.1.m1.1.1" xref="S4.T1.12.12.12.1.m1.1.1.cmml"><mn id="S4.T1.12.12.12.1.m1.1.1.2" xref="S4.T1.12.12.12.1.m1.1.1.2.cmml">94.88</mn><mrow id="S4.T1.12.12.12.1.m1.1.1.3" xref="S4.T1.12.12.12.1.m1.1.1.3.cmml"><mo id="S4.T1.12.12.12.1.m1.1.1.3a" xref="S4.T1.12.12.12.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.12.12.12.1.m1.1.1.3.2" xref="S4.T1.12.12.12.1.m1.1.1.3.2.cmml">22.04</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.1.m1.1b"><apply id="S4.T1.12.12.12.1.m1.1.1.cmml" xref="S4.T1.12.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.12.12.12.1.m1.1.1.1.cmml" xref="S4.T1.12.12.12.1.m1.1.1">subscript</csymbol><cn id="S4.T1.12.12.12.1.m1.1.1.2.cmml" type="float" xref="S4.T1.12.12.12.1.m1.1.1.2">94.88</cn><apply id="S4.T1.12.12.12.1.m1.1.1.3.cmml" xref="S4.T1.12.12.12.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.12.12.12.1.m1.1.1.3.1.cmml" xref="S4.T1.12.12.12.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.12.12.12.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.12.12.12.1.m1.1.1.3.2">22.04</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.1.m1.1c">94.88_{\pm 22.04}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.1.m1.1d">94.88 start_POSTSUBSCRIPT ± 22.04 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.13.13.13.2"><math alttext="14.21_{\pm 34.92}" class="ltx_Math" display="inline" id="S4.T1.13.13.13.2.m1.1"><semantics id="S4.T1.13.13.13.2.m1.1a"><msub id="S4.T1.13.13.13.2.m1.1.1" xref="S4.T1.13.13.13.2.m1.1.1.cmml"><mn id="S4.T1.13.13.13.2.m1.1.1.2" xref="S4.T1.13.13.13.2.m1.1.1.2.cmml">14.21</mn><mrow id="S4.T1.13.13.13.2.m1.1.1.3" xref="S4.T1.13.13.13.2.m1.1.1.3.cmml"><mo id="S4.T1.13.13.13.2.m1.1.1.3a" xref="S4.T1.13.13.13.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.13.13.13.2.m1.1.1.3.2" xref="S4.T1.13.13.13.2.m1.1.1.3.2.cmml">34.92</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.2.m1.1b"><apply id="S4.T1.13.13.13.2.m1.1.1.cmml" xref="S4.T1.13.13.13.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.13.13.13.2.m1.1.1.1.cmml" xref="S4.T1.13.13.13.2.m1.1.1">subscript</csymbol><cn id="S4.T1.13.13.13.2.m1.1.1.2.cmml" type="float" xref="S4.T1.13.13.13.2.m1.1.1.2">14.21</cn><apply id="S4.T1.13.13.13.2.m1.1.1.3.cmml" xref="S4.T1.13.13.13.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.13.13.13.2.m1.1.1.3.1.cmml" xref="S4.T1.13.13.13.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.13.13.13.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.13.13.13.2.m1.1.1.3.2">34.92</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.2.m1.1c">14.21_{\pm 34.92}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.2.m1.1d">14.21 start_POSTSUBSCRIPT ± 34.92 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.13.4">-80.67</td>
</tr>
<tr class="ltx_tr" id="S4.T1.15.15.15">
<td class="ltx_td ltx_align_left" id="S4.T1.15.15.15.3">gemini-2.0-flash-exp</td>
<td class="ltx_td ltx_align_right" id="S4.T1.14.14.14.1"><math alttext="98.10_{\pm 13.65}" class="ltx_Math" display="inline" id="S4.T1.14.14.14.1.m1.1"><semantics id="S4.T1.14.14.14.1.m1.1a"><msub id="S4.T1.14.14.14.1.m1.1.1" xref="S4.T1.14.14.14.1.m1.1.1.cmml"><mn id="S4.T1.14.14.14.1.m1.1.1.2" xref="S4.T1.14.14.14.1.m1.1.1.2.cmml">98.10</mn><mrow id="S4.T1.14.14.14.1.m1.1.1.3" xref="S4.T1.14.14.14.1.m1.1.1.3.cmml"><mo id="S4.T1.14.14.14.1.m1.1.1.3a" xref="S4.T1.14.14.14.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.14.14.14.1.m1.1.1.3.2" xref="S4.T1.14.14.14.1.m1.1.1.3.2.cmml">13.65</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.1.m1.1b"><apply id="S4.T1.14.14.14.1.m1.1.1.cmml" xref="S4.T1.14.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.14.14.14.1.m1.1.1.1.cmml" xref="S4.T1.14.14.14.1.m1.1.1">subscript</csymbol><cn id="S4.T1.14.14.14.1.m1.1.1.2.cmml" type="float" xref="S4.T1.14.14.14.1.m1.1.1.2">98.10</cn><apply id="S4.T1.14.14.14.1.m1.1.1.3.cmml" xref="S4.T1.14.14.14.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.14.14.14.1.m1.1.1.3.1.cmml" xref="S4.T1.14.14.14.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.14.14.14.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.14.14.14.1.m1.1.1.3.2">13.65</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.1.m1.1c">98.10_{\pm 13.65}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.1.m1.1d">98.10 start_POSTSUBSCRIPT ± 13.65 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.15.15.15.2"><math alttext="9.25_{\pm 28.98}" class="ltx_Math" display="inline" id="S4.T1.15.15.15.2.m1.1"><semantics id="S4.T1.15.15.15.2.m1.1a"><msub id="S4.T1.15.15.15.2.m1.1.1" xref="S4.T1.15.15.15.2.m1.1.1.cmml"><mn id="S4.T1.15.15.15.2.m1.1.1.2" xref="S4.T1.15.15.15.2.m1.1.1.2.cmml">9.25</mn><mrow id="S4.T1.15.15.15.2.m1.1.1.3" xref="S4.T1.15.15.15.2.m1.1.1.3.cmml"><mo id="S4.T1.15.15.15.2.m1.1.1.3a" xref="S4.T1.15.15.15.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.15.15.15.2.m1.1.1.3.2" xref="S4.T1.15.15.15.2.m1.1.1.3.2.cmml">28.98</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.2.m1.1b"><apply id="S4.T1.15.15.15.2.m1.1.1.cmml" xref="S4.T1.15.15.15.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.15.15.15.2.m1.1.1.1.cmml" xref="S4.T1.15.15.15.2.m1.1.1">subscript</csymbol><cn id="S4.T1.15.15.15.2.m1.1.1.2.cmml" type="float" xref="S4.T1.15.15.15.2.m1.1.1.2">9.25</cn><apply id="S4.T1.15.15.15.2.m1.1.1.3.cmml" xref="S4.T1.15.15.15.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.15.15.15.2.m1.1.1.3.1.cmml" xref="S4.T1.15.15.15.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.15.15.15.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.15.15.15.2.m1.1.1.3.2">28.98</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.2.m1.1c">9.25_{\pm 28.98}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.2.m1.1d">9.25 start_POSTSUBSCRIPT ± 28.98 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.15.15.15.4">-88.85</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.17.17">
<td class="ltx_td ltx_align_left" id="S4.T1.17.17.17.3">gemini-2.5-pro-exp-03-25</td>
<td class="ltx_td ltx_align_right" id="S4.T1.16.16.16.1"><math alttext="99.16_{\pm 9.13}" class="ltx_Math" display="inline" id="S4.T1.16.16.16.1.m1.1"><semantics id="S4.T1.16.16.16.1.m1.1a"><msub id="S4.T1.16.16.16.1.m1.1.1" xref="S4.T1.16.16.16.1.m1.1.1.cmml"><mn id="S4.T1.16.16.16.1.m1.1.1.2" xref="S4.T1.16.16.16.1.m1.1.1.2.cmml">99.16</mn><mrow id="S4.T1.16.16.16.1.m1.1.1.3" xref="S4.T1.16.16.16.1.m1.1.1.3.cmml"><mo id="S4.T1.16.16.16.1.m1.1.1.3a" xref="S4.T1.16.16.16.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.16.16.16.1.m1.1.1.3.2" xref="S4.T1.16.16.16.1.m1.1.1.3.2.cmml">9.13</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.1.m1.1b"><apply id="S4.T1.16.16.16.1.m1.1.1.cmml" xref="S4.T1.16.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.16.16.16.1.m1.1.1.1.cmml" xref="S4.T1.16.16.16.1.m1.1.1">subscript</csymbol><cn id="S4.T1.16.16.16.1.m1.1.1.2.cmml" type="float" xref="S4.T1.16.16.16.1.m1.1.1.2">99.16</cn><apply id="S4.T1.16.16.16.1.m1.1.1.3.cmml" xref="S4.T1.16.16.16.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.16.16.16.1.m1.1.1.3.1.cmml" xref="S4.T1.16.16.16.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.16.16.16.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.16.16.16.1.m1.1.1.3.2">9.13</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.1.m1.1c">99.16_{\pm 9.13}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.1.m1.1d">99.16 start_POSTSUBSCRIPT ± 9.13 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.17.17.17.2"><math alttext="55.99_{\pm 49.64}" class="ltx_Math" display="inline" id="S4.T1.17.17.17.2.m1.1"><semantics id="S4.T1.17.17.17.2.m1.1a"><msub id="S4.T1.17.17.17.2.m1.1.1" xref="S4.T1.17.17.17.2.m1.1.1.cmml"><mn id="S4.T1.17.17.17.2.m1.1.1.2" xref="S4.T1.17.17.17.2.m1.1.1.2.cmml">55.99</mn><mrow id="S4.T1.17.17.17.2.m1.1.1.3" xref="S4.T1.17.17.17.2.m1.1.1.3.cmml"><mo id="S4.T1.17.17.17.2.m1.1.1.3a" xref="S4.T1.17.17.17.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.17.17.17.2.m1.1.1.3.2" xref="S4.T1.17.17.17.2.m1.1.1.3.2.cmml">49.64</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.2.m1.1b"><apply id="S4.T1.17.17.17.2.m1.1.1.cmml" xref="S4.T1.17.17.17.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.17.17.17.2.m1.1.1.1.cmml" xref="S4.T1.17.17.17.2.m1.1.1">subscript</csymbol><cn id="S4.T1.17.17.17.2.m1.1.1.2.cmml" type="float" xref="S4.T1.17.17.17.2.m1.1.1.2">55.99</cn><apply id="S4.T1.17.17.17.2.m1.1.1.3.cmml" xref="S4.T1.17.17.17.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.17.17.17.2.m1.1.1.3.1.cmml" xref="S4.T1.17.17.17.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.17.17.17.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.17.17.17.2.m1.1.1.3.2">49.64</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.2.m1.1c">55.99_{\pm 49.64}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.2.m1.1d">55.99 start_POSTSUBSCRIPT ± 49.64 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.17.17.17.4">-43.17</td>
</tr>
<tr class="ltx_tr" id="S4.T1.19.19.19">
<td class="ltx_td ltx_align_left" id="S4.T1.19.19.19.3">ERNIE-Speed</td>
<td class="ltx_td ltx_align_right" id="S4.T1.18.18.18.1"><math alttext="73.84_{\pm 43.95}" class="ltx_Math" display="inline" id="S4.T1.18.18.18.1.m1.1"><semantics id="S4.T1.18.18.18.1.m1.1a"><msub id="S4.T1.18.18.18.1.m1.1.1" xref="S4.T1.18.18.18.1.m1.1.1.cmml"><mn id="S4.T1.18.18.18.1.m1.1.1.2" xref="S4.T1.18.18.18.1.m1.1.1.2.cmml">73.84</mn><mrow id="S4.T1.18.18.18.1.m1.1.1.3" xref="S4.T1.18.18.18.1.m1.1.1.3.cmml"><mo id="S4.T1.18.18.18.1.m1.1.1.3a" xref="S4.T1.18.18.18.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.18.18.18.1.m1.1.1.3.2" xref="S4.T1.18.18.18.1.m1.1.1.3.2.cmml">43.95</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.1.m1.1b"><apply id="S4.T1.18.18.18.1.m1.1.1.cmml" xref="S4.T1.18.18.18.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.18.18.18.1.m1.1.1.1.cmml" xref="S4.T1.18.18.18.1.m1.1.1">subscript</csymbol><cn id="S4.T1.18.18.18.1.m1.1.1.2.cmml" type="float" xref="S4.T1.18.18.18.1.m1.1.1.2">73.84</cn><apply id="S4.T1.18.18.18.1.m1.1.1.3.cmml" xref="S4.T1.18.18.18.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.18.18.18.1.m1.1.1.3.1.cmml" xref="S4.T1.18.18.18.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.18.18.18.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.18.18.18.1.m1.1.1.3.2">43.95</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.1.m1.1c">73.84_{\pm 43.95}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.1.m1.1d">73.84 start_POSTSUBSCRIPT ± 43.95 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.19.19.19.2"><math alttext="0.28_{\pm 5.29}" class="ltx_Math" display="inline" id="S4.T1.19.19.19.2.m1.1"><semantics id="S4.T1.19.19.19.2.m1.1a"><msub id="S4.T1.19.19.19.2.m1.1.1" xref="S4.T1.19.19.19.2.m1.1.1.cmml"><mn id="S4.T1.19.19.19.2.m1.1.1.2" xref="S4.T1.19.19.19.2.m1.1.1.2.cmml">0.28</mn><mrow id="S4.T1.19.19.19.2.m1.1.1.3" xref="S4.T1.19.19.19.2.m1.1.1.3.cmml"><mo id="S4.T1.19.19.19.2.m1.1.1.3a" xref="S4.T1.19.19.19.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.19.19.19.2.m1.1.1.3.2" xref="S4.T1.19.19.19.2.m1.1.1.3.2.cmml">5.29</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.2.m1.1b"><apply id="S4.T1.19.19.19.2.m1.1.1.cmml" xref="S4.T1.19.19.19.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.19.19.19.2.m1.1.1.1.cmml" xref="S4.T1.19.19.19.2.m1.1.1">subscript</csymbol><cn id="S4.T1.19.19.19.2.m1.1.1.2.cmml" type="float" xref="S4.T1.19.19.19.2.m1.1.1.2">0.28</cn><apply id="S4.T1.19.19.19.2.m1.1.1.3.cmml" xref="S4.T1.19.19.19.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.19.19.19.2.m1.1.1.3.1.cmml" xref="S4.T1.19.19.19.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.19.19.19.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.19.19.19.2.m1.1.1.3.2">5.29</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.2.m1.1c">0.28_{\pm 5.29}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.2.m1.1d">0.28 start_POSTSUBSCRIPT ± 5.29 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.19.19.19.4">-73.56</td>
</tr>
<tr class="ltx_tr" id="S4.T1.21.21.21">
<td class="ltx_td ltx_align_left" id="S4.T1.21.21.21.3">GPT-4o</td>
<td class="ltx_td ltx_align_right" id="S4.T1.20.20.20.1"><math alttext="93.39_{\pm 24.85}" class="ltx_Math" display="inline" id="S4.T1.20.20.20.1.m1.1"><semantics id="S4.T1.20.20.20.1.m1.1a"><msub id="S4.T1.20.20.20.1.m1.1.1" xref="S4.T1.20.20.20.1.m1.1.1.cmml"><mn id="S4.T1.20.20.20.1.m1.1.1.2" xref="S4.T1.20.20.20.1.m1.1.1.2.cmml">93.39</mn><mrow id="S4.T1.20.20.20.1.m1.1.1.3" xref="S4.T1.20.20.20.1.m1.1.1.3.cmml"><mo id="S4.T1.20.20.20.1.m1.1.1.3a" xref="S4.T1.20.20.20.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.20.20.20.1.m1.1.1.3.2" xref="S4.T1.20.20.20.1.m1.1.1.3.2.cmml">24.85</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.1.m1.1b"><apply id="S4.T1.20.20.20.1.m1.1.1.cmml" xref="S4.T1.20.20.20.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.20.20.20.1.m1.1.1.1.cmml" xref="S4.T1.20.20.20.1.m1.1.1">subscript</csymbol><cn id="S4.T1.20.20.20.1.m1.1.1.2.cmml" type="float" xref="S4.T1.20.20.20.1.m1.1.1.2">93.39</cn><apply id="S4.T1.20.20.20.1.m1.1.1.3.cmml" xref="S4.T1.20.20.20.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.20.20.20.1.m1.1.1.3.1.cmml" xref="S4.T1.20.20.20.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.20.20.20.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.20.20.20.1.m1.1.1.3.2">24.85</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.1.m1.1c">93.39_{\pm 24.85}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.1.m1.1d">93.39 start_POSTSUBSCRIPT ± 24.85 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T1.21.21.21.2"><math alttext="9.59_{\pm 29.45}" class="ltx_Math" display="inline" id="S4.T1.21.21.21.2.m1.1"><semantics id="S4.T1.21.21.21.2.m1.1a"><msub id="S4.T1.21.21.21.2.m1.1.1" xref="S4.T1.21.21.21.2.m1.1.1.cmml"><mn id="S4.T1.21.21.21.2.m1.1.1.2" xref="S4.T1.21.21.21.2.m1.1.1.2.cmml">9.59</mn><mrow id="S4.T1.21.21.21.2.m1.1.1.3" xref="S4.T1.21.21.21.2.m1.1.1.3.cmml"><mo id="S4.T1.21.21.21.2.m1.1.1.3a" xref="S4.T1.21.21.21.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.21.21.21.2.m1.1.1.3.2" xref="S4.T1.21.21.21.2.m1.1.1.3.2.cmml">29.45</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.2.m1.1b"><apply id="S4.T1.21.21.21.2.m1.1.1.cmml" xref="S4.T1.21.21.21.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.21.21.21.2.m1.1.1.1.cmml" xref="S4.T1.21.21.21.2.m1.1.1">subscript</csymbol><cn id="S4.T1.21.21.21.2.m1.1.1.2.cmml" type="float" xref="S4.T1.21.21.21.2.m1.1.1.2">9.59</cn><apply id="S4.T1.21.21.21.2.m1.1.1.3.cmml" xref="S4.T1.21.21.21.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.21.21.21.2.m1.1.1.3.1.cmml" xref="S4.T1.21.21.21.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.21.21.21.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.21.21.21.2.m1.1.1.3.2">29.45</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.2.m1.1c">9.59_{\pm 29.45}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.2.m1.1d">9.59 start_POSTSUBSCRIPT ± 29.45 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.21.21.21.4">-83.80</td>
</tr>
<tr class="ltx_tr" id="S4.T1.23.23.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.23.23.23.3">Claude-3.5-sonnet</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.22.22.22.1"><math alttext="99.81_{\pm 4.39}" class="ltx_Math" display="inline" id="S4.T1.22.22.22.1.m1.1"><semantics id="S4.T1.22.22.22.1.m1.1a"><msub id="S4.T1.22.22.22.1.m1.1.1" xref="S4.T1.22.22.22.1.m1.1.1.cmml"><mn id="S4.T1.22.22.22.1.m1.1.1.2" xref="S4.T1.22.22.22.1.m1.1.1.2.cmml">99.81</mn><mrow id="S4.T1.22.22.22.1.m1.1.1.3" xref="S4.T1.22.22.22.1.m1.1.1.3.cmml"><mo id="S4.T1.22.22.22.1.m1.1.1.3a" xref="S4.T1.22.22.22.1.m1.1.1.3.cmml">±</mo><mn id="S4.T1.22.22.22.1.m1.1.1.3.2" xref="S4.T1.22.22.22.1.m1.1.1.3.2.cmml">4.39</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.22.1.m1.1b"><apply id="S4.T1.22.22.22.1.m1.1.1.cmml" xref="S4.T1.22.22.22.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.22.22.22.1.m1.1.1.1.cmml" xref="S4.T1.22.22.22.1.m1.1.1">subscript</csymbol><cn id="S4.T1.22.22.22.1.m1.1.1.2.cmml" type="float" xref="S4.T1.22.22.22.1.m1.1.1.2">99.81</cn><apply id="S4.T1.22.22.22.1.m1.1.1.3.cmml" xref="S4.T1.22.22.22.1.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.22.22.22.1.m1.1.1.3.1.cmml" xref="S4.T1.22.22.22.1.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.22.22.22.1.m1.1.1.3.2.cmml" type="float" xref="S4.T1.22.22.22.1.m1.1.1.3.2">4.39</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.22.1.m1.1c">99.81_{\pm 4.39}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.22.1.m1.1d">99.81 start_POSTSUBSCRIPT ± 4.39 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T1.23.23.23.2"><math alttext="7.51_{\pm 26.36}" class="ltx_Math" display="inline" id="S4.T1.23.23.23.2.m1.1"><semantics id="S4.T1.23.23.23.2.m1.1a"><msub id="S4.T1.23.23.23.2.m1.1.1" xref="S4.T1.23.23.23.2.m1.1.1.cmml"><mn id="S4.T1.23.23.23.2.m1.1.1.2" xref="S4.T1.23.23.23.2.m1.1.1.2.cmml">7.51</mn><mrow id="S4.T1.23.23.23.2.m1.1.1.3" xref="S4.T1.23.23.23.2.m1.1.1.3.cmml"><mo id="S4.T1.23.23.23.2.m1.1.1.3a" xref="S4.T1.23.23.23.2.m1.1.1.3.cmml">±</mo><mn id="S4.T1.23.23.23.2.m1.1.1.3.2" xref="S4.T1.23.23.23.2.m1.1.1.3.2.cmml">26.36</mn></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.2.m1.1b"><apply id="S4.T1.23.23.23.2.m1.1.1.cmml" xref="S4.T1.23.23.23.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T1.23.23.23.2.m1.1.1.1.cmml" xref="S4.T1.23.23.23.2.m1.1.1">subscript</csymbol><cn id="S4.T1.23.23.23.2.m1.1.1.2.cmml" type="float" xref="S4.T1.23.23.23.2.m1.1.1.2">7.51</cn><apply id="S4.T1.23.23.23.2.m1.1.1.3.cmml" xref="S4.T1.23.23.23.2.m1.1.1.3"><csymbol cd="latexml" id="S4.T1.23.23.23.2.m1.1.1.3.1.cmml" xref="S4.T1.23.23.23.2.m1.1.1.3">plus-or-minus</csymbol><cn id="S4.T1.23.23.23.2.m1.1.1.3.2.cmml" type="float" xref="S4.T1.23.23.23.2.m1.1.1.3.2">26.36</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.2.m1.1c">7.51_{\pm 26.36}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.2.m1.1d">7.51 start_POSTSUBSCRIPT ± 26.36 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.23.23.23.4">-92.30</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of various state-of-the-art Large Language Models (LLMs) on two different addition tasks: standard numerical addition and symbolic addition.  The 'Zero-Shot' column shows the accuracy of the models on numerical addition without any prior training or fine-tuning on this specific task.  The 'Symbolic' column presents the accuracy on a symbolic addition task where digits are replaced with arbitrary symbols maintaining a one-to-one mapping.  The Δ column shows the percentage point drop in accuracy between the two tasks. This highlights the models' ability to generalize their understanding of addition beyond numerical representations. A large negative value indicates poor generalization ability, suggesting the model is relying on memorization of numerical patterns rather than true understanding of the underlying mathematical principle. ZS stands for Zero-Shot, and S stands for Symbolic.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance Comparison Between Numerical and Symbolic Addition Tasks (%). SOTA Models exhibit strong performance on standard numerical addition (Zero-Shot) but fail dramatically on isomorphic symbolic tasks (ΔΔ\Deltaroman_Δ shows the percentage point drop), revealing their lack of true compositional understanding. ZS = Zero-Shot, S = Symbolic.
> </details>





### In-depth insights


#### LLM's Pattern Bias
**LLMs exhibit a pronounced pattern bias, relying heavily on memorized sequences rather than abstract rules**. This is evident in their struggle with symbolic math, where performance collapses despite high scores on numerical tasks. The models seem to learn statistical co-occurrences of digits rather than the underlying arithmetic principles, leading to inconsistent generalization. **This bias is further highlighted by the fact that explicit rule provision actually degrades performance**, as models struggle to reconcile the general rules with their pre-existing memorized patterns. **The architecture seems fundamentally optimized for pattern recognition, not true mathematical reasoning**. To combat this bias, future research should prioritize novel architectures and training methods that encourage abstract understanding over surface-level pattern matching.

#### Symbolic Fails
**LLMs struggle with symbolic representations** despite high accuracy on numerical addition. This suggests they rely on pattern matching rather than true algorithmic reasoning. **Performance collapses under symbolic mapping**, indicating a failure to generalize addition rules. Accuracy varies non-monotonically with digit count, suggesting inconsistent rule application. **Commutativity violations** occur frequently, indicating an incomplete understanding of basic mathematical properties. **Explicitly providing addition rules degrades performance**, suggesting a conflict between provided rules and internalized knowledge. **Architectural limitations** hinder true mathematical reasoning. Current LLMs rely on memory pattern over genuine rule learning, indicating a need for new approaches. Despite impressive scores, they show limited understanding in isomorphic tasks.This limitation highlighting urgent need for evaluation methodologies.

#### Rule vs. Memory
The dichotomy between rule-based reasoning and memory-based pattern matching is central to understanding LLMs. **LLMs often demonstrate impressive performance**, but their reliance on memorization over genuine rule learning is apparent when faced with novel inputs. **Performance degradation in symbolic tasks** indicates a failure to generalize addition principles, suggesting that **LLMs struggle to abstract mathematical concepts**. Moreover, **violations of fundamental properties like commutativity** underscore a reliance on memorized patterns rather than an algorithmic understanding. The architecture limits the ability to learn and apply formal mathematical rules, indicating a need for evaluation methods that can distinguish between pattern matching and true mathematical understanding. 

#### Broken Rules
**LLMs often fail basic arithmetic rules, despite excelling at complex benchmarks.** This highlights a critical gap between superficial pattern matching and genuine mathematical understanding. While achieving high numerical accuracy, **performance collapses under symbolic mapping, revealing a reliance on memorized patterns.** The violation of fundamental properties like commutativity, further underscores this issue. Explicitly providing rules can degrade performance, suggesting a conflict between external guidance and internalized knowledge.  This points to limitations in current architectures and the need for new approaches to achieve true mathematical reasoning, moving beyond pattern recognition to grasp underlying mathematical principles.

#### Beyond Benchmarks
**Moving past superficial benchmark scores** is essential for truly evaluating AI mathematical reasoning. Current benchmarks, while showcasing impressive performance, **often fail to differentiate between genuine understanding and mere pattern recognition**. This is particularly evident in the context of LLMs, which can achieve high scores on complex math problems yet struggle with basic arithmetic principles when presented in unfamiliar formats. **A more rigorous approach to benchmarking should incorporate**: (1) representation-invariant testing through symbolic transformations to ensure models grasp abstract concepts rather than memorizing specific digits, (2) systematic verification of mathematical properties like commutativity, and (3) complexity scaling analysis to assess whether performance degradation aligns with true algorithmic implementation rather than relying on surface-level matching. Focusing on these elements will help us move beyond inflated benchmark scores and develop AI systems with true mathematical capabilities.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05262/x2.png)

> 🔼 Figure 2 presents a comparison of Large Language Model (LLM) performance on two versions of a simple arithmetic task: standard numerical addition and symbolic addition.  The left panel shows that while LLMs achieve high accuracy on numerical addition (adding numbers like 12 + 34), their performance is not consistent across all problems of the same complexity. The inconsistent performance, which increases and then decreases with digit count, suggests that the models may be relying on pattern matching, rather than a true understanding of arithmetic principles. The right panel demonstrates that when numbers are replaced with symbols (e.g., 1 becomes 'A', 2 becomes 'B'), the models show a steady decrease in accuracy as the number of digits increases. This indicates that these models heavily rely on memorized patterns of numerical digits to perform the task, rather than a generalized understanding of arithmetic operations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Performance Degradation Patterns in Zero-shot vs. Symbolic Addition. While LLMs achieve high accuracy on standard numerical addition (left), their non-monotonic performance curve suggests brittle pattern matching rather than true algorithmic reasoning. In contrast, symbolic addition tests (right) reveal systematic degradation with increasing digit count. This stark contrast between numerical and symbolic performance suggests LLMs rely heavily on memorized patterns rather than learned arithmetic principles.
> </details>



![](https://arxiv.org/html/2504.05262/extracted/6342656/figures/few-shot-123-stage2.png)

> 🔼 This figure displays the performance of various LLMs on an elementary addition task under different conditions.  The x-axis represents the number of digits in the addition problem. The y-axis represents accuracy.  Multiple lines are plotted, showing the zero-shot performance (no explicit rules given) and the few-shot performance (with explicit rules provided) for several different LLMs. The figure demonstrates that providing explicit rules for addition surprisingly reduces the model's performance, in contrast to what might be expected. This is consistent across multiple LLMs, highlighting that simply providing rules may not be sufficient for effective mathematical reasoning in LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Few-Shot Performance with Explicit Rule Provision. Explicit rule provision leads to a significant drop in performance compared to zero-shot, contradicting the expected improvement.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2.3.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.2.2.3.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.2.2.3.1.2">Position Addition Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.2.2.3.1.3">Carry-over Acc.</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.2.3">Task Type</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.2.4">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.2.5">S</td>
<td class="ltx_td ltx_align_right" id="S4.T2.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T2.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.2.6">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.2.7">S</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.2.2"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T2.2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.2.m1.1a"><mi id="S4.T2.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T2.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.4.2.1">Models</th>
<td class="ltx_td" id="S4.T2.2.2.4.2.2"></td>
<td class="ltx_td" id="S4.T2.2.2.4.2.3"></td>
<td class="ltx_td" id="S4.T2.2.2.4.2.4"></td>
<td class="ltx_td" id="S4.T2.2.2.4.2.5"></td>
<td class="ltx_td" id="S4.T2.2.2.4.2.6"></td>
<td class="ltx_td" id="S4.T2.2.2.4.2.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.2.2.5.3.1">Llama3.3-70b-It</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.2">73.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.3">0.77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.4">-73.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.5">75.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.6">2.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T2.2.2.5.3.7">-72.57</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.6.4.1">gemma-2-27b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.2">74.77</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.3">0.91</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.4">-73.85</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.5">76.68</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.6">0.91</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.6.4.7">-75.77</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.7.5.1">Qwen2.5-72b-It</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.2">88.19</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.3">2.09</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.4">-86.10</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.5">89.78</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.6">4.12</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.7.5.7">-85.67</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.8.6.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.2">78.55</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.3">11.98</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.4">-66.57</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.5">81.14</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.6">15.23</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.8.6.7">-65.91</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.9.7.1">gemini-2.0-flash-exp</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.2">73.83</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.3">1.21</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.4">-72.62</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.5">79.52</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.6">3.28</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.9.7.7">-76.24</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.10.8.1">gemini-2.0-flash-thinking-exp-01-21</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.2">86.09</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.3">2.89</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.4">-83.20</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.5">88.30</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.6">9.03</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.10.8.7">-79.27</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.11.9.1">gemini-2.0-pro-exp-02-05</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.2">69.52</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.3">4.19</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.4">-65.33</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.5">77.36</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.6">7.07</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.11.9.7">-70.29</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.12.10.1">gemini-2.5-pro-exp-03-25</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.2">88.97</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.3">19.80</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.4">-69.17</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.5">88.49</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.6">24.56</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.12.10.7">-63.93</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.13.11.1">ERNIE-Speed</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.2">67.66</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.3">0.07</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.4">-67.59</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.5">70.89</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.6">0.21</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.13.11.7">-70.68</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.2.2.14.12.1">gpt-4o</th>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.2">76.12</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.3">3.79</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.4">-72.33</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.5">79.55</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.6">6.73</td>
<td class="ltx_td ltx_align_right" id="S4.T2.2.2.14.12.7">-72.82</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.2.2.15.13.1">claude-3-5-sonnet</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.2">81.78</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.3">3.19</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.4">-78.59</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.5">90.28</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.6">6.92</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T2.2.2.15.13.7">-83.36</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a detailed analysis of Large Language Models' (LLMs) ability to perform addition.  It compares the performance of LLMs on standard numerical addition problems (zero-shot) against their performance on the same problems when the digits are replaced with arbitrary symbols.  The results reveal a significant drop in accuracy when symbolic representations are used, indicating that the LLMs do not fully grasp the underlying principles of addition but rather rely on pattern recognition based on the numerical representation of the digits.  The table further breaks down the accuracy into two components: digit addition and carry-over operations. This breakdown illustrates the impact of symbolic representation on both aspects of the addition process.  For a more comprehensive comparison, including a broader range of models, refer to Table 7.
> <details>
> <summary>read the caption</summary>
> Table 2: LLMs’ Understanding of Addition Principles. Models achieve high accuracy(%) on standard numerical tasks (zero-shot) but show severe degradation when tested on symbolic representations, both for carry operations and digit addition. This stark contrast suggests that models only grasp principles in numerical form and fail to generalize to abstract representations. The full comparision is presented in Table 7
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.1">Models</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.2">ZS #</th>
<th class="ltx_td ltx_align_right ltx_th ltx_th_column ltx_border_tt" id="S4.T3.5.1.1.1.3">S #</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.5.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.1.2.1.1">Llama3.3-70b-It</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.5.1.2.1.2">1771</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T3.5.1.2.1.3">81</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.3.2">
<td class="ltx_td ltx_align_left" id="S4.T3.5.1.3.2.1">gemma-2-27b-it</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.3.2.2">1086</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.3.2.3">7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.4.3">
<td class="ltx_td ltx_align_left" id="S4.T3.5.1.4.3.1">Gemma2-9b-it</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.4.3.2">801</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.4.3.3">127</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.5.4">
<td class="ltx_td ltx_align_left" id="S4.T3.5.1.5.4.1">Meta-Llama-3-70B-Instruct</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.5.4.2">432</td>
<td class="ltx_td ltx_align_right" id="S4.T3.5.1.5.4.3">20</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.1.6.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.5.1.6.5.1">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.5.1.6.5.2">278</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T3.5.1.6.5.3">0</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the number of times that LLMs correctly computed A + B but failed to correctly compute B + A (or vice versa).  This demonstrates that many LLMs violate the commutative property (A + B = B + A) of addition, a fundamental principle of arithmetic. The high number of violations suggests that these models lack a complete mathematical understanding and rely on methods other than true algorithmic reasoning.
> <details>
> <summary>read the caption</summary>
> Table 3: Asymmetric Performance in Addition Tasks. Number of instances where models correctly solved A+B𝐴𝐵A+Bitalic_A + italic_B but failed B+A𝐵𝐴B+Aitalic_B + italic_A (or vice versa), demonstrating violation of the commutative property and suggesting incomplete mathematical understanding.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T4.1.1.1.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T4.1.1.1.1.2">Carry-over Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T4.1.1.1.1.3">Position Addition Acc.</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.2.2.1">Task Type</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.2">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.3">S</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.4">FS</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.5">FS-2</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.6">FS-3</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.7">E</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.8">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.9">S</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.10">FS</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.11">FS-2</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.12">FS-3</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.2.2.13">E</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.3.3.1">Models</th>
<td class="ltx_td" id="S4.T4.1.1.3.3.2"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.3"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.4"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.5"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.6"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.7"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.8"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.9"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.10"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.11"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.12"></td>
<td class="ltx_td" id="S4.T4.1.1.3.3.13"></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.4.4.1">Llama2-7b-it</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.2">22.58</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.3">0.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.4">0.06</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.5">0.32</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.6">0.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.7">7.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.8">20.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.9">0.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.10">0.03</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.11">0.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.12">0.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.4.4.13">6.05</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.5.5.1">Llama3-8b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.2">15.89</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.3">0.20</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.4">8.42</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.5">15.38</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.6">16.68</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.7">13.54</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.8">16.25</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.9">0.07</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.10">7.15</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.11">15.00</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.12">14.34</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.5.5.13">12.32</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.6.6.1">Llama3.1-8b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.2">21.96</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.3">0.25</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.4">8.84</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.5">15.33</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.6">12.46</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.7">24.80</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.8">20.38</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.9">0.10</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.10">7.92</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.11">12.91</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.12">10.14</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.6.6.13">23.61</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.7.7.1">Llama3.2-11b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.2">17.35</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.3">0.26</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.4">9.04</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.5">19.70</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.6">13.97</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.7">27.47</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.8">16.60</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.9">0.12</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.10">8.29</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.11">18.92</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.12">12.57</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.7.7.13">27.13</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.8.8.1">Qwen1.5-7b-it</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.2">47.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.3">0.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.4">3.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.5">6.40</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.6">5.36</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.7">7.51</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.8">46.78</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.9">0.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.10">2.66</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.11">5.98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.12">4.62</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.8.8.13">8.00</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.9.9.1">Qwen2-7b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.2">62.94</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.3">0.06</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.4">28.36</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.5">57.22</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.6">32.35</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.7">70.83</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.8">60.03</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.9">0.05</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.10">23.65</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.11">48.34</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.12">28.25</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.9.9.13">68.80</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.1.1.10.10.1">Qwen2.5-7b-it</th>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.2">74.49</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.3">0.13</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.4">38.28</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.5">55.08</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.6">41.54</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.7">72.09</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.8">71.39</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.9">0.11</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.10">33.16</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.11">48.12</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.12">36.11</td>
<td class="ltx_td ltx_align_right" id="S4.T4.1.1.10.10.13">71.53</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.1.1.11.11.1">Gemma2-9b-it</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.2">60.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.3">0.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.4">28.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.5">31.42</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.6">24.81</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.7">60.70</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.8">58.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.9">0.34</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.10">27.06</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.11">30.76</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.12">23.83</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T4.1.1.11.11.13">59.78</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.1">ERNIE-Speed</th>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.2">70.89</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.3">0.21</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.4">12.29</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.5">21.29</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.6">10.85</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.7">59.95</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.8">67.66</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.9">0.07</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.10">11.64</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.11">20.23</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.12">9.55</td>
<td class="ltx_td ltx_align_right ltx_border_bb ltx_border_t" id="S4.T4.1.1.12.12.13">54.43</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of providing explicit rules and requiring self-explanation on Large Language Models' (LLMs) performance on elementary addition tasks.  The experiments compare zero-shot performance (no explicit rules or explanation), few-shot learning with explicit rules provided (FS, FS-2, FS-3 denoting different numbers of examples), and an explain-and-do condition (E) where models explain their reasoning process before solving the problems. The table shows the accuracy for position-wise addition and carry-over operations for several LLMs across all conditions, revealing a significant performance degradation when explicit rules are given, contrasting with similar zero-shot performance when the model is prompted to explain its solution steps first. 
> <details>
> <summary>read the caption</summary>
> Table 4: Impact of Different Knowledge Intervention Strategies. Contrary to expectations, providing explicit rules (few-shot conditions) significantly reduces performance compared to zero-shot baseline. However, when models explain their reasoning before computation (explain-and-do), performance remains comparable to zero-shot levels. ZS = Zero-Shot, FS = Few-Shot, E = Explain-and-Do.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.3.4.1">
<td class="ltx_td ltx_border_tt" id="S4.T5.3.3.4.1.1"></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.3.4.1.2">Fine-Tuning Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T5.3.3.4.1.3">Dataset Domain</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.3.3.4.1.4">Overall Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.3.3.4.1.5">Position Addition Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T5.3.3.4.1.6">Carry-over Acc.</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.3.4">Task Type</td>
<td class="ltx_td" id="S4.T5.3.3.3.5"></td>
<td class="ltx_td" id="S4.T5.3.3.3.6"></td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.3.7">ZS</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.3.8">S</td>
<td class="ltx_td ltx_align_right" id="S4.T5.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T5.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.3.9">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.3.10">S</td>
<td class="ltx_td ltx_align_right" id="S4.T5.2.2.2.2"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mi id="S4.T5.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T5.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.3.11">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.3.12">S</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.3.3"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mi id="S4.T5.3.3.3.3.m1.1.1" mathvariant="normal" xref="S4.T5.3.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.5.2">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.5.2.1">Models</td>
<td class="ltx_td" id="S4.T5.3.3.5.2.2"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.3"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.4"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.5"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.6"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.7"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.8"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.9"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.10"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.11"></td>
<td class="ltx_td" id="S4.T5.3.3.5.2.12"></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.6.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.6.3.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.6.3.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.6.3.3">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.6.3.4">83.00</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.6.3.5">0.58</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.6">-82.41</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.7">71.39</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.8">0.11</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.9">-71.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.10">74.49</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.11">0.13</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.6.3.12">-74.37</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.7.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.2">SFT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.3">Task Specific (Numerical)</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.4">97.17</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.7.4.5">0.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.6">-97.17</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.7">87.91</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.8">0.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.9">-87.66</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.10">89.51</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.11">1.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.7.4.12">-88.25</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.8.5">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.8.5.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.8.5.2">RL(DPO)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.8.5.3">Task Specific (Numerical)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.8.5.4">95.32</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.8.5.5">0.37</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.6">-94.95</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.7">86.23</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.8">1.17</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.9">-85.06</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.10">87.75</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.11">2.35</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.8.5.12">-85.40</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.9.6">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.6.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.6.2">RL(SFT+DPO)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.6.3">Task Specific (Numerical)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.6.4">96.95</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.9.6.5">0.28</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.6">-96.67</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.7">84.48</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.8">0.29</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.9">-84.19</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.10">85.52</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.11">0.61</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.9.6.12">-84.91</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.10.7">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.10.7.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.10.7.2">SFT</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.10.7.3">Task Specific (Symbolic)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.10.7.4">0.00</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.10.7.5">30.66</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.6">+30.66</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.7">3.40</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.8">3.89</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.9">+0.49</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.10">6.71</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.11">6.98</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.10.7.12">+0.27</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.11.8">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.11.8.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.11.8.2">RL(DPO)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.11.8.3">Task Specific (Symbolic)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.11.8.4">50.73</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.11.8.5">24.10</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.6">-26.63</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.7">47.71</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.8">3.48</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.9">-44.23</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.10">48.40</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.11">6.37</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.11.8.12">-42.03</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.12.9">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.12.9.1">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.12.9.2">RL(SFT+DPO)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.12.9.3">Task Specific (Symbolic)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.12.9.4">12.32</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.12.9.5">2.85</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.6">-9.47</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.7">9.31</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.8">0.58</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.9">-8.73</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.10">9.70</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.11">1.13</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.12.9.12">-8.57</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.13.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.13.10.1">Eurus-2-7B-SFT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.13.10.2">SFT</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.13.10.3">Domain Specific</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.13.10.4">83.21</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T5.3.3.13.10.5">0.42</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.6">-82.79</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.7">81.21</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.8">3.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.9">-78.02</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.10">82.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.11">6.87</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T5.3.3.13.10.12">-75.41</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.14.11">
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.14.11.1">Eurus-2-7B-PRIME</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.14.11.2">RL(PRM)</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.14.11.3">Domain Specific</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.14.11.4">94.11</td>
<td class="ltx_td ltx_align_left" id="S4.T5.3.3.14.11.5">1.03</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.6">-93.08</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.7">91.59</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.8">3.10</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.9">-88.49</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.10">92.51</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.11">3.11</td>
<td class="ltx_td ltx_align_right" id="S4.T5.3.3.14.11.12">-89.40</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.15.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.15.12.1">DS-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.15.12.2">RL(Reasoning)</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.15.12.3">General</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.15.12.4">74.76</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T5.3.3.15.12.5">6.88</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.6">-67.88</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.7">65.38</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.8">33.41</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.9">-31.97</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.10">64.27</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.11">31.52</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T5.3.3.15.12.12">-32.75</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments evaluating the impact of different fine-tuning methods on Large Language Models' (LLMs) arithmetic abilities.  It compares the performance of models fine-tuned using supervised fine-tuning (SFT), reinforcement learning with Direct Preference Optimization (DPO), and a combined SFT+DPO approach.  The models were tested on both numerical and symbolic addition tasks to assess generalization capabilities. The results show that while SFT achieves high accuracy on numerical tasks, it generalizes poorly to symbolic tasks. In contrast, RL-based methods demonstrate better generalization, although with lower overall accuracy.  Finally, the table highlights the effect of using task-specific vs. general-domain training data, showing that general-domain training leads to better generalization across different task types.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of Fine-Tuning Approaches on Arithmetic Capabilities. Different fine-tuning strategies and dataset domains yield distinct trade-offs between performance and generalization. While SFT achieves highest numerical accuracy, it shows minimal transfer to symbolic tasks. RL-based approaches demonstrate better generalization but lower absolute performance. Task-specific training on numerical data excels within-domain but fails to transfer, whereas general-domain training (e.g., DS-R1-Distill) enables broader generalization through its diverse training objectives, suggesting the importance of training paradigm design in developing robust mathematical capabilities.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.2.2.3.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T6.2.2.3.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.2.2.3.1.2">Position Addition Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T6.2.2.3.1.3">Carry-over Acc.</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.2.3">Task Type</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.2.4">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.2.5">S</td>
<td class="ltx_td ltx_align_right" id="S4.T6.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mi id="S4.T6.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T6.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.2.6">ZS</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.2.7">S</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.2.2"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><mi id="S4.T6.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T6.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.4.2.1">Models</th>
<td class="ltx_td" id="S4.T6.2.2.4.2.2"></td>
<td class="ltx_td" id="S4.T6.2.2.4.2.3"></td>
<td class="ltx_td" id="S4.T6.2.2.4.2.4"></td>
<td class="ltx_td" id="S4.T6.2.2.4.2.5"></td>
<td class="ltx_td" id="S4.T6.2.2.4.2.6"></td>
<td class="ltx_td" id="S4.T6.2.2.4.2.7"></td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.5.3.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.2">78.55</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.3">11.98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.4">-66.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.5">81.14</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.6">15.23</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.5.3.7">-65.91</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.6.4.1">DeepSeek-R1</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.2">70.99</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.3">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.5">80.58</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.6">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.6.4.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.7.5.1">gemini-2.0-flash-exp</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.2">73.83</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.3">1.21</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.4">-72.62</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.5">79.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.6">3.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.7.5.7">-76.24</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.8.6.1">gemini-2.0-flash-thinking-exp-01-21</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.2">86.09</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.3">2.89</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.4">-83.20</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.5">88.30</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.6">9.03</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.8.6.7">-79.27</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.9.7.1">gemini-2.0-pro-exp-02-05</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.2">69.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.3">4.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.4">-65.33</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.5">77.36</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.6">7.07</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.9.7.7">-70.29</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.10.8.1">gemini-2.5-pro-exp-03-25</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.2">88.97</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.3">19.80</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.4">-69.17</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.5">88.49</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.6">24.56</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.10.8.7">-63.93</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.11.9.1">GPT-4o</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.2">76.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.3">3.79</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.4">-72.33</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.5">79.55</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.6">6.73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.11.9.7">-72.82</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.12.10.1">o1-preview</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.2">74.71</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.3">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.5">74.23</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.6">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.12.10.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.13.11.1">Llama3.3-70b-It</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.2">73.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.3">0.77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.4">-73.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.5">75.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.6">2.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.13.11.7">-72.57</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.14.12.1">DS-R1-Distill-Llama-70B</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.2">68.91</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.3">42.94</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.4">-25.97</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.5">68.56</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.6">40.75</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.14.12.7">-27.81</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.15.13.1">QwQ-32B-Preview</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.2">71.68</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.3">19.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.4">-52.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.5">73.22</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.6">20.71</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.15.13.7">-52.51</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.16.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.2.2.16.14.1">Qwen2.5-32b-It</th>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.2">90.41</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.3">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.4">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.5">91.28</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.6">-</td>
<td class="ltx_td ltx_align_right" id="S4.T6.2.2.16.14.7">-</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.17.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T6.2.2.17.15.1">Llama3.1-8b-It</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.2">20.38</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.3">0.10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.4">-20.27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.5">21.96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.6">0.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="S4.T6.2.2.17.15.7">-21.72</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.18.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T6.2.2.18.16.1">DS-R1-Distill-Llama-8B</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.2">45.54</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.3">39.55</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.4">-5.99</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.5">44.16</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.6">35.09</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S4.T6.2.2.18.16.7">-9.07</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a detailed breakdown of Large Language Models' (LLMs) performance on elementary addition tasks, comparing their accuracy on standard numerical problems (zero-shot) against their performance on isomorphic symbolic problems.  The results reveal a significant drop in accuracy when the digits are replaced with arbitrary symbols, highlighting a failure to generalize addition principles from the numerical to the symbolic domain. This is observed for both carry-over operations and digit-wise addition, demonstrating a reliance on specific numerical patterns rather than an understanding of the underlying mathematical rules. The discrepancy emphasizes the models' limitations in transferring knowledge between similar yet formally distinct representations.
> <details>
> <summary>read the caption</summary>
> Table 6: LLMs’ Understanding of Addition Principles. Models achieve high accuracy(%) on standard numerical tasks (zero-shot) but show severe degradation when tested on symbolic representations, both for carry operations and digit addition. This stark contrast suggests that models only grasp principles in numerical form and fail to generalize to abstract representations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T7.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T7.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="A1.T7.3.3.4.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T7.3.3.4.1.2">Overall Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T7.3.3.4.1.3">Position Addition Acc.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A1.T7.3.3.4.1.4">Carry-over Acc.</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.3.4">Task Type</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.5">ZS</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.6">S</td>
<td class="ltx_td ltx_align_right" id="A1.T7.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><mi id="A1.T7.1.1.1.1.m1.1.1" mathvariant="normal" xref="A1.T7.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><ci id="A1.T7.1.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.7">ZS</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.8">S</td>
<td class="ltx_td ltx_align_right" id="A1.T7.2.2.2.2"><math alttext="\Delta" class="ltx_Math" display="inline" id="A1.T7.2.2.2.2.m1.1"><semantics id="A1.T7.2.2.2.2.m1.1a"><mi id="A1.T7.2.2.2.2.m1.1.1" mathvariant="normal" xref="A1.T7.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.2.m1.1b"><ci id="A1.T7.2.2.2.2.m1.1.1.cmml" xref="A1.T7.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.9">ZS</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.10">S</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.3.3"><math alttext="\Delta" class="ltx_Math" display="inline" id="A1.T7.3.3.3.3.m1.1"><semantics id="A1.T7.3.3.3.3.m1.1a"><mi id="A1.T7.3.3.3.3.m1.1.1" mathvariant="normal" xref="A1.T7.3.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.3.m1.1b"><ci id="A1.T7.3.3.3.3.m1.1.1.cmml" xref="A1.T7.3.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.3.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.5.2.1">Models</th>
<td class="ltx_td" id="A1.T7.3.3.5.2.2"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.3"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.4"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.5"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.6"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.7"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.8"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.9"></td>
<td class="ltx_td" id="A1.T7.3.3.5.2.10"></td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.6.3.1">gemini-2.0-flash-exp</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.2">98.10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.3">9.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.4">-88.85</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.5">73.83</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.6">1.21</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.7">-72.62</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.8">79.52</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.9">3.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.6.3.10">-76.24</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.7.4.1">gemini-2.0-flash-thinking-exp-01-21</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.2">91.07</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.3">10.81</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.4">-80.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.5">86.09</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.6">2.89</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.7">-83.20</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.8">88.30</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.9">9.03</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.7.4.10">-79.27</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.8.5.1">gemini-2.0-pro-exp-02-05</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.2">94.88</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.3">14.21</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.4">-80.67</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.5">69.52</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.6">4.19</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.7">-65.33</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.8">77.36</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.9">7.07</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.8.5.10">-70.29</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.9.6.1">gemini-2.5-pro-exp-03-25</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.2">99.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.3">55.99</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.4">-43.17</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.5">88.97</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.6">19.80</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.7">-69.17</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.8">88.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.9">24.56</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.9.6.10">-63.93</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.10.7.1">claude-3.5-sonnet</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.2">99.81</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.3">7.51</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.4">-92.30</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.5">81.78</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.6">3.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.7">-78.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.8">90.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.9">6.92</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.10.7.10">-83.36</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.11.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.11.8.1">gpt-4o</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.2">93.39</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.3">9.59</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.4">-83.80</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.5">76.12</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.6">3.79</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.7">-72.33</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.8">79.55</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.9">6.73</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.11.8.10">-72.82</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.12.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.12.9.1">o1-preview</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.2">74.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.3">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.4">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.5">74.71</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.6">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.7">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.8">74.23</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.9">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.12.9.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.13.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.13.10.1">ERNIE-Speed-8K</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.2">73.78</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.3">0.29</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.4">-73.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.5">67.66</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.6">0.07</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.7">-67.59</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.8">70.89</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.9">0.21</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.13.10.10">-70.68</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.14.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.14.11.1">DeepSeek-V2.5</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.2">95.75</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.3">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.4">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.5">83.78</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.6">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.7">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.8">88.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.9">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.14.11.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.15.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.15.12.1">DeepSeek-V3</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.2">98.92</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.3">16.14</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.4">-82.78</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.5">78.55</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.6">11.98</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.7">-66.57</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.8">81.14</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.9">15.23</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.15.12.10">-65.91</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.16.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.16.13.1">DeepSeek-R1</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.2">97.39</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.3">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.4">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.5">70.99</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.6">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.7">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.8">80.58</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.9">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.16.13.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.17.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.17.14.1">DeepSeek-R1-Distill-Llama-70B</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.2">74.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.3">27.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.4">-47.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.5">68.91</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.6">42.94</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.7">-25.97</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.8">68.56</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.9">40.75</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.17.14.10">-27.81</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.18.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.18.15.1">DeepSeek-R1-Distill-Llama-8B</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.2">53.23</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.3">10.97</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.4">-42.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.5">45.54</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.6">39.55</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.7">-5.99</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.8">44.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.9">35.09</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.18.15.10">-9.07</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.19.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.19.16.1">DeepSeek-R1-Distill-Qwen-1.5B</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.2">58.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.3">0.66</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.4">-57.50</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.5">47.85</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.6">26.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.7">-21.69</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.8">47.16</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.9">20.79</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.19.16.10">-26.37</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.20.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.20.17.1">DeepSeek-R1-Distill-Qwen-7B</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.2">74.76</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.3">6.88</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.4">-67.88</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.5">65.38</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.6">33.41</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.7">-31.97</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.8">64.27</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.9">31.52</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.20.17.10">-32.75</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.21.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.21.18.1">gemma-2-2b-it</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.2">33.41</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.3">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.4">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.5">29.97</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.6">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.7">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.8">30.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.9">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.21.18.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.22.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.22.19.1">gemma-2-9b-it</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.2">66.34</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.3">1.45</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.4">-64.89</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.5">58.52</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.6">0.34</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.7">-58.18</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.8">60.44</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.9">0.44</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.22.19.10">-59.99</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.23.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.23.20.1">gemma-2-27b-it</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.2">83.65</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.3">2.62</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.4">-81.03</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.5">74.77</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.6">0.91</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.7">-73.85</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.8">76.68</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.9">0.91</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.23.20.10">-75.77</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.24.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.24.21.1">Llama-2-7b-chat-hf</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.2">19.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.3">0.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.4">-19.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.5">20.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.6">0.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.7">-20.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.8">22.58</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.9">0.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.24.21.10">-22.57</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.25.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.25.22.1">Meta-Llama-3-8B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.2">32.95</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.3">0.24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.4">-32.70</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.5">16.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.6">0.07</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.7">-16.18</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.8">15.89</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.9">0.20</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.25.22.10">-15.69</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.26.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.26.23.1">Meta-Llama-3-70B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.2">69.15</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.3">1.62</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.4">-67.53</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.5">59.84</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.6">0.39</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.7">-59.45</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.8">60.22</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.9">0.70</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.26.23.10">-59.52</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.27.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.27.24.1">Meta-Llama-3.1-8B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.2">43.34</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.3">0.57</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.4">-42.76</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.5">20.38</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.6">0.10</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.7">-20.27</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.8">21.96</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.9">0.25</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.27.24.10">-21.72</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.28.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.28.25.1">Meta-Llama-3.1-70B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.2">72.58</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.3">2.51</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.4">-70.07</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.5">60.13</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.6">0.52</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.7">-59.61</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.8">61.05</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.9">1.33</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.28.25.10">-59.71</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.29.26">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.29.26.1">Llama-3.2-11B-Vision-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.2">35.13</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.3">0.53</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.4">-34.61</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.5">16.60</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.6">0.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.7">-16.48</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.8">17.35</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.9">0.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.29.26.10">-17.09</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.30.27">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.30.27.1">Llama-3.3-70B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.2">79.63</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.3">4.01</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.4">-75.61</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.5">73.82</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.6">0.77</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.7">-73.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.8">75.00</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.9">2.43</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.30.27.10">-72.57</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.31.28">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A1.T7.3.3.31.28.1">Qwen1.5-7B-Chat</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.2">56.31</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.3">0.18</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.4">-56.14</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.5">46.78</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.6">0.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.7">-46.73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.8">47.44</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.9">0.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.31.28.10">-47.34</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.32.29">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.32.29.1">Qwen1.5-72B-Chat</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.2">34.29</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.3">0.53</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.4">-33.75</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.5">62.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.6">0.09</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.7">-62.20</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.8">67.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.9">0.14</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.32.29.10">-67.13</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.33.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.33.30.1">Qwen2-7B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.2">72.50</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.3">0.24</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.4">-72.26</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.5">60.03</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.6">0.05</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.7">-59.98</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.8">62.94</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.9">0.06</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.33.30.10">-62.88</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.34.31">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.34.31.1">Qwen2-72B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.2">59.06</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.3">2.50</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.4">-56.56</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.5">82.82</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.6">0.21</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.7">-82.62</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.8">86.62</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.9">0.26</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.34.31.10">-86.36</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.35.32">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.35.32.1">Qwen2.5-1.5B-Instruct</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.2">47.75</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.3">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.4">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.5">32.54</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.6">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.7">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.8">33.67</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.9">-</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.35.32.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.36.33">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.36.33.1">Qwen2.5-3B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.2">70.27</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.3">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.4">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.5">54.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.6">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.7">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.8">57.98</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.9">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.36.33.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.37.34">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.37.34.1">Qwen2.5-7B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.2">83.00</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.3">0.58</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.4">-82.41</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.5">71.39</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.6">0.11</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.7">-71.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.8">74.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.9">0.13</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.37.34.10">-74.37</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.38.35">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.38.35.1">Qwen2.5-14B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.2">87.45</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.3">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.4">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.5">77.56</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.6">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.7">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.8">80.36</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.9">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.38.35.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.39.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.39.36.1">Qwen2.5-32B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.2">95.15</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.3">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.4">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.5">90.41</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.6">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.7">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.8">91.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.9">-</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.39.36.10">-</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.40.37">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.40.37.1">Qwen2.5-72B-Instruct</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.2">96.07</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.3">5.97</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.4">-90.10</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.5">88.19</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.6">2.09</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.7">-86.10</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.8">89.78</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.9">4.12</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.40.37.10">-85.67</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.41.38">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.41.38.1">QwQ-32B-Preview</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.2">70.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.3">11.12</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.4">-59.47</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.5">71.68</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.6">19.09</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.7">-52.59</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.8">73.22</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.9">20.71</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.41.38.10">-52.51</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.42.39">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.42.39.1">Eurus-2-7B-SFT</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.2">83.21</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.3">0.42</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.4">-82.79</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.5">81.21</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.6">3.19</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.7">-78.02</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.8">82.28</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.9">6.87</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.42.39.10">-75.41</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.43.40">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.43.40.1">Eurus-2-7B-PRIME</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.2">94.11</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.3">1.03</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.4">-93.08</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.5">91.59</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.6">3.10</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.7">-88.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.8">92.51</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.9">3.11</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.43.40.10">-89.40</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.44.41">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.44.41.1">qwen2.5-7b-dpo-sft-S</th>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.2">12.32</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.3">2.85</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.4">-9.47</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.5">9.31</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.6">0.58</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.7">-8.73</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.8">9.70</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.9">1.13</td>
<td class="ltx_td ltx_align_right ltx_border_t" id="A1.T7.3.3.44.41.10">-8.57</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.45.42">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.45.42.1">qwen2.5-7b-dpo-sft-ZS</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.2">96.95</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.3">0.28</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.4">-96.67</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.5">84.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.6">0.29</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.7">-84.19</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.8">85.52</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.9">0.61</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.45.42.10">-84.91</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.46.43">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.46.43.1">qwen2.5-7b-dpo-S</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.2">50.73</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.3">24.10</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.4">-26.63</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.5">47.71</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.6">3.48</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.7">-44.23</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.8">48.40</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.9">6.37</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.46.43.10">-42.03</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.47.44">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.47.44.1">qwen2.5-7b-dpo-ZS</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.2">95.32</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.3">0.37</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.4">-94.95</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.5">86.23</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.6">1.17</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.7">-85.06</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.8">87.75</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.9">2.35</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.47.44.10">-85.40</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.48.45">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T7.3.3.48.45.1">qwen2.5-7b-sft-S</th>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.2">0.00</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.3">30.66</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.4">30.66</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.5">3.40</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.6">3.89</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.7">0.49</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.8">6.71</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.9">6.98</td>
<td class="ltx_td ltx_align_right" id="A1.T7.3.3.48.45.10">0.27</td>
</tr>
<tr class="ltx_tr" id="A1.T7.3.3.49.46">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T7.3.3.49.46.1">qwen2.5-7b-sft-ZS</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.2">97.17</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.3">0.00</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.4">-97.17</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.5">87.91</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.6">0.25</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.7">-87.66</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.8">89.51</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.9">1.26</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T7.3.3.49.46.10">-88.25</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comprehensive performance analysis of various large language models (LLMs) on both standard numerical addition tasks and their symbolic counterparts.  For each model, the table displays the accuracy achieved in zero-shot settings (no prior examples given) for both numerical and symbolic addition.  The difference in performance between these two conditions (Δ) is also calculated, highlighting the models' ability to generalize learned addition rules to novel representations.  The table further breaks down the accuracy into 'position addition' (correctly adding digits in each place value) and 'carry-over' (correctly handling carry-over operations), providing a granular view of where the models might struggle. The results demonstrate that while LLMs often achieve very high accuracy on standard numerical addition, their performance significantly degrades when dealing with symbolic inputs. This underscores a critical limitation of current LLMs—a reliance on memorization and pattern matching rather than genuine rule-based understanding of arithmetic.
> <details>
> <summary>read the caption</summary>
> Table 7: Complete Performance Analysis on Base and Extended Addition Tasks. Per-model breakdown of performance (%) across standard numerical and symbolic representations, with evaluation of degradation (ΔΔ\Deltaroman_Δ) between formats. Results reveal systematic failures in abstracting arithmetic principles despite high numerical accuracy.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05262/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05262/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}