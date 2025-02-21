---
title: "One Example Shown, Many Concepts Known! Counterexample-Driven Conceptual Reasoning in Mathematical LLMs"
summary: "New benchmark COUNTERMATH enhances LLMs' mathematical reasoning using counterexample-driven proofs, revealing current models' limitations and paving the way for improved mathematical capabilities."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Tsinghua University",]
showSummary: true
date: 2025-02-12
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.10454 {{< /keyword >}}
{{< keyword icon="writer" >}} Yinghui Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.10454" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.10454" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.10454/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) are increasingly being used for mathematical reasoning, but their ability to truly understand mathematical concepts remains a challenge.  Existing approaches often rely on rote memorization through extensive training on similar problems, neglecting the deeper understanding needed for complex mathematical tasks. This limits their ability to tackle more nuanced problems and prevents them from demonstrating a complete grasp of mathematical principles. 

This paper introduces COUNTERMATH, a new benchmark specifically designed to evaluate LLMs' ability to conduct mathematical reasoning and proofs using counterexamples.  The researchers manually created a high-quality dataset of university-level mathematics problems that require LLMs to find counterexamples to disprove statements. Experiments revealed significant limitations in existing LLMs' counterexample-driven reasoning abilities.  Furthermore, the study demonstrates that finetuning LLMs with counterexample data improves their performance, highlighting the importance of counterexample-driven learning for enhancing mathematical reasoning capabilities in LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} COUNTERMATH, a new benchmark, effectively assesses LLMs' ability to use counterexamples in mathematical proofs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current LLMs show limited proficiency in counterexample-driven reasoning, highlighting the need for model improvement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Finetuning LLMs with counterexample data significantly enhances their mathematical reasoning abilities, particularly in conceptual understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the limitations of current LLMs in mathematical reasoning**, which heavily relies on memorization rather than genuine understanding. By introducing a novel benchmark and finetuning methods, it **opens new avenues for enhancing LLMs' capacity for counterexample-driven reasoning**, a critical aspect of mathematical proficiency.  This work also **highlights the need for further research on underrepresented areas of mathematics**, such as topology and real analysis, contributing to more comprehensive and robust mathematical LLMs.

------
#### Visual Insights



![](https://arxiv.org/html/2502.10454/x1.png)

> 🔼 This figure compares two learning paradigms in mathematical problem-solving: drill-based learning and example-based learning. Drill-based learning involves repetitive practice with similar problems, while example-based learning emphasizes understanding mathematical concepts through illustrative examples and counterexamples. The figure highlights that while the drill-based approach might be sufficient for simple problems, it falls short when dealing with complex, advanced mathematical concepts.  Example-based learning, including the use of counterexamples to disprove statements, is shown to be crucial for deeper mathematical understanding. The figure shows that even advanced LLMs often struggle with the types of complex mathematical reasoning required for this example-based approach.  The image illustrates that traditional methods of training LLMs, focused on repetition, are not sufficient for achieving true mathematical understanding and reasoning abilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between drill-based learning and example-based learning. The first two math LLMs fail when confronted with advanced mathematics, and “Proving by examples” is a highly creative and concept-intensive mathematical skill.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.6.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" colspan="2" id="S4.T1.6.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.1.1">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.6.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.2.1">Judgement</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.6.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.1.1.3.1">Rationale Reasoning</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.2.2">
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.1"><span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.1.1">F1 (macro)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.2.1">Examples</span> (%)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.3.1">Strict</span> (%)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.4">
<span class="ltx_text ltx_font_bold" id="S4.T1.6.2.2.4.1">Loose</span> (%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.6.3.3.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.6.3.3.1.1">Open source models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.4.4.1" rowspan="12"><span class="ltx_text" id="S4.T1.6.4.4.1.1">size = 7B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.4.4.2">Deepseek-Math-7B-rl</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.3">32.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.4">65.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.5">18.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.4.4.6">20.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.5.5.1">Eurus-2-7B-PRIME</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5.2">37.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5.3">64.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5.4">28.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.5.5.5">32.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.6.6.1">NuminaMath-7B-TIR</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.2">30.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.3">54.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.4">13.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.5">13.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.7.7.1">InternLM2-Math-Plus-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.7.2">33.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.7.3">36.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.7.4">9.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.7.7.5">9.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.8.8.1">Abel-7B-002</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8.2">34.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8.3">66.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8.4">16.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.8.8.5">17.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.9.9.1">WizardMath-7B-v1.1</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.9.2">27.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.9.3">43.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.9.4">6.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.9.9.5">7.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.10.10.1">Mathstral-7B-v0.1</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.10.2">28.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.10.3">38.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.10.4">7.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.10.10.5">7.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.11.11.1">MetaMath-Mistral-7B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.11.2">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.11.3">26.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.11.4">0.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.11.11.5">0.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.12.12.1">Xwin-Math-7B-V1.0</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.12.2">28.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.12.3">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.12.4">1.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.12.12.5">1.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.13.13.1">rho-math-7b-interpreter-v0.1</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.13.2">22.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.13.3">18.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.13.4">1.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.13.13.5">2.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.14.14.1">MAmmoTH2-7B-Plus</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.14.2">32.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.14.3">54.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.14.4">10.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.14.14.5">12.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.15.15.1">Qwen2.5-Math-7B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.15.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.15.15.2.1">38.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.15.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.15.15.3.1">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.15.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.15.15.4.1">30.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.15.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.15.15.5.1">33.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.16.16.1" rowspan="5"><span class="ltx_text" id="S4.T1.6.16.16.1.1">7B&lt;size &lt;70B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.16.16.2">Abel-13B-001</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.16.16.3">22.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.16.16.4">24.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.16.16.5">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.16.16.6">0.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.17.17.1">Xwin-Math-13B-V1.0</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.17.2">30.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.17.3">31.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.17.4">1.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.17.17.5">1.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.18.18.1">InternLM2-Math-Plus-20B</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.18.2">18.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.18.3">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.18.4">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.18.18.5">9.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.19.19.1">MAmmoTH2-8x7B-Plus</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.19.19.2">28.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.19.19.3">51.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.19.19.4">14.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.19.19.5">15.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.20.20.1">QwQ-32B-Preview</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.20.20.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.20.20.2.1">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.20.20.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.20.20.3.1">70.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.20.20.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.20.20.4.1">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.20.20.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.20.20.5.1">43.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.21.21">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.21.21.1" rowspan="5"><span class="ltx_text" id="S4.T1.6.21.21.1.1">size &gt;=70B</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T1.6.21.21.2">InternLM2-Math-Plus-Mixtral8x22B</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.21.21.3">37.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.21.21.4">63.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.21.21.5">21.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.21.21.6">23.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.22.22">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.22.22.1">Xwin-Math-70B-V1.0</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.22.22.2">25.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.22.22.3">25.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.22.22.4">1.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.22.22.5">1.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.23.23">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.23.23.1">Abel-70B-001</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.23.23.2">31.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.23.23.3">48.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.23.23.4">5.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.23.23.5">6.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.24.24.1">WizardMath-70B-v1.0</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.24.24.2">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.24.24.3">52.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.24.24.4">6.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.24.24.5">7.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.25.25">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S4.T1.6.25.25.1">Qwen2.5-Math-72B-Instruct</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.25.25.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.25.25.2.1">41.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.25.25.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.25.25.3.1">76.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.25.25.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.25.25.4.1">38.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.25.25.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.25.25.5.1">41.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.26.26">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="6" id="S4.T1.6.26.26.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.6.26.26.1.1">Commercial models</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.6.27.27">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" colspan="2" id="S4.T1.6.27.27.1">GPT-4o</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.27.27.2">59.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.27.27.3">44.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.27.27.4">19.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.6.27.27.5">21.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.28.28">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" colspan="2" id="S4.T1.6.28.28.1">OpenAI o1-preview</th>
<td class="ltx_td ltx_align_center" id="S4.T1.6.28.28.2"><span class="ltx_text ltx_font_bold" id="S4.T1.6.28.28.2.1">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.28.28.3">55.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.28.28.4"><span class="ltx_text ltx_font_bold" id="S4.T1.6.28.28.4.1">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.28.28.5"><span class="ltx_text ltx_font_bold" id="S4.T1.6.28.28.5.1">40.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.29.29">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" colspan="2" id="S4.T1.6.29.29.1">Qwen-max</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.29.29.2">58.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.29.29.3"><span class="ltx_text ltx_font_bold" id="S4.T1.6.29.29.3.1">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.29.29.4">30.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.6.29.29.5">33.9</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various mainstream Large Language Models (LLMs) on the CounterMATH benchmark.  The LLMs were evaluated using the default chain-of-thought (CoT) prompting strategy.  The results are broken down by three example-related metrics: Examples (percentage of problem-solving cases where the model used examples), Strict Align (percentage of the model's examples that perfectly matched the reference examples), and Loose Align (percentage of instances where at least one of the model's examples aligned with the reference examples).  The table provides a comparison of LLM performance on a university-level mathematical reasoning task focused on counterexamples.
> <details>
> <summary>read the caption</summary>
> Table 1: Main evaluation results of various mainstream mathematical LLMs with the default CoT prompts on CounterMATH. The Examples, Strict, and Loose represent the three of our designed example-related evaluation metrics.
> </details>





### In-depth insights


#### Counterexample-Driven
The concept of "Counterexample-Driven" in mathematical reasoning, as explored in the research paper, offers a **novel approach** to evaluating and enhancing the capabilities of Large Language Models (LLMs).  Instead of relying solely on extensive training with numerous examples (drill-based learning), the focus shifts to assessing the LLM's ability to utilize counterexamples to **disprove statements**. This paradigm highlights the significance of **conceptual understanding** over mere pattern recognition.  The method proves valuable as it measures the LLM's capacity for higher-level mathematical reasoning by testing its ability to identify and construct counterexamples, revealing a deeper understanding of mathematical concepts and theorems. This approach also provides a **new benchmark**, COUNTERMATH, for assessing LLMs, one that challenges their ability to go beyond the rote memorization of proof techniques and demonstrates the need for enhancing their **counterexample-driven conceptual reasoning** capabilities.

#### COUNTERMATH Benchmark
The COUNTERMATH benchmark is a significant contribution to the field of mathematical reasoning in LLMs.  Its **focus on counterexamples** as a pedagogical method is novel and addresses the limitations of existing benchmarks that primarily rely on drill-based learning.  By focusing on university-level mathematical concepts and statements that require disproof via counterexamples, COUNTERMATH effectively assesses the LLM's understanding of nuanced mathematical concepts and their ability to reason beyond surface-level knowledge. The benchmark's **high-quality, manually curated dataset** ensures reliability and validity, while the proposed data engineering framework facilitates further model development.  The results showcase the challenges posed by COUNTERMATH, highlighting a significant gap in current LLMs' abilities, and offer new perspectives to improve mathematical reasoning through counterexample-driven learning.  The fine-tuned model's improved performance across both the benchmark and out-of-distribution datasets further strengthens the argument for the value and effectiveness of COUNTERMATH in advancing research on mathematical LLMs.  **Its focus on under-represented areas** of higher mathematics also makes it a crucial contribution to further research.

#### Model Training
The paper's exploration of model training centers on enhancing LLMs' **counterexample-driven reasoning**.  Instead of solely relying on massive datasets of solved problems (drill-based learning), the authors focus on improving the models' ability to identify and generate counterexamples to disprove mathematical statements. This approach is deemed crucial for achieving a deeper understanding of mathematical concepts rather than superficial memorization.  A key aspect is the development of a data engineering framework for automatically creating training data, enriching the model's capacity for counterexample-driven proofs. The fine-tuned model, trained on a relatively small dataset of 1,025 samples, shows significant performance gains on both the primary benchmark and out-of-distribution datasets, highlighting the **effectiveness of counterexample-based training**. The results suggest this method is key to pushing the boundaries of mathematical reasoning in LLMs and offers a new pedagogical direction for training mathematical AI.

#### Limitations of LLMs
Large language models (LLMs) in mathematics demonstrate significant potential but also exhibit limitations.  **Current LLMs heavily rely on training data**, showing strong performance only on problems similar to those encountered during training. This **reliance limits their deeper understanding of mathematical concepts and theorems**, hindering their ability to generalize to unseen problems or reason abstractly.  **Proof generation is often shallow**, lacking a comprehensive grasp of underlying principles.  The models struggle with counterexample-driven reasoning, a crucial skill for proving mathematical statements which highlights a lack of true conceptual understanding.  Furthermore, **performance varies substantially across different mathematical fields**, indicating an uneven level of expertise.  Addressing these limitations requires further research on developing innovative training methods, such as those incorporating example-based learning and counterexample analysis, to cultivate a more robust and comprehensive understanding of mathematical principles in LLMs.

#### Future Directions
Future research should prioritize expanding the scope of mathematical concepts covered.  **Addressing the limitations of current LLMs in topology and real analysis is crucial**, as these areas pose significant challenges.  **Developing more robust methods for automatically generating counterexample-based training data** is needed, moving beyond manual creation.  Investigating the integration of symbolic reasoning and formal proof systems with LLMs could unlock deeper mathematical understanding.  **Exploration into hybrid models**, combining the strengths of LLMs and specialized theorem provers, warrants further investigation.  Finally, the development of more sophisticated evaluation metrics that capture nuanced aspects of mathematical reasoning, including the ability to identify and utilize counterexamples effectively, is essential to accurately measure progress.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.10454/x2.png)

> 🔼 The figure illustrates the creation of the CounterMATH dataset.  First, mathematical textbooks were scanned and processed using Optical Character Recognition (OCR). Crowd-sourced workers then extracted statement-rationale pairs. Applied mathematics experts reviewed this data, correcting errors and ensuring the quality of the statement-rationale pairs.  Finally, a large language model (GPT-4) translated the validated data into English under expert oversight.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview the construction process of CounterMATH. CounterMATH was first extracted from photocopied mathematical textbooks by crowd-sourced labelers with the OCR tool. For the next step, authors with bachelor degrees in applied mathematics as annotation experts would filter and correct improper statement-rationale pairs. Finally, GPT-4o was prompted to translate the validated data into English under experts’ supervision.
> </details>



![](https://arxiv.org/html/2502.10454/x3.png)

> 🔼 The figure shows a pie chart illustrating the distribution of data points across four different mathematical fields within the COUNTERMATH dataset.  The fields are: Algebra, Topology, Real Analysis, and Functional Analysis. The size of each slice is proportional to the number of statement-rationale pairs belonging to that field. This visualization helps understand the dataset's coverage across various mathematical subfields.
> <details>
> <summary>read the caption</summary>
> (a) Different fields.
> </details>



![](https://arxiv.org/html/2502.10454/x4.png)

> 🔼 This figure shows the distribution of judgements (True/False) in the COUNTERMATH dataset.  The majority of statements are labeled as 'True', likely because the statements are from mathematical textbooks where accurate statements are the norm and to avoid confusing readers.
> <details>
> <summary>read the caption</summary>
> (b) Judgement types.
> </details>



![](https://arxiv.org/html/2502.10454/x5.png)

> 🔼 This figure shows the distribution of the COUNTERMATH dataset across different fields of mathematics and the distribution of true and false statements within the dataset.  The left subplot (a) illustrates the proportion of data points originating from Algebra, Topology, Real Analysis, and Functional Analysis, highlighting the diverse mathematical areas covered in COUNTERMATH. The right subplot (b) visualizes the class imbalance in the dataset, indicating the overwhelming proportion of 'True' statements compared to 'False' statements. This imbalance is a characteristic feature of the dataset which is created from textbooks and is noteworthy when evaluating model performance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Data Distribution of CounterMATH.
> </details>



![](https://arxiv.org/html/2502.10454/x6.png)

> 🔼 This figure illustrates the process of creating training data for enhancing the model's counterexample-driven reasoning. It starts with available mathematical datasets and filters data containing counterexamples or counterexample-based proofs.  The filtered data is then refined to align with the benchmark's characteristics, focusing on explicitly showing examples in the reasoning process. The final output is a refined training dataset ready for model fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 4: The overview of our training data engineering framework.
> </details>



![](https://arxiv.org/html/2502.10454/x7.png)

> 🔼 This figure presents a fine-grained analysis of the performance of various LLMs on the COUNTERMATH benchmark across four distinct mathematical fields: algebra, topology, real analysis, and functional analysis.  It shows the F1 score for each model within each field, providing a detailed view of model strengths and weaknesses across different mathematical domains. This allows for a deeper understanding of the nuances in LLM performance in higher-level mathematics.
> <details>
> <summary>read the caption</summary>
> Figure 5: Fine-grained evaluation results of different fields in CounterMATH.
> </details>



![](https://arxiv.org/html/2502.10454/x8.png)

> 🔼 This figure displays the correlation between a model's performance (measured by the F1 macro score) and its token efficiency.  Token efficiency is calculated as the ratio of tokens used by the model to the tokens in the ground truth.  The graph shows that models closer to the 100% Ground Truth Token Ratio line are more efficient, using fewer tokens to achieve comparable accuracy.  Points far to the right indicate models that use significantly more tokens than necessary, suggesting inefficiency.
> <details>
> <summary>read the caption</summary>
> Figure 6: The relationship between Mean Token Ratios (%) and F1 (macro) scores for various models. The red dashed line represents the Ground Truth Token Ratio (100%), serving as an efficiency benchmark. Models closer to this line are more token-efficient, while those farther to the right consume significantly more tokens.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.5.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.1.1">Models</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S6.T2.5.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.2.1">F1 (macro)</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.3.1">Examples(%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.4.1">Strict(%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T2.5.1.1.5"><span class="ltx_text ltx_font_bold" id="S6.T2.5.1.1.5.1">Loose(%)</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.5.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S6.T2.5.2.2.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T2.5.2.2.1.1">Base models</span></th>
</tr>
<tr class="ltx_tr" id="S6.T2.5.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.5.3.3.1">Qwen2.5-Math-7B-Instruct</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.5.3.3.2">38.3</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.3.3.3">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.3.3.4">30.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.3.3.5">33.2</td>
</tr>
<tr class="ltx_tr" id="S6.T2.5.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="S6.T2.5.4.4.1">Qwen2.5-Math-7B-Instruct + Hint prompt</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S6.T2.5.4.4.2">39.4</th>
<td class="ltx_td ltx_align_center" id="S6.T2.5.4.4.3">79.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.5.4.4.4"><span class="ltx_text ltx_font_bold" id="S6.T2.5.4.4.4.1">33.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.5.4.4.5"><span class="ltx_text ltx_font_bold" id="S6.T2.5.4.4.5.1">36.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="5" id="S6.T2.5.5.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S6.T2.5.5.5.1.1">Our training model</span></th>
</tr>
<tr class="ltx_tr" id="S6.T2.5.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.5.6.6.1">Qwen2.5-Math-7B-Instruct-SFT</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S6.T2.5.6.6.2">39.7</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.6.6.3">75.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.6.6.4">31.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.6.6.5">34.7</td>
</tr>
<tr class="ltx_tr" id="S6.T2.5.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T2.5.7.7.1">Qwen2.5-Math-7B-Instruct-SFT + Hint prompt</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S6.T2.5.7.7.2"><span class="ltx_text ltx_font_bold" id="S6.T2.5.7.7.2.1">41.1</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.5.7.7.3"><span class="ltx_text ltx_font_bold" id="S6.T2.5.7.7.3.1">79.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.5.7.7.4">31.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T2.5.7.7.5">34.7</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance evaluation results of the fine-tuned Qwen-2.5-Math-7B-Instruct model and its base model on the COUNTERMATH benchmark.  It shows the F1 score (macro average), and the proportions of problem-solving instances where examples were used (Examples), and where these examples aligned strictly or loosely with reference examples (Strict and Loose, respectively). Results are shown for both models with and without additional 'hint' prompts.
> <details>
> <summary>read the caption</summary>
> Table 2: The evaluation results on our CounterMATH.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T3.4.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S6.T3.4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S6.T3.4.1.1.1.1.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S6.T3.4.1.1.1.2.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S6.T3.4.1.1.1.3.1">MATH</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S6.T3.4.1.2.2.1">GPT-4o-2024-08-06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.4.1.2.2.2">92.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.4.1.2.2.3">81.1</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T3.4.1.3.3.1">Qwen2.5-math-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.1.3.3.2">95.1</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.1.3.3.3">80.5</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S6.T3.4.1.4.4.1">Qwen2.5-math-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.1.4.4.2">95.4</td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.1.4.4.3">84.9</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.5.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S6.T3.4.1.5.5.1">
<table class="ltx_tabular ltx_align_middle" id="S6.T3.4.1.5.5.1.1">
<tr class="ltx_tr" id="S6.T3.4.1.5.5.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T3.4.1.5.5.1.1.1.1">Qwen2.5-math-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.5.5.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T3.4.1.5.5.1.1.2.1">+Countermath-SFT</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.4.1.5.5.2"><span class="ltx_text ltx_font_bold" id="S6.T3.4.1.5.5.2.1">95.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S6.T3.4.1.5.5.3"><span class="ltx_text ltx_font_bold" id="S6.T3.4.1.5.5.3.1">87.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating the fine-tuned model's performance on out-of-distribution (OOD) benchmark datasets, MATH and GSM8K.  It demonstrates the model's ability to generalize its counterexample-driven reasoning skills learned from COUNTERMATH to unseen datasets, showcasing its robustness and transferability.
> <details>
> <summary>read the caption</summary>
> Table 3: The Out-of-distribution Evaluation Results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S6.T3.4.1.5.5.1.1">
<tr class="ltx_tr" id="S6.T3.4.1.5.5.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T3.4.1.5.5.1.1.1.1">Qwen2.5-math-7B-Instruct</td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.1.5.5.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S6.T3.4.1.5.5.1.1.2.1">+Countermath-SFT</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 provides a comprehensive overview of various open-source large language models (LLMs) used as baselines in the study.  It details the model name, its scale (number of parameters), the underlying base model architecture it's built upon, the training data employed, and the primary training paradigms utilized.  The table clarifies abbreviations used in the paper such as CP (Continue Pretrain), SFT (Supervised Fine-Tuning), GRPO (a variant of Proximal Policy Optimization that uses group averaging), PoT (Program-of-Thought), TIR (Tool-Integrated Reasoning), PRIME (using an objective reward model with DPO-like rewards), and SLM (Selective Language Modeling).  The asterisk (*) indicates that models with the same architecture are grouped.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of open-weight baseline models. CP stands for Continue Pretrain. SFT stands for Supervised Fine-Tuning. GRPO refers to a variant of PPO, which replaces the value network with the group average (Shao et al., 2024). PoT (Chen et al., 2023) and TIR (Gou et al., 2024) stand for Program-of-Thought and Tool-Integrated Reasoning, respectively. PRIME stands for using ORM as PRM by DPO-like rewards (Cui et al., 2025). SLM stands for Selective Language Modeling (Lin et al., 2024b). ∗ only stands for the same model architecture.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.10454/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.10454/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}