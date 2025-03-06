---
title: "CrowdSelect: Synthetic Instruction Data Selection with Multi-LLM Wisdom"
summary: "CROWDSELECT boosts instruction tuning by cleverly selecting synthetic data using multi-LLM wisdom, enhancing model performance across diverse tasks."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Huazhong University of Science and Technology",]
showSummary: true
date: 2025-03-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.01836 {{< /keyword >}}
{{< keyword icon="writer" >}} Yisen Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.01836" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.01836" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.01836/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Advanced Language Models are distilled into smaller ones via instruction-following, selecting subsets for model training. Existing strategies often fail to capture instruction-following complexities. Therefore, diverse signals are needed to capture instruction-response characteristics, using Multi-LLM wisdom to understand diverse responses and reward model assessments.



To address these issues, **CROWDSELECT**, an integrated metric with clustering, maintains response diversity. Results showed improvements, achieving state-of-the-art performance in Full and LoRA fine-tuning. It improves Arena-Hard by 4.81% and MT-bench by 11.1% with Llama-3.2-3b-instruct, bringing new insights. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Multi-LLM wisdom significantly enhances synthetic instruction data selection. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CROWDSELECT, using unique metrics and clustering, sets a new performance standard. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Effective data selection dramatically improves instruction tuning for smaller, efficient models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**CROWDSELECT** offers a novel method that significantly improves instruction tuning by leveraging multi-dimensional signals from multiple LLMs. It sets a new benchmark for efficiency and performance, guiding future research and applications in data selection and model distillation.

------
#### Visual Insights



![](https://arxiv.org/html/2503.01836/x1.png)

> 🔼 This figure illustrates the process of instruction tuning using a subset of synthetic instruction-response pairs.  It begins with an original dataset of instruction-response pairs.  These pairs are then evaluated using various metrics (represented by the ‘Our Metrics’ block), which assess the quality and diversity of each pair.  Based on these metrics, a subset of high-quality pairs is selected. This selected dataset is then used in an efficient instruction tuning process (indicated by the ‘Efficient Instruction Tuning’ block) to train or fine-tune a smaller language model. The final output of this process is a more efficient model with improved instruction-following capabilities.
> <details>
> <summary>read the caption</summary>
> Figure 1: A demonstration of instruction tuning with selected synthetic instruction-response pairs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.10.6">
<tr class="ltx_tr" id="S4.T1.10.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.6.7.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.1.1">Strategy</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.6.7.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.2.1">DirectScore</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.10.6.7.3"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.3.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.10.6.7.4"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.4.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.10.6.7.5"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.5.1">Stability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.10.6.7.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.7.6.1">Multi</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.6">
<td class="ltx_td ltx_align_center" id="S4.T1.5.1.1.1"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.5.1.1.1.m1.1"><semantics id="S4.T1.5.1.1.1.m1.1a"><mo id="S4.T1.5.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.1.1.1.m1.1b"><ci id="S4.T1.5.1.1.1.m1.1.1.cmml" xref="S4.T1.5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.2.2.2"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.6.2.2.2.m1.1"><semantics id="S4.T1.6.2.2.2.m1.1a"><mo id="S4.T1.6.2.2.2.m1.1.1" stretchy="false" xref="S4.T1.6.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.2.2.2.m1.1b"><ci id="S4.T1.6.2.2.2.m1.1.1.cmml" xref="S4.T1.6.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.3.3.3"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.3.3.3.m1.1"><semantics id="S4.T1.7.3.3.3.m1.1a"><mo id="S4.T1.7.3.3.3.m1.1.1" stretchy="false" xref="S4.T1.7.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.3.3.3.m1.1b"><ci id="S4.T1.7.3.3.3.m1.1.1.cmml" xref="S4.T1.7.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.4.4.4"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.8.4.4.4.m1.1"><semantics id="S4.T1.8.4.4.4.m1.1a"><mo id="S4.T1.8.4.4.4.m1.1.1" stretchy="false" xref="S4.T1.8.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.4.4.4.m1.1b"><ci id="S4.T1.8.4.4.4.m1.1.1.cmml" xref="S4.T1.8.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.5.5.5"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.9.5.5.5.m1.1"><semantics id="S4.T1.9.5.5.5.m1.1a"><mo id="S4.T1.9.5.5.5.m1.1.1" stretchy="false" xref="S4.T1.9.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.5.5.5.m1.1b"><ci id="S4.T1.9.5.5.5.m1.1.1.cmml" xref="S4.T1.9.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.6.6"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.10.6.6.6.m1.1"><semantics id="S4.T1.10.6.6.6.m1.1a"><mo id="S4.T1.10.6.6.6.m1.1.1" stretchy="false" xref="S4.T1.10.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.6.6.6.m1.1b"><ci id="S4.T1.10.6.6.6.m1.1.1.cmml" xref="S4.T1.10.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.6.6.6.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T1.10.6.8.1"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.8.1.1">MT-Bench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.1">Best-answer</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.2">4.406</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.3">4.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.4">4.738</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.5">4.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.6">5.056</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.7">4.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.6.9.8.1">5.088</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.9.9"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.9.9.1">5.125</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.10">
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.1">Random</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.6.10.2.1">4.470</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.3">4.469</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.4">4.688</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.5">4.695</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.6"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.10.6.1">4.785</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.7">4.500</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.8">4.581</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.10.9">4.613</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.11">
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.1">Top5-random</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.2">4.435</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.3">4.681</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.4">4.870</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.5">4.788</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.6.11.6.1">5.008</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.7">4.619</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.8">4.956</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.11.9"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.11.9.1">5.048</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T1.10.6.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.12.1.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.1">Best-answer</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.2">75.3(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.3">78.6(-1.9, 2.1)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.4">76.8(-1.6, 1.7)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.5">81.8(-1.8, 1.2)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.6"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.13.6.1">83.3(-1.8, 1.7)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.7">80.0(-1.5, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.6.13.8.1">82.3(-1.6, 2.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.6.13.9">80.6(-2.4, 1,6)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.14">
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.1">Random</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.2">74.5(-1.1, 1.2)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.3">78.5(-1.6, 1.3)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.4"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.14.4.1">80.4(-1.0, 1.5)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.5">79.0(-1.3, 1.4)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.6">80.6(-1.6, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.7">76.2(-0.8, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.8">77.0(-1.0, 1.8)</td>
<td class="ltx_td ltx_align_center" id="S4.T1.10.6.14.9">71.9(-1.7, 1.7)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.6.15">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.1">Top5-random</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.2">73.7(-1.2, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.3">75.9(-1.6, 1.5)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.4">76.8(-1.2, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.5"><span class="ltx_text ltx_font_bold" id="S4.T1.10.6.15.5.1">82.0(-1.3, 1.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.10.6.15.6.1">80.0(-0.7, 1.3)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.7">75.0(-4.4, 5.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.8">76.9(-1.4, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.10.6.15.9">76.6(-1.6, 1.5)</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of an experiment designed to validate three foundation metrics for instruction data selection.  The experiment uses the Llama-3.2-3b-base model and evaluates the performance of selecting instructions based on the top and bottom scores using each of the three metrics. The evaluation is performed using two different response selection strategies, 'Best-answer' and 'Random'. For each metric and strategy, the top two performing results are highlighted in bold and underlined, indicating the effectiveness of each metric in identifying valuable instructions.
> <details>
> <summary>read the caption</summary>
> Table 1: Validation of our three foundation metrics on full fine-tuning Llama-3.2-3b-base with top-scored (↑↑\uparrow↑) and bottom-scored (↓↓\downarrow↓) instruction selection and different response selection strategy. Best and second results for each metric are in bold and underline.
> </details>





### In-depth insights


#### Multi-LLM Wisdom
**Multi-LLM Wisdom** is a compelling paradigm for enhancing instruction tuning. The core idea is to leverage the diverse perspectives and capabilities of multiple LLMs, rather than relying on a single model, to create more robust and generalizable instruction data. This is valuable as individual LLMs have limitations in knowledge, skills, and perspectives. By aggregating responses from multiple LLMs, we capture a more comprehensive representation of the data, leading to improved model alignment and performance. Also, this addresses challenges in real-world scenarios. The offline approach contrasts with online methods, pre-collecting data for efficiency. The data involves the LLMs’ responses and rewards which are measured by difficulty and quality.

#### Metrics for Tuning
Metrics are crucial for effective tuning, guiding the optimization process. **Difficulty metrics identify challenging prompts,** ensuring models learn complex concepts. **Separability metrics highlight instructions** that differentiate model capabilities, useful for fine-grained control. **Stability metrics ensure consistent performance** aligned with model size, preventing overfitting. Integrating these metrics provides a comprehensive approach to data selection and tuning. By leveraging diverse signals, models can capture nuanced instruction-following abilities.

#### CROWDSELECT Perf.
From the paper, CROWDSELECT exhibits **state-of-the-art performance** across various models and benchmarks. This suggests it effectively leverages multi-LLM wisdom for instruction data selection. The integrated metric combines difficulty, separability, and stability signals. Results on FFT and LoRA fine-tuning highlight CROWDSELECT's robustness. CROWDSELECT achieves **significant improvements** on Arena-Hard and MT-bench with Llama-3.2-3b-instruct, surpassing previous baselines. This indicates the approach enhances model instruction-following capabilities. Also, the diversity preservation strategy through clustering contributes to **better generalization**. This helps CROWDSELECT identify impactful subsets. Results show it performs robustly on tuning methods. It also shows consistent performance across different reward models. 

#### Data Size Impact
The data size impact on instruction tuning underscores a critical trade-off. **Smaller, high-quality datasets can outperform larger, less curated ones**, highlighting that the selection process is crucial for efficient learning, thus ensuring the fine-tuned dataset maximizes exposure to difficult material, boosting model's potential for great improvements. This indicates that focusing efforts on refining the dataset’s content, diversity, and relevance is superior to simply scaling up the quantity, because high-quality datasets perform on par with larger datasets, thus underscoring data quality over quantity in instruction tuning. Hence, **carefully selected, concise subsets can often yield competitive, if not superior, results.**

#### Robust SFT Needed
**Robust Supervised Fine-Tuning (SFT)** is crucial for aligning Large Language Models (LLMs) with desired behaviors, ensuring reliable and consistent performance. The need for robust SFT stems from the inherent variability in LLM outputs and the potential for models to deviate from intended responses. A well-executed SFT process enhances an LLM's ability to generalize effectively, even in novel situations, leading to improved reliability in real-world applications. Moreover, robust SFT helps mitigate the propagation of biases and harmful content, promoting safer and more ethical outcomes. High-quality, diverse training data is essential for achieving robustness, as is careful monitoring and iterative refinement of the SFT process. The benefits are far-reaching, including increased user trust, reduced risk of unintended consequences, and enhanced applicability across diverse domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.01836/x2.png)

> 🔼 The figure illustrates the CrowdSelect framework's pipeline.  It begins with the collection of synthetic instruction data using multiple large language models (LLMs), generating diverse responses for each instruction. These responses, along with their corresponding reward model scores, provide multiple facets of each instruction.  CrowdSelect uses these facets to calculate three core metrics: Difficulty, Separability, and Stability. A clustering algorithm then groups instructions to ensure diversity.  The combined metrics and clusters inform the selection of an optimal instruction subset. This refined dataset is then used for efficient instruction tuning with either full fine-tuning (FFT) or low-rank adaptation (LoRA). The effectiveness of the chosen subset is subsequently evaluated using established benchmarks.
> <details>
> <summary>read the caption</summary>
> Figure 2: The overall pipeline of our CrowdSelect, which innovatively leverages metrics calculated from multiple facets of instructions using pre-collected synthesized responses from various LLMs and their corresponding reward model scores. We enhance data selection through clustering for diversity and metric combination to explore the method’s potential. Finally, we evaluate the effectiveness of our selected instruction subset through FFT or LoRA fine-tuning (Hu et al., 2021) for efficient instruction tuning.
> </details>



![](https://arxiv.org/html/2503.01836/x3.png)

> 🔼 Figure 3 presents a comparative analysis of the performance of various instruction data selection methods, including the proposed CROWDSELECT framework and several baseline methods.  The results are shown across four different base models (LLaMA-3.2-3b-base, LLaMA-3.2-3b-instruct, Qwen-2.5-3b-base, Qwen-2.5-3b-instruct) under full fine-tuning (FFT) settings.  The performance is measured using two key metrics: MT-bench and Arena-Hard scores.  The figure clearly demonstrates that CROWDSELECT and its underlying foundation metrics consistently outperform the baseline methods, with particularly significant performance improvements observed for the Llama-3b-instruct model.
> <details>
> <summary>read the caption</summary>
> Figure 3: Overall results demonstrate that our foundation metrics and CrowdSelect consistently outperform baseline methods by a significant margin across FFT settings of four models, with particularly strong performance improvements on Llama-3b-instruct.
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/dataset_size_font_resized.png)

> 🔼 Figure 4 illustrates the finding that utilizing a small subset of high-quality data yields comparable performance to using a much larger dataset for instruction tuning.  This aligns with the findings presented in Cao et al. (2023). The graph displays the performance (MT-Bench and Arena-Hard scores) of models trained on datasets of varying sizes.  The red line represents the performance achieved by the authors' CROWDSELECT method, demonstrating its effectiveness in selecting a small yet highly effective dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Results show that small elite datasets behaves on par with a large dataset, corresponding to the experiment results in (Cao et al., 2023). Our implementation (line in Red) achieves reasonably good results.
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/0.25k.png)

> 🔼 This figure shows an example of an instruction-response pair selected by the CROWDSELECT method.  The instruction asks for five different methods to generate electricity, excluding common methods and those using rotating generators or turbines. The response provides five distinct methods, including photovoltaic cells, fuel cells, silicone-based piezoelectric generators, ceramic capacitor discharge devices, and photo electrochemical cells, along with explanations of how they work. This example demonstrates the method's ability to select high-quality, diverse, and informative instruction-response pairs for effective instruction tuning.
> <details>
> <summary>read the caption</summary>
> Figure 5: Example of our selected instruction and correspond answer.
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/0.5k.png)

> 🔼 The figure shows the training loss curves for the Llama-3b model when trained using different sizes of randomly selected datasets.  The x-axis represents the training step, while the y-axis shows the training loss. Multiple lines are plotted, each representing a different dataset size (0.25k, 0.5k, 1k, 2k, 3k, 4k, 5k, 6k, 7k, 8k, 9k, 10k). For each dataset size, two curves are shown: one for the original training loss and another for a smoothed version of the training loss. The smoothed curve is used to visualize the overall trend of the training loss while reducing the influence of noise and minor fluctuations.
> <details>
> <summary>read the caption</summary>
> 0.25k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/1k.png)

> 🔼 The figure shows the LORA training loss for Llama-3b model when training with different sizes of randomly chosen data.  The x-axis represents the training step, and the y-axis represents the training loss. Multiple lines are plotted, each representing a different dataset size (0.25k, 0.5k, 1k, 2k, 3k, 4k, 5k, 6k, 7k, 8k, 9k, and 10k). For each dataset size, two lines are shown: one for the original loss values and another smoothed line to better visualize the overall trend. The figure is used to show how data quantity impacts the training process and loss.
> <details>
> <summary>read the caption</summary>
> 0.5k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/2k.png)

> 🔼 This figure visualizes the overall pipeline of the CROWDSELECT framework. It starts with synthetic instruction data collection using multiple LLMs and their reward model scores.  These diverse signals are then used to calculate three base metrics: Difficulty, Separability, and Stability.  These metrics help determine the quality of instruction-response pairs. The framework then employs a clustering-based approach to enhance response diversity and combines the three metrics into a single integrated metric. Finally,  the pipeline selects a subset of high-quality instruction-response pairs, which are then used for efficient instruction tuning in the downstream tasks. The figure also shows a comparison of performance on two benchmarks (MT-Bench and Arena-Hard) between CROWDSELECT and several baseline methods.
> <details>
> <summary>read the caption</summary>
> 1k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/3k.png)

> 🔼 The figure displays the training loss curves for the Llama-3b model during LoRA fine-tuning.  Different curves represent various sizes of training datasets, all selected using a method that prioritizes data quality over quantity. The x-axis represents the training step, and the y-axis shows the training loss.  The curves illustrate how training loss decreases as the model learns, and the impact of the dataset size on this learning process.  Smoother curves are also shown to provide a clearer visualization of trends in the loss data.
> <details>
> <summary>read the caption</summary>
> 2k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/4k.png)

> 🔼 The figure illustrates the overall pipeline of the CROWDSELECT framework.  It starts with synthetic instruction data collection, utilizing multiple LLMs and reward models to generate diverse responses and scores. These responses and scores are then used to calculate three foundational metrics: Difficulty, Separability, and Stability.  These metrics are used to select a subset of high-quality instruction-response pairs through a metric-based selection process incorporating a clustering-based approach for diversity. Finally, the selected dataset is evaluated using full fine-tuning or LoRA fine-tuning on benchmark datasets (MT-bench and Arena-Hard).
> <details>
> <summary>read the caption</summary>
> 3k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/5k.png)

> 🔼 This figure shows the overall pipeline of the CROWDSELECT method.  It starts with synthetic instruction data collection, using multiple LLMs and reward models to generate a large number of instruction-response pairs.  Then, the method calculates three core metrics: Difficulty, Separability, and Stability. These metrics assess various aspects of instruction-response pairs. Finally, a metric-based data selection is performed using a clustering-based approach to select a smaller, more effective subset of the data for instruction tuning. The selected dataset is then used for efficient instruction tuning, which is further evaluated using automated benchmark validation.
> <details>
> <summary>read the caption</summary>
> 4k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/6k.png)

> 🔼 This figure shows the results of using different dataset sizes for fine-tuning Llama-3b using LoRA.  The x-axis represents the training step, while the y-axis shows the training loss. Multiple lines are plotted, each corresponding to a different dataset size (0.25k, 0.5k, 1k, 2k, 3k, 4k, 5k, 6k, 7k, 8k, 9k, 10k). Each line displays both the original training loss and a smoothed version of the loss for better visualization. This visualization helps understand how dataset size influences the training process and the resulting model's performance.
> <details>
> <summary>read the caption</summary>
> 5k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/7k.png)

> 🔼 The figure shows the LORA training loss for the Llama-3b model using different sizes of randomly chosen data.  The x-axis represents the training step, and the y-axis represents the loss. Multiple lines are plotted, each corresponding to a different dataset size.  The lines show how the loss changes over the training process for different dataset sizes, illustrating the effect of dataset size on model training.
> <details>
> <summary>read the caption</summary>
> 6k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/8k.png)

> 🔼 This figure visualizes the training loss curves of the Llama-3b model during fine-tuning using different sizes of instruction datasets chosen randomly.  The x-axis represents the training steps, and the y-axis shows the training loss.  Multiple lines are presented, each corresponding to a different dataset size (0.25k, 0.5k, 1k, 2k, 3k, 4k, 5k, 6k, 7k, 8k, 9k, 10k).  Each line may also include two variations: the original training loss and a smoothed version of the loss, providing a clearer trend visualization. The figure aims to illustrate the impact of dataset size on the model’s training efficiency and convergence.
> <details>
> <summary>read the caption</summary>
> 7k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/9k.png)

> 🔼 This figure shows the training loss curves for the Llama-3b model using different sizes of randomly selected data. The x-axis represents the training step, and the y-axis represents the training loss.  Multiple lines are shown, each corresponding to a different dataset size (e.g., 0.25k, 0.5k, 1k, etc.).  The purpose of the figure is to illustrate how the size of the dataset impacts the training loss, and potentially the model’s performance.  The smoothed curves likely represent the application of a smoothing technique (like moving average) to the raw training loss data. This smoothing helps to visualize trends more clearly by reducing the effect of noise or short-term fluctuations.
> <details>
> <summary>read the caption</summary>
> 8k𝑘kitalic_k
> </details>



![](https://arxiv.org/html/2503.01836/extracted/6249148/figure/train_loss/10k.png)

> 🔼 This figure visualizes the performance of CROWDSELECT on various fine-tuning methods across four different models.  It shows the Arena-Hard and MT-bench scores for Llama 3B base/instruct and Qwen 3B base/instruct, illustrating the consistent outperformance of CROWDSELECT compared to baseline methods such as Random, Direct, Instag, IFD, and Length. The chart highlights the substantial performance improvements achieved by CROWDSELECT, especially on Llama 3B instruct. The y-axis represents the Arena-Hard score and the x-axis represents the MT-bench score. Each point on the graph represents the performance of a model fine-tuned with a specific data selection strategy.
> <details>
> <summary>read the caption</summary>
> 9k𝑘kitalic_k
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.1">
<tr class="ltx_tr" id="S4.T2.5.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.5.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.2.1">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T2.5.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.3.1">Baselines</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T2.5.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.1.4.1">Our Metrics</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.1.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.2.1">Tags</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.3.1">IFD</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.4.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.5.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.6.1">Stability</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.2.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.2.7.1">Multi</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.5.1.3.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.3.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.2">4.302</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.3">4.406</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.4">4.562</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.5">3.962</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.6">4.738</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.7">5.056</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.4.8.1">5.088</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.4.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.4.9.1">5.125</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.2">50.0(-0.0, 0.0)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.3">75.3(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.4">77.3(-1.1, 1.2)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.5">77.6(-1.6, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.6">76.8(-1.6, 1.7)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.5.7.1">83.3(-1.8, 1.7)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.8">78.3(-1.6, 2.2)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.5.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.5.9.1">80.6(-2.4, 1.6)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.5.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.6.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.2">6.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.3">6.356</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.4">6.393</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.5">6.243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.7.6.1">6.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.7">6.581</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.8">6.625</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.7.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.7.9.1">7.103</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.8">
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.2">74.4(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.3">74.8(-1.5, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.8.4.1">81.6(-0.2, 0.2)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.5">78.4(-1.7, 1.5)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.6">80.5(-0.9, 1.3)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.7">77.9(-1.5, 1.7)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.8">77.4(-1.5, 1.1)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.8.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.8.9.1">85.5(-0.8, 1.1)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.5.1.9.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.9.1.1">Qwen2.5-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.2">6.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.3">6.500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.10.4.1">6.818</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.5">5.825</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.6">6.613</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.10.7.1">7.075</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.8">6.681</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.10.9">6.625</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.11">
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.2">69.0(-2.2, 1.6)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.3">72.9(-2.2, 1.9)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.11.4.1">79.3(-2.2, 1.9)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.5">74.5(-1.5, 1.5)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.6">73.8(-2.5, 1.8)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.7">74.1(-1.6, 2.4)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.8">76.8(-1.8, 1.8)</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.1.11.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.11.9.1">79.9(-1.6,1.8)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="S4.T2.5.1.12.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.12.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.2">7.138</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.3">6.793</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.4">6.818</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.5">6.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.6">7.182</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.13.7.1">7.269</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.8"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.13.8.1">7.294</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.1.13.9">7.131</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.1.14">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.2">81.6(-1.8, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.3">78.2(-1.7, 2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.4">82.0(-2.4, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.5">80.4(-1.3, 1.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.6">81.8(-1.6, 1.3)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.5.1.14.7.1">83.7(-1.4, 1.2)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.8">83.5(-1.4, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.5.1.14.9"><span class="ltx_text ltx_font_bold" id="S4.T2.5.1.14.9.1">85.2(-1.2, 1.1)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between two foundational language models, Llama-3.2-3b-base/instruct and Qwen-2.5-3b-base/instruct, after fine-tuning using different data selection strategies.  The models are evaluated on two benchmarks: MT-Bench and Arena-Hard. The results show the scores achieved by each model with various instruction data selection methods, including baseline methods (Base, Random, Tags, IFD) and the proposed methods (Difficulty, Separability, Stability, and Multi).  The best and second-best performances for each model and metric are highlighted for easy comparison. This allows for assessment of the effectiveness of different data selection strategies on the overall performance of the language models.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance comparison of full fine-tuned Llama3.2-3b-base/instruct and Qwen2.5-3b-base/instruct models with different data selection strategies. The best and second results are in bold and underline.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.1">
<tr class="ltx_tr" id="S4.T3.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T3.3.1.1.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.2" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.2.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.3" rowspan="2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.3.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.1" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.1.1">Diff.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.2" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.2.1">Sep.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.2.3" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.2.3.1">Stab.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.913</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.8(-0.5, 0.8)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.625</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.4.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.2(-0.7, 1.0)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4" style="padding-top:0.5pt;padding-bottom:0.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.5.4.1">7.103</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">
<span class="ltx_text ltx_font_bold" id="S4.T3.3.1.5.5.1">85.5</span>(-0.8, 1.1)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.650</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">82.7(-1.5, 1.4)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.850</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.7.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.7(-1.6, 1.3)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.8">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.781</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.8.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">83.0(-1.4, 1.4)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.9">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.781</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.9.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.9(-1.5, 1.3)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.10">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.838</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.10.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">84.8(-1.3, 1.2)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.11">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.1" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.2" style="padding-top:0.5pt;padding-bottom:0.5pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.3" style="padding-top:0.5pt;padding-bottom:0.5pt;">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.4" style="padding-top:0.5pt;padding-bottom:0.5pt;">6.638</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.11.5" style="padding-top:0.5pt;padding-bottom:0.5pt;">81.8(-1.3, 1.3)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of experiments conducted to determine the optimal hyperparameters for the CrowdSelect model, specifically focusing on the impact of varying cluster numbers. The experiments were performed using the Llama-3b-instruct model, and the table shows the performance metrics (MT-Bench and Arena-Hard scores) obtained with different combinations of hyperparameters.  It helps determine the best number of clusters to use for optimal performance and balance between model robustness and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3: Hyperparameter comparison of CrowdSelect using Llama-3b-instruct models with varying cluster numbers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.4.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.5.1">Stability</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T4.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1.1">10 clusters</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.443</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.619</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.5.1">6.913</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">80.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.3.1">82.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">81.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.4)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.2, 1.8)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.7)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.7)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T4.1.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.1.1">20 clusters</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.607</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.615</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.591</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.5.1">6.686</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">82.8</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.8.4.1">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">82.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.2, 1.4)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.1, 1.7)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.1)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.1)</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="5" id="S4.T4.1.1.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.10.1.1">30 clusters</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.721</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.11.3.1">6.737</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.725</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.562</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">83.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.12.3.1">84.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">83.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">83.8</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.2)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the performance of the Llama-3b-instruct model when fine-tuned using different combinations of weights assigned to three key metrics (Difficulty, Separability, Stability) within the CROWDSELECT framework.  The experiments incorporate a clustering strategy to ensure diversity in the selected instruction-response pairs. The results show the impact of various weight combinations on the final model's performance, as measured by two benchmarks: MT-bench and Arena-Hard. This allows researchers to understand how the balance between these metrics affects the effectiveness of the data selection process. The table includes for each combination the training loss, evaluation loss, and resulting scores on both benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of FFT-version of Llama-3b-instruct on different coefficient combinations for multiple metrics with clustering.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.1">
<tr class="ltx_tr" id="A2.T5.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.1.1">Model Family</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.2.1">Release Date</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.3.1">Model ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T5.1.1.4.1">Size</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.2">
<td class="ltx_td ltx_border_t" id="A2.T5.1.2.1"></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.3">Qwen2-1.5B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.2.4">1.5B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.3">
<td class="ltx_td ltx_align_left" id="A2.T5.1.3.1">Qwen2</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.3.2">Jun, 2024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.3.3">Qwen2-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.3.4">7B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.4">
<td class="ltx_td ltx_align_left" id="A2.T5.1.4.1"><cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib86" title="">2024a</a>)</cite></td>
<td class="ltx_td" id="A2.T5.1.4.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.4.3">Qwen2-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.4.4">72B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.5">
<td class="ltx_td ltx_border_t" id="A2.T5.1.5.1"></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.5.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.5.3">Qwen2.5-3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.5.4">3B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.6">
<td class="ltx_td" id="A2.T5.1.6.1"></td>
<td class="ltx_td" id="A2.T5.1.6.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.6.3">Qwen2.5-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.6.4">3B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.7">
<td class="ltx_td ltx_align_left" id="A2.T5.1.7.1">Qwen2.5</td>
<td class="ltx_td" id="A2.T5.1.7.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.7.3">Qwen2.5-7B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.7.4">7B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.8">
<td class="ltx_td ltx_align_left" id="A2.T5.1.8.1"><cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib87" title="">2024b</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.8.2">Sept, 2024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.8.3">Qwen2.5-14B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.8.4">14B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.9">
<td class="ltx_td" id="A2.T5.1.9.1"></td>
<td class="ltx_td" id="A2.T5.1.9.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.9.3">Qwen2.5-32B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.9.4">32B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.10">
<td class="ltx_td" id="A2.T5.1.10.1"></td>
<td class="ltx_td" id="A2.T5.1.10.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.10.3">Qwen2.5-72B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.10.4">72B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.11.1">Llama 3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.11.2">Apr, 2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.11.3">Llama-3-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.11.4">8B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.12">
<td class="ltx_td ltx_align_left" id="A2.T5.1.12.1"><cite class="ltx_cite ltx_citemacro_citep">(Dubey et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib19" title="">2024</a>)</cite></td>
<td class="ltx_td" id="A2.T5.1.12.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.12.3">Llama-3-70B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.12.4">70B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.13">
<td class="ltx_td ltx_border_t" id="A2.T5.1.13.1"></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.13.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.13.3">Llama-3.1-8B-Instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.13.4">8B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.14">
<td class="ltx_td ltx_align_left" id="A2.T5.1.14.1">Llama 3.1</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.14.2">Jul, 2024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.14.3">Llama-3.1-70B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.14.4">70B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.15">
<td class="ltx_td ltx_align_left" id="A2.T5.1.15.1"><cite class="ltx_cite ltx_citemacro_citep">(Dubey et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib19" title="">2024</a>)</cite></td>
<td class="ltx_td" id="A2.T5.1.15.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.15.3">Llama-3.1-405B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.15.4">405B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.16.1">Llama 3.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.16.2">Jul, 2024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.16.3">Llama-3.2-3B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.16.4">3B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.17">
<td class="ltx_td ltx_align_left" id="A2.T5.1.17.1"><cite class="ltx_cite ltx_citemacro_citep">(Dubey et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib19" title="">2024</a>)</cite></td>
<td class="ltx_td" id="A2.T5.1.17.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.17.3">Llama-3.2-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.17.4">3B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.18">
<td class="ltx_td ltx_border_t" id="A2.T5.1.18.1"></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.18.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.18.3">Gemma-2-2B-it</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.18.4">2B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.19">
<td class="ltx_td ltx_align_left" id="A2.T5.1.19.1">Gemma 2</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.19.2">Jun, 2024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.19.3">Gemma-2-9B-it</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.19.4">9B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.20">
<td class="ltx_td ltx_align_left" id="A2.T5.1.20.1"><cite class="ltx_cite ltx_citemacro_citep">(Team et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib70" title="">2024</a>)</cite></td>
<td class="ltx_td" id="A2.T5.1.20.2"></td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.20.3">Gemma-2-27B-it</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.20.4">27B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.21">
<td class="ltx_td ltx_border_t" id="A2.T5.1.21.1"></td>
<td class="ltx_td ltx_border_t" id="A2.T5.1.21.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.21.3">Phi-3-mini-128k-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.21.4">3.5B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.22">
<td class="ltx_td ltx_align_left" id="A2.T5.1.22.1">Phi-3</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.22.2">Jun, 2024</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.22.3">Phi-3-small-128k-instruct</td>
<td class="ltx_td ltx_align_center" id="A2.T5.1.22.4">7B</td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.23">
<td class="ltx_td ltx_align_left ltx_border_b" id="A2.T5.1.23.1"><cite class="ltx_cite ltx_citemacro_citep">(Abdin et al., <a class="ltx_ref" href="https://arxiv.org/html/2503.01836v1#bib.bib1" title="">2024</a>)</cite></td>
<td class="ltx_td ltx_border_b" id="A2.T5.1.23.2"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.1.23.3">Phi-3-medium-128k-instruct</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.1.23.4">14B</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the 22 large language models (LLMs) used in the study, categorized by their model family, release date, model ID, and size (in terms of parameters).  It provides a comprehensive overview of the models used for instruction tuning and evaluation, allowing for a clear understanding of the diversity and scale of the models employed in the experiments.
> <details>
> <summary>read the caption</summary>
> Table 5: Overview of 22 models used in our study.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T6.1">
<tr class="ltx_tr" id="A2.T6.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.2.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.1.1">Hyper-parameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.2.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.2.2.1">Value</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.2">Learning Rate</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.1"><math alttext="1\times 10^{-5}" class="ltx_Math" display="inline" id="A2.T6.1.1.1.m1.1"><semantics id="A2.T6.1.1.1.m1.1a"><mrow id="A2.T6.1.1.1.m1.1.1" xref="A2.T6.1.1.1.m1.1.1.cmml"><mn id="A2.T6.1.1.1.m1.1.1.2" xref="A2.T6.1.1.1.m1.1.1.2.cmml">1</mn><mo id="A2.T6.1.1.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A2.T6.1.1.1.m1.1.1.1.cmml">×</mo><msup id="A2.T6.1.1.1.m1.1.1.3" xref="A2.T6.1.1.1.m1.1.1.3.cmml"><mn id="A2.T6.1.1.1.m1.1.1.3.2" xref="A2.T6.1.1.1.m1.1.1.3.2.cmml">10</mn><mrow id="A2.T6.1.1.1.m1.1.1.3.3" xref="A2.T6.1.1.1.m1.1.1.3.3.cmml"><mo id="A2.T6.1.1.1.m1.1.1.3.3a" xref="A2.T6.1.1.1.m1.1.1.3.3.cmml">−</mo><mn id="A2.T6.1.1.1.m1.1.1.3.3.2" xref="A2.T6.1.1.1.m1.1.1.3.3.2.cmml">5</mn></mrow></msup></mrow><annotation-xml encoding="MathML-Content" id="A2.T6.1.1.1.m1.1b"><apply id="A2.T6.1.1.1.m1.1.1.cmml" xref="A2.T6.1.1.1.m1.1.1"><times id="A2.T6.1.1.1.m1.1.1.1.cmml" xref="A2.T6.1.1.1.m1.1.1.1"></times><cn id="A2.T6.1.1.1.m1.1.1.2.cmml" type="integer" xref="A2.T6.1.1.1.m1.1.1.2">1</cn><apply id="A2.T6.1.1.1.m1.1.1.3.cmml" xref="A2.T6.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="A2.T6.1.1.1.m1.1.1.3.1.cmml" xref="A2.T6.1.1.1.m1.1.1.3">superscript</csymbol><cn id="A2.T6.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T6.1.1.1.m1.1.1.3.2">10</cn><apply id="A2.T6.1.1.1.m1.1.1.3.3.cmml" xref="A2.T6.1.1.1.m1.1.1.3.3"><minus id="A2.T6.1.1.1.m1.1.1.3.3.1.cmml" xref="A2.T6.1.1.1.m1.1.1.3.3"></minus><cn id="A2.T6.1.1.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T6.1.1.1.m1.1.1.3.3.2">5</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T6.1.1.1.m1.1c">1\times 10^{-5}</annotation><annotation encoding="application/x-llamapun" id="A2.T6.1.1.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 5 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.3">
<td class="ltx_td ltx_align_left" id="A2.T6.1.3.1">Number of Epochs</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.3.2">3</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.4">
<td class="ltx_td ltx_align_left" id="A2.T6.1.4.1">Per-device Batch Size</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.4.2">1</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.5">
<td class="ltx_td ltx_align_left" id="A2.T6.1.5.1">Gradient Accumulation Steps</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.5.2">2</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.6">
<td class="ltx_td ltx_align_left" id="A2.T6.1.6.1">Optimizer</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.6.2">Adamw</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.7">
<td class="ltx_td ltx_align_left" id="A2.T6.1.7.1">Learning Rate Scheduler</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.7.2">cosine</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.8">
<td class="ltx_td ltx_align_left" id="A2.T6.1.8.1">Warmup Steps</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.8.2">150</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.9.1">Max Sequence Length</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.9.2">2048</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the supervised fine-tuning process of the models. It includes settings for the learning rate, number of epochs, batch size, gradient accumulation steps, optimizer, learning rate scheduler, warmup steps, and maximum sequence length.
> <details>
> <summary>read the caption</summary>
> Table 6: This table includes the hyper-parameters for supervised fine-tuning.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T7.24">
<tr class="ltx_tr" id="A4.T7.24.25">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T7.24.25.1" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.25.1.1">Data Size</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="A4.T7.24.25.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.25.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T7.24.25.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.25.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T7.24.25.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.25.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T7.24.25.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.25.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.24.26">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.24.26.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.26.1.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.24.26.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.26.2.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.24.26.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.26.3.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.24.26.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.26.4.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.24.26.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.24.26.5.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T7.1.1.1" style="padding:1pt 10.0pt;">0.25<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.1.1.1.m1.1"><semantics id="A4.T7.1.1.1.m1.1a"><mi id="A4.T7.1.1.1.m1.1.1" xref="A4.T7.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.1.1.1.m1.1b"><ci id="A4.T7.1.1.1.m1.1.1.cmml" xref="A4.T7.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.1.1.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T7.2.2.3" style="padding:1pt 10.0pt;">0.418</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.4" style="padding:1pt 10.0pt;">0.951</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.5" style="padding:1pt 10.0pt;">6.850</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.6.1">301</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.7" style="padding:1pt 10.0pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.2" style="padding:1pt 10.0pt;"><math alttext="(-1.2,1.5)" class="ltx_Math" display="inline" id="A4.T7.2.2.2.m1.2"><semantics id="A4.T7.2.2.2.m1.2a"><mrow id="A4.T7.2.2.2.m1.2.2.1" xref="A4.T7.2.2.2.m1.2.2.2.cmml"><mo id="A4.T7.2.2.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.2.2.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.2.2.2.m1.2.2.1.1" xref="A4.T7.2.2.2.m1.2.2.1.1.cmml"><mo id="A4.T7.2.2.2.m1.2.2.1.1a" xref="A4.T7.2.2.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.2.2.2.m1.2.2.1.1.2" xref="A4.T7.2.2.2.m1.2.2.1.1.2.cmml">1.2</mn></mrow><mo id="A4.T7.2.2.2.m1.2.2.1.3" xref="A4.T7.2.2.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.2.2.2.m1.1.1" xref="A4.T7.2.2.2.m1.1.1.cmml">1.5</mn><mo id="A4.T7.2.2.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.2.2.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.2.2.2.m1.2b"><interval closure="open" id="A4.T7.2.2.2.m1.2.2.2.cmml" xref="A4.T7.2.2.2.m1.2.2.1"><apply id="A4.T7.2.2.2.m1.2.2.1.1.cmml" xref="A4.T7.2.2.2.m1.2.2.1.1"><minus id="A4.T7.2.2.2.m1.2.2.1.1.1.cmml" xref="A4.T7.2.2.2.m1.2.2.1.1"></minus><cn id="A4.T7.2.2.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.2.2.2.m1.2.2.1.1.2">1.2</cn></apply><cn id="A4.T7.2.2.2.m1.1.1.cmml" type="float" xref="A4.T7.2.2.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.2.2.2.m1.2c">(-1.2,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.2.2.2.m1.2d">( - 1.2 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T7.2.2.8" style="padding:1pt 10.0pt;">275</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.4">
<td class="ltx_td ltx_align_left" id="A4.T7.3.3.1" style="padding:1pt 10.0pt;">0.5<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.3.3.1.m1.1"><semantics id="A4.T7.3.3.1.m1.1a"><mi id="A4.T7.3.3.1.m1.1.1" xref="A4.T7.3.3.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.3.3.1.m1.1b"><ci id="A4.T7.3.3.1.m1.1.1.cmml" xref="A4.T7.3.3.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.3.3.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.3.3.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.4.4.3" style="padding:1pt 10.0pt;">0.406</td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.4" style="padding:1pt 10.0pt;">1.004</td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.4.5.1">6.962</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.6" style="padding:1pt 10.0pt;">276</td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.7" style="padding:1pt 10.0pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.2" style="padding:1pt 10.0pt;"><math alttext="(-1.0,1.1)" class="ltx_Math" display="inline" id="A4.T7.4.4.2.m1.2"><semantics id="A4.T7.4.4.2.m1.2a"><mrow id="A4.T7.4.4.2.m1.2.2.1" xref="A4.T7.4.4.2.m1.2.2.2.cmml"><mo id="A4.T7.4.4.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.4.4.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.4.4.2.m1.2.2.1.1" xref="A4.T7.4.4.2.m1.2.2.1.1.cmml"><mo id="A4.T7.4.4.2.m1.2.2.1.1a" xref="A4.T7.4.4.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.4.4.2.m1.2.2.1.1.2" xref="A4.T7.4.4.2.m1.2.2.1.1.2.cmml">1.0</mn></mrow><mo id="A4.T7.4.4.2.m1.2.2.1.3" xref="A4.T7.4.4.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.4.4.2.m1.1.1" xref="A4.T7.4.4.2.m1.1.1.cmml">1.1</mn><mo id="A4.T7.4.4.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.4.4.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.4.4.2.m1.2b"><interval closure="open" id="A4.T7.4.4.2.m1.2.2.2.cmml" xref="A4.T7.4.4.2.m1.2.2.1"><apply id="A4.T7.4.4.2.m1.2.2.1.1.cmml" xref="A4.T7.4.4.2.m1.2.2.1.1"><minus id="A4.T7.4.4.2.m1.2.2.1.1.1.cmml" xref="A4.T7.4.4.2.m1.2.2.1.1"></minus><cn id="A4.T7.4.4.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.4.4.2.m1.2.2.1.1.2">1.0</cn></apply><cn id="A4.T7.4.4.2.m1.1.1.cmml" type="float" xref="A4.T7.4.4.2.m1.1.1">1.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.4.4.2.m1.2c">(-1.0,1.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.4.4.2.m1.2d">( - 1.0 , 1.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.4.4.8" style="padding:1pt 10.0pt;">275</td>
</tr>
<tr class="ltx_tr" id="A4.T7.6.6">
<td class="ltx_td ltx_align_left" id="A4.T7.5.5.1" style="padding:1pt 10.0pt;">1<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.5.5.1.m1.1"><semantics id="A4.T7.5.5.1.m1.1a"><mi id="A4.T7.5.5.1.m1.1.1" xref="A4.T7.5.5.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.5.5.1.m1.1b"><ci id="A4.T7.5.5.1.m1.1.1.cmml" xref="A4.T7.5.5.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.5.5.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.5.5.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.6.6.3" style="padding:1pt 10.0pt;">0.407</td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.4" style="padding:1pt 10.0pt;">0.942</td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.5" style="padding:1pt 10.0pt;">6.887</td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.6" style="padding:1pt 10.0pt;">271</td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.7" style="padding:1pt 10.0pt;">82.6</td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.2" style="padding:1pt 10.0pt;"><math alttext="(-1.5,1.2)" class="ltx_Math" display="inline" id="A4.T7.6.6.2.m1.2"><semantics id="A4.T7.6.6.2.m1.2a"><mrow id="A4.T7.6.6.2.m1.2.2.1" xref="A4.T7.6.6.2.m1.2.2.2.cmml"><mo id="A4.T7.6.6.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.6.6.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.6.6.2.m1.2.2.1.1" xref="A4.T7.6.6.2.m1.2.2.1.1.cmml"><mo id="A4.T7.6.6.2.m1.2.2.1.1a" xref="A4.T7.6.6.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.6.6.2.m1.2.2.1.1.2" xref="A4.T7.6.6.2.m1.2.2.1.1.2.cmml">1.5</mn></mrow><mo id="A4.T7.6.6.2.m1.2.2.1.3" xref="A4.T7.6.6.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.6.6.2.m1.1.1" xref="A4.T7.6.6.2.m1.1.1.cmml">1.2</mn><mo id="A4.T7.6.6.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.6.6.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.6.6.2.m1.2b"><interval closure="open" id="A4.T7.6.6.2.m1.2.2.2.cmml" xref="A4.T7.6.6.2.m1.2.2.1"><apply id="A4.T7.6.6.2.m1.2.2.1.1.cmml" xref="A4.T7.6.6.2.m1.2.2.1.1"><minus id="A4.T7.6.6.2.m1.2.2.1.1.1.cmml" xref="A4.T7.6.6.2.m1.2.2.1.1"></minus><cn id="A4.T7.6.6.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.6.6.2.m1.2.2.1.1.2">1.5</cn></apply><cn id="A4.T7.6.6.2.m1.1.1.cmml" type="float" xref="A4.T7.6.6.2.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.6.6.2.m1.2c">(-1.5,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.6.6.2.m1.2d">( - 1.5 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.6.6.8" style="padding:1pt 10.0pt;">273</td>
</tr>
<tr class="ltx_tr" id="A4.T7.8.8">
<td class="ltx_td ltx_align_left" id="A4.T7.7.7.1" style="padding:1pt 10.0pt;">2<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.7.7.1.m1.1"><semantics id="A4.T7.7.7.1.m1.1a"><mi id="A4.T7.7.7.1.m1.1.1" xref="A4.T7.7.7.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.7.7.1.m1.1b"><ci id="A4.T7.7.7.1.m1.1.1.cmml" xref="A4.T7.7.7.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.7.7.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.7.7.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.8.8.3" style="padding:1pt 10.0pt;">0.405</td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.4" style="padding:1pt 10.0pt;">0.929</td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.5" style="padding:1pt 10.0pt;">6.668</td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.6" style="padding:1pt 10.0pt;">301</td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.7" style="padding:1pt 10.0pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.2" style="padding:1pt 10.0pt;"><math alttext="(-1.0,1.4)" class="ltx_Math" display="inline" id="A4.T7.8.8.2.m1.2"><semantics id="A4.T7.8.8.2.m1.2a"><mrow id="A4.T7.8.8.2.m1.2.2.1" xref="A4.T7.8.8.2.m1.2.2.2.cmml"><mo id="A4.T7.8.8.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.8.8.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.8.8.2.m1.2.2.1.1" xref="A4.T7.8.8.2.m1.2.2.1.1.cmml"><mo id="A4.T7.8.8.2.m1.2.2.1.1a" xref="A4.T7.8.8.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.8.8.2.m1.2.2.1.1.2" xref="A4.T7.8.8.2.m1.2.2.1.1.2.cmml">1.0</mn></mrow><mo id="A4.T7.8.8.2.m1.2.2.1.3" xref="A4.T7.8.8.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.8.8.2.m1.1.1" xref="A4.T7.8.8.2.m1.1.1.cmml">1.4</mn><mo id="A4.T7.8.8.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.8.8.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.8.8.2.m1.2b"><interval closure="open" id="A4.T7.8.8.2.m1.2.2.2.cmml" xref="A4.T7.8.8.2.m1.2.2.1"><apply id="A4.T7.8.8.2.m1.2.2.1.1.cmml" xref="A4.T7.8.8.2.m1.2.2.1.1"><minus id="A4.T7.8.8.2.m1.2.2.1.1.1.cmml" xref="A4.T7.8.8.2.m1.2.2.1.1"></minus><cn id="A4.T7.8.8.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.8.8.2.m1.2.2.1.1.2">1.0</cn></apply><cn id="A4.T7.8.8.2.m1.1.1.cmml" type="float" xref="A4.T7.8.8.2.m1.1.1">1.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.8.8.2.m1.2c">(-1.0,1.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.8.8.2.m1.2d">( - 1.0 , 1.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.8.8.8" style="padding:1pt 10.0pt;">273</td>
</tr>
<tr class="ltx_tr" id="A4.T7.10.10">
<td class="ltx_td ltx_align_left" id="A4.T7.9.9.1" style="padding:1pt 10.0pt;">3<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.9.9.1.m1.1"><semantics id="A4.T7.9.9.1.m1.1a"><mi id="A4.T7.9.9.1.m1.1.1" xref="A4.T7.9.9.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.9.9.1.m1.1b"><ci id="A4.T7.9.9.1.m1.1.1.cmml" xref="A4.T7.9.9.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.9.9.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.9.9.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.10.10.3" style="padding:1pt 10.0pt;">0.415</td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.4" style="padding:1pt 10.0pt;">0.871</td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.5" style="padding:1pt 10.0pt;">6.625</td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.6" style="padding:1pt 10.0pt;">304</td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.7" style="padding:1pt 10.0pt;">85.1</td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.2" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.3)" class="ltx_Math" display="inline" id="A4.T7.10.10.2.m1.2"><semantics id="A4.T7.10.10.2.m1.2a"><mrow id="A4.T7.10.10.2.m1.2.2.1" xref="A4.T7.10.10.2.m1.2.2.2.cmml"><mo id="A4.T7.10.10.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.10.10.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.10.10.2.m1.2.2.1.1" xref="A4.T7.10.10.2.m1.2.2.1.1.cmml"><mo id="A4.T7.10.10.2.m1.2.2.1.1a" xref="A4.T7.10.10.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.10.10.2.m1.2.2.1.1.2" xref="A4.T7.10.10.2.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T7.10.10.2.m1.2.2.1.3" xref="A4.T7.10.10.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.10.10.2.m1.1.1" xref="A4.T7.10.10.2.m1.1.1.cmml">1.3</mn><mo id="A4.T7.10.10.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.10.10.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.10.10.2.m1.2b"><interval closure="open" id="A4.T7.10.10.2.m1.2.2.2.cmml" xref="A4.T7.10.10.2.m1.2.2.1"><apply id="A4.T7.10.10.2.m1.2.2.1.1.cmml" xref="A4.T7.10.10.2.m1.2.2.1.1"><minus id="A4.T7.10.10.2.m1.2.2.1.1.1.cmml" xref="A4.T7.10.10.2.m1.2.2.1.1"></minus><cn id="A4.T7.10.10.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.10.10.2.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T7.10.10.2.m1.1.1.cmml" type="float" xref="A4.T7.10.10.2.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.10.10.2.m1.2c">(-1.3,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.10.10.2.m1.2d">( - 1.3 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.10.10.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.10.10.8.1">276</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.12.12">
<td class="ltx_td ltx_align_left" id="A4.T7.11.11.1" style="padding:1pt 10.0pt;">4<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.11.11.1.m1.1"><semantics id="A4.T7.11.11.1.m1.1a"><mi id="A4.T7.11.11.1.m1.1.1" xref="A4.T7.11.11.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.11.11.1.m1.1b"><ci id="A4.T7.11.11.1.m1.1.1.cmml" xref="A4.T7.11.11.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.11.11.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.11.11.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.12.12.3" style="padding:1pt 10.0pt;">0.413</td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.4" style="padding:1pt 10.0pt;">0.869</td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.5" style="padding:1pt 10.0pt;">6.600</td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.6" style="padding:1pt 10.0pt;">279</td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.7" style="padding:1pt 10.0pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.2" style="padding:1pt 10.0pt;"><math alttext="(-1.1,1.7)" class="ltx_Math" display="inline" id="A4.T7.12.12.2.m1.2"><semantics id="A4.T7.12.12.2.m1.2a"><mrow id="A4.T7.12.12.2.m1.2.2.1" xref="A4.T7.12.12.2.m1.2.2.2.cmml"><mo id="A4.T7.12.12.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.12.12.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.12.12.2.m1.2.2.1.1" xref="A4.T7.12.12.2.m1.2.2.1.1.cmml"><mo id="A4.T7.12.12.2.m1.2.2.1.1a" xref="A4.T7.12.12.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.12.12.2.m1.2.2.1.1.2" xref="A4.T7.12.12.2.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T7.12.12.2.m1.2.2.1.3" xref="A4.T7.12.12.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.12.12.2.m1.1.1" xref="A4.T7.12.12.2.m1.1.1.cmml">1.7</mn><mo id="A4.T7.12.12.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.12.12.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.12.12.2.m1.2b"><interval closure="open" id="A4.T7.12.12.2.m1.2.2.2.cmml" xref="A4.T7.12.12.2.m1.2.2.1"><apply id="A4.T7.12.12.2.m1.2.2.1.1.cmml" xref="A4.T7.12.12.2.m1.2.2.1.1"><minus id="A4.T7.12.12.2.m1.2.2.1.1.1.cmml" xref="A4.T7.12.12.2.m1.2.2.1.1"></minus><cn id="A4.T7.12.12.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.12.12.2.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T7.12.12.2.m1.1.1.cmml" type="float" xref="A4.T7.12.12.2.m1.1.1">1.7</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.12.12.2.m1.2c">(-1.1,1.7)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.12.12.2.m1.2d">( - 1.1 , 1.7 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.12.12.8" style="padding:1pt 10.0pt;">268</td>
</tr>
<tr class="ltx_tr" id="A4.T7.14.14">
<td class="ltx_td ltx_align_left" id="A4.T7.13.13.1" style="padding:1pt 10.0pt;">5<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.13.13.1.m1.1"><semantics id="A4.T7.13.13.1.m1.1a"><mi id="A4.T7.13.13.1.m1.1.1" xref="A4.T7.13.13.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.13.13.1.m1.1b"><ci id="A4.T7.13.13.1.m1.1.1.cmml" xref="A4.T7.13.13.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.13.13.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.13.13.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.14.14.3" style="padding:1pt 10.0pt;">0.415</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.4" style="padding:1pt 10.0pt;">0.867</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.5" style="padding:1pt 10.0pt;">6.675</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.6" style="padding:1pt 10.0pt;">295</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.7" style="padding:1pt 10.0pt;">83.3</td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.2" style="padding:1pt 10.0pt;"><math alttext="(-0.7,1.4)" class="ltx_Math" display="inline" id="A4.T7.14.14.2.m1.2"><semantics id="A4.T7.14.14.2.m1.2a"><mrow id="A4.T7.14.14.2.m1.2.2.1" xref="A4.T7.14.14.2.m1.2.2.2.cmml"><mo id="A4.T7.14.14.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.14.14.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.14.14.2.m1.2.2.1.1" xref="A4.T7.14.14.2.m1.2.2.1.1.cmml"><mo id="A4.T7.14.14.2.m1.2.2.1.1a" xref="A4.T7.14.14.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.14.14.2.m1.2.2.1.1.2" xref="A4.T7.14.14.2.m1.2.2.1.1.2.cmml">0.7</mn></mrow><mo id="A4.T7.14.14.2.m1.2.2.1.3" xref="A4.T7.14.14.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.14.14.2.m1.1.1" xref="A4.T7.14.14.2.m1.1.1.cmml">1.4</mn><mo id="A4.T7.14.14.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.14.14.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.14.14.2.m1.2b"><interval closure="open" id="A4.T7.14.14.2.m1.2.2.2.cmml" xref="A4.T7.14.14.2.m1.2.2.1"><apply id="A4.T7.14.14.2.m1.2.2.1.1.cmml" xref="A4.T7.14.14.2.m1.2.2.1.1"><minus id="A4.T7.14.14.2.m1.2.2.1.1.1.cmml" xref="A4.T7.14.14.2.m1.2.2.1.1"></minus><cn id="A4.T7.14.14.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.14.14.2.m1.2.2.1.1.2">0.7</cn></apply><cn id="A4.T7.14.14.2.m1.1.1.cmml" type="float" xref="A4.T7.14.14.2.m1.1.1">1.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.14.14.2.m1.2c">(-0.7,1.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.14.14.2.m1.2d">( - 0.7 , 1.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.14.14.8" style="padding:1pt 10.0pt;">272</td>
</tr>
<tr class="ltx_tr" id="A4.T7.16.16">
<td class="ltx_td ltx_align_left" id="A4.T7.15.15.1" style="padding:1pt 10.0pt;">6<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.15.15.1.m1.1"><semantics id="A4.T7.15.15.1.m1.1a"><mi id="A4.T7.15.15.1.m1.1.1" xref="A4.T7.15.15.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.15.15.1.m1.1b"><ci id="A4.T7.15.15.1.m1.1.1.cmml" xref="A4.T7.15.15.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.15.15.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.15.15.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.16.16.3" style="padding:1pt 10.0pt;">0.414</td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.4" style="padding:1pt 10.0pt;">0.857</td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.5" style="padding:1pt 10.0pt;">6.572</td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.6" style="padding:1pt 10.0pt;">282</td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.16.16.7.1">84.4</span></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.2" style="padding:1pt 10.0pt;"><math alttext="(-1.1,1.3)" class="ltx_Math" display="inline" id="A4.T7.16.16.2.m1.2"><semantics id="A4.T7.16.16.2.m1.2a"><mrow id="A4.T7.16.16.2.m1.2.2.1" xref="A4.T7.16.16.2.m1.2.2.2.cmml"><mo id="A4.T7.16.16.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.16.16.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.16.16.2.m1.2.2.1.1" xref="A4.T7.16.16.2.m1.2.2.1.1.cmml"><mo id="A4.T7.16.16.2.m1.2.2.1.1a" xref="A4.T7.16.16.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.16.16.2.m1.2.2.1.1.2" xref="A4.T7.16.16.2.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T7.16.16.2.m1.2.2.1.3" xref="A4.T7.16.16.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.16.16.2.m1.1.1" xref="A4.T7.16.16.2.m1.1.1.cmml">1.3</mn><mo id="A4.T7.16.16.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.16.16.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.16.16.2.m1.2b"><interval closure="open" id="A4.T7.16.16.2.m1.2.2.2.cmml" xref="A4.T7.16.16.2.m1.2.2.1"><apply id="A4.T7.16.16.2.m1.2.2.1.1.cmml" xref="A4.T7.16.16.2.m1.2.2.1.1"><minus id="A4.T7.16.16.2.m1.2.2.1.1.1.cmml" xref="A4.T7.16.16.2.m1.2.2.1.1"></minus><cn id="A4.T7.16.16.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.16.16.2.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T7.16.16.2.m1.1.1.cmml" type="float" xref="A4.T7.16.16.2.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.16.16.2.m1.2c">(-1.1,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.16.16.2.m1.2d">( - 1.1 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.16.16.8" style="padding:1pt 10.0pt;">265</td>
</tr>
<tr class="ltx_tr" id="A4.T7.18.18">
<td class="ltx_td ltx_align_left" id="A4.T7.17.17.1" style="padding:1pt 10.0pt;">7<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.17.17.1.m1.1"><semantics id="A4.T7.17.17.1.m1.1a"><mi id="A4.T7.17.17.1.m1.1.1" xref="A4.T7.17.17.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.17.17.1.m1.1b"><ci id="A4.T7.17.17.1.m1.1.1.cmml" xref="A4.T7.17.17.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.17.17.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.17.17.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.18.18.3" style="padding:1pt 10.0pt;">0.413</td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.4" style="padding:1pt 10.0pt;">0.848</td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.5" style="padding:1pt 10.0pt;">6.743</td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.6" style="padding:1pt 10.0pt;">286</td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.7" style="padding:1pt 10.0pt;">84.1</td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.2" style="padding:1pt 10.0pt;"><math alttext="(-0.9,1.2)" class="ltx_Math" display="inline" id="A4.T7.18.18.2.m1.2"><semantics id="A4.T7.18.18.2.m1.2a"><mrow id="A4.T7.18.18.2.m1.2.2.1" xref="A4.T7.18.18.2.m1.2.2.2.cmml"><mo id="A4.T7.18.18.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.18.18.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.18.18.2.m1.2.2.1.1" xref="A4.T7.18.18.2.m1.2.2.1.1.cmml"><mo id="A4.T7.18.18.2.m1.2.2.1.1a" xref="A4.T7.18.18.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.18.18.2.m1.2.2.1.1.2" xref="A4.T7.18.18.2.m1.2.2.1.1.2.cmml">0.9</mn></mrow><mo id="A4.T7.18.18.2.m1.2.2.1.3" xref="A4.T7.18.18.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.18.18.2.m1.1.1" xref="A4.T7.18.18.2.m1.1.1.cmml">1.2</mn><mo id="A4.T7.18.18.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.18.18.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.18.18.2.m1.2b"><interval closure="open" id="A4.T7.18.18.2.m1.2.2.2.cmml" xref="A4.T7.18.18.2.m1.2.2.1"><apply id="A4.T7.18.18.2.m1.2.2.1.1.cmml" xref="A4.T7.18.18.2.m1.2.2.1.1"><minus id="A4.T7.18.18.2.m1.2.2.1.1.1.cmml" xref="A4.T7.18.18.2.m1.2.2.1.1"></minus><cn id="A4.T7.18.18.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.18.18.2.m1.2.2.1.1.2">0.9</cn></apply><cn id="A4.T7.18.18.2.m1.1.1.cmml" type="float" xref="A4.T7.18.18.2.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.18.18.2.m1.2c">(-0.9,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.18.18.2.m1.2d">( - 0.9 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.18.18.8" style="padding:1pt 10.0pt;">266</td>
</tr>
<tr class="ltx_tr" id="A4.T7.20.20">
<td class="ltx_td ltx_align_left" id="A4.T7.19.19.1" style="padding:1pt 10.0pt;">8<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.19.19.1.m1.1"><semantics id="A4.T7.19.19.1.m1.1a"><mi id="A4.T7.19.19.1.m1.1.1" xref="A4.T7.19.19.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.19.19.1.m1.1b"><ci id="A4.T7.19.19.1.m1.1.1.cmml" xref="A4.T7.19.19.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.19.19.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.19.19.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.20.20.3" style="padding:1pt 10.0pt;">0.411</td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.4" style="padding:1pt 10.0pt;">0.836</td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.5" style="padding:1pt 10.0pt;">6.618</td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.6" style="padding:1pt 10.0pt;">275</td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.7" style="padding:1pt 10.0pt;">83.1</td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.2" style="padding:1pt 10.0pt;"><math alttext="(-1.1,1.6)" class="ltx_Math" display="inline" id="A4.T7.20.20.2.m1.2"><semantics id="A4.T7.20.20.2.m1.2a"><mrow id="A4.T7.20.20.2.m1.2.2.1" xref="A4.T7.20.20.2.m1.2.2.2.cmml"><mo id="A4.T7.20.20.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.20.20.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.20.20.2.m1.2.2.1.1" xref="A4.T7.20.20.2.m1.2.2.1.1.cmml"><mo id="A4.T7.20.20.2.m1.2.2.1.1a" xref="A4.T7.20.20.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.20.20.2.m1.2.2.1.1.2" xref="A4.T7.20.20.2.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T7.20.20.2.m1.2.2.1.3" xref="A4.T7.20.20.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.20.20.2.m1.1.1" xref="A4.T7.20.20.2.m1.1.1.cmml">1.6</mn><mo id="A4.T7.20.20.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.20.20.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.20.20.2.m1.2b"><interval closure="open" id="A4.T7.20.20.2.m1.2.2.2.cmml" xref="A4.T7.20.20.2.m1.2.2.1"><apply id="A4.T7.20.20.2.m1.2.2.1.1.cmml" xref="A4.T7.20.20.2.m1.2.2.1.1"><minus id="A4.T7.20.20.2.m1.2.2.1.1.1.cmml" xref="A4.T7.20.20.2.m1.2.2.1.1"></minus><cn id="A4.T7.20.20.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.20.20.2.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T7.20.20.2.m1.1.1.cmml" type="float" xref="A4.T7.20.20.2.m1.1.1">1.6</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.20.20.2.m1.2c">(-1.1,1.6)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.20.20.2.m1.2d">( - 1.1 , 1.6 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.20.20.8" style="padding:1pt 10.0pt;">268</td>
</tr>
<tr class="ltx_tr" id="A4.T7.22.22">
<td class="ltx_td ltx_align_left" id="A4.T7.21.21.1" style="padding:1pt 10.0pt;">9<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.21.21.1.m1.1"><semantics id="A4.T7.21.21.1.m1.1a"><mi id="A4.T7.21.21.1.m1.1.1" xref="A4.T7.21.21.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.21.21.1.m1.1b"><ci id="A4.T7.21.21.1.m1.1.1.cmml" xref="A4.T7.21.21.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.21.21.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.21.21.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T7.22.22.3" style="padding:1pt 10.0pt;">0.411</td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.4" style="padding:1pt 10.0pt;">0.822</td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.5" style="padding:1pt 10.0pt;">6.681</td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.6" style="padding:1pt 10.0pt;">274</td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.7" style="padding:1pt 10.0pt;">83.3</td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.2" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.5)" class="ltx_Math" display="inline" id="A4.T7.22.22.2.m1.2"><semantics id="A4.T7.22.22.2.m1.2a"><mrow id="A4.T7.22.22.2.m1.2.2.1" xref="A4.T7.22.22.2.m1.2.2.2.cmml"><mo id="A4.T7.22.22.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.22.22.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.22.22.2.m1.2.2.1.1" xref="A4.T7.22.22.2.m1.2.2.1.1.cmml"><mo id="A4.T7.22.22.2.m1.2.2.1.1a" xref="A4.T7.22.22.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.22.22.2.m1.2.2.1.1.2" xref="A4.T7.22.22.2.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T7.22.22.2.m1.2.2.1.3" xref="A4.T7.22.22.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.22.22.2.m1.1.1" xref="A4.T7.22.22.2.m1.1.1.cmml">1.5</mn><mo id="A4.T7.22.22.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.22.22.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.22.22.2.m1.2b"><interval closure="open" id="A4.T7.22.22.2.m1.2.2.2.cmml" xref="A4.T7.22.22.2.m1.2.2.1"><apply id="A4.T7.22.22.2.m1.2.2.1.1.cmml" xref="A4.T7.22.22.2.m1.2.2.1.1"><minus id="A4.T7.22.22.2.m1.2.2.1.1.1.cmml" xref="A4.T7.22.22.2.m1.2.2.1.1"></minus><cn id="A4.T7.22.22.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.22.22.2.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T7.22.22.2.m1.1.1.cmml" type="float" xref="A4.T7.22.22.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.22.22.2.m1.2c">(-1.3,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.22.22.2.m1.2d">( - 1.3 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T7.22.22.8" style="padding:1pt 10.0pt;">269</td>
</tr>
<tr class="ltx_tr" id="A4.T7.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T7.23.23.1" style="padding:1pt 10.0pt;">10<math alttext="k" class="ltx_Math" display="inline" id="A4.T7.23.23.1.m1.1"><semantics id="A4.T7.23.23.1.m1.1a"><mi id="A4.T7.23.23.1.m1.1.1" xref="A4.T7.23.23.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T7.23.23.1.m1.1b"><ci id="A4.T7.23.23.1.m1.1.1.cmml" xref="A4.T7.23.23.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.23.23.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T7.23.23.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T7.24.24.3" style="padding:1pt 10.0pt;">0.409</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.4" style="padding:1pt 10.0pt;">0.828</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.5" style="padding:1pt 10.0pt;">6.750</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.6" style="padding:1pt 10.0pt;">279</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.7" style="padding:1pt 10.0pt;">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.2" style="padding:1pt 10.0pt;"><math alttext="(-0.8,1.7)" class="ltx_Math" display="inline" id="A4.T7.24.24.2.m1.2"><semantics id="A4.T7.24.24.2.m1.2a"><mrow id="A4.T7.24.24.2.m1.2.2.1" xref="A4.T7.24.24.2.m1.2.2.2.cmml"><mo id="A4.T7.24.24.2.m1.2.2.1.2" stretchy="false" xref="A4.T7.24.24.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T7.24.24.2.m1.2.2.1.1" xref="A4.T7.24.24.2.m1.2.2.1.1.cmml"><mo id="A4.T7.24.24.2.m1.2.2.1.1a" xref="A4.T7.24.24.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T7.24.24.2.m1.2.2.1.1.2" xref="A4.T7.24.24.2.m1.2.2.1.1.2.cmml">0.8</mn></mrow><mo id="A4.T7.24.24.2.m1.2.2.1.3" xref="A4.T7.24.24.2.m1.2.2.2.cmml">,</mo><mn id="A4.T7.24.24.2.m1.1.1" xref="A4.T7.24.24.2.m1.1.1.cmml">1.7</mn><mo id="A4.T7.24.24.2.m1.2.2.1.4" stretchy="false" xref="A4.T7.24.24.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T7.24.24.2.m1.2b"><interval closure="open" id="A4.T7.24.24.2.m1.2.2.2.cmml" xref="A4.T7.24.24.2.m1.2.2.1"><apply id="A4.T7.24.24.2.m1.2.2.1.1.cmml" xref="A4.T7.24.24.2.m1.2.2.1.1"><minus id="A4.T7.24.24.2.m1.2.2.1.1.1.cmml" xref="A4.T7.24.24.2.m1.2.2.1.1"></minus><cn id="A4.T7.24.24.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T7.24.24.2.m1.2.2.1.1.2">0.8</cn></apply><cn id="A4.T7.24.24.2.m1.1.1.cmml" type="float" xref="A4.T7.24.24.2.m1.1.1">1.7</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T7.24.24.2.m1.2c">(-0.8,1.7)</annotation><annotation encoding="application/x-llamapun" id="A4.T7.24.24.2.m1.2d">( - 0.8 , 1.7 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T7.24.24.8" style="padding:1pt 10.0pt;">266</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Llama-3b-instruct model trained using different sizes of datasets. The datasets were selected based on the difficulty metric proposed in the paper.  The results are shown for both the MT-Bench and Arena-Hard benchmarks. For each dataset size, the table displays the training loss, evaluation loss, average score, and average number of tokens used in the instruction-response pairs.
> <details>
> <summary>read the caption</summary>
> Table 7: Performance comparison of Llama-3b-instruct with different sizes of difficulty-based selected data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T8.24">
<tr class="ltx_tr" id="A4.T8.24.25">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A4.T8.24.25.1" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.25.1.1">Data Size</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" id="A4.T8.24.25.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.25.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T8.24.25.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.25.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T8.24.25.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.25.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T8.24.25.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.25.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.24.26">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.24.26.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.26.1.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.24.26.2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.26.2.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.24.26.3" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.26.3.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.24.26.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.26.4.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.24.26.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.24.26.5.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.1.1.1" style="padding:1pt 10.0pt;">0.25<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.1.1.1.m1.1"><semantics id="A4.T8.1.1.1.m1.1a"><mi id="A4.T8.1.1.1.m1.1.1" xref="A4.T8.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.m1.1b"><ci id="A4.T8.1.1.1.m1.1.1.cmml" xref="A4.T8.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T8.2.2.3" style="padding:1pt 10.0pt;">0.567</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.4" style="padding:1pt 10.0pt;">1.138</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5" style="padding:1pt 10.0pt;">4.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.6.1">492</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.7" style="padding:1pt 10.0pt;">75.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.2" style="padding:1pt 10.0pt;"><math alttext="(-1.1,2.1)" class="ltx_Math" display="inline" id="A4.T8.2.2.2.m1.2"><semantics id="A4.T8.2.2.2.m1.2a"><mrow id="A4.T8.2.2.2.m1.2.2.1" xref="A4.T8.2.2.2.m1.2.2.2.cmml"><mo id="A4.T8.2.2.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.2.2.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.2.2.2.m1.2.2.1.1" xref="A4.T8.2.2.2.m1.2.2.1.1.cmml"><mo id="A4.T8.2.2.2.m1.2.2.1.1a" xref="A4.T8.2.2.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.2.2.2.m1.2.2.1.1.2" xref="A4.T8.2.2.2.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T8.2.2.2.m1.2.2.1.3" xref="A4.T8.2.2.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.2.2.2.m1.1.1" xref="A4.T8.2.2.2.m1.1.1.cmml">2.1</mn><mo id="A4.T8.2.2.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.2.2.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.2.2.2.m1.2b"><interval closure="open" id="A4.T8.2.2.2.m1.2.2.2.cmml" xref="A4.T8.2.2.2.m1.2.2.1"><apply id="A4.T8.2.2.2.m1.2.2.1.1.cmml" xref="A4.T8.2.2.2.m1.2.2.1.1"><minus id="A4.T8.2.2.2.m1.2.2.1.1.1.cmml" xref="A4.T8.2.2.2.m1.2.2.1.1"></minus><cn id="A4.T8.2.2.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.2.2.2.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T8.2.2.2.m1.1.1.cmml" type="float" xref="A4.T8.2.2.2.m1.1.1">2.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.2.2.2.m1.2c">(-1.1,2.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.2.2.2.m1.2d">( - 1.1 , 2.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.4.4">
<td class="ltx_td ltx_align_left" id="A4.T8.3.3.1" style="padding:1pt 10.0pt;">0.5<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.3.3.1.m1.1"><semantics id="A4.T8.3.3.1.m1.1a"><mi id="A4.T8.3.3.1.m1.1.1" xref="A4.T8.3.3.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.3.3.1.m1.1b"><ci id="A4.T8.3.3.1.m1.1.1.cmml" xref="A4.T8.3.3.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.3.3.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.3.3.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.4.4.3" style="padding:1pt 10.0pt;">0.544</td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.4" style="padding:1pt 10.0pt;">1.161</td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.5" style="padding:1pt 10.0pt;">4.987</td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.6" style="padding:1pt 10.0pt;">392</td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.7" style="padding:1pt 10.0pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.2" style="padding:1pt 10.0pt;"><math alttext="(-1.0,1.7)" class="ltx_Math" display="inline" id="A4.T8.4.4.2.m1.2"><semantics id="A4.T8.4.4.2.m1.2a"><mrow id="A4.T8.4.4.2.m1.2.2.1" xref="A4.T8.4.4.2.m1.2.2.2.cmml"><mo id="A4.T8.4.4.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.4.4.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.4.4.2.m1.2.2.1.1" xref="A4.T8.4.4.2.m1.2.2.1.1.cmml"><mo id="A4.T8.4.4.2.m1.2.2.1.1a" xref="A4.T8.4.4.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.4.4.2.m1.2.2.1.1.2" xref="A4.T8.4.4.2.m1.2.2.1.1.2.cmml">1.0</mn></mrow><mo id="A4.T8.4.4.2.m1.2.2.1.3" xref="A4.T8.4.4.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.4.4.2.m1.1.1" xref="A4.T8.4.4.2.m1.1.1.cmml">1.7</mn><mo id="A4.T8.4.4.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.4.4.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.4.4.2.m1.2b"><interval closure="open" id="A4.T8.4.4.2.m1.2.2.2.cmml" xref="A4.T8.4.4.2.m1.2.2.1"><apply id="A4.T8.4.4.2.m1.2.2.1.1.cmml" xref="A4.T8.4.4.2.m1.2.2.1.1"><minus id="A4.T8.4.4.2.m1.2.2.1.1.1.cmml" xref="A4.T8.4.4.2.m1.2.2.1.1"></minus><cn id="A4.T8.4.4.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.4.4.2.m1.2.2.1.1.2">1.0</cn></apply><cn id="A4.T8.4.4.2.m1.1.1.cmml" type="float" xref="A4.T8.4.4.2.m1.1.1">1.7</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.4.4.2.m1.2c">(-1.0,1.7)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.4.4.2.m1.2d">( - 1.0 , 1.7 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.4.4.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.6.6">
<td class="ltx_td ltx_align_left" id="A4.T8.5.5.1" style="padding:1pt 10.0pt;">1<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.5.5.1.m1.1"><semantics id="A4.T8.5.5.1.m1.1a"><mi id="A4.T8.5.5.1.m1.1.1" xref="A4.T8.5.5.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.5.5.1.m1.1b"><ci id="A4.T8.5.5.1.m1.1.1.cmml" xref="A4.T8.5.5.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.5.5.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.5.5.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.6.6.3" style="padding:1pt 10.0pt;">0.539</td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.4" style="padding:1pt 10.0pt;">1.123</td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.5" style="padding:1pt 10.0pt;">5.200</td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.6" style="padding:1pt 10.0pt;">325</td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.7" style="padding:1pt 10.0pt;">78.1</td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.2" style="padding:1pt 10.0pt;"><math alttext="(-1.4,1.5)" class="ltx_Math" display="inline" id="A4.T8.6.6.2.m1.2"><semantics id="A4.T8.6.6.2.m1.2a"><mrow id="A4.T8.6.6.2.m1.2.2.1" xref="A4.T8.6.6.2.m1.2.2.2.cmml"><mo id="A4.T8.6.6.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.6.6.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.6.6.2.m1.2.2.1.1" xref="A4.T8.6.6.2.m1.2.2.1.1.cmml"><mo id="A4.T8.6.6.2.m1.2.2.1.1a" xref="A4.T8.6.6.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.6.6.2.m1.2.2.1.1.2" xref="A4.T8.6.6.2.m1.2.2.1.1.2.cmml">1.4</mn></mrow><mo id="A4.T8.6.6.2.m1.2.2.1.3" xref="A4.T8.6.6.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.6.6.2.m1.1.1" xref="A4.T8.6.6.2.m1.1.1.cmml">1.5</mn><mo id="A4.T8.6.6.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.6.6.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.6.6.2.m1.2b"><interval closure="open" id="A4.T8.6.6.2.m1.2.2.2.cmml" xref="A4.T8.6.6.2.m1.2.2.1"><apply id="A4.T8.6.6.2.m1.2.2.1.1.cmml" xref="A4.T8.6.6.2.m1.2.2.1.1"><minus id="A4.T8.6.6.2.m1.2.2.1.1.1.cmml" xref="A4.T8.6.6.2.m1.2.2.1.1"></minus><cn id="A4.T8.6.6.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.6.6.2.m1.2.2.1.1.2">1.4</cn></apply><cn id="A4.T8.6.6.2.m1.1.1.cmml" type="float" xref="A4.T8.6.6.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.6.6.2.m1.2c">(-1.4,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.6.6.2.m1.2d">( - 1.4 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.6.6.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.8.8">
<td class="ltx_td ltx_align_left" id="A4.T8.7.7.1" style="padding:1pt 10.0pt;">2<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.7.7.1.m1.1"><semantics id="A4.T8.7.7.1.m1.1a"><mi id="A4.T8.7.7.1.m1.1.1" xref="A4.T8.7.7.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.7.7.1.m1.1b"><ci id="A4.T8.7.7.1.m1.1.1.cmml" xref="A4.T8.7.7.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.7.7.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.7.7.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.8.8.3" style="padding:1pt 10.0pt;">0.534</td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.4" style="padding:1pt 10.0pt;">1.094</td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.8.8.5.1">5.337</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.6" style="padding:1pt 10.0pt;">309</td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.7" style="padding:1pt 10.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.2" style="padding:1pt 10.0pt;"><math alttext="(-1.4,2.2)" class="ltx_Math" display="inline" id="A4.T8.8.8.2.m1.2"><semantics id="A4.T8.8.8.2.m1.2a"><mrow id="A4.T8.8.8.2.m1.2.2.1" xref="A4.T8.8.8.2.m1.2.2.2.cmml"><mo id="A4.T8.8.8.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.8.8.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.8.8.2.m1.2.2.1.1" xref="A4.T8.8.8.2.m1.2.2.1.1.cmml"><mo id="A4.T8.8.8.2.m1.2.2.1.1a" xref="A4.T8.8.8.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.8.8.2.m1.2.2.1.1.2" xref="A4.T8.8.8.2.m1.2.2.1.1.2.cmml">1.4</mn></mrow><mo id="A4.T8.8.8.2.m1.2.2.1.3" xref="A4.T8.8.8.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.8.8.2.m1.1.1" xref="A4.T8.8.8.2.m1.1.1.cmml">2.2</mn><mo id="A4.T8.8.8.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.8.8.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.8.8.2.m1.2b"><interval closure="open" id="A4.T8.8.8.2.m1.2.2.2.cmml" xref="A4.T8.8.8.2.m1.2.2.1"><apply id="A4.T8.8.8.2.m1.2.2.1.1.cmml" xref="A4.T8.8.8.2.m1.2.2.1.1"><minus id="A4.T8.8.8.2.m1.2.2.1.1.1.cmml" xref="A4.T8.8.8.2.m1.2.2.1.1"></minus><cn id="A4.T8.8.8.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.8.8.2.m1.2.2.1.1.2">1.4</cn></apply><cn id="A4.T8.8.8.2.m1.1.1.cmml" type="float" xref="A4.T8.8.8.2.m1.1.1">2.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.8.8.2.m1.2c">(-1.4,2.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.8.8.2.m1.2d">( - 1.4 , 2.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.8.8.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.8.8.8.1">290</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.10.10">
<td class="ltx_td ltx_align_left" id="A4.T8.9.9.1" style="padding:1pt 10.0pt;">3<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.9.9.1.m1.1"><semantics id="A4.T8.9.9.1.m1.1a"><mi id="A4.T8.9.9.1.m1.1.1" xref="A4.T8.9.9.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.9.9.1.m1.1b"><ci id="A4.T8.9.9.1.m1.1.1.cmml" xref="A4.T8.9.9.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.9.9.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.9.9.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.10.10.3" style="padding:1pt 10.0pt;">0.537</td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.4" style="padding:1pt 10.0pt;">1.046</td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.5" style="padding:1pt 10.0pt;">5.237</td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.6" style="padding:1pt 10.0pt;">286</td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.7" style="padding:1pt 10.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.2" style="padding:1pt 10.0pt;"><math alttext="(-1.6,1.6)" class="ltx_Math" display="inline" id="A4.T8.10.10.2.m1.2"><semantics id="A4.T8.10.10.2.m1.2a"><mrow id="A4.T8.10.10.2.m1.2.2.1" xref="A4.T8.10.10.2.m1.2.2.2.cmml"><mo id="A4.T8.10.10.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.10.10.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.10.10.2.m1.2.2.1.1" xref="A4.T8.10.10.2.m1.2.2.1.1.cmml"><mo id="A4.T8.10.10.2.m1.2.2.1.1a" xref="A4.T8.10.10.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.10.10.2.m1.2.2.1.1.2" xref="A4.T8.10.10.2.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T8.10.10.2.m1.2.2.1.3" xref="A4.T8.10.10.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.10.10.2.m1.1.1" xref="A4.T8.10.10.2.m1.1.1.cmml">1.6</mn><mo id="A4.T8.10.10.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.10.10.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.10.10.2.m1.2b"><interval closure="open" id="A4.T8.10.10.2.m1.2.2.2.cmml" xref="A4.T8.10.10.2.m1.2.2.1"><apply id="A4.T8.10.10.2.m1.2.2.1.1.cmml" xref="A4.T8.10.10.2.m1.2.2.1.1"><minus id="A4.T8.10.10.2.m1.2.2.1.1.1.cmml" xref="A4.T8.10.10.2.m1.2.2.1.1"></minus><cn id="A4.T8.10.10.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.10.10.2.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T8.10.10.2.m1.1.1.cmml" type="float" xref="A4.T8.10.10.2.m1.1.1">1.6</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.10.10.2.m1.2c">(-1.6,1.6)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.10.10.2.m1.2d">( - 1.6 , 1.6 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.10.10.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.12.12">
<td class="ltx_td ltx_align_left" id="A4.T8.11.11.1" style="padding:1pt 10.0pt;">4<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.11.11.1.m1.1"><semantics id="A4.T8.11.11.1.m1.1a"><mi id="A4.T8.11.11.1.m1.1.1" xref="A4.T8.11.11.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.11.11.1.m1.1b"><ci id="A4.T8.11.11.1.m1.1.1.cmml" xref="A4.T8.11.11.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.11.11.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.11.11.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.12.12.3" style="padding:1pt 10.0pt;">0.535</td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.4" style="padding:1pt 10.0pt;">1.031</td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.5" style="padding:1pt 10.0pt;">5.131</td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.6" style="padding:1pt 10.0pt;">287</td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.7" style="padding:1pt 10.0pt;">79.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.2" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.5)" class="ltx_Math" display="inline" id="A4.T8.12.12.2.m1.2"><semantics id="A4.T8.12.12.2.m1.2a"><mrow id="A4.T8.12.12.2.m1.2.2.1" xref="A4.T8.12.12.2.m1.2.2.2.cmml"><mo id="A4.T8.12.12.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.12.12.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.12.12.2.m1.2.2.1.1" xref="A4.T8.12.12.2.m1.2.2.1.1.cmml"><mo id="A4.T8.12.12.2.m1.2.2.1.1a" xref="A4.T8.12.12.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.12.12.2.m1.2.2.1.1.2" xref="A4.T8.12.12.2.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T8.12.12.2.m1.2.2.1.3" xref="A4.T8.12.12.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.12.12.2.m1.1.1" xref="A4.T8.12.12.2.m1.1.1.cmml">1.5</mn><mo id="A4.T8.12.12.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.12.12.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.12.12.2.m1.2b"><interval closure="open" id="A4.T8.12.12.2.m1.2.2.2.cmml" xref="A4.T8.12.12.2.m1.2.2.1"><apply id="A4.T8.12.12.2.m1.2.2.1.1.cmml" xref="A4.T8.12.12.2.m1.2.2.1.1"><minus id="A4.T8.12.12.2.m1.2.2.1.1.1.cmml" xref="A4.T8.12.12.2.m1.2.2.1.1"></minus><cn id="A4.T8.12.12.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.12.12.2.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T8.12.12.2.m1.1.1.cmml" type="float" xref="A4.T8.12.12.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.12.12.2.m1.2c">(-1.3,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.12.12.2.m1.2d">( - 1.3 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.12.12.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.14.14">
<td class="ltx_td ltx_align_left" id="A4.T8.13.13.1" style="padding:1pt 10.0pt;">5<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.13.13.1.m1.1"><semantics id="A4.T8.13.13.1.m1.1a"><mi id="A4.T8.13.13.1.m1.1.1" xref="A4.T8.13.13.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.13.13.1.m1.1b"><ci id="A4.T8.13.13.1.m1.1.1.cmml" xref="A4.T8.13.13.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.13.13.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.13.13.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.14.14.3" style="padding:1pt 10.0pt;">0.534</td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.4" style="padding:1pt 10.0pt;">1.022</td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.5" style="padding:1pt 10.0pt;">4.987</td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.6" style="padding:1pt 10.0pt;">271</td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.7" style="padding:1pt 10.0pt;">81.5</td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.2" style="padding:1pt 10.0pt;"><math alttext="(-1.0,1.5)" class="ltx_Math" display="inline" id="A4.T8.14.14.2.m1.2"><semantics id="A4.T8.14.14.2.m1.2a"><mrow id="A4.T8.14.14.2.m1.2.2.1" xref="A4.T8.14.14.2.m1.2.2.2.cmml"><mo id="A4.T8.14.14.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.14.14.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.14.14.2.m1.2.2.1.1" xref="A4.T8.14.14.2.m1.2.2.1.1.cmml"><mo id="A4.T8.14.14.2.m1.2.2.1.1a" xref="A4.T8.14.14.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.14.14.2.m1.2.2.1.1.2" xref="A4.T8.14.14.2.m1.2.2.1.1.2.cmml">1.0</mn></mrow><mo id="A4.T8.14.14.2.m1.2.2.1.3" xref="A4.T8.14.14.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.14.14.2.m1.1.1" xref="A4.T8.14.14.2.m1.1.1.cmml">1.5</mn><mo id="A4.T8.14.14.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.14.14.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.14.14.2.m1.2b"><interval closure="open" id="A4.T8.14.14.2.m1.2.2.2.cmml" xref="A4.T8.14.14.2.m1.2.2.1"><apply id="A4.T8.14.14.2.m1.2.2.1.1.cmml" xref="A4.T8.14.14.2.m1.2.2.1.1"><minus id="A4.T8.14.14.2.m1.2.2.1.1.1.cmml" xref="A4.T8.14.14.2.m1.2.2.1.1"></minus><cn id="A4.T8.14.14.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.14.14.2.m1.2.2.1.1.2">1.0</cn></apply><cn id="A4.T8.14.14.2.m1.1.1.cmml" type="float" xref="A4.T8.14.14.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.14.14.2.m1.2c">(-1.0,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.14.14.2.m1.2d">( - 1.0 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.14.14.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.16.16">
<td class="ltx_td ltx_align_left" id="A4.T8.15.15.1" style="padding:1pt 10.0pt;">6<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.15.15.1.m1.1"><semantics id="A4.T8.15.15.1.m1.1a"><mi id="A4.T8.15.15.1.m1.1.1" xref="A4.T8.15.15.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.15.15.1.m1.1b"><ci id="A4.T8.15.15.1.m1.1.1.cmml" xref="A4.T8.15.15.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.15.15.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.15.15.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.16.16.3" style="padding:1pt 10.0pt;">0.531</td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.4" style="padding:1pt 10.0pt;">1.019</td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.5" style="padding:1pt 10.0pt;">4.943</td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.6" style="padding:1pt 10.0pt;">251</td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.7" style="padding:1pt 10.0pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.2" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.5)" class="ltx_Math" display="inline" id="A4.T8.16.16.2.m1.2"><semantics id="A4.T8.16.16.2.m1.2a"><mrow id="A4.T8.16.16.2.m1.2.2.1" xref="A4.T8.16.16.2.m1.2.2.2.cmml"><mo id="A4.T8.16.16.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.16.16.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.16.16.2.m1.2.2.1.1" xref="A4.T8.16.16.2.m1.2.2.1.1.cmml"><mo id="A4.T8.16.16.2.m1.2.2.1.1a" xref="A4.T8.16.16.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.16.16.2.m1.2.2.1.1.2" xref="A4.T8.16.16.2.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T8.16.16.2.m1.2.2.1.3" xref="A4.T8.16.16.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.16.16.2.m1.1.1" xref="A4.T8.16.16.2.m1.1.1.cmml">1.5</mn><mo id="A4.T8.16.16.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.16.16.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.16.16.2.m1.2b"><interval closure="open" id="A4.T8.16.16.2.m1.2.2.2.cmml" xref="A4.T8.16.16.2.m1.2.2.1"><apply id="A4.T8.16.16.2.m1.2.2.1.1.cmml" xref="A4.T8.16.16.2.m1.2.2.1.1"><minus id="A4.T8.16.16.2.m1.2.2.1.1.1.cmml" xref="A4.T8.16.16.2.m1.2.2.1.1"></minus><cn id="A4.T8.16.16.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.16.16.2.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T8.16.16.2.m1.1.1.cmml" type="float" xref="A4.T8.16.16.2.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.16.16.2.m1.2c">(-1.3,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.16.16.2.m1.2d">( - 1.3 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.16.16.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.16.16.8.1">290</span></td>
</tr>
<tr class="ltx_tr" id="A4.T8.18.18">
<td class="ltx_td ltx_align_left" id="A4.T8.17.17.1" style="padding:1pt 10.0pt;">7<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.17.17.1.m1.1"><semantics id="A4.T8.17.17.1.m1.1a"><mi id="A4.T8.17.17.1.m1.1.1" xref="A4.T8.17.17.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.17.17.1.m1.1b"><ci id="A4.T8.17.17.1.m1.1.1.cmml" xref="A4.T8.17.17.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.17.17.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.17.17.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.18.18.3" style="padding:1pt 10.0pt;">0.529</td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.4" style="padding:1pt 10.0pt;">1.004</td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.5" style="padding:1pt 10.0pt;">4.825</td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.6" style="padding:1pt 10.0pt;">218</td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.7" style="padding:1pt 10.0pt;">78.5</td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.2" style="padding:1pt 10.0pt;"><math alttext="(-1.2,1.7)" class="ltx_Math" display="inline" id="A4.T8.18.18.2.m1.2"><semantics id="A4.T8.18.18.2.m1.2a"><mrow id="A4.T8.18.18.2.m1.2.2.1" xref="A4.T8.18.18.2.m1.2.2.2.cmml"><mo id="A4.T8.18.18.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.18.18.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.18.18.2.m1.2.2.1.1" xref="A4.T8.18.18.2.m1.2.2.1.1.cmml"><mo id="A4.T8.18.18.2.m1.2.2.1.1a" xref="A4.T8.18.18.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.18.18.2.m1.2.2.1.1.2" xref="A4.T8.18.18.2.m1.2.2.1.1.2.cmml">1.2</mn></mrow><mo id="A4.T8.18.18.2.m1.2.2.1.3" xref="A4.T8.18.18.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.18.18.2.m1.1.1" xref="A4.T8.18.18.2.m1.1.1.cmml">1.7</mn><mo id="A4.T8.18.18.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.18.18.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.18.18.2.m1.2b"><interval closure="open" id="A4.T8.18.18.2.m1.2.2.2.cmml" xref="A4.T8.18.18.2.m1.2.2.1"><apply id="A4.T8.18.18.2.m1.2.2.1.1.cmml" xref="A4.T8.18.18.2.m1.2.2.1.1"><minus id="A4.T8.18.18.2.m1.2.2.1.1.1.cmml" xref="A4.T8.18.18.2.m1.2.2.1.1"></minus><cn id="A4.T8.18.18.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.18.18.2.m1.2.2.1.1.2">1.2</cn></apply><cn id="A4.T8.18.18.2.m1.1.1.cmml" type="float" xref="A4.T8.18.18.2.m1.1.1">1.7</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.18.18.2.m1.2c">(-1.2,1.7)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.18.18.2.m1.2d">( - 1.2 , 1.7 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.18.18.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.20.20">
<td class="ltx_td ltx_align_left" id="A4.T8.19.19.1" style="padding:1pt 10.0pt;">8<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.19.19.1.m1.1"><semantics id="A4.T8.19.19.1.m1.1a"><mi id="A4.T8.19.19.1.m1.1.1" xref="A4.T8.19.19.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.19.19.1.m1.1b"><ci id="A4.T8.19.19.1.m1.1.1.cmml" xref="A4.T8.19.19.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.19.19.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.19.19.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.20.20.3" style="padding:1pt 10.0pt;">0.526</td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.4" style="padding:1pt 10.0pt;">0.990</td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.5" style="padding:1pt 10.0pt;">5.093</td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.6" style="padding:1pt 10.0pt;">278</td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.7" style="padding:1pt 10.0pt;">81.5</td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.2" style="padding:1pt 10.0pt;"><math alttext="(-1.1,1.3)" class="ltx_Math" display="inline" id="A4.T8.20.20.2.m1.2"><semantics id="A4.T8.20.20.2.m1.2a"><mrow id="A4.T8.20.20.2.m1.2.2.1" xref="A4.T8.20.20.2.m1.2.2.2.cmml"><mo id="A4.T8.20.20.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.20.20.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.20.20.2.m1.2.2.1.1" xref="A4.T8.20.20.2.m1.2.2.1.1.cmml"><mo id="A4.T8.20.20.2.m1.2.2.1.1a" xref="A4.T8.20.20.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.20.20.2.m1.2.2.1.1.2" xref="A4.T8.20.20.2.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T8.20.20.2.m1.2.2.1.3" xref="A4.T8.20.20.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.20.20.2.m1.1.1" xref="A4.T8.20.20.2.m1.1.1.cmml">1.3</mn><mo id="A4.T8.20.20.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.20.20.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.20.20.2.m1.2b"><interval closure="open" id="A4.T8.20.20.2.m1.2.2.2.cmml" xref="A4.T8.20.20.2.m1.2.2.1"><apply id="A4.T8.20.20.2.m1.2.2.1.1.cmml" xref="A4.T8.20.20.2.m1.2.2.1.1"><minus id="A4.T8.20.20.2.m1.2.2.1.1.1.cmml" xref="A4.T8.20.20.2.m1.2.2.1.1"></minus><cn id="A4.T8.20.20.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.20.20.2.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T8.20.20.2.m1.1.1.cmml" type="float" xref="A4.T8.20.20.2.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.20.20.2.m1.2c">(-1.1,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.20.20.2.m1.2d">( - 1.1 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.20.20.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.22.22">
<td class="ltx_td ltx_align_left" id="A4.T8.21.21.1" style="padding:1pt 10.0pt;">9<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.21.21.1.m1.1"><semantics id="A4.T8.21.21.1.m1.1a"><mi id="A4.T8.21.21.1.m1.1.1" xref="A4.T8.21.21.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.21.21.1.m1.1b"><ci id="A4.T8.21.21.1.m1.1.1.cmml" xref="A4.T8.21.21.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.21.21.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.21.21.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T8.22.22.3" style="padding:1pt 10.0pt;">0.519</td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.4" style="padding:1pt 10.0pt;">0.982</td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.5" style="padding:1pt 10.0pt;">4.893</td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.6" style="padding:1pt 10.0pt;">245</td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.22.22.7.1">83.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.2" style="padding:1pt 10.0pt;"><math alttext="(-1.5,1.2)" class="ltx_Math" display="inline" id="A4.T8.22.22.2.m1.2"><semantics id="A4.T8.22.22.2.m1.2a"><mrow id="A4.T8.22.22.2.m1.2.2.1" xref="A4.T8.22.22.2.m1.2.2.2.cmml"><mo id="A4.T8.22.22.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.22.22.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.22.22.2.m1.2.2.1.1" xref="A4.T8.22.22.2.m1.2.2.1.1.cmml"><mo id="A4.T8.22.22.2.m1.2.2.1.1a" xref="A4.T8.22.22.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.22.22.2.m1.2.2.1.1.2" xref="A4.T8.22.22.2.m1.2.2.1.1.2.cmml">1.5</mn></mrow><mo id="A4.T8.22.22.2.m1.2.2.1.3" xref="A4.T8.22.22.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.22.22.2.m1.1.1" xref="A4.T8.22.22.2.m1.1.1.cmml">1.2</mn><mo id="A4.T8.22.22.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.22.22.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.22.22.2.m1.2b"><interval closure="open" id="A4.T8.22.22.2.m1.2.2.2.cmml" xref="A4.T8.22.22.2.m1.2.2.1"><apply id="A4.T8.22.22.2.m1.2.2.1.1.cmml" xref="A4.T8.22.22.2.m1.2.2.1.1"><minus id="A4.T8.22.22.2.m1.2.2.1.1.1.cmml" xref="A4.T8.22.22.2.m1.2.2.1.1"></minus><cn id="A4.T8.22.22.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.22.22.2.m1.2.2.1.1.2">1.5</cn></apply><cn id="A4.T8.22.22.2.m1.1.1.cmml" type="float" xref="A4.T8.22.22.2.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.22.22.2.m1.2c">(-1.5,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.22.22.2.m1.2d">( - 1.5 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T8.22.22.8" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T8.24.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.23.23.1" style="padding:1pt 10.0pt;">10<math alttext="k" class="ltx_Math" display="inline" id="A4.T8.23.23.1.m1.1"><semantics id="A4.T8.23.23.1.m1.1a"><mi id="A4.T8.23.23.1.m1.1.1" xref="A4.T8.23.23.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="A4.T8.23.23.1.m1.1b"><ci id="A4.T8.23.23.1.m1.1.1.cmml" xref="A4.T8.23.23.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.23.23.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="A4.T8.23.23.1.m1.1d">italic_k</annotation></semantics></math>
</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T8.24.24.3" style="padding:1pt 10.0pt;">0.517</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.4" style="padding:1pt 10.0pt;">0.983</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.5" style="padding:1pt 10.0pt;">5.137</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.6" style="padding:1pt 10.0pt;">270</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.7" style="padding:1pt 10.0pt;">82.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.2" style="padding:1pt 10.0pt;"><math alttext="(-1.0,1.1)" class="ltx_Math" display="inline" id="A4.T8.24.24.2.m1.2"><semantics id="A4.T8.24.24.2.m1.2a"><mrow id="A4.T8.24.24.2.m1.2.2.1" xref="A4.T8.24.24.2.m1.2.2.2.cmml"><mo id="A4.T8.24.24.2.m1.2.2.1.2" stretchy="false" xref="A4.T8.24.24.2.m1.2.2.2.cmml">(</mo><mrow id="A4.T8.24.24.2.m1.2.2.1.1" xref="A4.T8.24.24.2.m1.2.2.1.1.cmml"><mo id="A4.T8.24.24.2.m1.2.2.1.1a" xref="A4.T8.24.24.2.m1.2.2.1.1.cmml">−</mo><mn id="A4.T8.24.24.2.m1.2.2.1.1.2" xref="A4.T8.24.24.2.m1.2.2.1.1.2.cmml">1.0</mn></mrow><mo id="A4.T8.24.24.2.m1.2.2.1.3" xref="A4.T8.24.24.2.m1.2.2.2.cmml">,</mo><mn id="A4.T8.24.24.2.m1.1.1" xref="A4.T8.24.24.2.m1.1.1.cmml">1.1</mn><mo id="A4.T8.24.24.2.m1.2.2.1.4" stretchy="false" xref="A4.T8.24.24.2.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T8.24.24.2.m1.2b"><interval closure="open" id="A4.T8.24.24.2.m1.2.2.2.cmml" xref="A4.T8.24.24.2.m1.2.2.1"><apply id="A4.T8.24.24.2.m1.2.2.1.1.cmml" xref="A4.T8.24.24.2.m1.2.2.1.1"><minus id="A4.T8.24.24.2.m1.2.2.1.1.1.cmml" xref="A4.T8.24.24.2.m1.2.2.1.1"></minus><cn id="A4.T8.24.24.2.m1.2.2.1.1.2.cmml" type="float" xref="A4.T8.24.24.2.m1.2.2.1.1.2">1.0</cn></apply><cn id="A4.T8.24.24.2.m1.1.1.cmml" type="float" xref="A4.T8.24.24.2.m1.1.1">1.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.24.24.2.m1.2c">(-1.0,1.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T8.24.24.2.m1.2d">( - 1.0 , 1.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.24.24.8" style="padding:1pt 10.0pt;">289</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Llama-3b base model fine-tuned using different sizes of datasets. The datasets were selected based on the difficulty metric, which identifies challenging instructions that are beneficial for model learning. The table shows the training loss, evaluation loss, MT-Bench score, average tokens, Arena-Hard score, and 95% confidence interval (CI) for each dataset size. This allows for the analysis of the impact of dataset size on the model's performance, revealing the relationship between data quantity and quality in instruction tuning.
> <details>
> <summary>read the caption</summary>
> Table 8: Performance comparison of Llama-3b with different sizes of difficulty-based selected data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T9.6.6">
<tr class="ltx_tr" id="A4.T9.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.6.6.7.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.7.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T9.6.6.7.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.7.2.1">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T9.6.6.7.3"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.7.3.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T9.6.6.7.4"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.7.4.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T9.6.6.7.5"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.7.5.1">Stability</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T9.1.1.1.1"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T9.1.1.1.1.m1.1"><semantics id="A4.T9.1.1.1.1.m1.1a"><mo id="A4.T9.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T9.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T9.1.1.1.1.m1.1b"><ci id="A4.T9.1.1.1.1.m1.1.1.cmml" xref="A4.T9.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T9.2.2.2.2"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T9.2.2.2.2.m1.1"><semantics id="A4.T9.2.2.2.2.m1.1a"><mo id="A4.T9.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T9.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T9.2.2.2.2.m1.1b"><ci id="A4.T9.2.2.2.2.m1.1.1.cmml" xref="A4.T9.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T9.3.3.3.3"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T9.3.3.3.3.m1.1"><semantics id="A4.T9.3.3.3.3.m1.1a"><mo id="A4.T9.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T9.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T9.3.3.3.3.m1.1b"><ci id="A4.T9.3.3.3.3.m1.1.1.cmml" xref="A4.T9.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T9.4.4.4.4"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T9.4.4.4.4.m1.1"><semantics id="A4.T9.4.4.4.4.m1.1a"><mo id="A4.T9.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T9.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T9.4.4.4.4.m1.1b"><ci id="A4.T9.4.4.4.4.m1.1.1.cmml" xref="A4.T9.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T9.5.5.5.5"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T9.5.5.5.5.m1.1"><semantics id="A4.T9.5.5.5.5.m1.1a"><mo id="A4.T9.5.5.5.5.m1.1.1" stretchy="false" xref="A4.T9.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T9.5.5.5.5.m1.1b"><ci id="A4.T9.5.5.5.5.m1.1.1.cmml" xref="A4.T9.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.5.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.6.6"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T9.6.6.6.6.m1.1"><semantics id="A4.T9.6.6.6.6.m1.1a"><mo id="A4.T9.6.6.6.6.m1.1.1" stretchy="false" xref="A4.T9.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T9.6.6.6.6.m1.1b"><ci id="A4.T9.6.6.6.6.m1.1.1.cmml" xref="A4.T9.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T9.6.6.6.6.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T9.6.6.8.1"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.8.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.2">6.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.3">6.456</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.4">6.688</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.5">6.100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.6">6.725</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.7">6.131</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.9.8"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.9.8.1">6.866</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.10">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.2">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.3">69.6</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.4"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.10.4.1">76.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.5">69.4</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.6">72.9</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.7">69.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.10.8">74.6</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.11">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.2">(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.3">(-1.8,1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.4">(-1.5,1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.5">(-2.5,1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.6">(-1.6,1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.7">(-1.7,1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.11.8">(-1.7,2.0)</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T9.6.6.12.1"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.12.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.2">4.302</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.3">4.626</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.4"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.13.4.1">4.651</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.5">4.631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.6">5.040</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.7">3.538</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.13.8">4.369</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.14">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.2">50.0</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.3">73.1</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.4">68.0</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.5"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.14.5.1">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.6">73.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.7">60.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.14.8">73.2</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.15">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.2">(0.0,0.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.3">(-1.8,1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.4">(-1.2,1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.5">(-1.2,1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.6">(-2.0,1.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.7">(-1.7,1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.15.8">(-1.2,1.2)</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T9.6.6.16.1"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.16.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.2"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.17.2.1">7.138</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.3">6.906</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.4">7.068</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.5">7.025</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.6">6.937</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.7">7.018</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.17.8">7.037</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.18">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.2"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.18.2.1">81.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.3">77.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.4">79.1</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.5">80.3</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.6">78.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.7">76.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.18.8">78.0</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.19">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.2">(-1.8, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.3">(-1.9, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.4">(-2.1, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.5">(-1.9, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.6">(-1.2, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.7">(-1.7, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.19.8">(-1.8, 1.7)</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T9.6.6.20.1"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.20.1.1">Qwen2.5-3b</span></td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.2">6.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.3">5.137</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.4"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.21.4.1">6.612</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.5">6.368</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.6">6.343</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.7">5.800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.6.6.21.8">6.525</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.22">
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.2">69.0</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.3"><span class="ltx_text ltx_font_bold" id="A4.T9.6.6.22.3.1">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.4">70.7</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.5">74.1</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.6">74.2</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.7">73.7</td>
<td class="ltx_td ltx_align_center" id="A4.T9.6.6.22.8">74.2</td>
</tr>
<tr class="ltx_tr" id="A4.T9.6.6.23">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.2">(-2.2, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.3">(-2.0, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.4">(-1.8, 2.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.5">(-1.8, 1.5)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.6">(-2.1, 1.5)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.7">(-2.0, 1.3)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T9.6.6.23.8">(-1.8, 1.9)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison results of LoRA (Low-Rank Adaptation) fine-tuning on two different base models: Llama-3b-base/instruct and Qwen-3b-base/instruct.  The models were fine-tuned using instruction data selected via various strategies.  The table shows the performance of each model on two benchmarks, MT-Bench and Arena-Hard, broken down by different data selection methods (Difficulty, Separability, and Stability).  The results highlight the impact of different instruction data selection methods on the model's performance in both full and LoRA fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 9: Performance comparison of lora-version of Llama-3b-base/instruct and Qwen-3b-base/instruct models with different data selection strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T10.4.4">
<tr class="ltx_tr" id="A4.T10.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.4.5.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.4.5.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.2.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T10.4.4.5.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.3.1">Tags</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T10.4.4.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.4.1">Direct-Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T10.4.4.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.5.1">Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T10.4.4.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.5.6.1">IFD</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T10.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T10.1.1.1.1.m1.1"><semantics id="A4.T10.1.1.1.1.m1.1a"><mo id="A4.T10.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T10.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T10.1.1.1.1.m1.1b"><ci id="A4.T10.1.1.1.1.m1.1.1.cmml" xref="A4.T10.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T10.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T10.2.2.2.2.m1.1"><semantics id="A4.T10.2.2.2.2.m1.1a"><mo id="A4.T10.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T10.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T10.2.2.2.2.m1.1b"><ci id="A4.T10.2.2.2.2.m1.1.1.cmml" xref="A4.T10.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T10.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T10.3.3.3.3.m1.1"><semantics id="A4.T10.3.3.3.3.m1.1a"><mo id="A4.T10.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T10.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T10.3.3.3.3.m1.1b"><ci id="A4.T10.3.3.3.3.m1.1.1.cmml" xref="A4.T10.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T10.4.4.4.4.m1.1"><semantics id="A4.T10.4.4.4.4.m1.1a"><mo id="A4.T10.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T10.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T10.4.4.4.4.m1.1b"><ci id="A4.T10.4.4.4.4.m1.1.1.cmml" xref="A4.T10.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T10.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.4.5.1">no_pre</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.4.6.1">pre</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T10.4.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.6.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.610</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.406</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.087</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.706</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.7.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.7.9.1">6.768</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.8">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;">80.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">78.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.8.8.1">81.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">79.5</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.9">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.7, 0.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.1, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-3.4, 2.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 0.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.8, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.8)</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T10.4.4.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.10.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">4.637</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">4.575</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.11.4.1">4.962</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">4.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">4.062</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.243</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">4.418</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.12">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">67.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">73.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.12.9.1">77.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.13">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.3, 2.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.4)</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T10.4.4.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.14.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.950</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">7.125</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">7.131</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.15.5.1">7.175</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.037</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">7.006</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.918</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.868</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.16">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">83.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">77.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">81.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">76.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.16.9.1">83.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.17">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 2.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.8, 1.0)</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T10.4.4.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.18.1.1">Qwen2.5-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">5.887</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">5.616</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">5.417</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">5.750</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">3.981</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.637</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.19.8.1">6.427</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.4.4.19.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.861</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.20">
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.4.4.20.3.1">83.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.4" style="padding-left:4.0pt;padding-right:4.0pt;">79.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.6" style="padding-left:4.0pt;padding-right:4.0pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.7" style="padding-left:4.0pt;padding-right:4.0pt;">70.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.8" style="padding-left:4.0pt;padding-right:4.0pt;">79.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.4.4.20.9" style="padding-left:4.0pt;padding-right:4.0pt;">82.2</td>
</tr>
<tr class="ltx_tr" id="A4.T10.4.4.21">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.5)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.2)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.2)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.7)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.9)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.4.4.21.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.0)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison between LoRA (Low-Rank Adaptation) fine-tuned Llama-3b-base/instruct and Qwen-3b-base/instruct models.  The performance is evaluated using two benchmarks, MT-Bench and Arena-Hard.  Different data selection strategies are compared as baselines, including Random selection, Tags, Direct-Score, Length-based filtering, and IFD (Instruction Filtering Degree) with and without pre-training. The table shows the scores achieved by each model using the various data selection methods, highlighting the relative performance of each strategy for both benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 10: Performance comparison of lora-version of Llama-3b-base/instruct and Qwen-3b-base/instruct models with pre data selection strategies as baselines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T11.6.6">
<tr class="ltx_tr" id="A4.T11.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.6.6.7.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.7.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T11.6.6.7.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.7.2.1">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T11.6.6.7.3"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.7.3.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T11.6.6.7.4"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.7.4.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T11.6.6.7.5"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.7.5.1">Stablity</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T11.1.1.1.1"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T11.1.1.1.1.m1.1"><semantics id="A4.T11.1.1.1.1.m1.1a"><mo id="A4.T11.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T11.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T11.1.1.1.1.m1.1b"><ci id="A4.T11.1.1.1.1.m1.1.1.cmml" xref="A4.T11.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T11.2.2.2.2"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T11.2.2.2.2.m1.1"><semantics id="A4.T11.2.2.2.2.m1.1a"><mo id="A4.T11.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T11.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T11.2.2.2.2.m1.1b"><ci id="A4.T11.2.2.2.2.m1.1.1.cmml" xref="A4.T11.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T11.3.3.3.3"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T11.3.3.3.3.m1.1"><semantics id="A4.T11.3.3.3.3.m1.1a"><mo id="A4.T11.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T11.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T11.3.3.3.3.m1.1b"><ci id="A4.T11.3.3.3.3.m1.1.1.cmml" xref="A4.T11.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T11.4.4.4.4"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T11.4.4.4.4.m1.1"><semantics id="A4.T11.4.4.4.4.m1.1a"><mo id="A4.T11.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T11.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T11.4.4.4.4.m1.1b"><ci id="A4.T11.4.4.4.4.m1.1.1.cmml" xref="A4.T11.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T11.5.5.5.5"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T11.5.5.5.5.m1.1"><semantics id="A4.T11.5.5.5.5.m1.1a"><mo id="A4.T11.5.5.5.5.m1.1.1" stretchy="false" xref="A4.T11.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T11.5.5.5.5.m1.1b"><ci id="A4.T11.5.5.5.5.m1.1.1.cmml" xref="A4.T11.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.5.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.6.6"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T11.6.6.6.6.m1.1"><semantics id="A4.T11.6.6.6.6.m1.1a"><mo id="A4.T11.6.6.6.6.m1.1.1" stretchy="false" xref="A4.T11.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T11.6.6.6.6.m1.1b"><ci id="A4.T11.6.6.6.6.m1.1.1.cmml" xref="A4.T11.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T11.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T11.6.6.6.6.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T11.6.6.8.1"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.8.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.2">6.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.3">6.388</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.4"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.9.4.1">6.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.5">5.937</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.6">6.581</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.7">6.225</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.9.8">6.625</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.10">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.2">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.3">76.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.4"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.10.4.1">80.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.5">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.6">77.9</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.7">75.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.10.8">77.4</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.11">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.2">(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.3">(-1.6, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.4">(-0.9, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.5">(-1.3, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.6">(-1.5, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.7">(-1.3, 0.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.11.8">(-1.5, 1.1)</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T11.6.6.12.1"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.12.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.2">4.302</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.3">4.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.4">4.738</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.5">4.731</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.6">5.056</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.7">4.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.13.8"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.13.8.1">5.088</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.14">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.2">50.0</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.3">78.6</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.4">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.5">81.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.6"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.14.6.1">83.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.7">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.14.8">78.3</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.15">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.2">(0.0, 0.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.3">(-1.9, 2.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.4">(-1.6, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.5">(-1.8, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.6">(-1.8, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.7">(-1.5, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.15.8">(-1.6, 2.2)</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T11.6.6.16.1"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.16.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.2">7.138</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.3">6.906</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.4">7.182</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.5">6.919</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.6">7.269</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.7">7.056</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.17.8"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.17.8.1">7.294</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.18">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.2">81.6</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.3">82.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.4">81.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.5">81.4</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.6"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.18.6.1">83.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.7">78.1</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.18.8">83.5</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.19">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.2">(-1.8, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.3">(-1.8, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.4">(-1.6, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.5">(-1.7, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.6">(-1.4, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.7">(-1.2, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.19.8">(-1.4, 1.4)</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T11.6.6.20.1"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.20.1.1">Qwen2.5-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.1">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.2">6.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.3">6.619</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.4">6.613</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.5">6.575</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.6"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.21.6.1">7.075</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.7">6.763</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T11.6.6.21.8">6.681</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.22">
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.1">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.2">69.0</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.3"><span class="ltx_text ltx_font_bold" id="A4.T11.6.6.22.3.1">80.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.4">73.8</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.5">76.5</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.6">74.1</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.7">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T11.6.6.22.8">76.8</td>
</tr>
<tr class="ltx_tr" id="A4.T11.6.6.23">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.1">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.2">(-2.2, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.3">(-1.7, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.4">(-2.5, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.5">(-1.8, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.6">(-1.6, 2.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.7">(-1.5, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T11.6.6.23.8">(-1.8, 1.8)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of two instruction-following models (Llama-3b-base/instruct and Qwen-3b-base/instruct) after full fine-tuning using different data selection strategies.  The comparison is made across two benchmarks (MT-Bench and Arena-Hard).  For each benchmark and model, the table shows the baseline performance and the improvements achieved with data selected using different strategies (Difficulty, Separability, Stability), as well as the results when combining all three strategies.  The results are reported with standard deviations.  This allows for a direct comparison of the effectiveness of each data selection method in improving model performance on instruction-following tasks.
> <details>
> <summary>read the caption</summary>
> Table 11: Performance comparison of fft-version of Llama-3b-base/instruct and Qwen-3b-base/instruct models with different data selection strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T12.4.4">
<tr class="ltx_tr" id="A4.T12.4.4.5">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.4.5.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.4.5.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.2.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T12.4.4.5.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.3.1">Tags</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T12.4.4.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.4.1">Direct-Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T12.4.4.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.5.1">Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T12.4.4.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.5.6.1">IFD</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T12.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T12.1.1.1.1.m1.1"><semantics id="A4.T12.1.1.1.1.m1.1a"><mo id="A4.T12.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T12.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T12.1.1.1.1.m1.1b"><ci id="A4.T12.1.1.1.1.m1.1.1.cmml" xref="A4.T12.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T12.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.2.2.2.2.m1.1"><semantics id="A4.T12.2.2.2.2.m1.1a"><mo id="A4.T12.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T12.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.2.2.2.2.m1.1b"><ci id="A4.T12.2.2.2.2.m1.1.1.cmml" xref="A4.T12.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T12.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T12.3.3.3.3.m1.1"><semantics id="A4.T12.3.3.3.3.m1.1a"><mo id="A4.T12.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T12.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T12.3.3.3.3.m1.1b"><ci id="A4.T12.3.3.3.3.m1.1.1.cmml" xref="A4.T12.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T12.4.4.4.4.m1.1"><semantics id="A4.T12.4.4.4.4.m1.1a"><mo id="A4.T12.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T12.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T12.4.4.4.4.m1.1b"><ci id="A4.T12.4.4.4.4.m1.1.1.cmml" xref="A4.T12.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T12.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T12.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.4.5.1">no_pre</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.4.6.1">pre</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T12.4.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.6.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.356</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.393</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.068</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.050</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.6" style="padding-left:4.0pt;padding-right:4.0pt;">5.612</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.7" style="padding-left:4.0pt;padding-right:4.0pt;">5.781</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.7.8.1">6.593</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.7.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.243</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.8">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;">74.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.8.3.1">81.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">77.6</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.6" style="padding-left:4.0pt;padding-right:4.0pt;">72.9</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.7" style="padding-left:4.0pt;padding-right:4.0pt;">75.0</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.8" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.8.9" style="padding-left:4.0pt;padding-right:4.0pt;">78.4</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.9">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.2, -0.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.4, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.2, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.9.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.5)</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T12.4.4.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.10.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">4.406</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.11.3.1">4.562</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">4.131</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">4.400</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">3.393</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">3.893</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.281</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">3.962</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.12">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.2" style="padding-left:4.0pt;padding-right:4.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">75.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">59.4</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">71.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">73.9</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.12.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.12.9.1">77.6</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.13">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.1, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.4, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.1, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.6)</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T12.4.4.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.14.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.793</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.818</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.506</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.768</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">5.881</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.931</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.15.8.1">6.962</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.731</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.16">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.16.3.1">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">80.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">77.7</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">79.0</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.16.9" style="padding-left:4.0pt;padding-right:4.0pt;">80.4</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.17">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.4, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.0)</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T12.4.4.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.18.1.1">Qwen2.5-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.500</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.818</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.325</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.19.5.1">6.900</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">4.925</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.591</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.8" style="padding-left:4.0pt;padding-right:4.0pt;">5.798</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T12.4.4.19.9" style="padding-left:4.0pt;padding-right:4.0pt;">5.825</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.20">
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.2" style="padding-left:4.0pt;padding-right:4.0pt;">72.9</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T12.4.4.20.3.1">79.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.6" style="padding-left:4.0pt;padding-right:4.0pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.7" style="padding-left:4.0pt;padding-right:4.0pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.8" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
<td class="ltx_td ltx_align_center" id="A4.T12.4.4.20.9" style="padding-left:4.0pt;padding-right:4.0pt;">74.5</td>
</tr>
<tr class="ltx_tr" id="A4.T12.4.4.21">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.2, 1.9)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.2, 1.9)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 2.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.9)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.3, 1.9)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.3)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T12.4.4.21.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.5)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of two instruction-following models, Llama-3b-base/instruct and Qwen-3b-base/instruct, fine-tuned using the full fine-tuning (FFT) method.  It compares the performance of these models when using different data selection strategies. The baselines for the comparison include random selection, selection based on tags (predefined keywords), Direct-Score (a method that scores instructions directly), Length (a method that filters based on the length of instructions), and IFD (Instruction Filtering Degree) with and without pre-training. The performance metrics used are MT-Bench and Arena-Hard scores, which are both standard benchmarks for evaluating instruction-following capabilities. The table shows the mean performance and 95% confidence intervals for each model and data selection method.
> <details>
> <summary>read the caption</summary>
> Table 12: Performance comparison of fft-version of Llama-3b-base/instruct and Qwen-3b-base/instruct models with pre data selection strategies as baselines.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T13.6.6">
<tr class="ltx_tr" id="A4.T13.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.6.6.7.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.6.6.7.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.2.1">Base</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T13.6.6.7.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.3.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T13.6.6.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.4.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T13.6.6.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.5.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T13.6.6.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.7.6.1">Stability</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T13.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T13.1.1.1.1.m1.1"><semantics id="A4.T13.1.1.1.1.m1.1a"><mo id="A4.T13.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T13.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T13.1.1.1.1.m1.1b"><ci id="A4.T13.1.1.1.1.m1.1.1.cmml" xref="A4.T13.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T13.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T13.2.2.2.2.m1.1"><semantics id="A4.T13.2.2.2.2.m1.1a"><mo id="A4.T13.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T13.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T13.2.2.2.2.m1.1b"><ci id="A4.T13.2.2.2.2.m1.1.1.cmml" xref="A4.T13.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T13.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T13.3.3.3.3.m1.1"><semantics id="A4.T13.3.3.3.3.m1.1a"><mo id="A4.T13.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T13.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T13.3.3.3.3.m1.1b"><ci id="A4.T13.3.3.3.3.m1.1.1.cmml" xref="A4.T13.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T13.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T13.4.4.4.4.m1.1"><semantics id="A4.T13.4.4.4.4.m1.1a"><mo id="A4.T13.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T13.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T13.4.4.4.4.m1.1b"><ci id="A4.T13.4.4.4.4.m1.1.1.cmml" xref="A4.T13.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T13.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T13.5.5.5.5.m1.1"><semantics id="A4.T13.5.5.5.5.m1.1a"><mo id="A4.T13.5.5.5.5.m1.1.1" stretchy="false" xref="A4.T13.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T13.5.5.5.5.m1.1b"><ci id="A4.T13.5.5.5.5.m1.1.1.cmml" xref="A4.T13.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.5.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T13.6.6.6.6.m1.1"><semantics id="A4.T13.6.6.6.6.m1.1a"><mo id="A4.T13.6.6.6.6.m1.1.1" stretchy="false" xref="A4.T13.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T13.6.6.6.6.m1.1b"><ci id="A4.T13.6.6.6.6.m1.1.1.cmml" xref="A4.T13.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T13.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T13.6.6.6.6.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T13.6.6.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.8.1.1">Llama3.2-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.743</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.094</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.619</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.275</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.9.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.9.9.1">6.913</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.10">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">80.9</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">82.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.10.6.1">84.8</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.10.9" style="padding-left:4.0pt;padding-right:4.0pt;">81.8</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.11">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.2, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 2.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.7)</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T13.6.6.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.12.1.1">Llama3.2-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">4.302</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">4.869</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">4.825</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.13.5.1">5.000</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">4.813</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">4.938</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">4.950</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.14">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">79.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">80.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">79.5</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.6" style="padding-left:4.0pt;padding-right:4.0pt;">80.8</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.14.7.1">81.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">80.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.14.9" style="padding-left:4.0pt;padding-right:4.0pt;">80.9</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.15">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">(0.0, 0.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.9, 0.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.2, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 2.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 2.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.6)</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T13.6.6.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.16.1.1">Qwen2.5-3b-instruct</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">7.138</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">7.006</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.988</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">7.150</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.238</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.17.7.1">7.340</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">7.019</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">7.181</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.18">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">81.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.18.5.1">82.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.6" style="padding-left:4.0pt;padding-right:4.0pt;">82.5</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">80.3</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.18.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.18.9.1">82.6</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.19">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 0.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.19.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 2.0)</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T13.6.6.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.20.1.1">Qwen2.5-3b-base</span></td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.21.3.1">7.162</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.575</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.856</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.875</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.819</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T13.6.6.21.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.869</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.22">
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">69.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.3" style="padding-left:4.0pt;padding-right:4.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.4" style="padding-left:4.0pt;padding-right:4.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T13.6.6.22.5.1">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.6" style="padding-left:4.0pt;padding-right:4.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.7" style="padding-left:4.0pt;padding-right:4.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.8" style="padding-left:4.0pt;padding-right:4.0pt;">73.6</td>
<td class="ltx_td ltx_align_center" id="A4.T13.6.6.22.9" style="padding-left:4.0pt;padding-right:4.0pt;">76.9</td>
</tr>
<tr class="ltx_tr" id="A4.T13.6.6.23">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.2, 1.6)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.7, 1.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 2.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.7)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.2, 2.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T13.6.6.23.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 1.6)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison results of two instruction-following models (Llama-3b-base/instruct and Qwen-3b-base/instruct) fine-tuned using the full fine-tuning (FFT) method.  The models were trained on datasets created by applying a clustering-based data selection strategy to instruction data.  The table shows performance metrics for several different data selection approaches including baselines and using individual metrics from the CROWDSELECT methodology on the MT-Bench and Arena-Hard benchmarks.  These results highlight the impact of various data selection methods on the performance of the models. The performance is evaluated using several metrics such as MT-Bench and Arena-Hard scores.  The 95% confidence interval is also provided for a better assessment of the results.
> <details>
> <summary>read the caption</summary>
> Table 13: Performance comparison of cluster-chosen-data-fft-version of Llama-3b-base/instruct and Qwen-3b-base/instruct models with different data selection strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T14.9.9">
<tr class="ltx_tr" id="A4.T14.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T14.9.9.10.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.10.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T14.9.9.10.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.10.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T14.9.9.10.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.10.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T14.9.9.10.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.10.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T14.9.9.10.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.10.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.9.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.1" style="padding:1pt 10.0pt;">Diff</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T14.9.9.11.2" style="padding:1pt 10.0pt;">Sep</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.3" style="padding:1pt 10.0pt;">Stab</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.11.4.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.11.5.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.11.6.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.11.7.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.9.9.11.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.9.9.11.8.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T14.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T14.1.1.1.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.5" style="padding:1pt 10.0pt;">0.312</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.6" style="padding:1pt 10.0pt;">0.715</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.7" style="padding:1pt 10.0pt;">6.913</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.8" style="padding:1pt 10.0pt;">307</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.9" style="padding:1pt 10.0pt;">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.1" style="padding:1pt 10.0pt;"><math alttext="(-0.5,0.8)" class="ltx_Math" display="inline" id="A4.T14.1.1.1.1.m1.2"><semantics id="A4.T14.1.1.1.1.m1.2a"><mrow id="A4.T14.1.1.1.1.m1.2.2.1" xref="A4.T14.1.1.1.1.m1.2.2.2.cmml"><mo id="A4.T14.1.1.1.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.1.1.1.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.1.1.1.1.m1.2.2.1.1" xref="A4.T14.1.1.1.1.m1.2.2.1.1.cmml"><mo id="A4.T14.1.1.1.1.m1.2.2.1.1a" xref="A4.T14.1.1.1.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.1.1.1.1.m1.2.2.1.1.2" xref="A4.T14.1.1.1.1.m1.2.2.1.1.2.cmml">0.5</mn></mrow><mo id="A4.T14.1.1.1.1.m1.2.2.1.3" xref="A4.T14.1.1.1.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.1.1.1.1.m1.1.1" xref="A4.T14.1.1.1.1.m1.1.1.cmml">0.8</mn><mo id="A4.T14.1.1.1.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.1.1.1.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.1.1.1.1.m1.2b"><interval closure="open" id="A4.T14.1.1.1.1.m1.2.2.2.cmml" xref="A4.T14.1.1.1.1.m1.2.2.1"><apply id="A4.T14.1.1.1.1.m1.2.2.1.1.cmml" xref="A4.T14.1.1.1.1.m1.2.2.1.1"><minus id="A4.T14.1.1.1.1.m1.2.2.1.1.1.cmml" xref="A4.T14.1.1.1.1.m1.2.2.1.1"></minus><cn id="A4.T14.1.1.1.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.1.1.1.1.m1.2.2.1.1.2">0.5</cn></apply><cn id="A4.T14.1.1.1.1.m1.1.1.cmml" type="float" xref="A4.T14.1.1.1.1.m1.1.1">0.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.1.1.1.1.m1.2c">(-0.5,0.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.1.1.1.1.m1.2d">( - 0.5 , 0.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T14.1.1.1.10" style="padding:1pt 10.0pt;">266</td>
</tr>
<tr class="ltx_tr" id="A4.T14.2.2.2">
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.2.2.2.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.5" style="padding:1pt 10.0pt;">0.368</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.6" style="padding:1pt 10.0pt;">0.803</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.7" style="padding:1pt 10.0pt;">6.625</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.8" style="padding:1pt 10.0pt;">292</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.9" style="padding:1pt 10.0pt;">84.2</td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.1" style="padding:1pt 10.0pt;"><math alttext="(-0.7,1.0)" class="ltx_Math" display="inline" id="A4.T14.2.2.2.1.m1.2"><semantics id="A4.T14.2.2.2.1.m1.2a"><mrow id="A4.T14.2.2.2.1.m1.2.2.1" xref="A4.T14.2.2.2.1.m1.2.2.2.cmml"><mo id="A4.T14.2.2.2.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.2.2.2.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.2.2.2.1.m1.2.2.1.1" xref="A4.T14.2.2.2.1.m1.2.2.1.1.cmml"><mo id="A4.T14.2.2.2.1.m1.2.2.1.1a" xref="A4.T14.2.2.2.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.2.2.2.1.m1.2.2.1.1.2" xref="A4.T14.2.2.2.1.m1.2.2.1.1.2.cmml">0.7</mn></mrow><mo id="A4.T14.2.2.2.1.m1.2.2.1.3" xref="A4.T14.2.2.2.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.2.2.2.1.m1.1.1" xref="A4.T14.2.2.2.1.m1.1.1.cmml">1.0</mn><mo id="A4.T14.2.2.2.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.2.2.2.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.2.2.2.1.m1.2b"><interval closure="open" id="A4.T14.2.2.2.1.m1.2.2.2.cmml" xref="A4.T14.2.2.2.1.m1.2.2.1"><apply id="A4.T14.2.2.2.1.m1.2.2.1.1.cmml" xref="A4.T14.2.2.2.1.m1.2.2.1.1"><minus id="A4.T14.2.2.2.1.m1.2.2.1.1.1.cmml" xref="A4.T14.2.2.2.1.m1.2.2.1.1"></minus><cn id="A4.T14.2.2.2.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.2.2.2.1.m1.2.2.1.1.2">0.7</cn></apply><cn id="A4.T14.2.2.2.1.m1.1.1.cmml" type="float" xref="A4.T14.2.2.2.1.m1.1.1">1.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.2.2.2.1.m1.2c">(-0.7,1.0)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.2.2.2.1.m1.2d">( - 0.7 , 1.0 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.2.2.2.10" style="padding:1pt 10.0pt;">269</td>
</tr>
<tr class="ltx_tr" id="A4.T14.3.3.3">
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.3.3.3.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.5" style="padding:1pt 10.0pt;">0.325</td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.6" style="padding:1pt 10.0pt;">0.717</td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.3.3.3.7.1">7.103</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.8" style="padding:1pt 10.0pt;">328</td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.9" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T14.3.3.3.9.1">85.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.1" style="padding:1pt 10.0pt;"><math alttext="(-0.8,1.1)" class="ltx_Math" display="inline" id="A4.T14.3.3.3.1.m1.2"><semantics id="A4.T14.3.3.3.1.m1.2a"><mrow id="A4.T14.3.3.3.1.m1.2.2.1" xref="A4.T14.3.3.3.1.m1.2.2.2.cmml"><mo id="A4.T14.3.3.3.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.3.3.3.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.3.3.3.1.m1.2.2.1.1" xref="A4.T14.3.3.3.1.m1.2.2.1.1.cmml"><mo id="A4.T14.3.3.3.1.m1.2.2.1.1a" xref="A4.T14.3.3.3.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.3.3.3.1.m1.2.2.1.1.2" xref="A4.T14.3.3.3.1.m1.2.2.1.1.2.cmml">0.8</mn></mrow><mo id="A4.T14.3.3.3.1.m1.2.2.1.3" xref="A4.T14.3.3.3.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.3.3.3.1.m1.1.1" xref="A4.T14.3.3.3.1.m1.1.1.cmml">1.1</mn><mo id="A4.T14.3.3.3.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.3.3.3.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.3.3.3.1.m1.2b"><interval closure="open" id="A4.T14.3.3.3.1.m1.2.2.2.cmml" xref="A4.T14.3.3.3.1.m1.2.2.1"><apply id="A4.T14.3.3.3.1.m1.2.2.1.1.cmml" xref="A4.T14.3.3.3.1.m1.2.2.1.1"><minus id="A4.T14.3.3.3.1.m1.2.2.1.1.1.cmml" xref="A4.T14.3.3.3.1.m1.2.2.1.1"></minus><cn id="A4.T14.3.3.3.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.3.3.3.1.m1.2.2.1.1.2">0.8</cn></apply><cn id="A4.T14.3.3.3.1.m1.1.1.cmml" type="float" xref="A4.T14.3.3.3.1.m1.1.1">1.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.3.3.3.1.m1.2c">(-0.8,1.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.3.3.3.1.m1.2d">( - 0.8 , 1.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.3.3.3.10" style="padding:1pt 10.0pt;">271</td>
</tr>
<tr class="ltx_tr" id="A4.T14.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.4.4.4.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.4" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.5" style="padding:1pt 10.0pt;">0.294</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.6" style="padding:1pt 10.0pt;">0.617</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.7" style="padding:1pt 10.0pt;">6.650</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.8" style="padding:1pt 10.0pt;">298</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.9" style="padding:1pt 10.0pt;">82.7</td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.1" style="padding:1pt 10.0pt;"><math alttext="(-1.5,1.4)" class="ltx_Math" display="inline" id="A4.T14.4.4.4.1.m1.2"><semantics id="A4.T14.4.4.4.1.m1.2a"><mrow id="A4.T14.4.4.4.1.m1.2.2.1" xref="A4.T14.4.4.4.1.m1.2.2.2.cmml"><mo id="A4.T14.4.4.4.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.4.4.4.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.4.4.4.1.m1.2.2.1.1" xref="A4.T14.4.4.4.1.m1.2.2.1.1.cmml"><mo id="A4.T14.4.4.4.1.m1.2.2.1.1a" xref="A4.T14.4.4.4.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.4.4.4.1.m1.2.2.1.1.2" xref="A4.T14.4.4.4.1.m1.2.2.1.1.2.cmml">1.5</mn></mrow><mo id="A4.T14.4.4.4.1.m1.2.2.1.3" xref="A4.T14.4.4.4.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.4.4.4.1.m1.1.1" xref="A4.T14.4.4.4.1.m1.1.1.cmml">1.4</mn><mo id="A4.T14.4.4.4.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.4.4.4.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.4.4.4.1.m1.2b"><interval closure="open" id="A4.T14.4.4.4.1.m1.2.2.2.cmml" xref="A4.T14.4.4.4.1.m1.2.2.1"><apply id="A4.T14.4.4.4.1.m1.2.2.1.1.cmml" xref="A4.T14.4.4.4.1.m1.2.2.1.1"><minus id="A4.T14.4.4.4.1.m1.2.2.1.1.1.cmml" xref="A4.T14.4.4.4.1.m1.2.2.1.1"></minus><cn id="A4.T14.4.4.4.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.4.4.4.1.m1.2.2.1.1.2">1.5</cn></apply><cn id="A4.T14.4.4.4.1.m1.1.1.cmml" type="float" xref="A4.T14.4.4.4.1.m1.1.1">1.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.4.4.4.1.m1.2c">(-1.5,1.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.4.4.4.1.m1.2d">( - 1.5 , 1.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.4.4.4.10" style="padding:1pt 10.0pt;">278</td>
</tr>
<tr class="ltx_tr" id="A4.T14.5.5.5">
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.5.5.5.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.5" style="padding:1pt 10.0pt;">0.338</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.6" style="padding:1pt 10.0pt;">0.721</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.7" style="padding:1pt 10.0pt;">6.850</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.8" style="padding:1pt 10.0pt;">312</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.9" style="padding:1pt 10.0pt;">84.7</td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,1.3)" class="ltx_Math" display="inline" id="A4.T14.5.5.5.1.m1.2"><semantics id="A4.T14.5.5.5.1.m1.2a"><mrow id="A4.T14.5.5.5.1.m1.2.2.1" xref="A4.T14.5.5.5.1.m1.2.2.2.cmml"><mo id="A4.T14.5.5.5.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.5.5.5.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.5.5.5.1.m1.2.2.1.1" xref="A4.T14.5.5.5.1.m1.2.2.1.1.cmml"><mo id="A4.T14.5.5.5.1.m1.2.2.1.1a" xref="A4.T14.5.5.5.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.5.5.5.1.m1.2.2.1.1.2" xref="A4.T14.5.5.5.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T14.5.5.5.1.m1.2.2.1.3" xref="A4.T14.5.5.5.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.5.5.5.1.m1.1.1" xref="A4.T14.5.5.5.1.m1.1.1.cmml">1.3</mn><mo id="A4.T14.5.5.5.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.5.5.5.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.5.5.5.1.m1.2b"><interval closure="open" id="A4.T14.5.5.5.1.m1.2.2.2.cmml" xref="A4.T14.5.5.5.1.m1.2.2.1"><apply id="A4.T14.5.5.5.1.m1.2.2.1.1.cmml" xref="A4.T14.5.5.5.1.m1.2.2.1.1"><minus id="A4.T14.5.5.5.1.m1.2.2.1.1.1.cmml" xref="A4.T14.5.5.5.1.m1.2.2.1.1"></minus><cn id="A4.T14.5.5.5.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.5.5.5.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T14.5.5.5.1.m1.1.1.cmml" type="float" xref="A4.T14.5.5.5.1.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.5.5.5.1.m1.2c">(-1.6,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.5.5.5.1.m1.2d">( - 1.6 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.5.5.5.10" style="padding:1pt 10.0pt;">266</td>
</tr>
<tr class="ltx_tr" id="A4.T14.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.6.6.6.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.5" style="padding:1pt 10.0pt;">0.391</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.6" style="padding:1pt 10.0pt;">0.795</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.7" style="padding:1pt 10.0pt;">6.781</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.8" style="padding:1pt 10.0pt;">286</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.9" style="padding:1pt 10.0pt;">83.0</td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.1" style="padding:1pt 10.0pt;"><math alttext="(-1.4,1.4)" class="ltx_Math" display="inline" id="A4.T14.6.6.6.1.m1.2"><semantics id="A4.T14.6.6.6.1.m1.2a"><mrow id="A4.T14.6.6.6.1.m1.2.2.1" xref="A4.T14.6.6.6.1.m1.2.2.2.cmml"><mo id="A4.T14.6.6.6.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.6.6.6.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.6.6.6.1.m1.2.2.1.1" xref="A4.T14.6.6.6.1.m1.2.2.1.1.cmml"><mo id="A4.T14.6.6.6.1.m1.2.2.1.1a" xref="A4.T14.6.6.6.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.6.6.6.1.m1.2.2.1.1.2" xref="A4.T14.6.6.6.1.m1.2.2.1.1.2.cmml">1.4</mn></mrow><mo id="A4.T14.6.6.6.1.m1.2.2.1.3" xref="A4.T14.6.6.6.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.6.6.6.1.m1.1.1" xref="A4.T14.6.6.6.1.m1.1.1.cmml">1.4</mn><mo id="A4.T14.6.6.6.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.6.6.6.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.6.6.6.1.m1.2b"><interval closure="open" id="A4.T14.6.6.6.1.m1.2.2.2.cmml" xref="A4.T14.6.6.6.1.m1.2.2.1"><apply id="A4.T14.6.6.6.1.m1.2.2.1.1.cmml" xref="A4.T14.6.6.6.1.m1.2.2.1.1"><minus id="A4.T14.6.6.6.1.m1.2.2.1.1.1.cmml" xref="A4.T14.6.6.6.1.m1.2.2.1.1"></minus><cn id="A4.T14.6.6.6.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.6.6.6.1.m1.2.2.1.1.2">1.4</cn></apply><cn id="A4.T14.6.6.6.1.m1.1.1.cmml" type="float" xref="A4.T14.6.6.6.1.m1.1.1">1.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.6.6.6.1.m1.2c">(-1.4,1.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.6.6.6.1.m1.2d">( - 1.4 , 1.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.6.6.6.10" style="padding:1pt 10.0pt;">270</td>
</tr>
<tr class="ltx_tr" id="A4.T14.7.7.7">
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.7.7.7.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.5" style="padding:1pt 10.0pt;">0.354</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.6" style="padding:1pt 10.0pt;">0.707</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.7" style="padding:1pt 10.0pt;">6.781</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.8" style="padding:1pt 10.0pt;">308</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.9" style="padding:1pt 10.0pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.1" style="padding:1pt 10.0pt;"><math alttext="(-1.5,1.3)" class="ltx_Math" display="inline" id="A4.T14.7.7.7.1.m1.2"><semantics id="A4.T14.7.7.7.1.m1.2a"><mrow id="A4.T14.7.7.7.1.m1.2.2.1" xref="A4.T14.7.7.7.1.m1.2.2.2.cmml"><mo id="A4.T14.7.7.7.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.7.7.7.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.7.7.7.1.m1.2.2.1.1" xref="A4.T14.7.7.7.1.m1.2.2.1.1.cmml"><mo id="A4.T14.7.7.7.1.m1.2.2.1.1a" xref="A4.T14.7.7.7.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.7.7.7.1.m1.2.2.1.1.2" xref="A4.T14.7.7.7.1.m1.2.2.1.1.2.cmml">1.5</mn></mrow><mo id="A4.T14.7.7.7.1.m1.2.2.1.3" xref="A4.T14.7.7.7.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.7.7.7.1.m1.1.1" xref="A4.T14.7.7.7.1.m1.1.1.cmml">1.3</mn><mo id="A4.T14.7.7.7.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.7.7.7.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.7.7.7.1.m1.2b"><interval closure="open" id="A4.T14.7.7.7.1.m1.2.2.2.cmml" xref="A4.T14.7.7.7.1.m1.2.2.1"><apply id="A4.T14.7.7.7.1.m1.2.2.1.1.cmml" xref="A4.T14.7.7.7.1.m1.2.2.1.1"><minus id="A4.T14.7.7.7.1.m1.2.2.1.1.1.cmml" xref="A4.T14.7.7.7.1.m1.2.2.1.1"></minus><cn id="A4.T14.7.7.7.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.7.7.7.1.m1.2.2.1.1.2">1.5</cn></apply><cn id="A4.T14.7.7.7.1.m1.1.1.cmml" type="float" xref="A4.T14.7.7.7.1.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.7.7.7.1.m1.2c">(-1.5,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.7.7.7.1.m1.2d">( - 1.5 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.7.7.7.10" style="padding:1pt 10.0pt;">275</td>
</tr>
<tr class="ltx_tr" id="A4.T14.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T14.8.8.8.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.5" style="padding:1pt 10.0pt;">0.355</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.6" style="padding:1pt 10.0pt;">0.742</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.7" style="padding:1pt 10.0pt;">6.838</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.8" style="padding:1pt 10.0pt;">297</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.9" style="padding:1pt 10.0pt;">84.8</td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.1" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.2)" class="ltx_Math" display="inline" id="A4.T14.8.8.8.1.m1.2"><semantics id="A4.T14.8.8.8.1.m1.2a"><mrow id="A4.T14.8.8.8.1.m1.2.2.1" xref="A4.T14.8.8.8.1.m1.2.2.2.cmml"><mo id="A4.T14.8.8.8.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.8.8.8.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.8.8.8.1.m1.2.2.1.1" xref="A4.T14.8.8.8.1.m1.2.2.1.1.cmml"><mo id="A4.T14.8.8.8.1.m1.2.2.1.1a" xref="A4.T14.8.8.8.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.8.8.8.1.m1.2.2.1.1.2" xref="A4.T14.8.8.8.1.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T14.8.8.8.1.m1.2.2.1.3" xref="A4.T14.8.8.8.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.8.8.8.1.m1.1.1" xref="A4.T14.8.8.8.1.m1.1.1.cmml">1.2</mn><mo id="A4.T14.8.8.8.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.8.8.8.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.8.8.8.1.m1.2b"><interval closure="open" id="A4.T14.8.8.8.1.m1.2.2.2.cmml" xref="A4.T14.8.8.8.1.m1.2.2.1"><apply id="A4.T14.8.8.8.1.m1.2.2.1.1.cmml" xref="A4.T14.8.8.8.1.m1.2.2.1.1"><minus id="A4.T14.8.8.8.1.m1.2.2.1.1.1.cmml" xref="A4.T14.8.8.8.1.m1.2.2.1.1"></minus><cn id="A4.T14.8.8.8.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.8.8.8.1.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T14.8.8.8.1.m1.1.1.cmml" type="float" xref="A4.T14.8.8.8.1.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.8.8.8.1.m1.2c">(-1.3,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.8.8.8.1.m1.2d">( - 1.3 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T14.8.8.8.10" style="padding:1pt 10.0pt;">275</td>
</tr>
<tr class="ltx_tr" id="A4.T14.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.5" style="padding:1pt 10.0pt;">0.351</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.6" style="padding:1pt 10.0pt;">0.754</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.7" style="padding:1pt 10.0pt;">6.638</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.8" style="padding:1pt 10.0pt;">289</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.9" style="padding:1pt 10.0pt;">81.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.1" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.3)" class="ltx_Math" display="inline" id="A4.T14.9.9.9.1.m1.2"><semantics id="A4.T14.9.9.9.1.m1.2a"><mrow id="A4.T14.9.9.9.1.m1.2.2.1" xref="A4.T14.9.9.9.1.m1.2.2.2.cmml"><mo id="A4.T14.9.9.9.1.m1.2.2.1.2" stretchy="false" xref="A4.T14.9.9.9.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T14.9.9.9.1.m1.2.2.1.1" xref="A4.T14.9.9.9.1.m1.2.2.1.1.cmml"><mo id="A4.T14.9.9.9.1.m1.2.2.1.1a" xref="A4.T14.9.9.9.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T14.9.9.9.1.m1.2.2.1.1.2" xref="A4.T14.9.9.9.1.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T14.9.9.9.1.m1.2.2.1.3" xref="A4.T14.9.9.9.1.m1.2.2.2.cmml">,</mo><mn id="A4.T14.9.9.9.1.m1.1.1" xref="A4.T14.9.9.9.1.m1.1.1.cmml">1.3</mn><mo id="A4.T14.9.9.9.1.m1.2.2.1.4" stretchy="false" xref="A4.T14.9.9.9.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T14.9.9.9.1.m1.2b"><interval closure="open" id="A4.T14.9.9.9.1.m1.2.2.2.cmml" xref="A4.T14.9.9.9.1.m1.2.2.1"><apply id="A4.T14.9.9.9.1.m1.2.2.1.1.cmml" xref="A4.T14.9.9.9.1.m1.2.2.1.1"><minus id="A4.T14.9.9.9.1.m1.2.2.1.1.1.cmml" xref="A4.T14.9.9.9.1.m1.2.2.1.1"></minus><cn id="A4.T14.9.9.9.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T14.9.9.9.1.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T14.9.9.9.1.m1.1.1.cmml" type="float" xref="A4.T14.9.9.9.1.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T14.9.9.9.1.m1.2c">(-1.3,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T14.9.9.9.1.m1.2d">( - 1.3 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T14.9.9.9.10" style="padding:1pt 10.0pt;">276</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the performance of the Llama-3b-instruct model under full fine-tuning, using the CROWDSELECT method.  It examines how different combinations of weights assigned to the three base metrics (Difficulty, Separability, and Stability) impact the model's performance on the MT-Bench and Arena-Hard benchmarks. The results show the effects of varying the weights for each of the metrics while using the clustering technique incorporated within the CROWDSELECT method. The table helps determine the optimal balance between the metrics for improved model performance.
> <details>
> <summary>read the caption</summary>
> Table 14: Performance comparison of fft-version of Llama-3b-instruct on different coefficient combinations for multiple metrics with clustering.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T15.9.9">
<tr class="ltx_tr" id="A4.T15.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T15.9.9.10.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.10.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T15.9.9.10.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.10.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T15.9.9.10.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.10.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T15.9.9.10.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.10.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T15.9.9.10.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.10.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.9.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.1" style="padding:1pt 10.0pt;">Diff</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T15.9.9.11.2" style="padding:1pt 10.0pt;">Sep</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.3" style="padding:1pt 10.0pt;">Stab</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.11.4.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.11.5.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.11.6.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.11.7.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.9.9.11.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.9.9.11.8.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T15.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T15.1.1.1.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.5" style="padding:1pt 10.0pt;">0.354</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.6" style="padding:1pt 10.0pt;">0.776</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.7" style="padding:1pt 10.0pt;">6.856</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.8" style="padding:1pt 10.0pt;">359</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.9" style="padding:1pt 10.0pt;">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.1" style="padding:1pt 10.0pt;"><math alttext="(-1.7,1.2)" class="ltx_Math" display="inline" id="A4.T15.1.1.1.1.m1.2"><semantics id="A4.T15.1.1.1.1.m1.2a"><mrow id="A4.T15.1.1.1.1.m1.2.2.1" xref="A4.T15.1.1.1.1.m1.2.2.2.cmml"><mo id="A4.T15.1.1.1.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.1.1.1.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.1.1.1.1.m1.2.2.1.1" xref="A4.T15.1.1.1.1.m1.2.2.1.1.cmml"><mo id="A4.T15.1.1.1.1.m1.2.2.1.1a" xref="A4.T15.1.1.1.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.1.1.1.1.m1.2.2.1.1.2" xref="A4.T15.1.1.1.1.m1.2.2.1.1.2.cmml">1.7</mn></mrow><mo id="A4.T15.1.1.1.1.m1.2.2.1.3" xref="A4.T15.1.1.1.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.1.1.1.1.m1.1.1" xref="A4.T15.1.1.1.1.m1.1.1.cmml">1.2</mn><mo id="A4.T15.1.1.1.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.1.1.1.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.1.1.1.1.m1.2b"><interval closure="open" id="A4.T15.1.1.1.1.m1.2.2.2.cmml" xref="A4.T15.1.1.1.1.m1.2.2.1"><apply id="A4.T15.1.1.1.1.m1.2.2.1.1.cmml" xref="A4.T15.1.1.1.1.m1.2.2.1.1"><minus id="A4.T15.1.1.1.1.m1.2.2.1.1.1.cmml" xref="A4.T15.1.1.1.1.m1.2.2.1.1"></minus><cn id="A4.T15.1.1.1.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.1.1.1.1.m1.2.2.1.1.2">1.7</cn></apply><cn id="A4.T15.1.1.1.1.m1.1.1.cmml" type="float" xref="A4.T15.1.1.1.1.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.1.1.1.1.m1.2c">(-1.7,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.1.1.1.1.m1.2d">( - 1.7 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T15.1.1.1.10" style="padding:1pt 10.0pt;">259</td>
</tr>
<tr class="ltx_tr" id="A4.T15.2.2.2">
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.2.2.2.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.5" style="padding:1pt 10.0pt;">0.432</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.6" style="padding:1pt 10.0pt;">0.861</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.7" style="padding:1pt 10.0pt;">7.138</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.8" style="padding:1pt 10.0pt;">383</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.9" style="padding:1pt 10.0pt;">81.6</td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.1" style="padding:1pt 10.0pt;"><math alttext="(-1.4,1.5)" class="ltx_Math" display="inline" id="A4.T15.2.2.2.1.m1.2"><semantics id="A4.T15.2.2.2.1.m1.2a"><mrow id="A4.T15.2.2.2.1.m1.2.2.1" xref="A4.T15.2.2.2.1.m1.2.2.2.cmml"><mo id="A4.T15.2.2.2.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.2.2.2.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.2.2.2.1.m1.2.2.1.1" xref="A4.T15.2.2.2.1.m1.2.2.1.1.cmml"><mo id="A4.T15.2.2.2.1.m1.2.2.1.1a" xref="A4.T15.2.2.2.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.2.2.2.1.m1.2.2.1.1.2" xref="A4.T15.2.2.2.1.m1.2.2.1.1.2.cmml">1.4</mn></mrow><mo id="A4.T15.2.2.2.1.m1.2.2.1.3" xref="A4.T15.2.2.2.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.2.2.2.1.m1.1.1" xref="A4.T15.2.2.2.1.m1.1.1.cmml">1.5</mn><mo id="A4.T15.2.2.2.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.2.2.2.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.2.2.2.1.m1.2b"><interval closure="open" id="A4.T15.2.2.2.1.m1.2.2.2.cmml" xref="A4.T15.2.2.2.1.m1.2.2.1"><apply id="A4.T15.2.2.2.1.m1.2.2.1.1.cmml" xref="A4.T15.2.2.2.1.m1.2.2.1.1"><minus id="A4.T15.2.2.2.1.m1.2.2.1.1.1.cmml" xref="A4.T15.2.2.2.1.m1.2.2.1.1"></minus><cn id="A4.T15.2.2.2.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.2.2.2.1.m1.2.2.1.1.2">1.4</cn></apply><cn id="A4.T15.2.2.2.1.m1.1.1.cmml" type="float" xref="A4.T15.2.2.2.1.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.2.2.2.1.m1.2c">(-1.4,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.2.2.2.1.m1.2d">( - 1.4 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.2.2.2.10" style="padding:1pt 10.0pt;">259</td>
</tr>
<tr class="ltx_tr" id="A4.T15.3.3.3">
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.3.3.3.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.5" style="padding:1pt 10.0pt;">0.371</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.6" style="padding:1pt 10.0pt;">0.776</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.7" style="padding:1pt 10.0pt;">7.131</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.8" style="padding:1pt 10.0pt;">366</td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.9" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.3.3.3.9.1">85.2</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.1" style="padding:1pt 10.0pt;"><math alttext="(-1.2,1.1)" class="ltx_Math" display="inline" id="A4.T15.3.3.3.1.m1.2"><semantics id="A4.T15.3.3.3.1.m1.2a"><mrow id="A4.T15.3.3.3.1.m1.2.2.1" xref="A4.T15.3.3.3.1.m1.2.2.2.cmml"><mo id="A4.T15.3.3.3.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.3.3.3.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.3.3.3.1.m1.2.2.1.1" xref="A4.T15.3.3.3.1.m1.2.2.1.1.cmml"><mo id="A4.T15.3.3.3.1.m1.2.2.1.1a" xref="A4.T15.3.3.3.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.3.3.3.1.m1.2.2.1.1.2" xref="A4.T15.3.3.3.1.m1.2.2.1.1.2.cmml">1.2</mn></mrow><mo id="A4.T15.3.3.3.1.m1.2.2.1.3" xref="A4.T15.3.3.3.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.3.3.3.1.m1.1.1" xref="A4.T15.3.3.3.1.m1.1.1.cmml">1.1</mn><mo id="A4.T15.3.3.3.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.3.3.3.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.3.3.3.1.m1.2b"><interval closure="open" id="A4.T15.3.3.3.1.m1.2.2.2.cmml" xref="A4.T15.3.3.3.1.m1.2.2.1"><apply id="A4.T15.3.3.3.1.m1.2.2.1.1.cmml" xref="A4.T15.3.3.3.1.m1.2.2.1.1"><minus id="A4.T15.3.3.3.1.m1.2.2.1.1.1.cmml" xref="A4.T15.3.3.3.1.m1.2.2.1.1"></minus><cn id="A4.T15.3.3.3.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.3.3.3.1.m1.2.2.1.1.2">1.2</cn></apply><cn id="A4.T15.3.3.3.1.m1.1.1.cmml" type="float" xref="A4.T15.3.3.3.1.m1.1.1">1.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.3.3.3.1.m1.2c">(-1.2,1.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.3.3.3.1.m1.2d">( - 1.2 , 1.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.3.3.3.10" style="padding:1pt 10.0pt;">262</td>
</tr>
<tr class="ltx_tr" id="A4.T15.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.4.4.4.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.4" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.5" style="padding:1pt 10.0pt;">0.310</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.6" style="padding:1pt 10.0pt;">0.645</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.7" style="padding:1pt 10.0pt;">7.231</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.8" style="padding:1pt 10.0pt;">376</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.9" style="padding:1pt 10.0pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,1.5)" class="ltx_Math" display="inline" id="A4.T15.4.4.4.1.m1.2"><semantics id="A4.T15.4.4.4.1.m1.2a"><mrow id="A4.T15.4.4.4.1.m1.2.2.1" xref="A4.T15.4.4.4.1.m1.2.2.2.cmml"><mo id="A4.T15.4.4.4.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.4.4.4.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.4.4.4.1.m1.2.2.1.1" xref="A4.T15.4.4.4.1.m1.2.2.1.1.cmml"><mo id="A4.T15.4.4.4.1.m1.2.2.1.1a" xref="A4.T15.4.4.4.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.4.4.4.1.m1.2.2.1.1.2" xref="A4.T15.4.4.4.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T15.4.4.4.1.m1.2.2.1.3" xref="A4.T15.4.4.4.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.4.4.4.1.m1.1.1" xref="A4.T15.4.4.4.1.m1.1.1.cmml">1.5</mn><mo id="A4.T15.4.4.4.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.4.4.4.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.4.4.4.1.m1.2b"><interval closure="open" id="A4.T15.4.4.4.1.m1.2.2.2.cmml" xref="A4.T15.4.4.4.1.m1.2.2.1"><apply id="A4.T15.4.4.4.1.m1.2.2.1.1.cmml" xref="A4.T15.4.4.4.1.m1.2.2.1.1"><minus id="A4.T15.4.4.4.1.m1.2.2.1.1.1.cmml" xref="A4.T15.4.4.4.1.m1.2.2.1.1"></minus><cn id="A4.T15.4.4.4.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.4.4.4.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T15.4.4.4.1.m1.1.1.cmml" type="float" xref="A4.T15.4.4.4.1.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.4.4.4.1.m1.2c">(-1.6,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.4.4.4.1.m1.2d">( - 1.6 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.4.4.4.10" style="padding:1pt 10.0pt;">261</td>
</tr>
<tr class="ltx_tr" id="A4.T15.5.5.5">
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.5.5.5.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.5" style="padding:1pt 10.0pt;">0.369</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.6" style="padding:1pt 10.0pt;">0.755</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.7" style="padding:1pt 10.0pt;">6.981</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.8" style="padding:1pt 10.0pt;">387</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.9" style="padding:1pt 10.0pt;">83.6</td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.1" style="padding:1pt 10.0pt;"><math alttext="(-2.0,1.2)" class="ltx_Math" display="inline" id="A4.T15.5.5.5.1.m1.2"><semantics id="A4.T15.5.5.5.1.m1.2a"><mrow id="A4.T15.5.5.5.1.m1.2.2.1" xref="A4.T15.5.5.5.1.m1.2.2.2.cmml"><mo id="A4.T15.5.5.5.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.5.5.5.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.5.5.5.1.m1.2.2.1.1" xref="A4.T15.5.5.5.1.m1.2.2.1.1.cmml"><mo id="A4.T15.5.5.5.1.m1.2.2.1.1a" xref="A4.T15.5.5.5.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.5.5.5.1.m1.2.2.1.1.2" xref="A4.T15.5.5.5.1.m1.2.2.1.1.2.cmml">2.0</mn></mrow><mo id="A4.T15.5.5.5.1.m1.2.2.1.3" xref="A4.T15.5.5.5.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.5.5.5.1.m1.1.1" xref="A4.T15.5.5.5.1.m1.1.1.cmml">1.2</mn><mo id="A4.T15.5.5.5.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.5.5.5.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.5.5.5.1.m1.2b"><interval closure="open" id="A4.T15.5.5.5.1.m1.2.2.2.cmml" xref="A4.T15.5.5.5.1.m1.2.2.1"><apply id="A4.T15.5.5.5.1.m1.2.2.1.1.cmml" xref="A4.T15.5.5.5.1.m1.2.2.1.1"><minus id="A4.T15.5.5.5.1.m1.2.2.1.1.1.cmml" xref="A4.T15.5.5.5.1.m1.2.2.1.1"></minus><cn id="A4.T15.5.5.5.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.5.5.5.1.m1.2.2.1.1.2">2.0</cn></apply><cn id="A4.T15.5.5.5.1.m1.1.1.cmml" type="float" xref="A4.T15.5.5.5.1.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.5.5.5.1.m1.2c">(-2.0,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.5.5.5.1.m1.2d">( - 2.0 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.5.5.5.10" style="padding:1pt 10.0pt;">260</td>
</tr>
<tr class="ltx_tr" id="A4.T15.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.6.6.6.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.5" style="padding:1pt 10.0pt;">0.430</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.6" style="padding:1pt 10.0pt;">0.872</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T15.6.6.6.7.1">7.371</span></td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.8" style="padding:1pt 10.0pt;">390</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.9" style="padding:1pt 10.0pt;">82.4</td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.1" style="padding:1pt 10.0pt;"><math alttext="(-1.7,1.5)" class="ltx_Math" display="inline" id="A4.T15.6.6.6.1.m1.2"><semantics id="A4.T15.6.6.6.1.m1.2a"><mrow id="A4.T15.6.6.6.1.m1.2.2.1" xref="A4.T15.6.6.6.1.m1.2.2.2.cmml"><mo id="A4.T15.6.6.6.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.6.6.6.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.6.6.6.1.m1.2.2.1.1" xref="A4.T15.6.6.6.1.m1.2.2.1.1.cmml"><mo id="A4.T15.6.6.6.1.m1.2.2.1.1a" xref="A4.T15.6.6.6.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.6.6.6.1.m1.2.2.1.1.2" xref="A4.T15.6.6.6.1.m1.2.2.1.1.2.cmml">1.7</mn></mrow><mo id="A4.T15.6.6.6.1.m1.2.2.1.3" xref="A4.T15.6.6.6.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.6.6.6.1.m1.1.1" xref="A4.T15.6.6.6.1.m1.1.1.cmml">1.5</mn><mo id="A4.T15.6.6.6.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.6.6.6.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.6.6.6.1.m1.2b"><interval closure="open" id="A4.T15.6.6.6.1.m1.2.2.2.cmml" xref="A4.T15.6.6.6.1.m1.2.2.1"><apply id="A4.T15.6.6.6.1.m1.2.2.1.1.cmml" xref="A4.T15.6.6.6.1.m1.2.2.1.1"><minus id="A4.T15.6.6.6.1.m1.2.2.1.1.1.cmml" xref="A4.T15.6.6.6.1.m1.2.2.1.1"></minus><cn id="A4.T15.6.6.6.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.6.6.6.1.m1.2.2.1.1.2">1.7</cn></apply><cn id="A4.T15.6.6.6.1.m1.1.1.cmml" type="float" xref="A4.T15.6.6.6.1.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.6.6.6.1.m1.2c">(-1.7,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.6.6.6.1.m1.2d">( - 1.7 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.6.6.6.10" style="padding:1pt 10.0pt;">260</td>
</tr>
<tr class="ltx_tr" id="A4.T15.7.7.7">
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.7.7.7.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.5" style="padding:1pt 10.0pt;">0.431</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.6" style="padding:1pt 10.0pt;">0.874</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.7" style="padding:1pt 10.0pt;">7.025</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.8" style="padding:1pt 10.0pt;">397</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.9" style="padding:1pt 10.0pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.1" style="padding:1pt 10.0pt;"><math alttext="(-1.1,1.9)" class="ltx_Math" display="inline" id="A4.T15.7.7.7.1.m1.2"><semantics id="A4.T15.7.7.7.1.m1.2a"><mrow id="A4.T15.7.7.7.1.m1.2.2.1" xref="A4.T15.7.7.7.1.m1.2.2.2.cmml"><mo id="A4.T15.7.7.7.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.7.7.7.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.7.7.7.1.m1.2.2.1.1" xref="A4.T15.7.7.7.1.m1.2.2.1.1.cmml"><mo id="A4.T15.7.7.7.1.m1.2.2.1.1a" xref="A4.T15.7.7.7.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.7.7.7.1.m1.2.2.1.1.2" xref="A4.T15.7.7.7.1.m1.2.2.1.1.2.cmml">1.1</mn></mrow><mo id="A4.T15.7.7.7.1.m1.2.2.1.3" xref="A4.T15.7.7.7.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.7.7.7.1.m1.1.1" xref="A4.T15.7.7.7.1.m1.1.1.cmml">1.9</mn><mo id="A4.T15.7.7.7.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.7.7.7.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.7.7.7.1.m1.2b"><interval closure="open" id="A4.T15.7.7.7.1.m1.2.2.2.cmml" xref="A4.T15.7.7.7.1.m1.2.2.1"><apply id="A4.T15.7.7.7.1.m1.2.2.1.1.cmml" xref="A4.T15.7.7.7.1.m1.2.2.1.1"><minus id="A4.T15.7.7.7.1.m1.2.2.1.1.1.cmml" xref="A4.T15.7.7.7.1.m1.2.2.1.1"></minus><cn id="A4.T15.7.7.7.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.7.7.7.1.m1.2.2.1.1.2">1.1</cn></apply><cn id="A4.T15.7.7.7.1.m1.1.1.cmml" type="float" xref="A4.T15.7.7.7.1.m1.1.1">1.9</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.7.7.7.1.m1.2c">(-1.1,1.9)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.7.7.7.1.m1.2d">( - 1.1 , 1.9 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.7.7.7.10" style="padding:1pt 10.0pt;">260</td>
</tr>
<tr class="ltx_tr" id="A4.T15.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T15.8.8.8.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.5" style="padding:1pt 10.0pt;">0.431</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.6" style="padding:1pt 10.0pt;">0.888</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.7" style="padding:1pt 10.0pt;">6.963</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.8" style="padding:1pt 10.0pt;">377</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.9" style="padding:1pt 10.0pt;">80.6</td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.1" style="padding:1pt 10.0pt;"><math alttext="(-1.8,1.5)" class="ltx_Math" display="inline" id="A4.T15.8.8.8.1.m1.2"><semantics id="A4.T15.8.8.8.1.m1.2a"><mrow id="A4.T15.8.8.8.1.m1.2.2.1" xref="A4.T15.8.8.8.1.m1.2.2.2.cmml"><mo id="A4.T15.8.8.8.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.8.8.8.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.8.8.8.1.m1.2.2.1.1" xref="A4.T15.8.8.8.1.m1.2.2.1.1.cmml"><mo id="A4.T15.8.8.8.1.m1.2.2.1.1a" xref="A4.T15.8.8.8.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.8.8.8.1.m1.2.2.1.1.2" xref="A4.T15.8.8.8.1.m1.2.2.1.1.2.cmml">1.8</mn></mrow><mo id="A4.T15.8.8.8.1.m1.2.2.1.3" xref="A4.T15.8.8.8.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.8.8.8.1.m1.1.1" xref="A4.T15.8.8.8.1.m1.1.1.cmml">1.5</mn><mo id="A4.T15.8.8.8.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.8.8.8.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.8.8.8.1.m1.2b"><interval closure="open" id="A4.T15.8.8.8.1.m1.2.2.2.cmml" xref="A4.T15.8.8.8.1.m1.2.2.1"><apply id="A4.T15.8.8.8.1.m1.2.2.1.1.cmml" xref="A4.T15.8.8.8.1.m1.2.2.1.1"><minus id="A4.T15.8.8.8.1.m1.2.2.1.1.1.cmml" xref="A4.T15.8.8.8.1.m1.2.2.1.1"></minus><cn id="A4.T15.8.8.8.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.8.8.8.1.m1.2.2.1.1.2">1.8</cn></apply><cn id="A4.T15.8.8.8.1.m1.1.1.cmml" type="float" xref="A4.T15.8.8.8.1.m1.1.1">1.5</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.8.8.8.1.m1.2c">(-1.8,1.5)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.8.8.8.1.m1.2d">( - 1.8 , 1.5 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T15.8.8.8.10" style="padding:1pt 10.0pt;">259</td>
</tr>
<tr class="ltx_tr" id="A4.T15.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.5" style="padding:1pt 10.0pt;">0.433</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.6" style="padding:1pt 10.0pt;">0.869</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.7" style="padding:1pt 10.0pt;">6.956</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.8" style="padding:1pt 10.0pt;">377</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.9" style="padding:1pt 10.0pt;">82.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.1" style="padding:1pt 10.0pt;"><math alttext="(-1.8,1.3)" class="ltx_Math" display="inline" id="A4.T15.9.9.9.1.m1.2"><semantics id="A4.T15.9.9.9.1.m1.2a"><mrow id="A4.T15.9.9.9.1.m1.2.2.1" xref="A4.T15.9.9.9.1.m1.2.2.2.cmml"><mo id="A4.T15.9.9.9.1.m1.2.2.1.2" stretchy="false" xref="A4.T15.9.9.9.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T15.9.9.9.1.m1.2.2.1.1" xref="A4.T15.9.9.9.1.m1.2.2.1.1.cmml"><mo id="A4.T15.9.9.9.1.m1.2.2.1.1a" xref="A4.T15.9.9.9.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T15.9.9.9.1.m1.2.2.1.1.2" xref="A4.T15.9.9.9.1.m1.2.2.1.1.2.cmml">1.8</mn></mrow><mo id="A4.T15.9.9.9.1.m1.2.2.1.3" xref="A4.T15.9.9.9.1.m1.2.2.2.cmml">,</mo><mn id="A4.T15.9.9.9.1.m1.1.1" xref="A4.T15.9.9.9.1.m1.1.1.cmml">1.3</mn><mo id="A4.T15.9.9.9.1.m1.2.2.1.4" stretchy="false" xref="A4.T15.9.9.9.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T15.9.9.9.1.m1.2b"><interval closure="open" id="A4.T15.9.9.9.1.m1.2.2.2.cmml" xref="A4.T15.9.9.9.1.m1.2.2.1"><apply id="A4.T15.9.9.9.1.m1.2.2.1.1.cmml" xref="A4.T15.9.9.9.1.m1.2.2.1.1"><minus id="A4.T15.9.9.9.1.m1.2.2.1.1.1.cmml" xref="A4.T15.9.9.9.1.m1.2.2.1.1"></minus><cn id="A4.T15.9.9.9.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T15.9.9.9.1.m1.2.2.1.1.2">1.8</cn></apply><cn id="A4.T15.9.9.9.1.m1.1.1.cmml" type="float" xref="A4.T15.9.9.9.1.m1.1.1">1.3</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T15.9.9.9.1.m1.2c">(-1.8,1.3)</annotation><annotation encoding="application/x-llamapun" id="A4.T15.9.9.9.1.m1.2d">( - 1.8 , 1.3 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T15.9.9.9.10" style="padding:1pt 10.0pt;">260</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of fine-tuning the Qwen-3b-instruct model using different combinations of weights for the three evaluation metrics (Difficulty, Separability, and Stability) incorporated in the CROWDSELECT method.  It shows how different weighting schemes affect the model's performance on the MT-Bench and Arena-Hard benchmarks, highlighting the impact of the various metrics on overall instruction-following capabilities. The results are presented in terms of training loss, evaluation loss, MT-Bench score, Arena-Hard score, and average token count.  The table aids in identifying the optimal weighting scheme for the metrics that best balances performance across both benchmarks.
> <details>
> <summary>read the caption</summary>
> Table 15: Performance comparison of fft-version of Qwen-3b-instruct with different coefficient combinations for multiple metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T16.9.9">
<tr class="ltx_tr" id="A4.T16.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T16.9.9.10.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.10.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T16.9.9.10.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.10.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T16.9.9.10.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.10.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T16.9.9.10.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.10.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T16.9.9.10.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.10.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.9.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.1" style="padding:1pt 10.0pt;">Diff</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T16.9.9.11.2" style="padding:1pt 10.0pt;">Sep</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.3" style="padding:1pt 10.0pt;">Stab</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.11.4.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.11.5.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.11.6.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.11.7.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.9.9.11.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.9.9.11.8.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T16.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T16.1.1.1.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.5" style="padding:1pt 10.0pt;">0.437</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.6" style="padding:1pt 10.0pt;">0.901</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.7" style="padding:1pt 10.0pt;">4.800</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.8" style="padding:1pt 10.0pt;">306</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.9" style="padding:1pt 10.0pt;">80.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.1" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.6)" class="ltx_Math" display="inline" id="A4.T16.1.1.1.1.m1.2"><semantics id="A4.T16.1.1.1.1.m1.2a"><mrow id="A4.T16.1.1.1.1.m1.2.2.1" xref="A4.T16.1.1.1.1.m1.2.2.2.cmml"><mo id="A4.T16.1.1.1.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.1.1.1.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.1.1.1.1.m1.2.2.1.1" xref="A4.T16.1.1.1.1.m1.2.2.1.1.cmml"><mo id="A4.T16.1.1.1.1.m1.2.2.1.1a" xref="A4.T16.1.1.1.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.1.1.1.1.m1.2.2.1.1.2" xref="A4.T16.1.1.1.1.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T16.1.1.1.1.m1.2.2.1.3" xref="A4.T16.1.1.1.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.1.1.1.1.m1.1.1" xref="A4.T16.1.1.1.1.m1.1.1.cmml">1.6</mn><mo id="A4.T16.1.1.1.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.1.1.1.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.1.1.1.1.m1.2b"><interval closure="open" id="A4.T16.1.1.1.1.m1.2.2.2.cmml" xref="A4.T16.1.1.1.1.m1.2.2.1"><apply id="A4.T16.1.1.1.1.m1.2.2.1.1.cmml" xref="A4.T16.1.1.1.1.m1.2.2.1.1"><minus id="A4.T16.1.1.1.1.m1.2.2.1.1.1.cmml" xref="A4.T16.1.1.1.1.m1.2.2.1.1"></minus><cn id="A4.T16.1.1.1.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.1.1.1.1.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T16.1.1.1.1.m1.1.1.cmml" type="float" xref="A4.T16.1.1.1.1.m1.1.1">1.6</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.1.1.1.1.m1.2c">(-1.3,1.6)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.1.1.1.1.m1.2d">( - 1.3 , 1.6 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T16.1.1.1.10" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T16.2.2.2">
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.2.2.2.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.5" style="padding:1pt 10.0pt;">0.497</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.6" style="padding:1pt 10.0pt;">1.007</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.7" style="padding:1pt 10.0pt;">5.019</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.8" style="padding:1pt 10.0pt;">319</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.9" style="padding:1pt 10.0pt;">80.3</td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.1" style="padding:1pt 10.0pt;"><math alttext="(-2.2,2.1)" class="ltx_Math" display="inline" id="A4.T16.2.2.2.1.m1.2"><semantics id="A4.T16.2.2.2.1.m1.2a"><mrow id="A4.T16.2.2.2.1.m1.2.2.1" xref="A4.T16.2.2.2.1.m1.2.2.2.cmml"><mo id="A4.T16.2.2.2.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.2.2.2.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.2.2.2.1.m1.2.2.1.1" xref="A4.T16.2.2.2.1.m1.2.2.1.1.cmml"><mo id="A4.T16.2.2.2.1.m1.2.2.1.1a" xref="A4.T16.2.2.2.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.2.2.2.1.m1.2.2.1.1.2" xref="A4.T16.2.2.2.1.m1.2.2.1.1.2.cmml">2.2</mn></mrow><mo id="A4.T16.2.2.2.1.m1.2.2.1.3" xref="A4.T16.2.2.2.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.2.2.2.1.m1.1.1" xref="A4.T16.2.2.2.1.m1.1.1.cmml">2.1</mn><mo id="A4.T16.2.2.2.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.2.2.2.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.2.2.2.1.m1.2b"><interval closure="open" id="A4.T16.2.2.2.1.m1.2.2.2.cmml" xref="A4.T16.2.2.2.1.m1.2.2.1"><apply id="A4.T16.2.2.2.1.m1.2.2.1.1.cmml" xref="A4.T16.2.2.2.1.m1.2.2.1.1"><minus id="A4.T16.2.2.2.1.m1.2.2.1.1.1.cmml" xref="A4.T16.2.2.2.1.m1.2.2.1.1"></minus><cn id="A4.T16.2.2.2.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.2.2.2.1.m1.2.2.1.1.2">2.2</cn></apply><cn id="A4.T16.2.2.2.1.m1.1.1.cmml" type="float" xref="A4.T16.2.2.2.1.m1.1.1">2.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.2.2.2.1.m1.2c">(-2.2,2.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.2.2.2.1.m1.2d">( - 2.2 , 2.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.2.2.2.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T16.3.3.3">
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.3.3.3.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.5" style="padding:1pt 10.0pt;">0.454</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.6" style="padding:1pt 10.0pt;">0.904</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.7" style="padding:1pt 10.0pt;">4.613</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.8" style="padding:1pt 10.0pt;">282</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.9" style="padding:1pt 10.0pt;">82.1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.1" style="padding:1pt 10.0pt;"><math alttext="(-1.8,1.8)" class="ltx_Math" display="inline" id="A4.T16.3.3.3.1.m1.2"><semantics id="A4.T16.3.3.3.1.m1.2a"><mrow id="A4.T16.3.3.3.1.m1.2.2.1" xref="A4.T16.3.3.3.1.m1.2.2.2.cmml"><mo id="A4.T16.3.3.3.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.3.3.3.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.3.3.3.1.m1.2.2.1.1" xref="A4.T16.3.3.3.1.m1.2.2.1.1.cmml"><mo id="A4.T16.3.3.3.1.m1.2.2.1.1a" xref="A4.T16.3.3.3.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.3.3.3.1.m1.2.2.1.1.2" xref="A4.T16.3.3.3.1.m1.2.2.1.1.2.cmml">1.8</mn></mrow><mo id="A4.T16.3.3.3.1.m1.2.2.1.3" xref="A4.T16.3.3.3.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.3.3.3.1.m1.1.1" xref="A4.T16.3.3.3.1.m1.1.1.cmml">1.8</mn><mo id="A4.T16.3.3.3.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.3.3.3.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.3.3.3.1.m1.2b"><interval closure="open" id="A4.T16.3.3.3.1.m1.2.2.2.cmml" xref="A4.T16.3.3.3.1.m1.2.2.1"><apply id="A4.T16.3.3.3.1.m1.2.2.1.1.cmml" xref="A4.T16.3.3.3.1.m1.2.2.1.1"><minus id="A4.T16.3.3.3.1.m1.2.2.1.1.1.cmml" xref="A4.T16.3.3.3.1.m1.2.2.1.1"></minus><cn id="A4.T16.3.3.3.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.3.3.3.1.m1.2.2.1.1.2">1.8</cn></apply><cn id="A4.T16.3.3.3.1.m1.1.1.cmml" type="float" xref="A4.T16.3.3.3.1.m1.1.1">1.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.3.3.3.1.m1.2c">(-1.8,1.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.3.3.3.1.m1.2d">( - 1.8 , 1.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.3.3.3.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T16.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.4.4.4.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.4" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.5" style="padding:1pt 10.0pt;">0.416</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.6" style="padding:1pt 10.0pt;">0.786</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.7" style="padding:1pt 10.0pt;">4.669</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.8" style="padding:1pt 10.0pt;">283</td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.9" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.4.4.4.9.1">83.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,2.0)" class="ltx_Math" display="inline" id="A4.T16.4.4.4.1.m1.2"><semantics id="A4.T16.4.4.4.1.m1.2a"><mrow id="A4.T16.4.4.4.1.m1.2.2.1" xref="A4.T16.4.4.4.1.m1.2.2.2.cmml"><mo id="A4.T16.4.4.4.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.4.4.4.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.4.4.4.1.m1.2.2.1.1" xref="A4.T16.4.4.4.1.m1.2.2.1.1.cmml"><mo id="A4.T16.4.4.4.1.m1.2.2.1.1a" xref="A4.T16.4.4.4.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.4.4.4.1.m1.2.2.1.1.2" xref="A4.T16.4.4.4.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T16.4.4.4.1.m1.2.2.1.3" xref="A4.T16.4.4.4.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.4.4.4.1.m1.1.1" xref="A4.T16.4.4.4.1.m1.1.1.cmml">2.0</mn><mo id="A4.T16.4.4.4.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.4.4.4.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.4.4.4.1.m1.2b"><interval closure="open" id="A4.T16.4.4.4.1.m1.2.2.2.cmml" xref="A4.T16.4.4.4.1.m1.2.2.1"><apply id="A4.T16.4.4.4.1.m1.2.2.1.1.cmml" xref="A4.T16.4.4.4.1.m1.2.2.1.1"><minus id="A4.T16.4.4.4.1.m1.2.2.1.1.1.cmml" xref="A4.T16.4.4.4.1.m1.2.2.1.1"></minus><cn id="A4.T16.4.4.4.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.4.4.4.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T16.4.4.4.1.m1.1.1.cmml" type="float" xref="A4.T16.4.4.4.1.m1.1.1">2.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.4.4.4.1.m1.2c">(-1.6,2.0)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.4.4.4.1.m1.2d">( - 1.6 , 2.0 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.4.4.4.10" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T16.5.5.5">
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.5.5.5.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.5" style="padding:1pt 10.0pt;">0.449</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.6" style="padding:1pt 10.0pt;">0.908</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.7" style="padding:1pt 10.0pt;">4.731</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.8" style="padding:1pt 10.0pt;">276</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.9" style="padding:1pt 10.0pt;">75.7</td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.1" style="padding:1pt 10.0pt;"><math alttext="(-1.9,2.4)" class="ltx_Math" display="inline" id="A4.T16.5.5.5.1.m1.2"><semantics id="A4.T16.5.5.5.1.m1.2a"><mrow id="A4.T16.5.5.5.1.m1.2.2.1" xref="A4.T16.5.5.5.1.m1.2.2.2.cmml"><mo id="A4.T16.5.5.5.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.5.5.5.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.5.5.5.1.m1.2.2.1.1" xref="A4.T16.5.5.5.1.m1.2.2.1.1.cmml"><mo id="A4.T16.5.5.5.1.m1.2.2.1.1a" xref="A4.T16.5.5.5.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.5.5.5.1.m1.2.2.1.1.2" xref="A4.T16.5.5.5.1.m1.2.2.1.1.2.cmml">1.9</mn></mrow><mo id="A4.T16.5.5.5.1.m1.2.2.1.3" xref="A4.T16.5.5.5.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.5.5.5.1.m1.1.1" xref="A4.T16.5.5.5.1.m1.1.1.cmml">2.4</mn><mo id="A4.T16.5.5.5.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.5.5.5.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.5.5.5.1.m1.2b"><interval closure="open" id="A4.T16.5.5.5.1.m1.2.2.2.cmml" xref="A4.T16.5.5.5.1.m1.2.2.1"><apply id="A4.T16.5.5.5.1.m1.2.2.1.1.cmml" xref="A4.T16.5.5.5.1.m1.2.2.1.1"><minus id="A4.T16.5.5.5.1.m1.2.2.1.1.1.cmml" xref="A4.T16.5.5.5.1.m1.2.2.1.1"></minus><cn id="A4.T16.5.5.5.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.5.5.5.1.m1.2.2.1.1.2">1.9</cn></apply><cn id="A4.T16.5.5.5.1.m1.1.1.cmml" type="float" xref="A4.T16.5.5.5.1.m1.1.1">2.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.5.5.5.1.m1.2c">(-1.9,2.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.5.5.5.1.m1.2d">( - 1.9 , 2.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.5.5.5.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T16.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.6.6.6.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.5" style="padding:1pt 10.0pt;">0.496</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.6" style="padding:1pt 10.0pt;">1.016</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T16.6.6.6.7.1">5.125</span></td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.8" style="padding:1pt 10.0pt;">309</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.9" style="padding:1pt 10.0pt;">80.6</td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.1" style="padding:1pt 10.0pt;"><math alttext="(-2.4,1.6)" class="ltx_Math" display="inline" id="A4.T16.6.6.6.1.m1.2"><semantics id="A4.T16.6.6.6.1.m1.2a"><mrow id="A4.T16.6.6.6.1.m1.2.2.1" xref="A4.T16.6.6.6.1.m1.2.2.2.cmml"><mo id="A4.T16.6.6.6.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.6.6.6.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.6.6.6.1.m1.2.2.1.1" xref="A4.T16.6.6.6.1.m1.2.2.1.1.cmml"><mo id="A4.T16.6.6.6.1.m1.2.2.1.1a" xref="A4.T16.6.6.6.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.6.6.6.1.m1.2.2.1.1.2" xref="A4.T16.6.6.6.1.m1.2.2.1.1.2.cmml">2.4</mn></mrow><mo id="A4.T16.6.6.6.1.m1.2.2.1.3" xref="A4.T16.6.6.6.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.6.6.6.1.m1.1.1" xref="A4.T16.6.6.6.1.m1.1.1.cmml">1.6</mn><mo id="A4.T16.6.6.6.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.6.6.6.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.6.6.6.1.m1.2b"><interval closure="open" id="A4.T16.6.6.6.1.m1.2.2.2.cmml" xref="A4.T16.6.6.6.1.m1.2.2.1"><apply id="A4.T16.6.6.6.1.m1.2.2.1.1.cmml" xref="A4.T16.6.6.6.1.m1.2.2.1.1"><minus id="A4.T16.6.6.6.1.m1.2.2.1.1.1.cmml" xref="A4.T16.6.6.6.1.m1.2.2.1.1"></minus><cn id="A4.T16.6.6.6.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.6.6.6.1.m1.2.2.1.1.2">2.4</cn></apply><cn id="A4.T16.6.6.6.1.m1.1.1.cmml" type="float" xref="A4.T16.6.6.6.1.m1.1.1">1.6</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.6.6.6.1.m1.2c">(-2.4,1.6)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.6.6.6.1.m1.2d">( - 2.4 , 1.6 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.6.6.6.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T16.7.7.7">
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.7.7.7.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.5" style="padding:1pt 10.0pt;">0.469</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.6" style="padding:1pt 10.0pt;">0.973</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.7" style="padding:1pt 10.0pt;">5.050</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.8" style="padding:1pt 10.0pt;">307</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.9" style="padding:1pt 10.0pt;">80.7</td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.1" style="padding:1pt 10.0pt;"><math alttext="(-1.8,1.2)" class="ltx_Math" display="inline" id="A4.T16.7.7.7.1.m1.2"><semantics id="A4.T16.7.7.7.1.m1.2a"><mrow id="A4.T16.7.7.7.1.m1.2.2.1" xref="A4.T16.7.7.7.1.m1.2.2.2.cmml"><mo id="A4.T16.7.7.7.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.7.7.7.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.7.7.7.1.m1.2.2.1.1" xref="A4.T16.7.7.7.1.m1.2.2.1.1.cmml"><mo id="A4.T16.7.7.7.1.m1.2.2.1.1a" xref="A4.T16.7.7.7.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.7.7.7.1.m1.2.2.1.1.2" xref="A4.T16.7.7.7.1.m1.2.2.1.1.2.cmml">1.8</mn></mrow><mo id="A4.T16.7.7.7.1.m1.2.2.1.3" xref="A4.T16.7.7.7.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.7.7.7.1.m1.1.1" xref="A4.T16.7.7.7.1.m1.1.1.cmml">1.2</mn><mo id="A4.T16.7.7.7.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.7.7.7.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.7.7.7.1.m1.2b"><interval closure="open" id="A4.T16.7.7.7.1.m1.2.2.2.cmml" xref="A4.T16.7.7.7.1.m1.2.2.1"><apply id="A4.T16.7.7.7.1.m1.2.2.1.1.cmml" xref="A4.T16.7.7.7.1.m1.2.2.1.1"><minus id="A4.T16.7.7.7.1.m1.2.2.1.1.1.cmml" xref="A4.T16.7.7.7.1.m1.2.2.1.1"></minus><cn id="A4.T16.7.7.7.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.7.7.7.1.m1.2.2.1.1.2">1.8</cn></apply><cn id="A4.T16.7.7.7.1.m1.1.1.cmml" type="float" xref="A4.T16.7.7.7.1.m1.1.1">1.2</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.7.7.7.1.m1.2c">(-1.8,1.2)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.7.7.7.1.m1.2d">( - 1.8 , 1.2 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.7.7.7.10" style="padding:1pt 10.0pt;">289</td>
</tr>
<tr class="ltx_tr" id="A4.T16.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T16.8.8.8.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.5" style="padding:1pt 10.0pt;">0.469</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.6" style="padding:1pt 10.0pt;">0.968</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.7" style="padding:1pt 10.0pt;">4.719</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.8" style="padding:1pt 10.0pt;">268</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.9" style="padding:1pt 10.0pt;">81.6</td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.1" style="padding:1pt 10.0pt;"><math alttext="(-1.2,1.1)" class="ltx_Math" display="inline" id="A4.T16.8.8.8.1.m1.2"><semantics id="A4.T16.8.8.8.1.m1.2a"><mrow id="A4.T16.8.8.8.1.m1.2.2.1" xref="A4.T16.8.8.8.1.m1.2.2.2.cmml"><mo id="A4.T16.8.8.8.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.8.8.8.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.8.8.8.1.m1.2.2.1.1" xref="A4.T16.8.8.8.1.m1.2.2.1.1.cmml"><mo id="A4.T16.8.8.8.1.m1.2.2.1.1a" xref="A4.T16.8.8.8.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.8.8.8.1.m1.2.2.1.1.2" xref="A4.T16.8.8.8.1.m1.2.2.1.1.2.cmml">1.2</mn></mrow><mo id="A4.T16.8.8.8.1.m1.2.2.1.3" xref="A4.T16.8.8.8.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.8.8.8.1.m1.1.1" xref="A4.T16.8.8.8.1.m1.1.1.cmml">1.1</mn><mo id="A4.T16.8.8.8.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.8.8.8.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.8.8.8.1.m1.2b"><interval closure="open" id="A4.T16.8.8.8.1.m1.2.2.2.cmml" xref="A4.T16.8.8.8.1.m1.2.2.1"><apply id="A4.T16.8.8.8.1.m1.2.2.1.1.cmml" xref="A4.T16.8.8.8.1.m1.2.2.1.1"><minus id="A4.T16.8.8.8.1.m1.2.2.1.1.1.cmml" xref="A4.T16.8.8.8.1.m1.2.2.1.1"></minus><cn id="A4.T16.8.8.8.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.8.8.8.1.m1.2.2.1.1.2">1.2</cn></apply><cn id="A4.T16.8.8.8.1.m1.1.1.cmml" type="float" xref="A4.T16.8.8.8.1.m1.1.1">1.1</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.8.8.8.1.m1.2c">(-1.2,1.1)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.8.8.8.1.m1.2d">( - 1.2 , 1.1 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T16.8.8.8.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T16.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.5" style="padding:1pt 10.0pt;">0.469</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.6" style="padding:1pt 10.0pt;">0.968</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.7" style="padding:1pt 10.0pt;">4.588</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.8" style="padding:1pt 10.0pt;">291</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.9" style="padding:1pt 10.0pt;">80.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.1" style="padding:1pt 10.0pt;"><math alttext="(-2.0,1.8)" class="ltx_Math" display="inline" id="A4.T16.9.9.9.1.m1.2"><semantics id="A4.T16.9.9.9.1.m1.2a"><mrow id="A4.T16.9.9.9.1.m1.2.2.1" xref="A4.T16.9.9.9.1.m1.2.2.2.cmml"><mo id="A4.T16.9.9.9.1.m1.2.2.1.2" stretchy="false" xref="A4.T16.9.9.9.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T16.9.9.9.1.m1.2.2.1.1" xref="A4.T16.9.9.9.1.m1.2.2.1.1.cmml"><mo id="A4.T16.9.9.9.1.m1.2.2.1.1a" xref="A4.T16.9.9.9.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T16.9.9.9.1.m1.2.2.1.1.2" xref="A4.T16.9.9.9.1.m1.2.2.1.1.2.cmml">2.0</mn></mrow><mo id="A4.T16.9.9.9.1.m1.2.2.1.3" xref="A4.T16.9.9.9.1.m1.2.2.2.cmml">,</mo><mn id="A4.T16.9.9.9.1.m1.1.1" xref="A4.T16.9.9.9.1.m1.1.1.cmml">1.8</mn><mo id="A4.T16.9.9.9.1.m1.2.2.1.4" stretchy="false" xref="A4.T16.9.9.9.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T16.9.9.9.1.m1.2b"><interval closure="open" id="A4.T16.9.9.9.1.m1.2.2.2.cmml" xref="A4.T16.9.9.9.1.m1.2.2.1"><apply id="A4.T16.9.9.9.1.m1.2.2.1.1.cmml" xref="A4.T16.9.9.9.1.m1.2.2.1.1"><minus id="A4.T16.9.9.9.1.m1.2.2.1.1.1.cmml" xref="A4.T16.9.9.9.1.m1.2.2.1.1"></minus><cn id="A4.T16.9.9.9.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T16.9.9.9.1.m1.2.2.1.1.2">2.0</cn></apply><cn id="A4.T16.9.9.9.1.m1.1.1.cmml" type="float" xref="A4.T16.9.9.9.1.m1.1.1">1.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T16.9.9.9.1.m1.2c">(-2.0,1.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T16.9.9.9.1.m1.2d">( - 2.0 , 1.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T16.9.9.9.10" style="padding:1pt 10.0pt;">290</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the performance of the Llama-3b model when fine-tuned using full fine-tuning (FFT).  It explores how different weighting combinations of three key metrics (Difficulty, Separability, and Stability) impact performance on two benchmarks, MT-Bench and Arena-Hard. The results illustrate the effect of various metric weighting schemes on the model's accuracy and efficiency, providing insights into the optimal balance for effective instruction tuning.
> <details>
> <summary>read the caption</summary>
> Table 16: Performance comparison of fft-version of Llama-3b with different coefficient combinations for multiple metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T17.9.9">
<tr class="ltx_tr" id="A4.T17.9.9.10">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T17.9.9.10.1" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.10.1.1">Hyperparameter</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T17.9.9.10.2" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.10.2.1">Train Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T17.9.9.10.3" rowspan="2" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.10.3.1">Eval. Loss</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T17.9.9.10.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.10.4.1">MT-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A4.T17.9.9.10.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.10.5.1">Arena-Hard</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.9.9.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.1" style="padding:1pt 10.0pt;">Diff</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T17.9.9.11.2" style="padding:1pt 10.0pt;">Sep</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.3" style="padding:1pt 10.0pt;">Stab</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.4" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.11.4.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.5" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.11.5.1">Avg. Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.6" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.11.6.1">Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.11.7.1">95% CI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.9.9.11.8" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.9.9.11.8.1">Avg. Tokens</span></td>
</tr>
<tr class="ltx_tr" id="A4.T17.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" id="A4.T17.1.1.1.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.5" style="padding:1pt 10.0pt;">0.335</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.6" style="padding:1pt 10.0pt;">0.820</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.7" style="padding:1pt 10.0pt;">5.806</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.8" style="padding:1pt 10.0pt;">354</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.9" style="padding:1pt 10.0pt;">77.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.1" style="padding:1pt 10.0pt;"><math alttext="(-0.9,1.8)" class="ltx_Math" display="inline" id="A4.T17.1.1.1.1.m1.2"><semantics id="A4.T17.1.1.1.1.m1.2a"><mrow id="A4.T17.1.1.1.1.m1.2.2.1" xref="A4.T17.1.1.1.1.m1.2.2.2.cmml"><mo id="A4.T17.1.1.1.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.1.1.1.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.1.1.1.1.m1.2.2.1.1" xref="A4.T17.1.1.1.1.m1.2.2.1.1.cmml"><mo id="A4.T17.1.1.1.1.m1.2.2.1.1a" xref="A4.T17.1.1.1.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.1.1.1.1.m1.2.2.1.1.2" xref="A4.T17.1.1.1.1.m1.2.2.1.1.2.cmml">0.9</mn></mrow><mo id="A4.T17.1.1.1.1.m1.2.2.1.3" xref="A4.T17.1.1.1.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.1.1.1.1.m1.1.1" xref="A4.T17.1.1.1.1.m1.1.1.cmml">1.8</mn><mo id="A4.T17.1.1.1.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.1.1.1.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.1.1.1.1.m1.2b"><interval closure="open" id="A4.T17.1.1.1.1.m1.2.2.2.cmml" xref="A4.T17.1.1.1.1.m1.2.2.1"><apply id="A4.T17.1.1.1.1.m1.2.2.1.1.cmml" xref="A4.T17.1.1.1.1.m1.2.2.1.1"><minus id="A4.T17.1.1.1.1.m1.2.2.1.1.1.cmml" xref="A4.T17.1.1.1.1.m1.2.2.1.1"></minus><cn id="A4.T17.1.1.1.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.1.1.1.1.m1.2.2.1.1.2">0.9</cn></apply><cn id="A4.T17.1.1.1.1.m1.1.1.cmml" type="float" xref="A4.T17.1.1.1.1.m1.1.1">1.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.1.1.1.1.m1.2c">(-0.9,1.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.1.1.1.1.m1.2d">( - 0.9 , 1.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T17.1.1.1.10" style="padding:1pt 10.0pt;">249</td>
</tr>
<tr class="ltx_tr" id="A4.T17.2.2.2">
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.2.2.2.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.5" style="padding:1pt 10.0pt;">0.399</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.6" style="padding:1pt 10.0pt;">0.917</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.7" style="padding:1pt 10.0pt;">6.544</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.8" style="padding:1pt 10.0pt;">415</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.9" style="padding:1pt 10.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.1" style="padding:1pt 10.0pt;"><math alttext="(-1.7,1.6)" class="ltx_Math" display="inline" id="A4.T17.2.2.2.1.m1.2"><semantics id="A4.T17.2.2.2.1.m1.2a"><mrow id="A4.T17.2.2.2.1.m1.2.2.1" xref="A4.T17.2.2.2.1.m1.2.2.2.cmml"><mo id="A4.T17.2.2.2.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.2.2.2.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.2.2.2.1.m1.2.2.1.1" xref="A4.T17.2.2.2.1.m1.2.2.1.1.cmml"><mo id="A4.T17.2.2.2.1.m1.2.2.1.1a" xref="A4.T17.2.2.2.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.2.2.2.1.m1.2.2.1.1.2" xref="A4.T17.2.2.2.1.m1.2.2.1.1.2.cmml">1.7</mn></mrow><mo id="A4.T17.2.2.2.1.m1.2.2.1.3" xref="A4.T17.2.2.2.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.2.2.2.1.m1.1.1" xref="A4.T17.2.2.2.1.m1.1.1.cmml">1.6</mn><mo id="A4.T17.2.2.2.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.2.2.2.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.2.2.2.1.m1.2b"><interval closure="open" id="A4.T17.2.2.2.1.m1.2.2.2.cmml" xref="A4.T17.2.2.2.1.m1.2.2.1"><apply id="A4.T17.2.2.2.1.m1.2.2.1.1.cmml" xref="A4.T17.2.2.2.1.m1.2.2.1.1"><minus id="A4.T17.2.2.2.1.m1.2.2.1.1.1.cmml" xref="A4.T17.2.2.2.1.m1.2.2.1.1"></minus><cn id="A4.T17.2.2.2.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.2.2.2.1.m1.2.2.1.1.2">1.7</cn></apply><cn id="A4.T17.2.2.2.1.m1.1.1.cmml" type="float" xref="A4.T17.2.2.2.1.m1.1.1">1.6</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.2.2.2.1.m1.2c">(-1.7,1.6)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.2.2.2.1.m1.2d">( - 1.7 , 1.6 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.2.2.2.10" style="padding:1pt 10.0pt;">249</td>
</tr>
<tr class="ltx_tr" id="A4.T17.3.3.3">
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.3.3.3.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.5" style="padding:1pt 10.0pt;">0.347</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.6" style="padding:1pt 10.0pt;">0.823</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.7" style="padding:1pt 10.0pt;">6.288</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.8" style="padding:1pt 10.0pt;">383</td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.9" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.3.3.3.9.1">79.9</span></td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,1.8)" class="ltx_Math" display="inline" id="A4.T17.3.3.3.1.m1.2"><semantics id="A4.T17.3.3.3.1.m1.2a"><mrow id="A4.T17.3.3.3.1.m1.2.2.1" xref="A4.T17.3.3.3.1.m1.2.2.2.cmml"><mo id="A4.T17.3.3.3.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.3.3.3.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.3.3.3.1.m1.2.2.1.1" xref="A4.T17.3.3.3.1.m1.2.2.1.1.cmml"><mo id="A4.T17.3.3.3.1.m1.2.2.1.1a" xref="A4.T17.3.3.3.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.3.3.3.1.m1.2.2.1.1.2" xref="A4.T17.3.3.3.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T17.3.3.3.1.m1.2.2.1.3" xref="A4.T17.3.3.3.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.3.3.3.1.m1.1.1" xref="A4.T17.3.3.3.1.m1.1.1.cmml">1.8</mn><mo id="A4.T17.3.3.3.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.3.3.3.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.3.3.3.1.m1.2b"><interval closure="open" id="A4.T17.3.3.3.1.m1.2.2.2.cmml" xref="A4.T17.3.3.3.1.m1.2.2.1"><apply id="A4.T17.3.3.3.1.m1.2.2.1.1.cmml" xref="A4.T17.3.3.3.1.m1.2.2.1.1"><minus id="A4.T17.3.3.3.1.m1.2.2.1.1.1.cmml" xref="A4.T17.3.3.3.1.m1.2.2.1.1"></minus><cn id="A4.T17.3.3.3.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.3.3.3.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T17.3.3.3.1.m1.1.1.cmml" type="float" xref="A4.T17.3.3.3.1.m1.1.1">1.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.3.3.3.1.m1.2c">(-1.6,1.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.3.3.3.1.m1.2d">( - 1.6 , 1.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.3.3.3.10" style="padding:1pt 10.0pt;">252</td>
</tr>
<tr class="ltx_tr" id="A4.T17.4.4.4">
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.4.4.4.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.4" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.5" style="padding:1pt 10.0pt;">0.300</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.6" style="padding:1pt 10.0pt;">0.686</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.7" style="padding:1pt 10.0pt;">6.175</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.8" style="padding:1pt 10.0pt;">386</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.9" style="padding:1pt 10.0pt;">77.7</td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,2.4)" class="ltx_Math" display="inline" id="A4.T17.4.4.4.1.m1.2"><semantics id="A4.T17.4.4.4.1.m1.2a"><mrow id="A4.T17.4.4.4.1.m1.2.2.1" xref="A4.T17.4.4.4.1.m1.2.2.2.cmml"><mo id="A4.T17.4.4.4.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.4.4.4.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.4.4.4.1.m1.2.2.1.1" xref="A4.T17.4.4.4.1.m1.2.2.1.1.cmml"><mo id="A4.T17.4.4.4.1.m1.2.2.1.1a" xref="A4.T17.4.4.4.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.4.4.4.1.m1.2.2.1.1.2" xref="A4.T17.4.4.4.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T17.4.4.4.1.m1.2.2.1.3" xref="A4.T17.4.4.4.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.4.4.4.1.m1.1.1" xref="A4.T17.4.4.4.1.m1.1.1.cmml">2.4</mn><mo id="A4.T17.4.4.4.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.4.4.4.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.4.4.4.1.m1.2b"><interval closure="open" id="A4.T17.4.4.4.1.m1.2.2.2.cmml" xref="A4.T17.4.4.4.1.m1.2.2.1"><apply id="A4.T17.4.4.4.1.m1.2.2.1.1.cmml" xref="A4.T17.4.4.4.1.m1.2.2.1.1"><minus id="A4.T17.4.4.4.1.m1.2.2.1.1.1.cmml" xref="A4.T17.4.4.4.1.m1.2.2.1.1"></minus><cn id="A4.T17.4.4.4.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.4.4.4.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T17.4.4.4.1.m1.1.1.cmml" type="float" xref="A4.T17.4.4.4.1.m1.1.1">2.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.4.4.4.1.m1.2c">(-1.6,2.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.4.4.4.1.m1.2d">( - 1.6 , 2.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.4.4.4.10" style="padding:1pt 10.0pt;">253</td>
</tr>
<tr class="ltx_tr" id="A4.T17.5.5.5">
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.5.5.5.3" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.5" style="padding:1pt 10.0pt;">0.343</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.6" style="padding:1pt 10.0pt;">0.804</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.7" style="padding:1pt 10.0pt;">5.981</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.8" style="padding:1pt 10.0pt;">348</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.9" style="padding:1pt 10.0pt;">77.5</td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,1.4)" class="ltx_Math" display="inline" id="A4.T17.5.5.5.1.m1.2"><semantics id="A4.T17.5.5.5.1.m1.2a"><mrow id="A4.T17.5.5.5.1.m1.2.2.1" xref="A4.T17.5.5.5.1.m1.2.2.2.cmml"><mo id="A4.T17.5.5.5.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.5.5.5.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.5.5.5.1.m1.2.2.1.1" xref="A4.T17.5.5.5.1.m1.2.2.1.1.cmml"><mo id="A4.T17.5.5.5.1.m1.2.2.1.1a" xref="A4.T17.5.5.5.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.5.5.5.1.m1.2.2.1.1.2" xref="A4.T17.5.5.5.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T17.5.5.5.1.m1.2.2.1.3" xref="A4.T17.5.5.5.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.5.5.5.1.m1.1.1" xref="A4.T17.5.5.5.1.m1.1.1.cmml">1.4</mn><mo id="A4.T17.5.5.5.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.5.5.5.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.5.5.5.1.m1.2b"><interval closure="open" id="A4.T17.5.5.5.1.m1.2.2.2.cmml" xref="A4.T17.5.5.5.1.m1.2.2.1"><apply id="A4.T17.5.5.5.1.m1.2.2.1.1.cmml" xref="A4.T17.5.5.5.1.m1.2.2.1.1"><minus id="A4.T17.5.5.5.1.m1.2.2.1.1.1.cmml" xref="A4.T17.5.5.5.1.m1.2.2.1.1"></minus><cn id="A4.T17.5.5.5.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.5.5.5.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T17.5.5.5.1.m1.1.1.cmml" type="float" xref="A4.T17.5.5.5.1.m1.1.1">1.4</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.5.5.5.1.m1.2c">(-1.6,1.4)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.5.5.5.1.m1.2d">( - 1.6 , 1.4 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.5.5.5.10" style="padding:1pt 10.0pt;">246</td>
</tr>
<tr class="ltx_tr" id="A4.T17.6.6.6">
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.2" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.6.6.6.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.5" style="padding:1pt 10.0pt;">0.397</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.6" style="padding:1pt 10.0pt;">0.931</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.7" style="padding:1pt 10.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T17.6.6.6.7.1">6.625</span></td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.8" style="padding:1pt 10.0pt;">309</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.9" style="padding:1pt 10.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.1" style="padding:1pt 10.0pt;"><math alttext="(-1.6,2.0)" class="ltx_Math" display="inline" id="A4.T17.6.6.6.1.m1.2"><semantics id="A4.T17.6.6.6.1.m1.2a"><mrow id="A4.T17.6.6.6.1.m1.2.2.1" xref="A4.T17.6.6.6.1.m1.2.2.2.cmml"><mo id="A4.T17.6.6.6.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.6.6.6.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.6.6.6.1.m1.2.2.1.1" xref="A4.T17.6.6.6.1.m1.2.2.1.1.cmml"><mo id="A4.T17.6.6.6.1.m1.2.2.1.1a" xref="A4.T17.6.6.6.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.6.6.6.1.m1.2.2.1.1.2" xref="A4.T17.6.6.6.1.m1.2.2.1.1.2.cmml">1.6</mn></mrow><mo id="A4.T17.6.6.6.1.m1.2.2.1.3" xref="A4.T17.6.6.6.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.6.6.6.1.m1.1.1" xref="A4.T17.6.6.6.1.m1.1.1.cmml">2.0</mn><mo id="A4.T17.6.6.6.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.6.6.6.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.6.6.6.1.m1.2b"><interval closure="open" id="A4.T17.6.6.6.1.m1.2.2.2.cmml" xref="A4.T17.6.6.6.1.m1.2.2.1"><apply id="A4.T17.6.6.6.1.m1.2.2.1.1.cmml" xref="A4.T17.6.6.6.1.m1.2.2.1.1"><minus id="A4.T17.6.6.6.1.m1.2.2.1.1.1.cmml" xref="A4.T17.6.6.6.1.m1.2.2.1.1"></minus><cn id="A4.T17.6.6.6.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.6.6.6.1.m1.2.2.1.1.2">1.6</cn></apply><cn id="A4.T17.6.6.6.1.m1.1.1.cmml" type="float" xref="A4.T17.6.6.6.1.m1.1.1">2.0</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.6.6.6.1.m1.2c">(-1.6,2.0)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.6.6.6.1.m1.2d">( - 1.6 , 2.0 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.6.6.6.10" style="padding:1pt 10.0pt;">290</td>
</tr>
<tr class="ltx_tr" id="A4.T17.7.7.7">
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.7.7.7.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.4" style="padding:1pt 10.0pt;">1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.5" style="padding:1pt 10.0pt;">0.397</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.6" style="padding:1pt 10.0pt;">0.916</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.7" style="padding:1pt 10.0pt;">6.188</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.8" style="padding:1pt 10.0pt;">410</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.9" style="padding:1pt 10.0pt;">79.2</td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.1" style="padding:1pt 10.0pt;"><math alttext="(-1.5,1.8)" class="ltx_Math" display="inline" id="A4.T17.7.7.7.1.m1.2"><semantics id="A4.T17.7.7.7.1.m1.2a"><mrow id="A4.T17.7.7.7.1.m1.2.2.1" xref="A4.T17.7.7.7.1.m1.2.2.2.cmml"><mo id="A4.T17.7.7.7.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.7.7.7.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.7.7.7.1.m1.2.2.1.1" xref="A4.T17.7.7.7.1.m1.2.2.1.1.cmml"><mo id="A4.T17.7.7.7.1.m1.2.2.1.1a" xref="A4.T17.7.7.7.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.7.7.7.1.m1.2.2.1.1.2" xref="A4.T17.7.7.7.1.m1.2.2.1.1.2.cmml">1.5</mn></mrow><mo id="A4.T17.7.7.7.1.m1.2.2.1.3" xref="A4.T17.7.7.7.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.7.7.7.1.m1.1.1" xref="A4.T17.7.7.7.1.m1.1.1.cmml">1.8</mn><mo id="A4.T17.7.7.7.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.7.7.7.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.7.7.7.1.m1.2b"><interval closure="open" id="A4.T17.7.7.7.1.m1.2.2.2.cmml" xref="A4.T17.7.7.7.1.m1.2.2.1"><apply id="A4.T17.7.7.7.1.m1.2.2.1.1.cmml" xref="A4.T17.7.7.7.1.m1.2.2.1.1"><minus id="A4.T17.7.7.7.1.m1.2.2.1.1.1.cmml" xref="A4.T17.7.7.7.1.m1.2.2.1.1"></minus><cn id="A4.T17.7.7.7.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.7.7.7.1.m1.2.2.1.1.2">1.5</cn></apply><cn id="A4.T17.7.7.7.1.m1.1.1.cmml" type="float" xref="A4.T17.7.7.7.1.m1.1.1">1.8</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.7.7.7.1.m1.2c">(-1.5,1.8)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.7.7.7.1.m1.2d">( - 1.5 , 1.8 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.7.7.7.10" style="padding:1pt 10.0pt;">249</td>
</tr>
<tr class="ltx_tr" id="A4.T17.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" id="A4.T17.8.8.8.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.4" style="padding:1pt 10.0pt;">2</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.5" style="padding:1pt 10.0pt;">0.397</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.6" style="padding:1pt 10.0pt;">0.923</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.7" style="padding:1pt 10.0pt;">6.331</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.8" style="padding:1pt 10.0pt;">391</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.9" style="padding:1pt 10.0pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.1" style="padding:1pt 10.0pt;"><math alttext="(-1.3,1.7)" class="ltx_Math" display="inline" id="A4.T17.8.8.8.1.m1.2"><semantics id="A4.T17.8.8.8.1.m1.2a"><mrow id="A4.T17.8.8.8.1.m1.2.2.1" xref="A4.T17.8.8.8.1.m1.2.2.2.cmml"><mo id="A4.T17.8.8.8.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.8.8.8.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.8.8.8.1.m1.2.2.1.1" xref="A4.T17.8.8.8.1.m1.2.2.1.1.cmml"><mo id="A4.T17.8.8.8.1.m1.2.2.1.1a" xref="A4.T17.8.8.8.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.8.8.8.1.m1.2.2.1.1.2" xref="A4.T17.8.8.8.1.m1.2.2.1.1.2.cmml">1.3</mn></mrow><mo id="A4.T17.8.8.8.1.m1.2.2.1.3" xref="A4.T17.8.8.8.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.8.8.8.1.m1.1.1" xref="A4.T17.8.8.8.1.m1.1.1.cmml">1.7</mn><mo id="A4.T17.8.8.8.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.8.8.8.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.8.8.8.1.m1.2b"><interval closure="open" id="A4.T17.8.8.8.1.m1.2.2.2.cmml" xref="A4.T17.8.8.8.1.m1.2.2.1"><apply id="A4.T17.8.8.8.1.m1.2.2.1.1.cmml" xref="A4.T17.8.8.8.1.m1.2.2.1.1"><minus id="A4.T17.8.8.8.1.m1.2.2.1.1.1.cmml" xref="A4.T17.8.8.8.1.m1.2.2.1.1"></minus><cn id="A4.T17.8.8.8.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.8.8.8.1.m1.2.2.1.1.2">1.3</cn></apply><cn id="A4.T17.8.8.8.1.m1.1.1.cmml" type="float" xref="A4.T17.8.8.8.1.m1.1.1">1.7</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.8.8.8.1.m1.2c">(-1.3,1.7)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.8.8.8.1.m1.2d">( - 1.3 , 1.7 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T17.8.8.8.10" style="padding:1pt 10.0pt;">248</td>
</tr>
<tr class="ltx_tr" id="A4.T17.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.2" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.3" style="padding:1pt 10.0pt;">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.4" style="padding:1pt 10.0pt;">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.5" style="padding:1pt 10.0pt;">0.397</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.6" style="padding:1pt 10.0pt;">0.927</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.7" style="padding:1pt 10.0pt;">6.325</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.8" style="padding:1pt 10.0pt;">380</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.9" style="padding:1pt 10.0pt;">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.1" style="padding:1pt 10.0pt;"><math alttext="(-1.9,1.9)" class="ltx_Math" display="inline" id="A4.T17.9.9.9.1.m1.2"><semantics id="A4.T17.9.9.9.1.m1.2a"><mrow id="A4.T17.9.9.9.1.m1.2.2.1" xref="A4.T17.9.9.9.1.m1.2.2.2.cmml"><mo id="A4.T17.9.9.9.1.m1.2.2.1.2" stretchy="false" xref="A4.T17.9.9.9.1.m1.2.2.2.cmml">(</mo><mrow id="A4.T17.9.9.9.1.m1.2.2.1.1" xref="A4.T17.9.9.9.1.m1.2.2.1.1.cmml"><mo id="A4.T17.9.9.9.1.m1.2.2.1.1a" xref="A4.T17.9.9.9.1.m1.2.2.1.1.cmml">−</mo><mn id="A4.T17.9.9.9.1.m1.2.2.1.1.2" xref="A4.T17.9.9.9.1.m1.2.2.1.1.2.cmml">1.9</mn></mrow><mo id="A4.T17.9.9.9.1.m1.2.2.1.3" xref="A4.T17.9.9.9.1.m1.2.2.2.cmml">,</mo><mn id="A4.T17.9.9.9.1.m1.1.1" xref="A4.T17.9.9.9.1.m1.1.1.cmml">1.9</mn><mo id="A4.T17.9.9.9.1.m1.2.2.1.4" stretchy="false" xref="A4.T17.9.9.9.1.m1.2.2.2.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A4.T17.9.9.9.1.m1.2b"><interval closure="open" id="A4.T17.9.9.9.1.m1.2.2.2.cmml" xref="A4.T17.9.9.9.1.m1.2.2.1"><apply id="A4.T17.9.9.9.1.m1.2.2.1.1.cmml" xref="A4.T17.9.9.9.1.m1.2.2.1.1"><minus id="A4.T17.9.9.9.1.m1.2.2.1.1.1.cmml" xref="A4.T17.9.9.9.1.m1.2.2.1.1"></minus><cn id="A4.T17.9.9.9.1.m1.2.2.1.1.2.cmml" type="float" xref="A4.T17.9.9.9.1.m1.2.2.1.1.2">1.9</cn></apply><cn id="A4.T17.9.9.9.1.m1.1.1.cmml" type="float" xref="A4.T17.9.9.9.1.m1.1.1">1.9</cn></interval></annotation-xml><annotation encoding="application/x-tex" id="A4.T17.9.9.9.1.m1.2c">(-1.9,1.9)</annotation><annotation encoding="application/x-llamapun" id="A4.T17.9.9.9.1.m1.2d">( - 1.9 , 1.9 )</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T17.9.9.9.10" style="padding:1pt 10.0pt;">252</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed analysis of the performance of the Qwen-3b model when fine-tuned using different combinations of weighting coefficients for multiple metrics (Difficulty, Separability, and Stability).  It shows how different weighting schemes affect the model's performance on two benchmark datasets (MT-Bench and Arena-Hard), providing insights into the optimal balance between these metrics for effective instruction tuning. The results include training loss, evaluation loss, average tokens, scores on both benchmarks and their 95% confidence intervals (CI).
> <details>
> <summary>read the caption</summary>
> Table 17: Performance comparison of fft-version of Qwen-3b with different coefficient combinations for multiple metrics.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T18.6">
<tr class="ltx_tr" id="A4.T18.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T18.6.7.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.7.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T18.6.7.2" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.7.2.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T18.6.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.7.3.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T18.6.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.7.4.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T18.6.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.7.5.1">Stability</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.6">
<td class="ltx_td ltx_align_center" id="A4.T18.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T18.1.1.1.m1.1"><semantics id="A4.T18.1.1.1.m1.1a"><mo id="A4.T18.1.1.1.m1.1.1" stretchy="false" xref="A4.T18.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T18.1.1.1.m1.1b"><ci id="A4.T18.1.1.1.m1.1.1.cmml" xref="A4.T18.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T18.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T18.2.2.2.m1.1"><semantics id="A4.T18.2.2.2.m1.1a"><mo id="A4.T18.2.2.2.m1.1.1" stretchy="false" xref="A4.T18.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T18.2.2.2.m1.1b"><ci id="A4.T18.2.2.2.m1.1.1.cmml" xref="A4.T18.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T18.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T18.3.3.3.m1.1"><semantics id="A4.T18.3.3.3.m1.1a"><mo id="A4.T18.3.3.3.m1.1.1" stretchy="false" xref="A4.T18.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T18.3.3.3.m1.1b"><ci id="A4.T18.3.3.3.m1.1.1.cmml" xref="A4.T18.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T18.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T18.4.4.4.m1.1"><semantics id="A4.T18.4.4.4.m1.1a"><mo id="A4.T18.4.4.4.m1.1.1" stretchy="false" xref="A4.T18.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T18.4.4.4.m1.1b"><ci id="A4.T18.4.4.4.m1.1.1.cmml" xref="A4.T18.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T18.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T18.5.5.5.m1.1"><semantics id="A4.T18.5.5.5.m1.1a"><mo id="A4.T18.5.5.5.m1.1.1" stretchy="false" xref="A4.T18.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T18.5.5.5.m1.1b"><ci id="A4.T18.5.5.5.m1.1.1.cmml" xref="A4.T18.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T18.6.6.6.m1.1"><semantics id="A4.T18.6.6.6.m1.1a"><mo id="A4.T18.6.6.6.m1.1.1" stretchy="false" xref="A4.T18.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T18.6.6.6.m1.1b"><ci id="A4.T18.6.6.6.m1.1.1.cmml" xref="A4.T18.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T18.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T18.6.6.6.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T18.6.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.8.1.1">SFT</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.388</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.9.4.1">6.648</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.5" style="padding-left:4.0pt;padding-right:4.0pt;">5.937</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.581</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.225</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.9.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.625</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.10">
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.2" style="padding-left:4.0pt;padding-right:4.0pt;">74.4</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.5</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.10.4.1">80.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.5" style="padding-left:4.0pt;padding-right:4.0pt;">77.9</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.6" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.7" style="padding-left:4.0pt;padding-right:4.0pt;">75.8</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.10.8" style="padding-left:4.0pt;padding-right:4.0pt;">77.4</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.11">
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.9, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 0.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.1)</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T18.6.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.12.1.1">DPO</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.463</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.768</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.418</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.256</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.13.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.13.8.1">6.818</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.14">
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">74.2</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.3" style="padding-left:4.0pt;padding-right:4.0pt;">75.1</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.4" style="padding-left:4.0pt;padding-right:4.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.5" style="padding-left:4.0pt;padding-right:4.0pt;">76.1</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.14.6.1">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.7" style="padding-left:4.0pt;padding-right:4.0pt;">73.2</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.14.8" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.15">
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.3)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.5)</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.16">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T18.6.16.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.16.1.1">SimPO</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.17">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.950</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.425</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.17.4.1">7.137</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.518</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">7.043</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.675</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.931</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.18">
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">78.7</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.3" style="padding-left:4.0pt;padding-right:4.0pt;">78.0</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.4" style="padding-left:4.0pt;padding-right:4.0pt;">78.8</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.5" style="padding-left:4.0pt;padding-right:4.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.18.6.1">79.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.7" style="padding-left:4.0pt;padding-right:4.0pt;">76.0</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.18.8" style="padding-left:4.0pt;padding-right:4.0pt;">75.5</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.19">
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.5, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.5, 3.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-0.9, 1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 0.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-5.4, 6.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.3, 1.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.19.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-5.7, 6.2)</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.20">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="8" id="A4.T18.6.20.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.20.1.1">ORPO</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.412</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.450</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.450</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.21.5.1">6.525</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.312</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T18.6.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">6.400</td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.22">
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">73.7</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.3" style="padding-left:4.0pt;padding-right:4.0pt;">73.2</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.4" style="padding-left:4.0pt;padding-right:4.0pt;">73.7</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.5" style="padding-left:4.0pt;padding-right:4.0pt;">73.3</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.6" style="padding-left:4.0pt;padding-right:4.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.7" style="padding-left:4.0pt;padding-right:4.0pt;">73.2</td>
<td class="ltx_td ltx_align_center" id="A4.T18.6.22.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T18.6.22.8.1">75.6</span></td>
</tr>
<tr class="ltx_tr" id="A4.T18.6.23">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 2.2)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.2, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 1.8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 2.2)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 2.2)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T18.6.23.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 2.2)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance of Llama-3b-instruct models when trained using four different fine-tuning methods: Standard Supervised Fine-Tuning (SFT), Direct Preference Optimization (DPO), Simple Preference Optimization (SimPO), and Monolithic Preference Optimization without a reference model (ORPO).  The results are shown for two benchmark datasets: MT-Bench and Arena-Hard, providing a comprehensive evaluation of the effectiveness of each fine-tuning method in improving model performance on instruction-following tasks.
> <details>
> <summary>read the caption</summary>
> Table 18: Performance comparison of Llama-3b-instruct models with different fine-tuning methods
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T19.8.8">
<tr class="ltx_tr" id="A4.T19.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T19.8.8.9.1" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.9.1.1">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T19.8.8.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.9.2.1">Difficulty</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T19.8.8.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.9.3.1">Separability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T19.8.8.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.9.4.1">Stability</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A4.T19.8.8.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.9.5.1">Reward-Score</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.8">
<td class="ltx_td ltx_align_center" id="A4.T19.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T19.1.1.1.1.m1.1"><semantics id="A4.T19.1.1.1.1.m1.1a"><mo id="A4.T19.1.1.1.1.m1.1.1" stretchy="false" xref="A4.T19.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T19.1.1.1.1.m1.1b"><ci id="A4.T19.1.1.1.1.m1.1.1.cmml" xref="A4.T19.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.1.1.1.1.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T19.2.2.2.2.m1.1"><semantics id="A4.T19.2.2.2.2.m1.1a"><mo id="A4.T19.2.2.2.2.m1.1.1" stretchy="false" xref="A4.T19.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T19.2.2.2.2.m1.1b"><ci id="A4.T19.2.2.2.2.m1.1.1.cmml" xref="A4.T19.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.2.2.2.2.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T19.3.3.3.3.m1.1"><semantics id="A4.T19.3.3.3.3.m1.1a"><mo id="A4.T19.3.3.3.3.m1.1.1" stretchy="false" xref="A4.T19.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T19.3.3.3.3.m1.1b"><ci id="A4.T19.3.3.3.3.m1.1.1.cmml" xref="A4.T19.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.3.3.3.3.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T19.4.4.4.4.m1.1"><semantics id="A4.T19.4.4.4.4.m1.1a"><mo id="A4.T19.4.4.4.4.m1.1.1" stretchy="false" xref="A4.T19.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T19.4.4.4.4.m1.1b"><ci id="A4.T19.4.4.4.4.m1.1.1.cmml" xref="A4.T19.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.4.4.4.4.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T19.5.5.5.5.m1.1"><semantics id="A4.T19.5.5.5.5.m1.1a"><mo id="A4.T19.5.5.5.5.m1.1.1" stretchy="false" xref="A4.T19.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T19.5.5.5.5.m1.1b"><ci id="A4.T19.5.5.5.5.m1.1.1.cmml" xref="A4.T19.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.5.5.5.5.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.6.6.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T19.6.6.6.6.m1.1"><semantics id="A4.T19.6.6.6.6.m1.1a"><mo id="A4.T19.6.6.6.6.m1.1.1" stretchy="false" xref="A4.T19.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T19.6.6.6.6.m1.1b"><ci id="A4.T19.6.6.6.6.m1.1.1.cmml" xref="A4.T19.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.6.6.6.6.m1.1d">↑</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.7.7.7.7" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="A4.T19.7.7.7.7.m1.1"><semantics id="A4.T19.7.7.7.7.m1.1a"><mo id="A4.T19.7.7.7.7.m1.1.1" stretchy="false" xref="A4.T19.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A4.T19.7.7.7.7.m1.1b"><ci id="A4.T19.7.7.7.7.m1.1.1.cmml" xref="A4.T19.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.7.7.7.7.m1.1d">↓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.8.8" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="A4.T19.8.8.8.8.m1.1"><semantics id="A4.T19.8.8.8.8.m1.1a"><mo id="A4.T19.8.8.8.8.m1.1.1" stretchy="false" xref="A4.T19.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A4.T19.8.8.8.8.m1.1b"><ci id="A4.T19.8.8.8.8.m1.1.1.cmml" xref="A4.T19.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T19.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A4.T19.8.8.8.8.m1.1d">↑</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T19.8.8.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.10.1.1">ArmoRM-Llama3-8B-v0.1</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.625</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.11.3.1">6.687</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.468</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.493</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.431</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.037</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.11.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.512</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.12">
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.12.2.1">81.7</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.3" style="padding-left:4.0pt;padding-right:4.0pt;">78.6</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.4" style="padding-left:4.0pt;padding-right:4.0pt;">74.3</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.5" style="padding-left:4.0pt;padding-right:4.0pt;">75.6</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.6" style="padding-left:4.0pt;padding-right:4.0pt;">77.3</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.7" style="padding-left:4.0pt;padding-right:4.0pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.8" style="padding-left:4.0pt;padding-right:4.0pt;">57.8</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.12.9" style="padding-left:4.0pt;padding-right:4.0pt;">83.2</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.13">
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 2.1)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.6)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.0, 1.8)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.0, 1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.13.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5, 1.9)</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.14">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T19.8.8.14.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.14.1.1">Skywork-Reward-Llama-3.1-8B</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.456</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.688</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.725</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.131</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.15.7.1">6.866</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.8" style="padding-left:4.0pt;padding-right:4.0pt;">4.012</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.15.9" style="padding-left:4.0pt;padding-right:4.0pt;">6.675</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.16">
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">69.6</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.3" style="padding-left:4.0pt;padding-right:4.0pt;">76.8</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.4" style="padding-left:4.0pt;padding-right:4.0pt;">69.4</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.5" style="padding-left:4.0pt;padding-right:4.0pt;">72.9</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.6" style="padding-left:4.0pt;padding-right:4.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.7" style="padding-left:4.0pt;padding-right:4.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.8" style="padding-left:4.0pt;padding-right:4.0pt;">52.6</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.16.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.16.9.1">77.4</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.17">
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.5,1.9)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8,1.4)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.5,1.2)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6,1.5)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7,1.7)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7,2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.4, 2.0)</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.17.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.8, 2.1)</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="9" id="A4.T19.8.8.18.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.18.1.1">Skywork-Reward-Gemma-2-27B</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.19">
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.1" style="padding-left:4.0pt;padding-right:4.0pt;">MT-Bench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.2" style="padding-left:4.0pt;padding-right:4.0pt;">6.512</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.3" style="padding-left:4.0pt;padding-right:4.0pt;">6.593</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.4" style="padding-left:4.0pt;padding-right:4.0pt;">6.756</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.5" style="padding-left:4.0pt;padding-right:4.0pt;">6.881</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.6" style="padding-left:4.0pt;padding-right:4.0pt;">6.637</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.7" style="padding-left:4.0pt;padding-right:4.0pt;">6.756</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.8" style="padding-left:4.0pt;padding-right:4.0pt;">3.793</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T19.8.8.19.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.19.9.1">6.943</span></td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.20">
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.2" style="padding-left:4.0pt;padding-right:4.0pt;">76.2</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.3" style="padding-left:4.0pt;padding-right:4.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.4" style="padding-left:4.0pt;padding-right:4.0pt;">75.4</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.5" style="padding-left:4.0pt;padding-right:4.0pt;">80.2</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.6" style="padding-left:4.0pt;padding-right:4.0pt;">79.7</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="A4.T19.8.8.20.7.1">83.6</span></td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.8" style="padding-left:4.0pt;padding-right:4.0pt;">56.1</td>
<td class="ltx_td ltx_align_center" id="A4.T19.8.8.20.9" style="padding-left:4.0pt;padding-right:4.0pt;">79.6</td>
</tr>
<tr class="ltx_tr" id="A4.T19.8.8.21">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.1" style="padding-left:4.0pt;padding-right:4.0pt;">Arena-Hard-95%CI</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.2" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.3" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.5)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.4" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 2.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.5" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.7, 2.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.6" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.4, 1.4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.7" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.9, 2.0)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.8" style="padding-left:4.0pt;padding-right:4.0pt;">(-2.1, 2.1)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T19.8.8.21.9" style="padding-left:4.0pt;padding-right:4.0pt;">(-1.6, 1.7)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparative analysis of the performance achieved by fine-tuning the LoRA (Low-Rank Adaptation) version of the Llama-3b-instruct model using three different reward models.  The table shows the performance across two key benchmarks: MT-Bench and Arena-Hard.  For each benchmark and reward model combination, the table displays the performance scores with associated 95% confidence intervals, allowing for a nuanced comparison of the impact of various reward model choices on model performance. It provides insights into the effect of reward model selection on the model's ability to follow instructions effectively, assessing aspects like difficulty, separability, and stability.
> <details>
> <summary>read the caption</summary>
> Table 19: Performance comparison of lora-version of Llama-3b-instruct models with different reward-models
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T20.15">
<tr class="ltx_tr" id="A4.T20.15.16">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A4.T20.15.16.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.16.1.1">
<span class="ltx_p" id="A4.T20.15.16.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T20.15.16.1.1.1.1">1. What is the name of the singer-songwriter known for his distinctive, raspy, belt-it-out-from-the-diaphragm vocals and soulful delivery, known for hits like "Swallowed in the Sea", " Wolfgang Amadeus!", and "Skinyalong"? Is it (a) Thom Yorke?, (b) Brandon Boyd?, (c) Dave Matthews? (d) Frank Ocean?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.17" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T20.15.17.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.17.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T20.15.17.1.1.1">I think I have the answer: (a) Thom Yorke! Thom Yorke is the lead vocalis and principal songwriter of the British rock band Radiohead, known for his distinctive, emotive, and often raspy vocals …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.18" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T20.15.18.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.18.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T20.15.18.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T20.15.18.1.1.1.1">2. What is the percentage of hydrocarbons in the wastewater sludges generated by municipal wastewater treatment plants?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.19" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T20.15.19.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.19.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T20.15.19.1.1.1">The percentage of hydrocarbons in wastewater sludges can vary widely depending on several factors, such as the type of wastewater treatment process used, industrial activities …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.20" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T20.15.20.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.20.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T20.15.20.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T20.15.20.1.1.1.1">3. What is a common typo that can result in innocuous words being misinterpreted as explicit content?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.21" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T20.15.21.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.21.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T20.15.21.1.1.1">One common typo that can lead to misinterpretation is the accidental omission or substitution of a single letter or character. For example, "ass" instead of "as", "cock" instead of "cook" …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.3.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T20.3.3.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.3.3.3.3" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T20.3.3.3.3.3"><span class="ltx_text ltx_font_bold" id="A4.T20.3.3.3.3.3.3">4. What is the minimum cost of <math alttext="x" class="ltx_Math" display="inline" id="A4.T20.1.1.1.1.1.1.m1.1"><semantics id="A4.T20.1.1.1.1.1.1.m1.1a"><mi id="A4.T20.1.1.1.1.1.1.m1.1.1" mathbackground="#FFFFFF" xref="A4.T20.1.1.1.1.1.1.m1.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A4.T20.1.1.1.1.1.1.m1.1b"><ci id="A4.T20.1.1.1.1.1.1.m1.1.1.cmml" xref="A4.T20.1.1.1.1.1.1.m1.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.1.1.1.1.1.1.m1.1c">x</annotation><annotation encoding="application/x-llamapun" id="A4.T20.1.1.1.1.1.1.m1.1d">italic_x</annotation></semantics></math> that satisfies the equation <math alttext="\frac{1}{x+3}=3y" class="ltx_Math" display="inline" id="A4.T20.2.2.2.2.2.2.m2.1"><semantics id="A4.T20.2.2.2.2.2.2.m2.1a"><mrow id="A4.T20.2.2.2.2.2.2.m2.1.1" xref="A4.T20.2.2.2.2.2.2.m2.1.1.cmml"><mfrac id="A4.T20.2.2.2.2.2.2.m2.1.1.2" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.cmml"><mn id="A4.T20.2.2.2.2.2.2.m2.1.1.2.2" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.2.cmml">1</mn><mrow id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.cmml"><mi id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.2" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.2.cmml">x</mi><mo id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.1" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.1.cmml">+</mo><mn id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.3" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.3.cmml">3</mn></mrow></mfrac><mo id="A4.T20.2.2.2.2.2.2.m2.1.1.1" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.1.cmml">=</mo><mrow id="A4.T20.2.2.2.2.2.2.m2.1.1.3" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.cmml"><mn id="A4.T20.2.2.2.2.2.2.m2.1.1.3.2" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.2.cmml">3</mn><mo id="A4.T20.2.2.2.2.2.2.m2.1.1.3.1" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.1.cmml">⁢</mo><mi id="A4.T20.2.2.2.2.2.2.m2.1.1.3.3" mathbackground="#FFFFFF" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.3.cmml">y</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.2.2.2.2.2.2.m2.1b"><apply id="A4.T20.2.2.2.2.2.2.m2.1.1.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1"><eq id="A4.T20.2.2.2.2.2.2.m2.1.1.1.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.1"></eq><apply id="A4.T20.2.2.2.2.2.2.m2.1.1.2.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2"><divide id="A4.T20.2.2.2.2.2.2.m2.1.1.2.1.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2"></divide><cn id="A4.T20.2.2.2.2.2.2.m2.1.1.2.2.cmml" type="integer" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.2">1</cn><apply id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3"><plus id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.1.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.1"></plus><ci id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.2.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.2">𝑥</ci><cn id="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.3.cmml" type="integer" xref="A4.T20.2.2.2.2.2.2.m2.1.1.2.3.3">3</cn></apply></apply><apply id="A4.T20.2.2.2.2.2.2.m2.1.1.3.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3"><times id="A4.T20.2.2.2.2.2.2.m2.1.1.3.1.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.1"></times><cn id="A4.T20.2.2.2.2.2.2.m2.1.1.3.2.cmml" type="integer" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.2">3</cn><ci id="A4.T20.2.2.2.2.2.2.m2.1.1.3.3.cmml" xref="A4.T20.2.2.2.2.2.2.m2.1.1.3.3">𝑦</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.2.2.2.2.2.2.m2.1c">\frac{1}{x+3}=3y</annotation><annotation encoding="application/x-llamapun" id="A4.T20.2.2.2.2.2.2.m2.1d">divide start_ARG 1 end_ARG start_ARG italic_x + 3 end_ARG = 3 italic_y</annotation></semantics></math>, with <math alttext="x,y" class="ltx_Math" display="inline" id="A4.T20.3.3.3.3.3.3.m3.2"><semantics id="A4.T20.3.3.3.3.3.3.m3.2a"><mrow id="A4.T20.3.3.3.3.3.3.m3.2.3.2" xref="A4.T20.3.3.3.3.3.3.m3.2.3.1.cmml"><mi id="A4.T20.3.3.3.3.3.3.m3.1.1" mathbackground="#FFFFFF" xref="A4.T20.3.3.3.3.3.3.m3.1.1.cmml">x</mi><mo id="A4.T20.3.3.3.3.3.3.m3.2.3.2.1" mathbackground="#FFFFFF" xref="A4.T20.3.3.3.3.3.3.m3.2.3.1.cmml">,</mo><mi id="A4.T20.3.3.3.3.3.3.m3.2.2" mathbackground="#FFFFFF" xref="A4.T20.3.3.3.3.3.3.m3.2.2.cmml">y</mi></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.3.3.3.3.3.3.m3.2b"><list id="A4.T20.3.3.3.3.3.3.m3.2.3.1.cmml" xref="A4.T20.3.3.3.3.3.3.m3.2.3.2"><ci id="A4.T20.3.3.3.3.3.3.m3.1.1.cmml" xref="A4.T20.3.3.3.3.3.3.m3.1.1">𝑥</ci><ci id="A4.T20.3.3.3.3.3.3.m3.2.2.cmml" xref="A4.T20.3.3.3.3.3.3.m3.2.2">𝑦</ci></list></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.3.3.3.3.3.3.m3.2c">x,y</annotation><annotation encoding="application/x-llamapun" id="A4.T20.3.3.3.3.3.3.m3.2d">italic_x , italic_y</annotation></semantics></math> positive integers?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.10.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T20.10.10.7" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.10.10.7.7" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T20.10.10.7.7.7">We solve for <math alttext="x" class="ltx_Math" display="inline" id="A4.T20.4.4.1.1.1.m1.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.4.4.1.1.1.m1.1a"><mi id="A4.T20.4.4.1.1.1.m1.1.1" mathbackground="#E6E6E6" xref="A4.T20.4.4.1.1.1.m1.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A4.T20.4.4.1.1.1.m1.1b"><ci id="A4.T20.4.4.1.1.1.m1.1.1.cmml" xref="A4.T20.4.4.1.1.1.m1.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.4.4.1.1.1.m1.1c">x</annotation><annotation encoding="application/x-llamapun" id="A4.T20.4.4.1.1.1.m1.1d">italic_x</annotation></semantics></math> in terms of <math alttext="y" class="ltx_Math" display="inline" id="A4.T20.5.5.2.2.2.m2.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.5.5.2.2.2.m2.1a"><mi id="A4.T20.5.5.2.2.2.m2.1.1" mathbackground="#E6E6E6" xref="A4.T20.5.5.2.2.2.m2.1.1.cmml">y</mi><annotation-xml encoding="MathML-Content" id="A4.T20.5.5.2.2.2.m2.1b"><ci id="A4.T20.5.5.2.2.2.m2.1.1.cmml" xref="A4.T20.5.5.2.2.2.m2.1.1">𝑦</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.5.5.2.2.2.m2.1c">y</annotation><annotation encoding="application/x-llamapun" id="A4.T20.5.5.2.2.2.m2.1d">italic_y</annotation></semantics></math>: <math alttext="x+3=\frac{1}{3y}\Rightarrow x=\frac{1}{3y}-3" class="ltx_Math" display="inline" id="A4.T20.6.6.3.3.3.m3.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.6.6.3.3.3.m3.1a"><mrow id="A4.T20.6.6.3.3.3.m3.1.1" xref="A4.T20.6.6.3.3.3.m3.1.1.cmml"><mrow id="A4.T20.6.6.3.3.3.m3.1.1.2" xref="A4.T20.6.6.3.3.3.m3.1.1.2.cmml"><mi id="A4.T20.6.6.3.3.3.m3.1.1.2.2" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.2.2.cmml">x</mi><mo id="A4.T20.6.6.3.3.3.m3.1.1.2.1" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.2.1.cmml">+</mo><mn id="A4.T20.6.6.3.3.3.m3.1.1.2.3" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.2.3.cmml">3</mn></mrow><mo id="A4.T20.6.6.3.3.3.m3.1.1.3" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.3.cmml">=</mo><mfrac id="A4.T20.6.6.3.3.3.m3.1.1.4" xref="A4.T20.6.6.3.3.3.m3.1.1.4.cmml"><mn id="A4.T20.6.6.3.3.3.m3.1.1.4.2" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.4.2.cmml">1</mn><mrow id="A4.T20.6.6.3.3.3.m3.1.1.4.3" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.cmml"><mn id="A4.T20.6.6.3.3.3.m3.1.1.4.3.2" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.2.cmml">3</mn><mo id="A4.T20.6.6.3.3.3.m3.1.1.4.3.1" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.1.cmml">⁢</mo><mi id="A4.T20.6.6.3.3.3.m3.1.1.4.3.3" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.3.cmml">y</mi></mrow></mfrac><mo id="A4.T20.6.6.3.3.3.m3.1.1.5" mathbackground="#E6E6E6" stretchy="false" xref="A4.T20.6.6.3.3.3.m3.1.1.5.cmml">⇒</mo><mi id="A4.T20.6.6.3.3.3.m3.1.1.6" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.6.cmml">x</mi><mo id="A4.T20.6.6.3.3.3.m3.1.1.7" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.7.cmml">=</mo><mrow id="A4.T20.6.6.3.3.3.m3.1.1.8" xref="A4.T20.6.6.3.3.3.m3.1.1.8.cmml"><mfrac id="A4.T20.6.6.3.3.3.m3.1.1.8.2" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.cmml"><mn id="A4.T20.6.6.3.3.3.m3.1.1.8.2.2" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.2.cmml">1</mn><mrow id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.cmml"><mn id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.2" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.2.cmml">3</mn><mo id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.1" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.1.cmml">⁢</mo><mi id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.3" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.3.cmml">y</mi></mrow></mfrac><mo id="A4.T20.6.6.3.3.3.m3.1.1.8.1" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.8.1.cmml">−</mo><mn id="A4.T20.6.6.3.3.3.m3.1.1.8.3" mathbackground="#E6E6E6" xref="A4.T20.6.6.3.3.3.m3.1.1.8.3.cmml">3</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.6.6.3.3.3.m3.1b"><apply id="A4.T20.6.6.3.3.3.m3.1.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"><and id="A4.T20.6.6.3.3.3.m3.1.1a.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"></and><apply id="A4.T20.6.6.3.3.3.m3.1.1b.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"><eq id="A4.T20.6.6.3.3.3.m3.1.1.3.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.3"></eq><apply id="A4.T20.6.6.3.3.3.m3.1.1.2.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.2"><plus id="A4.T20.6.6.3.3.3.m3.1.1.2.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.2.1"></plus><ci id="A4.T20.6.6.3.3.3.m3.1.1.2.2.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.2.2">𝑥</ci><cn id="A4.T20.6.6.3.3.3.m3.1.1.2.3.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.2.3">3</cn></apply><apply id="A4.T20.6.6.3.3.3.m3.1.1.4.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.4"><divide id="A4.T20.6.6.3.3.3.m3.1.1.4.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.4"></divide><cn id="A4.T20.6.6.3.3.3.m3.1.1.4.2.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.4.2">1</cn><apply id="A4.T20.6.6.3.3.3.m3.1.1.4.3.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3"><times id="A4.T20.6.6.3.3.3.m3.1.1.4.3.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.1"></times><cn id="A4.T20.6.6.3.3.3.m3.1.1.4.3.2.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.2">3</cn><ci id="A4.T20.6.6.3.3.3.m3.1.1.4.3.3.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.4.3.3">𝑦</ci></apply></apply></apply><apply id="A4.T20.6.6.3.3.3.m3.1.1c.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"><ci id="A4.T20.6.6.3.3.3.m3.1.1.5.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.5">⇒</ci><share href="https://arxiv.org/html/2503.01836v1#A4.T20.6.6.3.3.3.m3.1.1.4.cmml" id="A4.T20.6.6.3.3.3.m3.1.1d.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"></share><ci id="A4.T20.6.6.3.3.3.m3.1.1.6.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.6">𝑥</ci></apply><apply id="A4.T20.6.6.3.3.3.m3.1.1e.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"><eq id="A4.T20.6.6.3.3.3.m3.1.1.7.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.7"></eq><share href="https://arxiv.org/html/2503.01836v1#A4.T20.6.6.3.3.3.m3.1.1.6.cmml" id="A4.T20.6.6.3.3.3.m3.1.1f.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1"></share><apply id="A4.T20.6.6.3.3.3.m3.1.1.8.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8"><minus id="A4.T20.6.6.3.3.3.m3.1.1.8.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.1"></minus><apply id="A4.T20.6.6.3.3.3.m3.1.1.8.2.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2"><divide id="A4.T20.6.6.3.3.3.m3.1.1.8.2.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2"></divide><cn id="A4.T20.6.6.3.3.3.m3.1.1.8.2.2.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.2">1</cn><apply id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3"><times id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.1.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.1"></times><cn id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.2.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.2">3</cn><ci id="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.3.cmml" xref="A4.T20.6.6.3.3.3.m3.1.1.8.2.3.3">𝑦</ci></apply></apply><cn id="A4.T20.6.6.3.3.3.m3.1.1.8.3.cmml" type="integer" xref="A4.T20.6.6.3.3.3.m3.1.1.8.3">3</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.6.6.3.3.3.m3.1c">x+3=\frac{1}{3y}\Rightarrow x=\frac{1}{3y}-3</annotation><annotation encoding="application/x-llamapun" id="A4.T20.6.6.3.3.3.m3.1d">italic_x + 3 = divide start_ARG 1 end_ARG start_ARG 3 italic_y end_ARG ⇒ italic_x = divide start_ARG 1 end_ARG start_ARG 3 italic_y end_ARG - 3</annotation></semantics></math>. Since <math alttext="x" class="ltx_Math" display="inline" id="A4.T20.7.7.4.4.4.m4.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.7.7.4.4.4.m4.1a"><mi id="A4.T20.7.7.4.4.4.m4.1.1" mathbackground="#E6E6E6" xref="A4.T20.7.7.4.4.4.m4.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A4.T20.7.7.4.4.4.m4.1b"><ci id="A4.T20.7.7.4.4.4.m4.1.1.cmml" xref="A4.T20.7.7.4.4.4.m4.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.7.7.4.4.4.m4.1c">x</annotation><annotation encoding="application/x-llamapun" id="A4.T20.7.7.4.4.4.m4.1d">italic_x</annotation></semantics></math> is a positive integer, the smallest such <math alttext="y" class="ltx_Math" display="inline" id="A4.T20.8.8.5.5.5.m5.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.8.8.5.5.5.m5.1a"><mi id="A4.T20.8.8.5.5.5.m5.1.1" mathbackground="#E6E6E6" xref="A4.T20.8.8.5.5.5.m5.1.1.cmml">y</mi><annotation-xml encoding="MathML-Content" id="A4.T20.8.8.5.5.5.m5.1b"><ci id="A4.T20.8.8.5.5.5.m5.1.1.cmml" xref="A4.T20.8.8.5.5.5.m5.1.1">𝑦</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.8.8.5.5.5.m5.1c">y</annotation><annotation encoding="application/x-llamapun" id="A4.T20.8.8.5.5.5.m5.1d">italic_y</annotation></semantics></math> is <math alttext="y=1" class="ltx_Math" display="inline" id="A4.T20.9.9.6.6.6.m6.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.9.9.6.6.6.m6.1a"><mrow id="A4.T20.9.9.6.6.6.m6.1.1" xref="A4.T20.9.9.6.6.6.m6.1.1.cmml"><mi id="A4.T20.9.9.6.6.6.m6.1.1.2" mathbackground="#E6E6E6" xref="A4.T20.9.9.6.6.6.m6.1.1.2.cmml">y</mi><mo id="A4.T20.9.9.6.6.6.m6.1.1.1" mathbackground="#E6E6E6" xref="A4.T20.9.9.6.6.6.m6.1.1.1.cmml">=</mo><mn id="A4.T20.9.9.6.6.6.m6.1.1.3" mathbackground="#E6E6E6" xref="A4.T20.9.9.6.6.6.m6.1.1.3.cmml">1</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.9.9.6.6.6.m6.1b"><apply id="A4.T20.9.9.6.6.6.m6.1.1.cmml" xref="A4.T20.9.9.6.6.6.m6.1.1"><eq id="A4.T20.9.9.6.6.6.m6.1.1.1.cmml" xref="A4.T20.9.9.6.6.6.m6.1.1.1"></eq><ci id="A4.T20.9.9.6.6.6.m6.1.1.2.cmml" xref="A4.T20.9.9.6.6.6.m6.1.1.2">𝑦</ci><cn id="A4.T20.9.9.6.6.6.m6.1.1.3.cmml" type="integer" xref="A4.T20.9.9.6.6.6.m6.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.9.9.6.6.6.m6.1c">y=1</annotation><annotation encoding="application/x-llamapun" id="A4.T20.9.9.6.6.6.m6.1d">italic_y = 1</annotation></semantics></math>, which gives <math alttext="x=2" class="ltx_Math" display="inline" id="A4.T20.10.10.7.7.7.m7.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.10.10.7.7.7.m7.1a"><mrow id="A4.T20.10.10.7.7.7.m7.1.1" xref="A4.T20.10.10.7.7.7.m7.1.1.cmml"><mi id="A4.T20.10.10.7.7.7.m7.1.1.2" mathbackground="#E6E6E6" xref="A4.T20.10.10.7.7.7.m7.1.1.2.cmml">x</mi><mo id="A4.T20.10.10.7.7.7.m7.1.1.1" mathbackground="#E6E6E6" xref="A4.T20.10.10.7.7.7.m7.1.1.1.cmml">=</mo><mn id="A4.T20.10.10.7.7.7.m7.1.1.3" mathbackground="#E6E6E6" xref="A4.T20.10.10.7.7.7.m7.1.1.3.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.10.10.7.7.7.m7.1b"><apply id="A4.T20.10.10.7.7.7.m7.1.1.cmml" xref="A4.T20.10.10.7.7.7.m7.1.1"><eq id="A4.T20.10.10.7.7.7.m7.1.1.1.cmml" xref="A4.T20.10.10.7.7.7.m7.1.1.1"></eq><ci id="A4.T20.10.10.7.7.7.m7.1.1.2.cmml" xref="A4.T20.10.10.7.7.7.m7.1.1.2">𝑥</ci><cn id="A4.T20.10.10.7.7.7.m7.1.1.3.cmml" type="integer" xref="A4.T20.10.10.7.7.7.m7.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.10.10.7.7.7.m7.1c">x=2</annotation><annotation encoding="application/x-llamapun" id="A4.T20.10.10.7.7.7.m7.1d">italic_x = 2</annotation></semantics></math> …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.13.13" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T20.13.13.3" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.13.13.3.3" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T20.13.13.3.3.3"><span class="ltx_text ltx_font_bold" id="A4.T20.13.13.3.3.3.3">5. I have an integer <math alttext="x" class="ltx_Math" display="inline" id="A4.T20.11.11.1.1.1.1.m1.1"><semantics id="A4.T20.11.11.1.1.1.1.m1.1a"><mi id="A4.T20.11.11.1.1.1.1.m1.1.1" mathbackground="#FFFFFF" xref="A4.T20.11.11.1.1.1.1.m1.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A4.T20.11.11.1.1.1.1.m1.1b"><ci id="A4.T20.11.11.1.1.1.1.m1.1.1.cmml" xref="A4.T20.11.11.1.1.1.1.m1.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.11.11.1.1.1.1.m1.1c">x</annotation><annotation encoding="application/x-llamapun" id="A4.T20.11.11.1.1.1.1.m1.1d">italic_x</annotation></semantics></math> such that <math alttext="x^{2}+3x-2=(x+1)(x+2)" class="ltx_Math" display="inline" id="A4.T20.12.12.2.2.2.2.m2.2"><semantics id="A4.T20.12.12.2.2.2.2.m2.2a"><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2" xref="A4.T20.12.12.2.2.2.2.m2.2.2.cmml"><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.4" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.cmml"><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.cmml"><msup id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.cmml"><mi id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.2" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.2.cmml">x</mi><mn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.3.cmml">2</mn></msup><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.1" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.1.cmml">+</mo><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.cmml"><mn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.2" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.2.cmml">3</mn><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.1" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.1.cmml">⁢</mo><mi id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.3.cmml">x</mi></mrow></mrow><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.4.1" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.1.cmml">−</mo><mn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.3.cmml">2</mn></mrow><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.3.cmml">=</mo><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.2" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.cmml"><mrow id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.cmml"><mo id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.2" mathbackground="#FFFFFF" stretchy="false" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.cmml">(</mo><mrow id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.cmml"><mi id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.2" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.2.cmml">x</mi><mo id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.1" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.1.cmml">+</mo><mn id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.3.cmml">1</mn></mrow><mo id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.3" mathbackground="#FFFFFF" stretchy="false" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.2.3" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.3.cmml">⁢</mo><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.cmml"><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.2" mathbackground="#FFFFFF" stretchy="false" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.cmml">(</mo><mrow id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.cmml"><mi id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.2" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.2.cmml">x</mi><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.1" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.1.cmml">+</mo><mn id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.3" mathbackground="#FFFFFF" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.3.cmml">2</mn></mrow><mo id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.3" mathbackground="#FFFFFF" stretchy="false" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.cmml">)</mo></mrow></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.12.12.2.2.2.2.m2.2b"><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2"><eq id="A4.T20.12.12.2.2.2.2.m2.2.2.3.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.3"></eq><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.4.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4"><minus id="A4.T20.12.12.2.2.2.2.m2.2.2.4.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.1"></minus><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2"><plus id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.1"></plus><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2"><csymbol cd="ambiguous" id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2">superscript</csymbol><ci id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.2">𝑥</ci><cn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.3.cmml" type="integer" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.2.3">2</cn></apply><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3"><times id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.1"></times><cn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.2.cmml" type="integer" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.2">3</cn><ci id="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.3.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.2.3.3">𝑥</ci></apply></apply><cn id="A4.T20.12.12.2.2.2.2.m2.2.2.4.3.cmml" type="integer" xref="A4.T20.12.12.2.2.2.2.m2.2.2.4.3">2</cn></apply><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2"><times id="A4.T20.12.12.2.2.2.2.m2.2.2.2.3.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.3"></times><apply id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1"><plus id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.1"></plus><ci id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.2">𝑥</ci><cn id="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.3.cmml" type="integer" xref="A4.T20.12.12.2.2.2.2.m2.1.1.1.1.1.1.3">1</cn></apply><apply id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1"><plus id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.1.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.1"></plus><ci id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.2.cmml" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.2">𝑥</ci><cn id="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.3.cmml" type="integer" xref="A4.T20.12.12.2.2.2.2.m2.2.2.2.2.1.1.3">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.12.12.2.2.2.2.m2.2c">x^{2}+3x-2=(x+1)(x+2)</annotation><annotation encoding="application/x-llamapun" id="A4.T20.12.12.2.2.2.2.m2.2d">italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT + 3 italic_x - 2 = ( italic_x + 1 ) ( italic_x + 2 )</annotation></semantics></math>. Simplify and find the value of <math alttext="x" class="ltx_Math" display="inline" id="A4.T20.13.13.3.3.3.3.m3.1"><semantics id="A4.T20.13.13.3.3.3.3.m3.1a"><mi id="A4.T20.13.13.3.3.3.3.m3.1.1" mathbackground="#FFFFFF" xref="A4.T20.13.13.3.3.3.3.m3.1.1.cmml">x</mi><annotation-xml encoding="MathML-Content" id="A4.T20.13.13.3.3.3.3.m3.1b"><ci id="A4.T20.13.13.3.3.3.3.m3.1.1.cmml" xref="A4.T20.13.13.3.3.3.3.m3.1.1">𝑥</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.13.13.3.3.3.3.m3.1c">x</annotation><annotation encoding="application/x-llamapun" id="A4.T20.13.13.3.3.3.3.m3.1d">italic_x</annotation></semantics></math>.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T20.15.15" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T20.15.15.2" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T20.15.15.2.2" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T20.15.15.2.2.2">Expanding the right side: <math alttext="(x+1)(x+2)=x^{2}+3x+2" class="ltx_Math" display="inline" id="A4.T20.14.14.1.1.1.m1.2" style="background-color:#E6E6E6;"><semantics id="A4.T20.14.14.1.1.1.m1.2a"><mrow id="A4.T20.14.14.1.1.1.m1.2.2" xref="A4.T20.14.14.1.1.1.m1.2.2.cmml"><mrow id="A4.T20.14.14.1.1.1.m1.2.2.2" xref="A4.T20.14.14.1.1.1.m1.2.2.2.cmml"><mrow id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.cmml"><mo id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.2" mathbackground="#E6E6E6" stretchy="false" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.cmml">(</mo><mrow id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.cmml"><mi id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.2" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.2.cmml">x</mi><mo id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.1" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.1.cmml">+</mo><mn id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.3" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.3.cmml">1</mn></mrow><mo id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.3" mathbackground="#E6E6E6" stretchy="false" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.cmml">)</mo></mrow><mo id="A4.T20.14.14.1.1.1.m1.2.2.2.3" xref="A4.T20.14.14.1.1.1.m1.2.2.2.3.cmml">⁢</mo><mrow id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.cmml"><mo id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.2" mathbackground="#E6E6E6" stretchy="false" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.cmml">(</mo><mrow id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.cmml"><mi id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.2" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.2.cmml">x</mi><mo id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.1" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.1.cmml">+</mo><mn id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.3" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.3.cmml">2</mn></mrow><mo id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.3" mathbackground="#E6E6E6" stretchy="false" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.cmml">)</mo></mrow></mrow><mo id="A4.T20.14.14.1.1.1.m1.2.2.3" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.3.cmml">=</mo><mrow id="A4.T20.14.14.1.1.1.m1.2.2.4" xref="A4.T20.14.14.1.1.1.m1.2.2.4.cmml"><msup id="A4.T20.14.14.1.1.1.m1.2.2.4.2" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2.cmml"><mi id="A4.T20.14.14.1.1.1.m1.2.2.4.2.2" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2.2.cmml">x</mi><mn id="A4.T20.14.14.1.1.1.m1.2.2.4.2.3" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2.3.cmml">2</mn></msup><mo id="A4.T20.14.14.1.1.1.m1.2.2.4.1" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.1.cmml">+</mo><mrow id="A4.T20.14.14.1.1.1.m1.2.2.4.3" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.cmml"><mn id="A4.T20.14.14.1.1.1.m1.2.2.4.3.2" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.2.cmml">3</mn><mo id="A4.T20.14.14.1.1.1.m1.2.2.4.3.1" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.1.cmml">⁢</mo><mi id="A4.T20.14.14.1.1.1.m1.2.2.4.3.3" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.3.cmml">x</mi></mrow><mo id="A4.T20.14.14.1.1.1.m1.2.2.4.1a" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.1.cmml">+</mo><mn id="A4.T20.14.14.1.1.1.m1.2.2.4.4" mathbackground="#E6E6E6" xref="A4.T20.14.14.1.1.1.m1.2.2.4.4.cmml">2</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.14.14.1.1.1.m1.2b"><apply id="A4.T20.14.14.1.1.1.m1.2.2.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2"><eq id="A4.T20.14.14.1.1.1.m1.2.2.3.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.3"></eq><apply id="A4.T20.14.14.1.1.1.m1.2.2.2.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.2"><times id="A4.T20.14.14.1.1.1.m1.2.2.2.3.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.2.3"></times><apply id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.cmml" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1"><plus id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.1.cmml" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.1"></plus><ci id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.2.cmml" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.2">𝑥</ci><cn id="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.3.cmml" type="integer" xref="A4.T20.14.14.1.1.1.m1.1.1.1.1.1.1.3">1</cn></apply><apply id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1"><plus id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.1.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.1"></plus><ci id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.2.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.2">𝑥</ci><cn id="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.3.cmml" type="integer" xref="A4.T20.14.14.1.1.1.m1.2.2.2.2.1.1.3">2</cn></apply></apply><apply id="A4.T20.14.14.1.1.1.m1.2.2.4.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4"><plus id="A4.T20.14.14.1.1.1.m1.2.2.4.1.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.1"></plus><apply id="A4.T20.14.14.1.1.1.m1.2.2.4.2.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2"><csymbol cd="ambiguous" id="A4.T20.14.14.1.1.1.m1.2.2.4.2.1.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2">superscript</csymbol><ci id="A4.T20.14.14.1.1.1.m1.2.2.4.2.2.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2.2">𝑥</ci><cn id="A4.T20.14.14.1.1.1.m1.2.2.4.2.3.cmml" type="integer" xref="A4.T20.14.14.1.1.1.m1.2.2.4.2.3">2</cn></apply><apply id="A4.T20.14.14.1.1.1.m1.2.2.4.3.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3"><times id="A4.T20.14.14.1.1.1.m1.2.2.4.3.1.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.1"></times><cn id="A4.T20.14.14.1.1.1.m1.2.2.4.3.2.cmml" type="integer" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.2">3</cn><ci id="A4.T20.14.14.1.1.1.m1.2.2.4.3.3.cmml" xref="A4.T20.14.14.1.1.1.m1.2.2.4.3.3">𝑥</ci></apply><cn id="A4.T20.14.14.1.1.1.m1.2.2.4.4.cmml" type="integer" xref="A4.T20.14.14.1.1.1.m1.2.2.4.4">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.14.14.1.1.1.m1.2c">(x+1)(x+2)=x^{2}+3x+2</annotation><annotation encoding="application/x-llamapun" id="A4.T20.14.14.1.1.1.m1.2d">( italic_x + 1 ) ( italic_x + 2 ) = italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT + 3 italic_x + 2</annotation></semantics></math>. Setting equal to the left-hand side and simplifying: <math alttext="x^{2}+3x-2=x^{2}+3x+2" class="ltx_Math" display="inline" id="A4.T20.15.15.2.2.2.m2.1" style="background-color:#E6E6E6;"><semantics id="A4.T20.15.15.2.2.2.m2.1a"><mrow id="A4.T20.15.15.2.2.2.m2.1.1" xref="A4.T20.15.15.2.2.2.m2.1.1.cmml"><mrow id="A4.T20.15.15.2.2.2.m2.1.1.2" xref="A4.T20.15.15.2.2.2.m2.1.1.2.cmml"><mrow id="A4.T20.15.15.2.2.2.m2.1.1.2.2" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.cmml"><msup id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.cmml"><mi id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.2" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.2.cmml">x</mi><mn id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.3" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.3.cmml">2</mn></msup><mo id="A4.T20.15.15.2.2.2.m2.1.1.2.2.1" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.1.cmml">+</mo><mrow id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.cmml"><mn id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.2" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.2.cmml">3</mn><mo id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.1" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.1.cmml">⁢</mo><mi id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.3" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.3.cmml">x</mi></mrow></mrow><mo id="A4.T20.15.15.2.2.2.m2.1.1.2.1" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.1.cmml">−</mo><mn id="A4.T20.15.15.2.2.2.m2.1.1.2.3" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.2.3.cmml">2</mn></mrow><mo id="A4.T20.15.15.2.2.2.m2.1.1.1" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.1.cmml">=</mo><mrow id="A4.T20.15.15.2.2.2.m2.1.1.3" xref="A4.T20.15.15.2.2.2.m2.1.1.3.cmml"><msup id="A4.T20.15.15.2.2.2.m2.1.1.3.2" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2.cmml"><mi id="A4.T20.15.15.2.2.2.m2.1.1.3.2.2" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2.2.cmml">x</mi><mn id="A4.T20.15.15.2.2.2.m2.1.1.3.2.3" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2.3.cmml">2</mn></msup><mo id="A4.T20.15.15.2.2.2.m2.1.1.3.1" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.1.cmml">+</mo><mrow id="A4.T20.15.15.2.2.2.m2.1.1.3.3" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.cmml"><mn id="A4.T20.15.15.2.2.2.m2.1.1.3.3.2" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.2.cmml">3</mn><mo id="A4.T20.15.15.2.2.2.m2.1.1.3.3.1" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.1.cmml">⁢</mo><mi id="A4.T20.15.15.2.2.2.m2.1.1.3.3.3" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.3.cmml">x</mi></mrow><mo id="A4.T20.15.15.2.2.2.m2.1.1.3.1a" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.1.cmml">+</mo><mn id="A4.T20.15.15.2.2.2.m2.1.1.3.4" mathbackground="#E6E6E6" xref="A4.T20.15.15.2.2.2.m2.1.1.3.4.cmml">2</mn></mrow></mrow><annotation-xml encoding="MathML-Content" id="A4.T20.15.15.2.2.2.m2.1b"><apply id="A4.T20.15.15.2.2.2.m2.1.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1"><eq id="A4.T20.15.15.2.2.2.m2.1.1.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.1"></eq><apply id="A4.T20.15.15.2.2.2.m2.1.1.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2"><minus id="A4.T20.15.15.2.2.2.m2.1.1.2.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.1"></minus><apply id="A4.T20.15.15.2.2.2.m2.1.1.2.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2"><plus id="A4.T20.15.15.2.2.2.m2.1.1.2.2.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.1"></plus><apply id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2"><csymbol cd="ambiguous" id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2">superscript</csymbol><ci id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.2">𝑥</ci><cn id="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.3.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.2.3">2</cn></apply><apply id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3"><times id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.1"></times><cn id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.2.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.2">3</cn><ci id="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.3.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.2.2.3.3">𝑥</ci></apply></apply><cn id="A4.T20.15.15.2.2.2.m2.1.1.2.3.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.2.3">2</cn></apply><apply id="A4.T20.15.15.2.2.2.m2.1.1.3.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3"><plus id="A4.T20.15.15.2.2.2.m2.1.1.3.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.1"></plus><apply id="A4.T20.15.15.2.2.2.m2.1.1.3.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2"><csymbol cd="ambiguous" id="A4.T20.15.15.2.2.2.m2.1.1.3.2.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2">superscript</csymbol><ci id="A4.T20.15.15.2.2.2.m2.1.1.3.2.2.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2.2">𝑥</ci><cn id="A4.T20.15.15.2.2.2.m2.1.1.3.2.3.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.3.2.3">2</cn></apply><apply id="A4.T20.15.15.2.2.2.m2.1.1.3.3.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3"><times id="A4.T20.15.15.2.2.2.m2.1.1.3.3.1.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.1"></times><cn id="A4.T20.15.15.2.2.2.m2.1.1.3.3.2.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.2">3</cn><ci id="A4.T20.15.15.2.2.2.m2.1.1.3.3.3.cmml" xref="A4.T20.15.15.2.2.2.m2.1.1.3.3.3">𝑥</ci></apply><cn id="A4.T20.15.15.2.2.2.m2.1.1.3.4.cmml" type="integer" xref="A4.T20.15.15.2.2.2.m2.1.1.3.4">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T20.15.15.2.2.2.m2.1c">x^{2}+3x-2=x^{2}+3x+2</annotation><annotation encoding="application/x-llamapun" id="A4.T20.15.15.2.2.2.m2.1d">italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT + 3 italic_x - 2 = italic_x start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT + 3 italic_x + 2</annotation></semantics></math>. Subtracting …</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the top five instruction-response pairs identified as most difficult by the Difficulty metric.  The Difficulty metric, as defined in the paper, assesses the challenge posed by an instruction based on the performance of multiple large language models (LLMs). Lower scores indicate greater difficulty.  Each entry includes the instruction (problem) and the corresponding model-generated response. The examples are illustrative of the kinds of challenging instructions the Difficulty metric highlights.
> <details>
> <summary>read the caption</summary>
> Table 20: Top-5 instruction-response pairs by Difficulty.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T21.3">
<tr class="ltx_tr" id="A4.T21.3.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A4.T21.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.1.1.1">
<span class="ltx_p" id="A4.T21.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T21.3.1.1.1.1.1">1. I am using Ubuntu 20.04 and I’m trying to install an older version of OpenCV (OpenCV 3.4.6) alongside my existing OpenCV 4.5.5 installation.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T21.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.2.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T21.3.2.1.1.1">Installing an older version of OpenCV alongside a newer version requires careful handling to avoid conflicts. Here’s a step-by-step guide to help you install OpenCV 3.4.6 alongside OpenCV 4.5.5 on Ubuntu 20.04: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T21.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T21.3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T21.3.3.1.1.1.1">2. You’re a chef, and you’re known for your exotic spices and unique flavor combinations. Can you create a dish that will wow a group of food critics who are known for being particularly discerning?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T21.3.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.4.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T21.3.4.1.1.1">What an exciting challenge! I relish the opportunity to push the boundaries of culinary innovation and delight the palates of even the most discerning food critics. After some careful consideration, I propose the following dish: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T21.3.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.5.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T21.3.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T21.3.5.1.1.1.1">3. I’m planning a road trip across the United States, and I’m looking for some fun and unique experiences to add to my itinerary. Can you suggest some unusual and offbeat attractions that I won’t want to miss?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T21.3.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.6.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T21.3.6.1.1.1">What an adventure! I’d be delighted to help you discover some quirky and offbeat attractions across the United States. Here are some unusual experiences to add to your road trip itinerary: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T21.3.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.7.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T21.3.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T21.3.7.1.1.1.1">4. I’m planning a trip to Italy and want to be fitted for clothes at a high-end tailor in Italy. Does anyone know of any high-end tailors in Italy that offer made-to-measure or bespoke services?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T21.3.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.8.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T21.3.8.1.1.1">Italy is renowned for its exceptional tailoring, and you’ll find numerous high-end tailors offering made-to-measure and bespoke services. Here are some of the most esteemed tailors in Italy: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T21.3.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T21.3.9.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T21.3.9.1.1.1.1">5. How to compile and install OpenCV 4.5.5 on Ubuntu 20.04?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T21.3.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T21.3.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T21.3.10.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T21.3.10.1.1.1">Compiling and Installing OpenCV 4.5.5 on Ubuntu 20.04 Here’s a comprehensive guide on compiling and installing OpenCV 4.5.5 from source on Ubuntu 20.04. **Prerequisites:** * **Ubuntu 20.04 LTS:** This guide …</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents five example instruction-response pairs that were identified as having high separability. Separability, in the context of this research paper, is a metric that measures the diversity of model responses to a given instruction.  High separability indicates that different large language models (LLMs) produce responses with varying quality for the same instruction. These examples are particularly useful for differentiating between the capabilities of various LLMs because they highlight instructions where the models show significant differences in performance.
> <details>
> <summary>read the caption</summary>
> Table 21: Top-5 instruction-response pairs by Separability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T22.3">
<tr class="ltx_tr" id="A4.T22.3.1">
<td class="ltx_td ltx_align_justify ltx_border_tt" id="A4.T22.3.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.1.1.1">
<span class="ltx_p" id="A4.T22.3.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T22.3.1.1.1.1.1">1. I am looking for a compiler (specifically, an assembler) for a historic computer, specifically an Interdata 8/32.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T22.3.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.2.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T22.3.2.1.1.1">You’re on a fascinating quest! Finding an assembler for a historic computer like the Interdata 8/32 can be quite a challenge. Here’s a breakdown of where to look and what to consider: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T22.3.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T22.3.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T22.3.3.1.1.1.1">2. I have a PHP function that currently grabs all videos from a vimeo video page. This function uses cURL to fetch the page content, then preg_matches it for a specific class name to extract the video IDs.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T22.3.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.4.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T22.3.4.1.1.1">It sounds like you’re on the right track! Using cURL to fetch the page content and then using regular expressions (preg_match) to extract video IDs is a common approach. However, relying solely on HTML structure and class names can be fragile. …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T22.3.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.5.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T22.3.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T22.3.5.1.1.1.1">3. I’m a mobile developer and I have been experiencing an unusual issue in my android application where a RecyclerView adapter is not calling its onBindVieverHolder method when the RecyclerView is being scrolled more than 50-60 items high. How can I troubleshoot this issue?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T22.3.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.6.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T22.3.6.1.1.1">Let’s tackle this RecyclerView issue. Here’s a breakdown of common causes and debugging strategies for when ‘onBindViewHolder‘ isn’t firing as expected: **Understanding the Problem** The ‘onBindViewHolder‘ method is crucial for populating your RecyclerView items with data. If it’s not being called beyond a certain scroll point,…</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T22.3.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.7.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T22.3.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T22.3.7.1.1.1.1">4. What type of software exists for debugging and simulating network simulations in Python?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify" id="A4.T22.3.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.8.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T22.3.8.1.1.1">Python offers a rich ecosystem of tools for debugging and simulating network simulations. Here’s a breakdown of some popular options, categorized by their focus: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_border_t" id="A4.T22.3.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T22.3.9.1.1.1"><span class="ltx_text ltx_font_bold" id="A4.T22.3.9.1.1.1.1">5. I am using LinearGradientBrush class to draw a gradient in WPF, but the start and end points of the gradient are not showing correctly. The ‘StartPoint‘ property is set to ‘PointF(0, 0)‘ and the ‘EndPoint‘ property is set to ‘PointF(1, 1)‘, but the gradient appears to be drawn all the way to the bottom-right corner of the control.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T22.3.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_border_bb" id="A4.T22.3.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T22.3.10.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T22.3.10.1.1.1">The issue you’re facing is likely due to the way WPF’s coordinate system works in conjunction with the ‘LinearGradientBrush‘. **Understanding WPF’s Coordinate System** WPF uses a coordinate system where (0, 0) is the top-left corner of the element, and (1, 1) is the bottom-right corner. This means your current settings are telling the gradient …</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the top five instruction-response pairs that exhibit the highest stability scores according to the CROWDSELECT framework.  Stability, in this context, refers to the consistency of model performance across different model families (varying in size).  Instructions selected for this table show consistent ranking (i.e., similar performance across models of different sizes).  The examples illustrate instruction-response pairs that are particularly well-suited for reinforcing well-grounded alignment signals during model fine-tuning.
> <details>
> <summary>read the caption</summary>
> Table 22: Top-5 instruction-response pairs by Stability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T23.3.1">
<tr class="ltx_tr" id="A4.T23.3.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T23.3.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.1.1.1">
<span class="ltx_p" id="A4.T23.3.1.1.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A4.T23.3.1.1.1.1.1.1">1. What is GD-ROM and what is its importance in the history of video game consoles</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T23.3.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.2.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T23.3.1.2.1.1.1" style="width:433.6pt;">GD-ROM (Gigabyte Disc Read-Only Memory) is a proprietary optical disc format developed by Yamaha for the Sega Dreamcast console in the late 1990s. It’s a crucial part of the Dreamcast’s architecture and played a significant role in the history of video game consoles. Here’s what makes GD-ROM important: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.3" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T23.3.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.3.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T23.3.1.3.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A4.T23.3.1.3.1.1.1.1">2. I am looking for a list of all the Oz books, including the original 14 that L. Frank Baum wrote, as well as the many spin-off and unofficial books that have been written.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T23.3.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.4.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T23.3.1.4.1.1.1" style="width:433.6pt;">You’re in for a wild ride through Oz! It’s impossible to list *every* Oz book ever written, as there are hundreds, but here’s a breakdown to get you started: **1. The Original 14 by L. Frank Baum: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.5" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T23.3.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.5.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T23.3.1.5.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A4.T23.3.1.5.1.1.1.1">3. I want to install Kaldi on a Rust-based Debian Buster machine.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T23.3.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.6.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T23.3.1.6.1.1.1" style="width:433.6pt;">Let’s get Kaldi up and running on your Rust-based Debian Buster system. Here’s a comprehensive guide: **1. Prerequisites** …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.7" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T23.3.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.7.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T23.3.1.7.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A4.T23.3.1.7.1.1.1.1">4. What are some of the lesser-known ski resorts in the US that are considered to be difficult to access?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T23.3.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.8.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T23.3.1.8.1.1.1" style="width:433.6pt;">You’re looking for hidden gems, the kind of ski resorts that require a bit of effort to reach but reward you with uncrowded slopes and a sense of adventure! Here are a few lesser-known, hard-to-access ski resorts in the US: …</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.9" style="background-color:#FFFFFF;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T23.3.1.9.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.9.1.1" style="background-color:#FFFFFF;">
<span class="ltx_p" id="A4.T23.3.1.9.1.1.1" style="width:433.6pt;"><span class="ltx_text ltx_font_bold" id="A4.T23.3.1.9.1.1.1.1">5. What are some notable demolished or lost buildings and structures in NYC landmarks that are no longer standing?</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T23.3.1.10" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T23.3.1.10.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T23.3.1.10.1.1" style="background-color:#E6E6E6;">
<span class="ltx_p" id="A4.T23.3.1.10.1.1.1" style="width:433.6pt;">What a great question! New York City’s ever-changing landscape has led to the loss of many iconic buildings and structures over the years. Here are some notable demolished or lost NYC landmarks that are no longer standing: …</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the top 5 instruction-response pairs selected by the CrowdSelect method.  CrowdSelect is a novel approach to selecting high-quality instruction data for fine-tuning language models. The method leverages multiple LLMs' responses and reward scores to capture diverse facets of each instruction. These top 5 examples showcase the type of instruction-response pairs deemed most valuable by the CrowdSelect algorithm, highlighting their diversity, difficulty and overall quality in the context of effective language model fine-tuning. This provides insight into the characteristics of the data that improves the performance of downstream language models.
> <details>
> <summary>read the caption</summary>
> Table 23: Top-5 instruction-response pairs by CrowdSelect.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.01836/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.01836/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}