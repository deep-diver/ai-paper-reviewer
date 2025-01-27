---
title: "Humanity's Last Exam"
summary: "Humanity's Last Exam (HLE): a groundbreaking multi-modal benchmark pushing the boundaries of large language model (LLM) capabilities, revealing a significant gap between current LLMs and human experts..."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Center for AI Safety",]
showSummary: true
date: 2025-01-24
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.14249 {{< /keyword >}}
{{< keyword icon="writer" >}} Long Phan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-27 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.14249" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.14249" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.14249/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current benchmarks for evaluating Large Language Models (LLMs) are insufficient, as state-of-the-art models achieve high accuracy on existing tests.  This limits our understanding of true LLM capabilities and the progress towards human-level AI.

Researchers introduce HUMANITY'S LAST EXAM (HLE), a new, globally developed benchmark featuring 3000 challenging questions across many fields.  HLE's multi-modal nature (text and image-based) and rigorous review process ensure high quality and difficulty.  Results show even the most advanced LLMs struggle on HLE, highlighting the gap between current AI and human capabilities.  The publicly released HLE dataset is intended to drive further LLM research and inform policy discussions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Existing LLM benchmarks are easily saturated, limiting their effectiveness in measuring true capabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Humanity's Last Exam (HLE) is a new, extremely challenging benchmark designed to push the limits of current LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} State-of-the-art LLMs exhibit low accuracy and poor calibration on HLE, demonstrating the significant gap between current AI capabilities and human experts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical need for more challenging benchmarks in evaluating LLMs**. Existing benchmarks are quickly saturated, hindering accurate assessment of progress.  The new benchmark, along with its open-source nature, enables researchers worldwide to push LLM development towards human-level capabilities. This **fosters further research into advanced reasoning and problem-solving capabilities in AI**, ultimately shaping the future of AI safety and policy discussions.

------
#### Visual Insights



![](https://arxiv.org/html/2501.14249/x1.png)

> 🔼 Humanity's Last Exam (HLE) is a new benchmark designed to assess the capabilities of large language models (LLMs) on challenging, closed-ended academic questions.  This figure compares the accuracy of several state-of-the-art LLMs on HLE against their performance on other established benchmarks like MMLU.  The results show that while LLMs achieve near-perfect scores on older benchmarks, their accuracy on HLE remains low. This demonstrates that HLE is indeed a more challenging and effective benchmark for measuring the true capabilities of advanced LLMs in the realm of complex academic reasoning.
> <details>
> <summary>read the caption</summary>
> Figure 1: Compared against the saturation of some existing benchmarks, Humanity’s Last Exam accuracy remains low across several frontier models, demonstrating its effectiveness for measuring advanced, closed-ended, academic capabilities. The sources for our evaluation metrics are detailed in Section C.5. We further evaluate more frontier models on HLE in Table 1.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.17">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row" id="S4.T1.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.3.1">Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1">Accuracy (%) <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="S4.T1.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.1">Calibration Error (%) <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.1.m1.1b"><ci id="S4.T1.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.4.4.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.4.4.3.1">GPT-4o</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.1"><math alttext="3.3" class="ltx_Math" display="inline" id="S4.T1.3.3.1.m1.1"><semantics id="S4.T1.3.3.1.m1.1a"><mn id="S4.T1.3.3.1.m1.1.1" xref="S4.T1.3.3.1.m1.1.1.cmml">3.3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.1.m1.1b"><cn id="S4.T1.3.3.1.m1.1.1.cmml" type="float" xref="S4.T1.3.3.1.m1.1.1">3.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.1.m1.1c">3.3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.1.m1.1d">3.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.2"><math alttext="92.5" class="ltx_Math" display="inline" id="S4.T1.4.4.2.m1.1"><semantics id="S4.T1.4.4.2.m1.1a"><mn id="S4.T1.4.4.2.m1.1.1" xref="S4.T1.4.4.2.m1.1.1.cmml">92.5</mn><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.2.m1.1b"><cn id="S4.T1.4.4.2.m1.1.1.cmml" type="float" xref="S4.T1.4.4.2.m1.1.1">92.5</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.2.m1.1c">92.5</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.2.m1.1d">92.5</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.6.6.3.1">Grok 2</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.1"><math alttext="3.8" class="ltx_Math" display="inline" id="S4.T1.5.5.1.m1.1"><semantics id="S4.T1.5.5.1.m1.1a"><mn id="S4.T1.5.5.1.m1.1.1" xref="S4.T1.5.5.1.m1.1.1.cmml">3.8</mn><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.1.m1.1b"><cn id="S4.T1.5.5.1.m1.1.1.cmml" type="float" xref="S4.T1.5.5.1.m1.1.1">3.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.1.m1.1c">3.8</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.1.m1.1d">3.8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.2"><math alttext="93.2" class="ltx_Math" display="inline" id="S4.T1.6.6.2.m1.1"><semantics id="S4.T1.6.6.2.m1.1a"><mn id="S4.T1.6.6.2.m1.1.1" xref="S4.T1.6.6.2.m1.1.1.cmml">93.2</mn><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.2.m1.1b"><cn id="S4.T1.6.6.2.m1.1.1.cmml" type="float" xref="S4.T1.6.6.2.m1.1.1">93.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.2.m1.1c">93.2</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.2.m1.1d">93.2</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.8.8.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.8.8.3.1">Claude 3.5 Sonnet</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.1"><math alttext="4.3" class="ltx_Math" display="inline" id="S4.T1.7.7.1.m1.1"><semantics id="S4.T1.7.7.1.m1.1a"><mn id="S4.T1.7.7.1.m1.1.1" xref="S4.T1.7.7.1.m1.1.1.cmml">4.3</mn><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.1.m1.1b"><cn id="S4.T1.7.7.1.m1.1.1.cmml" type="float" xref="S4.T1.7.7.1.m1.1.1">4.3</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.1.m1.1c">4.3</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.1.m1.1d">4.3</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.2"><math alttext="88.9" class="ltx_Math" display="inline" id="S4.T1.8.8.2.m1.1"><semantics id="S4.T1.8.8.2.m1.1a"><mn id="S4.T1.8.8.2.m1.1.1" xref="S4.T1.8.8.2.m1.1.1.cmml">88.9</mn><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.2.m1.1b"><cn id="S4.T1.8.8.2.m1.1.1.cmml" type="float" xref="S4.T1.8.8.2.m1.1.1">88.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.2.m1.1c">88.9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.2.m1.1d">88.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.10.10.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.10.10.3.1">Gemini 1.5 Pro</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.1"><math alttext="5.0" class="ltx_Math" display="inline" id="S4.T1.9.9.1.m1.1"><semantics id="S4.T1.9.9.1.m1.1a"><mn id="S4.T1.9.9.1.m1.1.1" xref="S4.T1.9.9.1.m1.1.1.cmml">5.0</mn><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.1.m1.1b"><cn id="S4.T1.9.9.1.m1.1.1.cmml" type="float" xref="S4.T1.9.9.1.m1.1.1">5.0</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.1.m1.1c">5.0</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.1.m1.1d">5.0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.10.2"><math alttext="93.1" class="ltx_Math" display="inline" id="S4.T1.10.10.2.m1.1"><semantics id="S4.T1.10.10.2.m1.1a"><mn id="S4.T1.10.10.2.m1.1.1" xref="S4.T1.10.10.2.m1.1.1.cmml">93.1</mn><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.2.m1.1b"><cn id="S4.T1.10.10.2.m1.1.1.cmml" type="float" xref="S4.T1.10.10.2.m1.1.1">93.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.2.m1.1c">93.1</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.2.m1.1d">93.1</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.12.12.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.12.12.3.1">Gemini 2.0 Flash Thinking</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.11.11.1"><math alttext="6.2" class="ltx_Math" display="inline" id="S4.T1.11.11.1.m1.1"><semantics id="S4.T1.11.11.1.m1.1a"><mn id="S4.T1.11.11.1.m1.1.1" xref="S4.T1.11.11.1.m1.1.1.cmml">6.2</mn><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.1.m1.1b"><cn id="S4.T1.11.11.1.m1.1.1.cmml" type="float" xref="S4.T1.11.11.1.m1.1.1">6.2</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.1.m1.1c">6.2</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.1.m1.1d">6.2</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.2"><math alttext="93.9" class="ltx_Math" display="inline" id="S4.T1.12.12.2.m1.1"><semantics id="S4.T1.12.12.2.m1.1a"><mn id="S4.T1.12.12.2.m1.1.1" xref="S4.T1.12.12.2.m1.1.1.cmml">93.9</mn><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.2.m1.1b"><cn id="S4.T1.12.12.2.m1.1.1.cmml" type="float" xref="S4.T1.12.12.2.m1.1.1">93.9</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.2.m1.1c">93.9</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.2.m1.1d">93.9</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.14.14.3"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.14.14.3.1">o1</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.13.13.1"><math alttext="9.1" class="ltx_Math" display="inline" id="S4.T1.13.13.1.m1.1"><semantics id="S4.T1.13.13.1.m1.1a"><mn id="S4.T1.13.13.1.m1.1.1" xref="S4.T1.13.13.1.m1.1.1.cmml">9.1</mn><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.1.m1.1b"><cn id="S4.T1.13.13.1.m1.1.1.cmml" type="float" xref="S4.T1.13.13.1.m1.1.1">9.1</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.1.m1.1c">9.1</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.1.m1.1d">9.1</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.2"><math alttext="93.4" class="ltx_Math" display="inline" id="S4.T1.14.14.2.m1.1"><semantics id="S4.T1.14.14.2.m1.1a"><mn id="S4.T1.14.14.2.m1.1.1" xref="S4.T1.14.14.2.m1.1.1.cmml">93.4</mn><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.2.m1.1b"><cn id="S4.T1.14.14.2.m1.1.1.cmml" type="float" xref="S4.T1.14.14.2.m1.1.1">93.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.2.m1.1c">93.4</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.2.m1.1d">93.4</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.15.15.1"><span class="ltx_text ltx_font_smallcaps" id="S4.T1.15.15.1.1">DeepSeek-R1<sup class="ltx_sup" id="S4.T1.15.15.1.1.1"><span class="ltx_text ltx_font_upright" id="S4.T1.15.15.1.1.1.1">∗</span></sup></span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.16.16.2"><math alttext="9.4" class="ltx_Math" display="inline" id="S4.T1.16.16.2.m1.1"><semantics id="S4.T1.16.16.2.m1.1a"><mn id="S4.T1.16.16.2.m1.1.1" xref="S4.T1.16.16.2.m1.1.1.cmml">9.4</mn><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.2.m1.1b"><cn id="S4.T1.16.16.2.m1.1.1.cmml" type="float" xref="S4.T1.16.16.2.m1.1.1">9.4</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.2.m1.1c">9.4</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.2.m1.1d">9.4</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.17.17.3"><math alttext="81.8" class="ltx_Math" display="inline" id="S4.T1.17.17.3.m1.1"><semantics id="S4.T1.17.17.3.m1.1a"><mn id="S4.T1.17.17.3.m1.1.1" xref="S4.T1.17.17.3.m1.1.1.cmml">81.8</mn><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.3.m1.1b"><cn id="S4.T1.17.17.3.m1.1.1.cmml" type="float" xref="S4.T1.17.17.3.m1.1.1">81.8</cn></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.3.m1.1c">81.8</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.3.m1.1d">81.8</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various large language models (LLMs) on the HUMANITY'S LAST EXAM (HLE) benchmark.  It shows two key metrics: accuracy (the percentage of questions answered correctly) and RMS calibration error (a measure of how well the model's confidence in its answers matches its actual accuracy). Low accuracy and high calibration error indicate that the models are prone to hallucinating—confidently producing incorrect answers. The table highlights the significant gap between current LLMs and human expert-level performance on complex academic questions.  Note that one model (*) is not multi-modal, meaning it cannot process image-based questions; its results are based only on the text-based questions in the benchmark.  A more detailed breakdown of the models' performance on the text-only portion of the HLE is available in a later section of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: Accuracy and RMS calibration error of different models on HLE, demonstrating low accuracy and high calibration error across all models, indicative of hallucination. ∗Model is not multi-modal, evaluated on text-only subset. We report text-only results on all models in Section C.2.
> </details>





### In-depth insights


#### LLM Benchmark Limit
The limitations of current LLM benchmarks are a significant concern.  Existing benchmarks, while useful initially, are quickly saturated as LLMs rapidly improve, hindering accurate assessment of true model capabilities.  **This saturation masks progress and prevents the identification of genuine advancements at the frontier of AI**.  A critical need exists for more challenging and diverse benchmarks that **push the limits of current LLM abilities**,  **incorporating multi-modal aspects and questions requiring advanced reasoning** beyond simple pattern recognition. The development of such benchmarks is crucial to ensure meaningful progress measurement and to inform future research and development efforts in the field.

#### HLE: Multimodal Test
A hypothetical "HLE: Multimodal Test" section would likely delve into the design and evaluation of the HUMANITY'S LAST EXAM's multimodal aspect.  This would involve a detailed explanation of how the test incorporates both textual and visual information, **highlighting the challenges posed by this dual-modality for large language models (LLMs)**. The discussion would likely cover the types of questions used (e.g., image-based reasoning, combined text and image interpretation), the rationale for including this multimodal component (e.g., to assess a more comprehensive range of LLM capabilities), and a thorough analysis of the results.  **Key findings might demonstrate that current LLMs struggle significantly with multimodal reasoning, potentially showcasing a considerable performance gap between human expert-level understanding and the capabilities of these advanced AI models.**  The section would likely conclude by emphasizing the importance of multimodal benchmarks in the ongoing evaluation of LLM progress, especially in relation to understanding complex real-world scenarios requiring the integration of different sensory inputs.

#### Expert-Level Questions
The concept of "Expert-Level Questions" within the context of evaluating large language models (LLMs) is crucial.  These questions, **designed to be beyond the capabilities of current state-of-the-art LLMs**, serve as a benchmark for measuring progress and identifying knowledge gaps.  Their creation requires collaboration with domain experts, resulting in problems that demand high-level reasoning skills and specialized knowledge.  **Successful answers to these questions would represent a significant milestone in AI development, implying a level of understanding that surpasses current models.**  The difficulty of these questions ensures that simple memorization or internet searching techniques are insufficient. Instead, **true understanding and reasoning ability are needed**, reflecting a higher order of intelligence.  Such rigorous evaluation is vital for assessing the genuine progress in AI and guiding future research efforts.

#### Model Calibration Gap
The heading 'Model Calibration Gap' suggests an analysis of the discrepancy between a model's **confidence in its predictions** and its **actual accuracy**.  A significant gap implies that the model is **overconfident** in its incorrect answers and **underconfident** in its correct ones.  This is a critical issue, especially in high-stakes applications, as it undermines the trustworthiness and reliability of the model's output. Investigating this gap may involve analyzing calibration curves, examining confidence scores across different difficulty levels, and possibly exploring different model architectures and training methods to improve calibration performance.  **Addressing this gap is paramount** for building more reliable and trustworthy AI systems.

#### Future of AI Exams
The "Future of AI Exams" necessitates a paradigm shift from static benchmarks to dynamic, adaptive assessments.  **Current evaluations struggle to keep pace with rapid LLM advancements**, quickly becoming saturated and failing to expose genuine limitations.  Future exams must incorporate **multi-modal challenges**, **require nuanced reasoning**, and **resist simple internet retrieval** to truly gauge advanced capabilities.  Furthermore, **measuring model calibration and uncertainty**, rather than just raw accuracy, is crucial for understanding AI reliability.  Ultimately, the goal should be to move beyond closed-ended assessments towards evaluating **open-ended problem-solving and complex reasoning**, mirroring real-world human intelligence.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.14249/x2.png)

> 🔼 This figure showcases a small sample of the diverse and challenging questions included in the Humanity's Last Exam benchmark.  The questions span a wide range of academic disciplines, including Classics, Ecology, Mathematics, Computer Science, and Chemistry, and vary in their format, including multiple-choice and short-answer questions, some accompanied by images.  The questions are designed to assess advanced reasoning capabilities and resist quick solutions found through internet searches.
> <details>
> <summary>read the caption</summary>
> Figure 2: Samples of the diverse and challenging questions submitted to Humanity’s Last Exam.
> </details>



![](https://arxiv.org/html/2501.14249/x3.png)

> 🔼 Humanity's Last Exam (HLE) dataset contains 3,000 questions spanning over 100 subjects.  The figure displays a high-level breakdown of these subjects categorized into broader groups (e.g., Math, Biology, Humanities).  A more detailed list of all subjects is available in Section B.3 of the paper. The visualization helps to show the diversity of topics covered in the HLE benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 3: HLE consists of 3,00030003{,}0003 , 000 exam questions in over a hundred subjects, grouped into high level categories here. We provide a more detailed list of subjects in Section B.3.
> </details>



![](https://arxiv.org/html/2501.14249/x4.png)

> 🔼 The figure illustrates the multi-stage process of creating the HUMANITY'S LAST EXAM dataset.  It begins with a large number of initial question attempts, many of which are filtered out because state-of-the-art LLMs are able to answer them.  The remaining questions then undergo iterative refinement through expert review, with both initial feedback rounds and subsequent organizer/expert approval. Finally, the dataset is split into a publicly released set and a private held-out set. The private set is reserved for assessing model overfitting and potential gaming strategies.
> <details>
> <summary>read the caption</summary>
> Figure 4: Dataset creation pipeline. We accept questions that make frontier LLMs fail, then iteratively refine them with the help of expert peer reviewers. Each question is then manually approved by organizers or expert reviewers trained by organizers. A private held-out set is kept in addition to the public set to assess model overfitting and gaming on the public benchmark.
> </details>



![](https://arxiv.org/html/2501.14249/x5.png)

> 🔼 Figure 5 presents a bar chart comparing the average number of tokens generated by various large language models (LLMs) while answering questions from the HUMANITY'S LAST EXAM (HLE) benchmark.  The chart separates models into two categories: reasoning models and non-reasoning models.  The token counts include both the tokens used for reasoning (intermediate steps) and those in the final answer.  For a more detailed breakdown of token counts for non-reasoning models, refer to Section C.3 of the paper.  The chart visually demonstrates the significant difference in computational cost (measured by token usage) between reasoning and non-reasoning LLMs, implying that the reasoning process adds substantial computational overhead.
> <details>
> <summary>read the caption</summary>
> Figure 5: Average completion token counts of reasoning models tested, including both reasoning and output tokens. We also plot average token counts for non-reasoning models in Section C.3.
> </details>



![](https://arxiv.org/html/2501.14249/x6.png)

> 🔼 This figure displays the average number of tokens generated by several non-reasoning language models across different subject categories within the HUMANITY'S LAST EXAM (HLE) benchmark.  The categories shown include Mathematics, Biology/Medicine, Physics, Computer Science/AI, Humanities/Social Sciences, Chemistry, Engineering, and Other.  It provides a visual comparison of the computational cost associated with each model's responses for different subject areas, illustrating variations in complexity and potentially revealing trends in token generation efficiency across various subjects and models.
> <details>
> <summary>read the caption</summary>
> Figure 6: Average output token counts of non-reasoning models.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.SS2.SSS1.Px2.p2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.1.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS1.Px2.p2.1.1.1.1.1">Score</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.1.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS1.Px2.p2.1.1.1.2.1">Scoring Guideline</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.1.1.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.1.1.3.1">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.1.1.3.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS1.Px2.p2.1.1.1.3.1.1.1">Description</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.2.2" style="background-color:#FF9696;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.2.2.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.2.2.1.1" style="background-color:#FF9696;">0</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.2.2.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.2.2.2.1" style="background-color:#FF9696;">Discard</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.2.2.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.2.2.3.1" style="background-color:#FF9696;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.2.2.3.1.1" style="width:227.6pt;">The question is out of scope, not original, spam, or otherwise not good enough to be included in the HLE set and should be discarded.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.3.3" style="background-color:#FFC8C8;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.3.3.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.3.3.1.1" style="background-color:#FFC8C8;">1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.3.3.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.3.3.2.1" style="background-color:#FFC8C8;">Major Revisions Needed</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.3.3.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.3.3.3.1" style="background-color:#FFC8C8;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.3.3.3.1.1" style="width:227.6pt;">Major revisions are needed for this question or the question is too easy and simple.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.4.4" style="background-color:#FFE6C8;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.4.4.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.4.4.1.1" style="background-color:#FFE6C8;">2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.4.4.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.4.4.2.1" style="background-color:#FFE6C8;">Some Revisions Needed</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.4.4.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.4.4.3.1" style="background-color:#FFE6C8;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.4.4.3.1.1" style="width:227.6pt;">Difficulty and expertise required to answer the question is borderline. Some revisions are needed for this question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.5.5" style="background-color:#FFFFC8;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.5.5.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.5.5.1.1" style="background-color:#FFFFC8;">3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.5.5.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.5.5.2.1" style="background-color:#FFFFC8;">Okay</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.5.5.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.5.5.3.1" style="background-color:#FFFFC8;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.5.5.3.1.1" style="width:227.6pt;">The question is sufficiently challenging but the knowledge required is not graduate-level nor complex. Minor revisions may be needed for this question.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.6.6" style="background-color:#DCFFDC;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.6.6.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.6.6.1.1" style="background-color:#DCFFDC;">4</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.6.6.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.6.6.2.1" style="background-color:#DCFFDC;">Great</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.6.6.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.6.6.3.1" style="background-color:#DCFFDC;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.6.6.3.1.1" style="width:227.6pt;">The knowledge required is at the graduate level or the question is sufficiently challenging.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.7.7" style="background-color:#C8DCFF;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.7.7.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.7.7.1.1" style="background-color:#C8DCFF;">5</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.7.7.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS1.Px2.p2.1.7.7.2.1" style="background-color:#C8DCFF;">Top-Notch</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.7.7.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.7.7.3.1" style="background-color:#C8DCFF;">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.7.7.3.1.1" style="width:227.6pt;">Question is top-notch and perfect.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS1.Px2.p2.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.8.8.1" style="padding:1pt 5.0pt;">Unsure</td>
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.8.8.2" style="padding:1pt 5.0pt;">-</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_b ltx_border_r ltx_border_t" id="A2.SS2.SSS1.Px2.p2.1.8.8.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS1.Px2.p2.1.8.8.3.1">
<span class="ltx_p" id="A2.SS2.SSS1.Px2.p2.1.8.8.3.1.1" style="width:227.6pt;">Reviewer is unsure if the question fits the <span class="ltx_text ltx_font_smallcaps" id="A2.SS2.SSS1.Px2.p2.1.8.8.3.1.1.1">HLE</span> guidelines, or unsure if the answer is right.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of several large language models (LLMs) on the text-only portion of the HUMANITY'S LAST EXAM (HLE) benchmark.  It shows the accuracy and Root Mean Squared (RMS) calibration error for each model.  The text-only questions represent 90% of the publicly released HLE dataset.  The results demonstrate the performance of state-of-the-art LLMs on challenging, closed-ended academic questions, highlighting the gap between current LLM capabilities and human expertise.
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracy and RMS calibration error of models from Table 1 on the text-only questions of HLE, representing 90% of the public set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.SS2.SSS2.p2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.1.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS2.p2.1.1.1.1.1">Score</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.1.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS2.p2.1.1.1.2.1">Scoring Guideline</span></th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.1.1.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.1.1.3.1">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.1.1.3.1.1" style="width:227.6pt;"><span class="ltx_text ltx_font_bold" id="A2.SS2.SSS2.p2.1.1.1.3.1.1.1">Description</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.2.1" style="background-color:#FF9696;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.2.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.2.1.1.1" style="background-color:#FF9696;">0</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.2.1.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.2.1.2.1" style="background-color:#FF9696;">Discard</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.2.1.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.2.1.3.1" style="background-color:#FF9696;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.2.1.3.1.1" style="width:227.6pt;">The question is out of scope, not original, spam, or otherwise not good enough to be included in the HLE set and should be discarded.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.3.2" style="background-color:#FFC8C8;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.3.2.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.3.2.1.1" style="background-color:#FFC8C8;">1</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.3.2.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.3.2.2.1" style="background-color:#FFC8C8;">Not sure</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.3.2.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.3.2.3.1" style="background-color:#FFC8C8;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.3.2.3.1.1" style="width:227.6pt;">Major revisions are needed for this question or you’re just unsure about the question. Please put your thoughts in the comment box and an organizer will evaluate this.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.4.3" style="background-color:#FFE6C8;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.4.3.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.4.3.1.1" style="background-color:#FFE6C8;">2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.4.3.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.4.3.2.1" style="background-color:#FFE6C8;">Pending</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.4.3.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.4.3.3.1" style="background-color:#FFE6C8;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.4.3.3.1.1" style="width:227.6pt;">You believe there are still minor revisions that are needed on this question. Please put your thoughts in the comment box and an organizer will evaluate this.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.5.4" style="background-color:#C8DCFF;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.5.4.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.5.4.1.1" style="background-color:#C8DCFF;">3</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.5.4.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.5.4.2.1" style="background-color:#C8DCFF;">Easy questions models got wrong</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.5.4.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.5.4.3.1" style="background-color:#C8DCFF;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.5.4.3.1.1" style="width:227.6pt;">These are very basic questions that models got correct or the question was easily found online. Any questions which are artificially difficult (large calculations needing a calculator, requires running/rendering code, etc.) should also belong in this category. The models we evaluate cannot access these tools, hence it creates an artificial difficulty bar. Important: “Found online” means via a simple search online. Research papers/journals/books are fine</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.6.5" style="background-color:#DCFFDC;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.6.5.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.6.5.1.1" style="background-color:#DCFFDC;">4</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.6.5.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.6.5.2.1" style="background-color:#DCFFDC;">Borderline</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.6.5.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.6.5.3.1" style="background-color:#DCFFDC;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.6.5.3.1.1" style="width:227.6pt;">The question is not interesting OR The question is sufficiently challenging, but 1 or more of the models got the answer correct.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.7.6" style="background-color:#E6BEFF;">
<td class="ltx_td ltx_align_left ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.7.6.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.7.6.1.1" style="background-color:#E6BEFF;">5</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.7.6.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.7.6.2.1" style="background-color:#E6BEFF;">Okay to include in HLE benchmark</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.7.6.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.7.6.3.1" style="background-color:#E6BEFF;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.7.6.3.1.1" style="width:227.6pt;">Very good questions (usually has score of 3 in the previous review round). You believe it should be included in the HLE Benchmark.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.SS2.SSS2.p2.1.8.7" style="background-color:#FFFFC8;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_l ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.8.7.1" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.8.7.1.1" style="background-color:#FFFFC8;">6</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.8.7.2" style="padding:1pt 5.0pt;"><span class="ltx_text" id="A2.SS2.SSS2.p2.1.8.7.2.1" style="background-color:#FFFFC8;">Top question in its category</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A2.SS2.SSS2.p2.1.8.7.3" style="padding:1pt 5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.SS2.SSS2.p2.1.8.7.3.1" style="background-color:#FFFFC8;">
<span class="ltx_p" id="A2.SS2.SSS2.p2.1.8.7.3.1.1" style="width:227.6pt;">Great question (usually has a score of 4-5 in the previous review round), at a graduate or research level. Please note that “graduate level” is less strict for Non-STEM questions. For Non-STEM questions and Trivia, they are fine as long as they are challenging and interesting.</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the specific versions of the large language models (LLMs) used in the evaluation.  It shows the model name and the corresponding version number used in the experiments.  The note indicates that when the models allowed for temperature configuration, a temperature of 0 was used for all evaluations. This ensures consistency and reproducibility of the results.
> <details>
> <summary>read the caption</summary>
> Table 3: Evaluated model versions. All models use temperature 0 when configurable.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.14249/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.14249/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}