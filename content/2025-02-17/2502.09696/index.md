---
title: "ZeroBench: An Impossible Visual Benchmark for Contemporary Large Multimodal Models"
summary: "ZeroBench: a new visual reasoning benchmark, proves impossible for current large multimodal models, pushing the boundaries of AI visual understanding."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Cambridge",]
showSummary: true
date: 2025-02-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.09696 {{< /keyword >}}
{{< keyword icon="writer" >}} Jonathan Roberts et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.09696" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.09696" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.09696/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current benchmarks for evaluating large multimodal models (LMMs) are easily surpassed by rapid model advancements, leading to a lack of meaningful progress in the field.  This paper highlights the urgent need for more challenging benchmarks to drive further innovation in visual understanding.  Existing benchmarks quickly become obsolete, providing minimal headroom for improvement and failing to accurately assess the true capabilities of models.



To overcome this limitation, the researchers introduce ZeroBench, a new visual reasoning benchmark specifically designed to be currently impossible for top LMMs. It contains 100 manually curated, challenging questions, evaluated on 20 state-of-the-art LMMs, achieving a score of 0.0%.  The detailed analysis of the models' failures provides insights into the specific weaknesses of current visual understanding techniques.  ZeroBench's unique approach ensures its relevance for a longer time and challenges researchers to develop models with truly superior visual reasoning capabilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} ZeroBench is a new, lightweight visual reasoning benchmark that is currently impossible for state-of-the-art large multimodal models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The benchmark's difficulty highlights significant shortcomings in current models' visual interpretation and reasoning abilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} ZeroBench's design encourages the development of new models and algorithms that are better at visual understanding. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical issue of benchmark stagnation in large multimodal models**.  Existing benchmarks are quickly solved, hindering meaningful progress. ZeroBench offers a much-needed solution by introducing an extremely difficult visual reasoning benchmark. This will spur innovation in visual understanding algorithms and improve the field's long-term progress.

------
#### Visual Insights



![](https://arxiv.org/html/2502.09696/x1.png)

> 🔼 The figure displays the state-of-the-art performance of Large Multimodal Models (LMMs) on various public visual benchmarks.  It showcases that while LMMs achieve high scores on many established benchmarks,  the performance gains are rapidly diminishing, indicating that the benchmarks are becoming too easy and not effectively measuring true visual understanding capabilities.  In contrast, the newly proposed ZeroBench benchmark demonstrates a significant challenge, as current LMMs score 0%, indicating there is ample room for improvement and a need for more challenging visual reasoning evaluations.
> <details>
> <summary>read the caption</summary>
> Figure 1: State of the art performance on public visual benchmarks. Frontier LMMs score highly on many popular benchmarks, leaving little headroom. By comparison, our ZeroBench proves impossible for current models, leaving maximum headroom.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.F5.fig1.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.F5.fig1.1.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.F5.fig1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.1.1.1.1">Property</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S3.F5.fig1.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.F5.fig1.1.1.1.1.2.1">Amount</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.F5.fig1.1.1.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.2.1.1">Questions</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.2.1.2">100</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.3.2">
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.3.2.1">Subquestions</td>
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.3.2.2">334</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.4.3">
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.4.3.1">Subquestions per question</td>
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.4.3.2">3.3</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.5.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.5.4.1">Single-image questions</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.5.4.2">93</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.6.5">
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.6.5.1">Multi-image questions</td>
<td class="ltx_td ltx_align_left" id="S3.F5.fig1.1.1.6.5.2">7</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.7.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.7.6.1">Synthetic image questions</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.F5.fig1.1.1.7.6.2">31</td>
</tr>
<tr class="ltx_tr" id="S3.F5.fig1.1.1.8.7">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.F5.fig1.1.1.8.7.1">Natural image questions</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.F5.fig1.1.1.8.7.2">69</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the key statistics for the ZeroBench dataset.  It details the number of questions, subquestions, and the breakdown of question types based on the number of images involved (single vs. multi-image) and the image source (synthetic vs. natural). This provides a concise overview of the size and composition of the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 1: ZeroBench statistics.
> </details>





### In-depth insights


#### Impossible Visual Benchmarks
The concept of "Impossible Visual Benchmarks" in the context of large multimodal models (LMMs) presents a compelling argument for pushing the boundaries of current AI capabilities.  **Creating benchmarks that are genuinely challenging, yet still relevant to real-world applications, is crucial for fostering meaningful progress.**  Current benchmarks often show rapid improvement, quickly reaching a point where they become less informative.  An "impossible" benchmark, initially unsolvable by state-of-the-art models, addresses this by providing a significant margin for advancement, encouraging the development of novel techniques, and promoting longer-term research. **However, the challenge lies in designing such benchmarks that remain relevant and avoid becoming overly specialized or artificial.**  The difficulty must be intrinsic to the nature of visual understanding itself, rather than a result of clever, but ultimately unproductive, obfuscation.   A truly "impossible" benchmark serves as a powerful catalyst, incentivizing research into areas like robust spatial reasoning, low-level visual interpretation, and improved common sense understanding, ultimately leading to more capable and reliable LMMs.

#### LMM Visual Reasoning
Large Multimodal Models (LMMs) demonstrate significant potential in visual reasoning tasks, but their performance is often surprisingly limited.  **Current benchmarks frequently show high scores for LMMs**, which may not reflect true capabilities because of issues such as dataset bias, headroom erosion due to rapid model advancements, and the possibility that benchmark designs are not sufficiently challenging.  **The development of more difficult, comprehensive, and reliable benchmarks** is thus crucial to assess true visual understanding.  This necessitates a shift away from focusing solely on easily attainable scores and **emphasizing deeper evaluation** that examines the nuances of LMM reasoning processes.   **In-depth error analysis is also critical**, as it reveals common failure patterns (such as difficulties in handling fine-grained visual details or performing multi-step reasoning) and provides insights into the limitations and biases of current models.  By overcoming these issues and creating rigorous evaluation methodologies, we can better understand and improve LMMs' visual reasoning capabilities.

#### ZeroBench: Design & Eval
The hypothetical section, 'ZeroBench: Design & Eval,' would delve into the meticulous creation and rigorous evaluation of the ZeroBench benchmark.  The design would be discussed in detail, highlighting its **unique characteristics**, such as its focus on tasks deemed "impossible" for current large multimodal models (LMMs), its **lightweight nature**, enabling efficient evaluation despite its high difficulty, and its deliberate construction to avoid biases or label errors that plague other benchmarks. The evaluation process would be carefully detailed, explaining the selection of **20 diverse LMMs**, the evaluation metrics used, and the strategies for analyzing both the overall performance and the specific error modes of the models. This analysis is crucial because it would uncover inherent weaknesses in current LMMs visual understanding and reasoning capabilities, paving the way for future improvements.  The authors likely provide examples of common failure modes to illustrate the challenges posed by ZeroBench and suggest areas where models struggle. Overall, this section aims to present a compelling argument for ZeroBench as a superior benchmark, moving beyond simple quantitative results and offering qualitative insights into the current state and future trajectory of LMM development.

#### Error Analysis: Insights
A dedicated 'Error Analysis: Insights' section would be crucial to understanding the paper's core contribution.  It should delve into **why** contemporary Large Multimodal Models (LMMs) fail on the ZeroBench, moving beyond simple accuracy scores.  This necessitates a detailed qualitative analysis, presenting specific examples of model failures and categorizing them into distinct error types (e.g., visual interpretation errors, reasoning errors, spatial reasoning errors).  **Visual examples highlighting these errors**, possibly with side-by-side comparisons of model outputs and ground truth, would significantly strengthen the analysis.  The section should also examine the **frequency of these error types**, providing statistical insights into the models' predominant weaknesses.  Finally, linking these error patterns to inherent limitations in current LMM architectures, such as attention mechanisms or training data biases, would be essential for a complete and insightful error analysis.

#### Future of Visual AI
The future of visual AI hinges on addressing current limitations.  **Robustness and generalization** remain crucial, as current models struggle with variations in style, viewpoint, and lighting not seen in training data.  **Improved reasoning capabilities** are vital for truly intelligent vision systems; current models often fail to interpret complex scenes or solve visual puzzles requiring multiple steps.  **Bridging the gap between perception and action** is essential for applications like robotics and autonomous vehicles. This requires more sophisticated integration of visual data with other sensory inputs and enhanced decision-making processes.  **Ethical concerns** related to bias, privacy, and misuse must be proactively addressed throughout the development cycle.  **Explainability** is key to building trust and accountability in visual AI systems. We need better understanding of how these models reach their conclusions.  Finally, **efficient and scalable solutions** will be critical for widespread adoption, especially considering the computational demands of advanced models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.09696/x2.png)

> 🔼 The figure shows a line graph illustrating the rapid improvement in the state-of-the-art performance on several visual benchmarks throughout 2024.  Each line represents a different benchmark, showing the increase in the highest-achieved score (SOTA) over time. The graph highlights the rapid reduction in benchmark headroom (the gap between perfect performance and the SOTA score), indicating that many existing benchmarks are becoming too easy for current large multimodal models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Rapid progress was made on visual benchmarks last year. Compiled from (OpenCompass Contributors, 2023).
> </details>



![](https://arxiv.org/html/2502.09696/x3.png)

> 🔼 Figure 3 showcases three example questions from the ZeroBench benchmark, each accompanied by its corresponding answer and a brief explanation.  The questions require multi-step reasoning and visual interpretation to solve, highlighting the challenging nature of the benchmark. ZeroBench consists of 100 similar manually-curated questions designed to be impossible for current Large Multimodal Models (LMMs). These examples represent the diverse range of reasoning abilities and visual interpretation skills needed to answer ZeroBench questions.
> <details>
> <summary>read the caption</summary>
> Figure 3: Example ZeroBench questions and answers††. Our benchmark contains 100 of these challenging questions.
> </details>



![](https://arxiv.org/html/2502.09696/x4.png)

> 🔼 This histogram shows the distribution of question lengths in the ZeroBench dataset. The x-axis represents the length of a question in terms of the number of characters, and the y-axis shows the frequency of questions with that length.  The distribution is heavily skewed towards shorter questions, with a long tail indicating that a small number of questions contain many more characters.
> <details>
> <summary>read the caption</summary>
> Figure 4: Question length distribution.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.4.1">
<td class="ltx_td ltx_border_tt" id="S4.T2.3.4.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.3.4.1.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.2.1">Main questions</span> (100)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.3.4.1.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.4.1.3.1">Subquestions</span> (334)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td" id="S4.T2.1.1.2"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3">k/k [%] <span class="ltx_text" id="S4.T2.1.1.3.1" style="color:#808080;">(n)</span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T2.1.1.4">pass@k [%] <span class="ltx_text" id="S4.T2.1.1.4.1" style="color:#808080;">(n)</span>
</td>
<td class="ltx_td" id="S4.T2.1.1.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1">pass@k [%] <span class="ltx_text" id="S4.T2.1.1.1.1" style="color:#808080;">(<math alttext="SE_{CLT}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.2" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml">S</mi><mo id="S4.T2.1.1.1.1.m1.1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T2.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.3.2" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.3.2.cmml">E</mi><mrow id="S4.T2.1.1.1.1.m1.1.1.3.3" xref="S4.T2.1.1.1.1.m1.1.1.3.3.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.3.3.2" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.3.3.2.cmml">C</mi><mo id="S4.T2.1.1.1.1.m1.1.1.3.3.1" xref="S4.T2.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T2.1.1.1.1.m1.1.1.3.3.3" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.3.3.3.cmml">L</mi><mo id="S4.T2.1.1.1.1.m1.1.1.3.3.1a" xref="S4.T2.1.1.1.1.m1.1.1.3.3.1.cmml">⁢</mo><mi id="S4.T2.1.1.1.1.m1.1.1.3.3.4" mathcolor="#808080" xref="S4.T2.1.1.1.1.m1.1.1.3.3.4.cmml">T</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><times id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"></times><ci id="S4.T2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2">𝑆</ci><apply id="S4.T2.1.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.2">𝐸</ci><apply id="S4.T2.1.1.1.1.m1.1.1.3.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3"><times id="S4.T2.1.1.1.1.m1.1.1.3.3.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3.1"></times><ci id="S4.T2.1.1.1.1.m1.1.1.3.3.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3.2">𝐶</ci><ci id="S4.T2.1.1.1.1.m1.1.1.3.3.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3.3">𝐿</ci><ci id="S4.T2.1.1.1.1.m1.1.1.3.3.4.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3.4">𝑇</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">SE_{CLT}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">italic_S italic_E start_POSTSUBSCRIPT italic_C italic_L italic_T end_POSTSUBSCRIPT</annotation></semantics></math>)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.6">Num. correct</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<td class="ltx_td ltx_align_left" id="S4.T2.3.5.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.5.2.1.1">Models</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.2">k=5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.3">k=1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.4">k=5</td>
<td class="ltx_td" id="S4.T2.3.5.2.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.6">k=1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.7">k=1</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.3.6.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.6.3.1.1" style="color:#808080;">Reasoning LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_left" id="S4.T2.2.2.1">o1 pro<sup class="ltx_sup" id="S4.T2.2.2.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2">0.0 <span class="ltx_text" id="S4.T2.2.2.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.3">0.0 <span class="ltx_text" id="S4.T2.2.2.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.4">-</td>
<td class="ltx_td" id="S4.T2.2.2.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6">22.40 (<span class="ltx_text" id="S4.T2.2.2.6.1" style="color:#808080;">2.48</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7">75</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.1">o1<sup class="ltx_sup" id="S4.T2.3.3.1.1">⋄</sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.2">0.0 <span class="ltx_text" id="S4.T2.3.3.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3">0.0 <span class="ltx_text" id="S4.T2.3.3.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.4">0.0 <span class="ltx_text" id="S4.T2.3.3.4.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td" id="S4.T2.3.3.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.6">19.93 (<span class="ltx_text" id="S4.T2.3.3.6.1" style="color:#808080;">2.37</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.7">68</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.4">
<td class="ltx_td ltx_align_left" id="S4.T2.3.7.4.1">Gemini 2 Flash Thinking</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.2">0.0 <span class="ltx_text" id="S4.T2.3.7.4.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.3">0.0 <span class="ltx_text" id="S4.T2.3.7.4.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.7.4.4.1">7.0 <span class="ltx_text" id="S4.T2.3.7.4.4.1.1" style="color:#808080;">(7)</span></span></td>
<td class="ltx_td" id="S4.T2.3.7.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.6">19.67 (<span class="ltx_text" id="S4.T2.3.7.4.6.1" style="color:#808080;">2.67</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.7">67</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.5">
<td class="ltx_td ltx_align_left" id="S4.T2.3.8.5.1">QVQ</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.2">0.0 <span class="ltx_text" id="S4.T2.3.8.5.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.3">0.0 <span class="ltx_text" id="S4.T2.3.8.5.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.4">3.0 <span class="ltx_text" id="S4.T2.3.8.5.4.1" style="color:#808080;">(3)</span>
</td>
<td class="ltx_td" id="S4.T2.3.8.5.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.6">19.78 (<span class="ltx_text" id="S4.T2.3.8.5.6.1" style="color:#808080;">2.42</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.7">66</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.9.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.3.9.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.9.6.1.1" style="color:#808080;">Proprietary LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.10.7">
<td class="ltx_td ltx_align_left" id="S4.T2.3.10.7.1">GPT-4o</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.2">0.0 <span class="ltx_text" id="S4.T2.3.10.7.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.3">0.0 <span class="ltx_text" id="S4.T2.3.10.7.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.4">1.0 <span class="ltx_text" id="S4.T2.3.10.7.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.10.7.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.6">21.18 (<span class="ltx_text" id="S4.T2.3.10.7.6.1" style="color:#808080;">2.46</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.7">71</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.11.8">
<td class="ltx_td ltx_align_left" id="S4.T2.3.11.8.1">GPT-4o mini</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.2">0.0 <span class="ltx_text" id="S4.T2.3.11.8.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.3">0.0 <span class="ltx_text" id="S4.T2.3.11.8.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.4">2.0 <span class="ltx_text" id="S4.T2.3.11.8.4.1" style="color:#808080;">(2)</span>
</td>
<td class="ltx_td" id="S4.T2.3.11.8.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.6">16.98 (<span class="ltx_text" id="S4.T2.3.11.8.6.1" style="color:#808080;">2.50</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.11.8.7">55</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.12.9">
<td class="ltx_td ltx_align_left" id="S4.T2.3.12.9.1">Gemini 2 Flash</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.2">0.0 <span class="ltx_text" id="S4.T2.3.12.9.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.3">0.0 <span class="ltx_text" id="S4.T2.3.12.9.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.4">3.0 <span class="ltx_text" id="S4.T2.3.12.9.4.1" style="color:#808080;">(3)</span>
</td>
<td class="ltx_td" id="S4.T2.3.12.9.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.6">22.47 (<span class="ltx_text" id="S4.T2.3.12.9.6.1" style="color:#808080;">2.80</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.12.9.7">74</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.13.10">
<td class="ltx_td ltx_align_left" id="S4.T2.3.13.10.1">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.2">0.0 <span class="ltx_text" id="S4.T2.3.13.10.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.3">0.0 <span class="ltx_text" id="S4.T2.3.13.10.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.4">2.0 <span class="ltx_text" id="S4.T2.3.13.10.4.1" style="color:#808080;">(2)</span>
</td>
<td class="ltx_td" id="S4.T2.3.13.10.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.6">20.25 (<span class="ltx_text" id="S4.T2.3.13.10.6.1" style="color:#808080;">2.55</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.13.10.7">70</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.14.11">
<td class="ltx_td ltx_align_left" id="S4.T2.3.14.11.1">Gemini 1.5 Flash</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.14.11.2">0.0 <span class="ltx_text" id="S4.T2.3.14.11.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.14.11.3">0.0 <span class="ltx_text" id="S4.T2.3.14.11.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.14.11.4">2.0 <span class="ltx_text" id="S4.T2.3.14.11.4.1" style="color:#808080;">(2)</span>
</td>
<td class="ltx_td" id="S4.T2.3.14.11.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.14.11.6">18.02 (<span class="ltx_text" id="S4.T2.3.14.11.6.1" style="color:#808080;">2.47</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.14.11.7">63</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.15.12">
<td class="ltx_td ltx_align_left" id="S4.T2.3.15.12.1">Gemini 1 Pro Vision</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.2">0.0 <span class="ltx_text" id="S4.T2.3.15.12.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.3">0.0 <span class="ltx_text" id="S4.T2.3.15.12.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.4">1.0 <span class="ltx_text" id="S4.T2.3.15.12.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.15.12.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.6">12.17 (<span class="ltx_text" id="S4.T2.3.15.12.6.1" style="color:#808080;">2.19</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.15.12.7">44</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.16.13">
<td class="ltx_td ltx_align_left" id="S4.T2.3.16.13.1">Claude 3.5 Sonnet v2</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.2">0.0 <span class="ltx_text" id="S4.T2.3.16.13.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.3">0.0 <span class="ltx_text" id="S4.T2.3.16.13.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.4">2.0 <span class="ltx_text" id="S4.T2.3.16.13.4.1" style="color:#808080;">(2)</span>
</td>
<td class="ltx_td" id="S4.T2.3.16.13.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.6"><span class="ltx_text ltx_font_bold" id="S4.T2.3.16.13.6.1">24.30 (<span class="ltx_text" id="S4.T2.3.16.13.6.1.1" style="color:#808080;">2.73</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.16.13.7"><span class="ltx_text ltx_font_bold" id="S4.T2.3.16.13.7.1">81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.17.14">
<td class="ltx_td ltx_align_left" id="S4.T2.3.17.14.1">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.17.14.2">0.0 <span class="ltx_text" id="S4.T2.3.17.14.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.17.14.3">0.0 <span class="ltx_text" id="S4.T2.3.17.14.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.17.14.4">1.0 <span class="ltx_text" id="S4.T2.3.17.14.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.17.14.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.17.14.6">19.73 (<span class="ltx_text" id="S4.T2.3.17.14.6.1" style="color:#808080;">2.49</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.17.14.7">68</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.18.15">
<td class="ltx_td ltx_align_left" id="S4.T2.3.18.15.1">Claude 3 Opus</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.18.15.2">0.0 <span class="ltx_text" id="S4.T2.3.18.15.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.18.15.3">0.0 <span class="ltx_text" id="S4.T2.3.18.15.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.18.15.4">0.0 <span class="ltx_text" id="S4.T2.3.18.15.4.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td" id="S4.T2.3.18.15.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.18.15.6">14.50 (<span class="ltx_text" id="S4.T2.3.18.15.6.1" style="color:#808080;">2.27</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.18.15.7">46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.19.16">
<td class="ltx_td ltx_align_left" id="S4.T2.3.19.16.1">Claude 3 Sonnet</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.19.16.2">0.0 <span class="ltx_text" id="S4.T2.3.19.16.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.19.16.3">0.0 <span class="ltx_text" id="S4.T2.3.19.16.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.19.16.4">1.0 <span class="ltx_text" id="S4.T2.3.19.16.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.19.16.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.19.16.6">16.25 (<span class="ltx_text" id="S4.T2.3.19.16.6.1" style="color:#808080;">2.33</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.19.16.7">49</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.20.17">
<td class="ltx_td ltx_align_left" id="S4.T2.3.20.17.1">Claude 3 Haiku</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.20.17.2">0.0 <span class="ltx_text" id="S4.T2.3.20.17.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.20.17.3">0.0 <span class="ltx_text" id="S4.T2.3.20.17.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.20.17.4">0.0 <span class="ltx_text" id="S4.T2.3.20.17.4.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td" id="S4.T2.3.20.17.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.20.17.6">12.12 (<span class="ltx_text" id="S4.T2.3.20.17.6.1" style="color:#808080;">2.11</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.20.17.7">40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.21.18">
<td class="ltx_td ltx_align_left" id="S4.T2.3.21.18.1">Reka Edge</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.21.18.2">0.0 <span class="ltx_text" id="S4.T2.3.21.18.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.21.18.3">0.0 <span class="ltx_text" id="S4.T2.3.21.18.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.21.18.4">1.0 <span class="ltx_text" id="S4.T2.3.21.18.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.21.18.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.21.18.6">3.38 (<span class="ltx_text" id="S4.T2.3.21.18.6.1" style="color:#808080;">0.97</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.21.18.7">12</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.22.19">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.3.22.19.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.22.19.1.1" style="color:#808080;">Open-weight LMMs</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.23.20">
<td class="ltx_td ltx_align_left" id="S4.T2.3.23.20.1">Llama 3.2 90B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.23.20.2">0.0 <span class="ltx_text" id="S4.T2.3.23.20.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.23.20.3">0.0 <span class="ltx_text" id="S4.T2.3.23.20.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.23.20.4">0.0 <span class="ltx_text" id="S4.T2.3.23.20.4.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td" id="S4.T2.3.23.20.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.23.20.6">13.07 (<span class="ltx_text" id="S4.T2.3.23.20.6.1" style="color:#808080;">1.97</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.23.20.7">47</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.24.21">
<td class="ltx_td ltx_align_left" id="S4.T2.3.24.21.1">Qwen2-VL-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.24.21.2">0.0 <span class="ltx_text" id="S4.T2.3.24.21.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.24.21.3">0.0 <span class="ltx_text" id="S4.T2.3.24.21.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.24.21.4">2.0 <span class="ltx_text" id="S4.T2.3.24.21.4.1" style="color:#808080;">(2)</span>
</td>
<td class="ltx_td" id="S4.T2.3.24.21.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.24.21.6">11.90 (<span class="ltx_text" id="S4.T2.3.24.21.6.1" style="color:#808080;">2.24</span>)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.24.21.7">37</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.25.22">
<td class="ltx_td ltx_align_left" id="S4.T2.3.25.22.1">NVLM-D-72B</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.25.22.2">0.0 <span class="ltx_text" id="S4.T2.3.25.22.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.25.22.3">0.0 <span class="ltx_text" id="S4.T2.3.25.22.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.25.22.4">1.0 <span class="ltx_text" id="S4.T2.3.25.22.4.1" style="color:#808080;">(1)</span>
</td>
<td class="ltx_td" id="S4.T2.3.25.22.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.25.22.6">13.78 <span class="ltx_text" id="S4.T2.3.25.22.6.1" style="color:#808080;">(2.32)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.25.22.7">46</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.26.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.3.26.23.1">Pixtral-Large</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.26.23.2">0.0 <span class="ltx_text" id="S4.T2.3.26.23.2.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.26.23.3">0.0 <span class="ltx_text" id="S4.T2.3.26.23.3.1" style="color:#808080;">(0)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.26.23.4">3.0 <span class="ltx_text" id="S4.T2.3.26.23.4.1" style="color:#808080;">(3)</span>
</td>
<td class="ltx_td ltx_border_bb" id="S4.T2.3.26.23.5"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.26.23.6">13.50 <span class="ltx_text" id="S4.T2.3.26.23.6.1" style="color:#808080;">(2.01)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.26.23.7">49</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of 20 different large multimodal models (LMMs) on the ZeroBench benchmark.  ZeroBench is a challenging visual reasoning benchmark designed to be difficult even for state-of-the-art models. The table shows the accuracy of each model on two different metrics: pass@1 (using greedy decoding, indicating if the model gets the answer correct in the first try) and pass@k (using stochastic decoding, indicating if the model gets the answer correct in any of the k sampled responses).  It also includes k/k reliability (which indicates if all k responses are correct).  The results demonstrate that none of the models perform well on the primary questions of ZeroBench, highlighting the difficulty of the benchmark.
> <details>
> <summary>read the caption</summary>
> Table 2: Overall results on ZeroBench. We report pass@1 using greedy decoding and k/k reliability and pass@5 using stochastic decoding. For a set of k sampled responses, pass@k is evaluated as correct if at least one response is correct; k/k reliability is evaluated as correct if all responses are correct; ⋄all responses are sampled using default model settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.20.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.20.20.21.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.20.20.21.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T3.20.20.21.1.2"><span class="ltx_text ltx_font_bold" id="S5.T3.20.20.21.1.2.1">Avg. per question</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.22.2">
<th class="ltx_td ltx_th ltx_th_row" id="S5.T3.20.20.22.2.1"></th>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T3.20.20.22.2.2">Main questions</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S5.T3.20.20.22.2.3">Subquestions</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.2.2.2.3"><span class="ltx_text ltx_font_bold" id="S5.T3.2.2.2.3.1">Model</span></th>
<td class="ltx_td ltx_align_right" id="S5.T3.2.2.2.4">#tkns</td>
<td class="ltx_td ltx_align_right" id="S5.T3.1.1.1.1">Cost ($)<sup class="ltx_sup" id="S5.T3.1.1.1.1.1">∗</sup>
</td>
<td class="ltx_td ltx_align_right" id="S5.T3.2.2.2.5">#tkns</td>
<td class="ltx_td ltx_align_right" id="S5.T3.2.2.2.2">Cost ($)<sup class="ltx_sup" id="S5.T3.2.2.2.2.1">∗</sup>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.23.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.20.20.23.3.1"><span class="ltx_text ltx_font_bold" id="S5.T3.20.20.23.3.1.1" style="color:#808080;">Reasoning LMMs</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.3.3.1">o1 pro<sup class="ltx_sup" id="S5.T3.3.3.3.1.1">⋄</sup>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.2">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.3">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.3.3.3.4">-</td>
<td class="ltx_td" id="S5.T3.3.3.3.5"></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.4.4.1">o1<sup class="ltx_sup" id="S5.T3.4.4.4.1.1">⋄</sup>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.2">7345</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.3">0.463</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.4">3749</td>
<td class="ltx_td ltx_align_right" id="S5.T3.4.4.4.5">0.236</td>
</tr>
<tr class="ltx_tr" id="S5.T3.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.5.5.5.1">Gemini 2 Flash Thinking<sup class="ltx_sup" id="S5.T3.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.5.5.5.1.1.1">∗∗</span></sup>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.2">520</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.3">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.4">228</td>
<td class="ltx_td ltx_align_right" id="S5.T3.5.5.5.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.24.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.24.4.1">QVQ</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.24.4.2">2794</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.24.4.3">0.003</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.24.4.4">1741</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.24.4.5">0.002</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.25.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.20.20.25.5.1"><span class="ltx_text ltx_font_bold" id="S5.T3.20.20.25.5.1.1" style="color:#808080;">Proprietary LMMs</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.26.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.26.6.1">GPT-4o</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.26.6.2">452</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.26.6.3">0.005</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.26.6.4">228</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.26.6.5">0.002</td>
</tr>
<tr class="ltx_tr" id="S5.T3.7.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.7.7.7.3">GPT-4o mini</th>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.4">896</td>
<td class="ltx_td ltx_align_right" id="S5.T3.6.6.6.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.6.6.6.1.m1.1"><semantics id="S5.T3.6.6.6.1.m1.1a"><mo id="S5.T3.6.6.6.1.m1.1.1" xref="S5.T3.6.6.6.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.1.m1.1b"><lt id="S5.T3.6.6.6.1.m1.1.1.cmml" xref="S5.T3.6.6.6.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.5">214</td>
<td class="ltx_td ltx_align_right" id="S5.T3.7.7.7.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.7.7.7.2.m1.1"><semantics id="S5.T3.7.7.7.2.m1.1a"><mo id="S5.T3.7.7.7.2.m1.1.1" xref="S5.T3.7.7.7.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.2.m1.1b"><lt id="S5.T3.7.7.7.2.m1.1.1.cmml" xref="S5.T3.7.7.7.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.2.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.27.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.27.7.1">Gemini 2 Flash</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.27.7.2">1267</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.27.7.3">0.013</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.27.7.4">490</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.27.7.5">0.005</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.8.8.8.2">Gemini 1.5 Pro</th>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.3">266</td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.4">0.002</td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.5">114</td>
<td class="ltx_td ltx_align_right" id="S5.T3.8.8.8.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.8.8.8.1.m1.1"><semantics id="S5.T3.8.8.8.1.m1.1a"><mo id="S5.T3.8.8.8.1.m1.1.1" xref="S5.T3.8.8.8.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.1.m1.1b"><lt id="S5.T3.8.8.8.1.m1.1.1.cmml" xref="S5.T3.8.8.8.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.10.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.10.10.10.3">Gemini 1.5 Flash</th>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.4">276</td>
<td class="ltx_td ltx_align_right" id="S5.T3.9.9.9.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.9.9.9.1.m1.1"><semantics id="S5.T3.9.9.9.1.m1.1a"><mo id="S5.T3.9.9.9.1.m1.1.1" xref="S5.T3.9.9.9.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.9.9.9.1.m1.1b"><lt id="S5.T3.9.9.9.1.m1.1.1.cmml" xref="S5.T3.9.9.9.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.9.9.9.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.9.9.9.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.5">122</td>
<td class="ltx_td ltx_align_right" id="S5.T3.10.10.10.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.10.10.10.2.m1.1"><semantics id="S5.T3.10.10.10.2.m1.1a"><mo id="S5.T3.10.10.10.2.m1.1.1" xref="S5.T3.10.10.10.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.10.10.10.2.m1.1b"><lt id="S5.T3.10.10.10.2.m1.1.1.cmml" xref="S5.T3.10.10.10.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.10.10.10.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.10.10.10.2.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.12.12.12.3">Gemini 1 Pro Vision</th>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.4">211</td>
<td class="ltx_td ltx_align_right" id="S5.T3.11.11.11.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.11.11.11.1.m1.1"><semantics id="S5.T3.11.11.11.1.m1.1a"><mo id="S5.T3.11.11.11.1.m1.1.1" xref="S5.T3.11.11.11.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.11.11.11.1.m1.1b"><lt id="S5.T3.11.11.11.1.m1.1.1.cmml" xref="S5.T3.11.11.11.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.11.11.11.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.11.11.11.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.5">99</td>
<td class="ltx_td ltx_align_right" id="S5.T3.12.12.12.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.12.12.12.2.m1.1"><semantics id="S5.T3.12.12.12.2.m1.1a"><mo id="S5.T3.12.12.12.2.m1.1.1" xref="S5.T3.12.12.12.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.12.12.12.2.m1.1b"><lt id="S5.T3.12.12.12.2.m1.1.1.cmml" xref="S5.T3.12.12.12.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.12.12.12.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.12.12.12.2.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.28.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.28.8.1">Claude 3.5 Sonnet v2</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.28.8.2">254</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.28.8.3">0.004</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.28.8.4">163</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.28.8.5">0.003</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.29.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.29.9.1">Claude 3.5 Sonnet</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.29.9.2">294</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.29.9.3">0.005</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.29.9.4">217</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.29.9.5">0.003</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.30.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.30.10.1">Claude 3 Opus</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.30.10.2">267</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.30.10.3">0.021</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.30.10.4">168</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.30.10.5">0.013</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.31.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.20.20.31.11.1">Claude 3 Sonnet</th>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.31.11.2">279</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.31.11.3">0.004</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.31.11.4">175</td>
<td class="ltx_td ltx_align_right" id="S5.T3.20.20.31.11.5">0.003</td>
</tr>
<tr class="ltx_tr" id="S5.T3.14.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.14.14.14.3">Claude 3 Haiku</th>
<td class="ltx_td ltx_align_right" id="S5.T3.14.14.14.4">315</td>
<td class="ltx_td ltx_align_right" id="S5.T3.13.13.13.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.13.13.13.1.m1.1"><semantics id="S5.T3.13.13.13.1.m1.1a"><mo id="S5.T3.13.13.13.1.m1.1.1" xref="S5.T3.13.13.13.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.13.13.13.1.m1.1b"><lt id="S5.T3.13.13.13.1.m1.1.1.cmml" xref="S5.T3.13.13.13.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.13.13.13.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.13.13.13.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.14.14.14.5">132</td>
<td class="ltx_td ltx_align_right" id="S5.T3.14.14.14.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.14.14.14.2.m1.1"><semantics id="S5.T3.14.14.14.2.m1.1a"><mo id="S5.T3.14.14.14.2.m1.1.1" xref="S5.T3.14.14.14.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.14.14.14.2.m1.1b"><lt id="S5.T3.14.14.14.2.m1.1.1.cmml" xref="S5.T3.14.14.14.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.14.14.14.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.14.14.14.2.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.15.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.15.15.15.1">Reka Edge<sup class="ltx_sup" id="S5.T3.15.15.15.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.15.15.15.1.1.1">∗∗</span></sup>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.2">514</td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.3">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.4">189</td>
<td class="ltx_td ltx_align_right" id="S5.T3.15.15.15.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.32.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="5" id="S5.T3.20.20.32.12.1"><span class="ltx_text ltx_font_bold" id="S5.T3.20.20.32.12.1.1" style="color:#808080;">Open-weight LMMs</span></th>
</tr>
<tr class="ltx_tr" id="S5.T3.16.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.16.16.16.2">Llama 3.2 90B</th>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.3">663</td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.4">0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.5">264</td>
<td class="ltx_td ltx_align_right" id="S5.T3.16.16.16.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.16.16.16.1.m1.1"><semantics id="S5.T3.16.16.16.1.m1.1a"><mo id="S5.T3.16.16.16.1.m1.1.1" xref="S5.T3.16.16.16.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.16.16.16.1.m1.1b"><lt id="S5.T3.16.16.16.1.m1.1.1.cmml" xref="S5.T3.16.16.16.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.16.16.16.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.16.16.16.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.17.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.17.17.17.2">Qwen2-VL-72B-Instruct</th>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.3">457</td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.4">0.001</td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.5">476</td>
<td class="ltx_td ltx_align_right" id="S5.T3.17.17.17.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.17.17.17.1.m1.1"><semantics id="S5.T3.17.17.17.1.m1.1a"><mo id="S5.T3.17.17.17.1.m1.1.1" xref="S5.T3.17.17.17.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.17.17.17.1.m1.1b"><lt id="S5.T3.17.17.17.1.m1.1.1.cmml" xref="S5.T3.17.17.17.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.17.17.17.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.17.17.17.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
<tr class="ltx_tr" id="S5.T3.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.18.18.18.1">NVLM-D-72B<sup class="ltx_sup" id="S5.T3.18.18.18.1.1"><span class="ltx_text ltx_font_italic" id="S5.T3.18.18.18.1.1.1">∗∗</span></sup>
</th>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.2">389</td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.3">-</td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.4">151</td>
<td class="ltx_td ltx_align_right" id="S5.T3.18.18.18.5">-</td>
</tr>
<tr class="ltx_tr" id="S5.T3.20.20.20">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.20.20.20.3">Pixtral-Large</th>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.20.20.20.4">553</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.19.19.19.1">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.19.19.19.1.m1.1"><semantics id="S5.T3.19.19.19.1.m1.1a"><mo id="S5.T3.19.19.19.1.m1.1.1" xref="S5.T3.19.19.19.1.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.19.19.19.1.m1.1b"><lt id="S5.T3.19.19.19.1.m1.1.1.cmml" xref="S5.T3.19.19.19.1.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.19.19.19.1.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.19.19.19.1.m1.1d">&lt;</annotation></semantics></math>0.001</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.20.20.20.5">279</td>
<td class="ltx_td ltx_align_right ltx_border_bb" id="S5.T3.20.20.20.2">
<math alttext="&lt;" class="ltx_Math" display="inline" id="S5.T3.20.20.20.2.m1.1"><semantics id="S5.T3.20.20.20.2.m1.1a"><mo id="S5.T3.20.20.20.2.m1.1.1" xref="S5.T3.20.20.20.2.m1.1.1.cmml">&lt;</mo><annotation-xml encoding="MathML-Content" id="S5.T3.20.20.20.2.m1.1b"><lt id="S5.T3.20.20.20.2.m1.1.1.cmml" xref="S5.T3.20.20.20.2.m1.1.1"></lt></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.20.20.20.2.m1.1c">&lt;</annotation><annotation encoding="application/x-llamapun" id="S5.T3.20.20.20.2.m1.1d">&lt;</annotation></semantics></math>0.001</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average cost and the number of tokens used for each model during inference using greedy decoding.  The cost is calculated based on the pricing of various AI/ML APIs, as of 2025.  Note that cost data was unavailable for certain models. The table also indicates that the responses were generated using the default hyperparameters for each model.
> <details>
> <summary>read the caption</summary>
> Table 3: Average per question cost and number of completion tokens generated during greedy decoding. ∗calculated based on AI/ML API pricing (API, 2025); ∗∗cost data unavailable; ⋄responses sampled using default model settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.1.1.1.1">
<td class="ltx_td" id="A2.T4.1.1.1.1.1"></td>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" colspan="2" id="A2.T4.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.2.1">Hyperparameters</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T4.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.1.1.3.1">Max. Completion</span></th>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T4.1.1.2.2.1"><span class="ltx_text ltx_font_italic" id="A2.T4.1.1.2.2.1.1">Model</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T4.1.1.2.2.2"><span class="ltx_text ltx_font_italic" id="A2.T4.1.1.2.2.2.1">Greedy Decoding</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T4.1.1.2.2.3"><span class="ltx_text ltx_font_italic" id="A2.T4.1.1.2.2.3.1">Stochastic Decoding</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A2.T4.1.1.2.2.4"><span class="ltx_text ltx_font_bold" id="A2.T4.1.1.2.2.4.1">Tokens.</span></th>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.3.3.1">o1 pro</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.3.3.2">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.3.3.3">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T4.1.1.3.3.4">-</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.4.4">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.4.4.1">o1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.4.4.2">seed=42, reasoning_effort=‘medium’</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.4.4.3">seed=42, reasoning_effort=‘medium’</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.4.4.4">100k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.5.5">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.5.5.1">GPT-4o</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.5.5.2">temperature=0, seed=42</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.5.5.3">temperature=0.7, top_p=0.95, seed=42</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.5.5.4">16k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.6.6">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.6.6.1">GPT-4o mini</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.6.6.2">temperature=0, seed=42</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.6.6.3">temperature=0.7, top_p=0.95, seed=42</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.6.6.4">16k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.7.7">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.7.7.1">Gemini 2 Flash Thinking</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.7.7.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.7.7.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.7.7.4">65k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.8.8">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.8.8.1">Gemini 2 Flash</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.8.8.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.8.8.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.8.8.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.9.9">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.9.9.1">Gemini 1.5 Pro</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.9.9.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.9.9.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.9.9.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.10.10">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.10.10.1">Gemini 1.5 Flash</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.10.10.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.10.10.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.10.10.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.11.11">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.11.11.1">Gemini 1 Pro Vision</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.11.11.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.11.11.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.11.11.4">2k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.12.12">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.12.12.1">Claude 3.5 Sonnet v2</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.12.12.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.12.12.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.12.12.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.13.13">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.13.13.1">Claude 3.5 Sonnet</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.13.13.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.13.13.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.13.13.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.14.14">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.14.14.1">Claude 3 Opus</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.14.14.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.14.14.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.14.14.4">4k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.15.15">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.15.15.1">Claude 3 Sonnet</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.15.15.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.15.15.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.15.15.4">4k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.16.16">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.16.16.1">Claude 3 Haiku</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.16.16.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.16.16.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.16.16.4">4k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.17.17">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.17.17.1">Pixtral-Large</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.17.17.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.17.17.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.17.17.4">32k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.18.18">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.18.18.1">Reka Edge</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.18.18.2">temperature=0, top_k=1, seed=42</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.18.18.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.18.18.4">32k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.19.19">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.19.19.1">QVQ</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.19.19.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.19.19.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.19.19.4">32k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.20.20">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.20.20.1">Llama 3.2 90B</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.20.20.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.20.20.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.20.20.4">8k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.21.21">
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.21.21.1">Qwen2-VL-72B-Instruct</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.21.21.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.21.21.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left" id="A2.T4.1.1.21.21.4">32k</td>
</tr>
<tr class="ltx_tr" id="A2.T4.1.1.22.22">
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.1.22.22.1">NVLM-D-72 B</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.1.22.22.2">temperature=0, top_k=1</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.1.22.22.3">temperature=0.7, top_p=0.95</td>
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T4.1.1.22.22.4">32k</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for both greedy and stochastic decoding methods across various large language models (LLMs).  It shows the specific settings such as temperature, top_k, top_p and seed values used for each model during the experiments. Note that for the o1 pro model, hyperparameters could not be set due to the model being accessed via the ChatGPT interface.
> <details>
> <summary>read the caption</summary>
> Table 4: Hyperparameters used in each decoding setting. Note, o1 pro was accessed through the ChatGPT interface preventing hyperparameter configuration.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.09696/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.09696/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}