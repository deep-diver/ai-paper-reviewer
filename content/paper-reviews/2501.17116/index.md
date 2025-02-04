---
title: "Optimizing Large Language Model Training Using FP4 Quantization"
summary: "First-ever FP4 training framework for LLMs achieves accuracy comparable to BF16 and FP8, enabling efficient ultra-low precision training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Microsoft Research",]
showSummary: true
date: 2025-01-28
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.17116 {{< /keyword >}}
{{< keyword icon="writer" >}} Ruizhe Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-29 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.17116" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.17116" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.17116/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Training large language models (LLMs) demands massive computational resources, driving the search for more efficient methods.  Quantized training, using lower-precision numbers, is a promising approach, but achieving good accuracy with very low-precision (like 4-bit floating point, or FP4) has been challenging due to significant errors introduced by the quantization process.  Prior work successfully demonstrated FP8 (8-bit) quantization, but extending this to FP4 has remained elusive. 

This work introduces the first-ever training framework for LLMs using FP4.  The key innovation lies in two areas: a new differentiable quantization estimator that more accurately estimates weight updates during training, and a strategy to handle the problem of outlier values in activations (the outputs of neurons), preventing large errors.  Experiments demonstrate that their approach achieves accuracy similar to BF16 and FP8, while scaling effectively to large models (13 billion parameters).  The results suggest that FP4 may become a practical approach for efficient LLM training, especially with upcoming hardware supporting the format.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Developed a novel FP4 training framework for LLMs, addressing challenges of significant quantization errors and limited representation capacity. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Achieved accuracy comparable to BF16 and FP8 with minimal degradation, scaling effectively to 13B-parameter LLMs trained on up to 100B tokens. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Introduced a differentiable quantization estimator and an outlier clamping and compensation strategy to enhance the stability and accuracy of FP4 training. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it addresses the critical need for efficient large language model (LLM) training**, a major bottleneck in current AI research.  By demonstrating the feasibility of FP4 quantization, **it opens up new avenues for reducing training costs and energy consumption**, paving the way for training even larger and more powerful models.  The proposed methods and their validation are highly relevant to researchers working on LLM optimization and hardware acceleration, influencing the direction of future research.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T1.12.12">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T1.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.3.3.3.4">Clamp</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.3.3.3.5">Comp</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.T1.3.3.3.6">Quantile</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.1.1.1.1">Sim <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.2.2.2.2">MSE <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T1.3.3.3.3">SNR <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.4.4.1"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><times id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">×</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.4.4.2">—</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.4.4.4.3">—</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.4">92.19%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.5">0.1055</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.4.4.4.6">8.31</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.5.5.5.1"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><csymbol cd="latexml" id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.6.6.2"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m1.1"><semantics id="S3.T1.6.6.6.2.m1.1a"><mo id="S3.T1.6.6.6.2.m1.1.1" xref="S3.T1.6.6.6.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m1.1b"><times id="S3.T1.6.6.6.2.m1.1.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m1.1d">×</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.6.6.3">99.9</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.4">98.83%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.5">0.0366</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.6">14.25</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.7.7.7.1"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.8.8.8.2"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m1.1"><semantics id="S3.T1.8.8.8.2.m1.1a"><mo id="S3.T1.8.8.8.2.m1.1.1" xref="S3.T1.8.8.8.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m1.1b"><csymbol cd="latexml" id="S3.T1.8.8.8.2.m1.1.1.cmml" xref="S3.T1.8.8.8.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.8.8.8.3">99.9</th>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4">99.61%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.5">0.0245</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.6">15.31</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.9.9.9.1"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><csymbol cd="latexml" id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.10.10.10.2"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.10.10.10.2.m1.1"><semantics id="S3.T1.10.10.10.2.m1.1a"><mo id="S3.T1.10.10.10.2.m1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.2.m1.1b"><csymbol cd="latexml" id="S3.T1.10.10.10.2.m1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.2.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.10.10.10.3">99</th>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.4">100%</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.5">0.0099</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.6">18.38</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.11.11.11.1"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mo id="S3.T1.11.11.11.1.m1.1.1" xref="S3.T1.11.11.11.1.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><csymbol cd="latexml" id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.12.12.12.2"><math alttext="\surd" class="ltx_Math" display="inline" id="S3.T1.12.12.12.2.m1.1"><semantics id="S3.T1.12.12.12.2.m1.1a"><mo id="S3.T1.12.12.12.2.m1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.cmml">√</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.2.m1.1b"><csymbol cd="latexml" id="S3.T1.12.12.12.2.m1.1.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1">square-root</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.2.m1.1c">\surd</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.2.m1.1d">√</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S3.T1.12.12.12.3">97</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.12.4">100%</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.12.5">0.0068</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.12.6">20.88</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of the mathematical accuracy between the original activation tensors (before quantization) and their quantized counterparts (after applying the outlier clamping and compensation method) from the LLaMA 1.3B model.  The metrics used for comparison include cosine similarity (SIM), mean squared error (MSE), and signal-to-noise ratio (SNR).  The results are averaged across all activation tensors and are based on data from 30,000 training iterations.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative analysis of mathematical accuracy between original and quantized activation tensors. Results represent the average values obtained across all activation tensors on the 30,000 training iterations of the LLaMA 1.3B model.
> </details>





### In-depth insights


#### FP4 Training Framework
An FP4 training framework for large language models (LLMs) is presented, addressing challenges of significant quantization errors and limited representational capacity inherent in ultra-low precision training.  **Two key innovations** are introduced: a differentiable quantization estimator for accurate weight updates and an outlier clamping and compensation strategy to prevent activation collapse.  The framework uses a mixed-precision training scheme and vector-wise quantization for stability.  **Results demonstrate comparable accuracy to BF16 and FP8**, scaling effectively to 13B-parameter LLMs trained on up to 100B tokens, which sets a foundation for efficient ultra-low precision training on next-generation hardware supporting FP4.  **The differentiable quantization estimator** improves gradient updates, while **outlier clamping and compensation** maintains accuracy by addressing outlier values in activation tensors.  Overall, this framework presents a significant advancement in efficient LLM training, potentially leading to substantial cost and energy savings.

#### DGE & OCC Methods
The research paper introduces two novel methods, **Differentiable Gradient Estimator (DGE)** and **Outlier Clamping and Compensation (OCC)**, to address the challenges of training large language models (LLMs) using FP4 quantization.  DGE tackles the non-differentiable nature of quantization functions by approximating them with a differentiable function, enabling more accurate gradient updates during backpropagation and mitigating vanishing gradients.  This is crucial because direct quantization leads to significant errors.  OCC addresses the issue of outlier activation values, which disproportionately increase the dynamic range of the tensors and cause underflow after quantization.  It uses a combination of outlier clamping, limiting the extreme values, and compensation, using a sparse auxiliary matrix to preserve information lost through clamping.  **Together, DGE and OCC work synergistically**, ensuring the stability of FP4 training by improving the precision of weight updates and preventing activation collapse.  The effectiveness of these methods is demonstrated experimentally, showing that the accuracy of LLMs trained using FP4 is comparable to BF16 and FP8, paving the way for efficient, low-bit precision training using next-generation hardware.

#### LLM Quantization
LLM quantization, the process of reducing the precision of large language model (LLM) parameters and activations, is a crucial technique for improving training efficiency and reducing computational costs.  **Lower precision (e.g., FP8, FP4) allows for faster computations and reduced memory footprint.** However, this comes at the cost of potential accuracy degradation due to quantization errors.  The paper explores the challenges of using extremely low-precision quantization, specifically FP4, and proposes innovative methods to mitigate accuracy loss.  These include **a differentiable quantization estimator for precise weight updates and an outlier clamping and compensation strategy to prevent activation collapse.**  The results show that the proposed framework can achieve accuracy comparable to higher-precision methods such as BF16, demonstrating the feasibility of ultra-low precision training for LLMs. This opens up possibilities for training even larger models with limited computational resources, and **highlights the importance of hardware advancements to fully realize the potential of FP4.**

#### Ablation Study Results
An ablation study systematically removes components of a proposed method to assess their individual contributions.  In the context of this research paper, an ablation study on FP4 quantization for large language models (LLMs) would likely explore the impact of several key techniques. Removing the differentiable gradient estimator (DGE) would show how much it contributes to accurate gradient calculation, which is essential to prevent vanishing gradients inherent in low-precision training.  Similarly, disabling the outlier clamping and compensation (OCC) strategy would reveal its role in handling the long-tailed distribution of activation values, which are often problematic during low-bit quantization.  **The results would quantify the accuracy degradation caused by each removed component, highlighting their importance to maintaining model performance with FP4.** By comparing against the full method and various combinations, a comprehensive understanding of each technique's relative contribution can be derived.  **The study may also analyze the tradeoffs involved**, such as reduced computational cost versus accuracy loss, for each modification, providing a clear picture of the overall effectiveness and efficiency of the proposed FP4 framework.

#### Future Work
Future research directions stemming from this FP4 quantization work on LLMs are plentiful.  **Extending the framework to support other LLM architectures beyond LLaMA 2 is crucial for broader applicability.**  The current implementation relies on FP8 emulation on H100 GPUs, limiting true performance gains; therefore, **evaluating the framework on next-generation hardware with native FP4 support is essential** to quantify speed and efficiency improvements.  **Investigating alternative quantization methods and exploring the trade-offs between accuracy and computational cost is important.**  Currently, the outlier clamping strategy addresses extreme values; a more nuanced technique could potentially improve results.  Finally, **deeper exploration of the interaction between FP4 quantization and other model optimization techniques, such as model pruning or knowledge distillation,** could yield further performance boosts. The research also should include a thorough error analysis to pinpoint areas for optimization and guide future improvements.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S3.T2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.T2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.1">Model Size</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.2">Precision</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.3.1">Average</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.4">PiQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.5">Hellaswag</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.6">ObQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.7">Arc-C</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.8">Arc-E</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.9">BoolQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.10">LogiQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.11">SciQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S3.T2.1.1.1.12">Lambada</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T2.1.2.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.2.1.1.1">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.2">BF16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.2.1.3.1">53.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.4">71.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.5">50.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.6">36.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.7">36.69</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.8">68.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.9">57.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.10">30.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.11">83.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.1.12">43.84</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3.2">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.1">FP4(Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.2.2.1">53.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.3">70.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.4">50.82</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.5">36.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.6">36.86</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.7">67.47</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.8">58.23</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.9">29.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.10">83.90</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2.11">44.30</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.4.3.1.1">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.2">BF16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.4.3.3.1">53.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.4">71.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.5">52.03</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.6">37.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.7">38.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.8">67.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.9">60.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.10">27.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.11">85.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3.12">44.56</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5.4">
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.1">FP4(Ours)</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.2.1">54.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.3">71.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.4">52.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.5">38.40</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.6">39.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.7">67.97</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.8">62.20</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.9">27.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.10">84.70</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4.11">43.88</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.1.6.5.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.6.5.1.1">13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.2">BF16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.3"><span class="ltx_text ltx_font_bold" id="S3.T2.1.6.5.3.1">54.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.4">72.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.5">53.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.6">38.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.7">38.82</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.8">67.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.9">57.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.10">29.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.11">86.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5.12">44.87</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7.6">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.1">FP4(Ours)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.2"><span class="ltx_text ltx_font_bold" id="S3.T2.1.7.6.2.1">54.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.3">73.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.4">54.12</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.5">39.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.6">39.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.7">67.89</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.8">55.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.9">30.88</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.10">85.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.6.11">46.89</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot evaluations on several downstream tasks for language models trained using both BF16 (baseline) and FP4 precisions.  Different model sizes (1.3B, 7B, and 13B parameters) are included to compare performance across scales.  The tasks evaluated cover a range of reasoning and language understanding capabilities, and the table shows the average scores achieved by each model variant on each task, enabling a direct comparison of accuracy between the two training methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Zero-shot evaluation for downstream tasks between BF16 models and FP4 models under different model sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A1.T3.3.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.3.3.4.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="A1.T3.3.3.4.1.1"></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="15" id="A1.T3.3.3.4.1.2"><span class="ltx_text ltx_font_bold" id="A1.T3.3.3.4.1.2.1">Binary Sequence</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T3.3.3.5.2.1"><span class="ltx_text ltx_font_bold" id="A1.T3.3.3.5.2.1.1">Format</span></th>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.2">1111</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.3">1110</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.4">1101</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.5">1100</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.6">1011</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.7">1010</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.8">1101</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.9">1000/0000</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.10">0001</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.11">0010</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.12">0011</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.13">0100</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.14">0101</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.15">0110</td>
<td class="ltx_td ltx_align_center" id="A1.T3.3.3.5.2.16">0111</td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A1.T3.1.1.1.2"><span class="ltx_text ltx_font_typewriter" id="A1.T3.1.1.1.2.1">e1m2</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.3">-3.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.4">-3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.5">-2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.6">-2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.7">-1.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.8">-1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.9">-0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T3.1.1.1.1.m1.1"><semantics id="A1.T3.1.1.1.1.m1.1a"><mo id="A1.T3.1.1.1.1.m1.1.1" xref="A1.T3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="A1.T3.1.1.1.1.m1.1.1.cmml" xref="A1.T3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.1.m1.1d">±</annotation></semantics></math>0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.10">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.11">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.12">1.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.13">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.14">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.15">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T3.1.1.1.16">3.5</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_r" id="A1.T3.2.2.2.2"><span class="ltx_text ltx_font_typewriter" id="A1.T3.2.2.2.2.1">e2m1</span></th>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.3">-6</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.4">-4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.5">-3</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.6">-2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.7">-1.5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.8">-1</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.9">-0.5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T3.2.2.2.1.m1.1"><semantics id="A1.T3.2.2.2.1.m1.1a"><mo id="A1.T3.2.2.2.1.m1.1.1" xref="A1.T3.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.2.1.m1.1b"><csymbol cd="latexml" id="A1.T3.2.2.2.1.m1.1.1.cmml" xref="A1.T3.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.2.1.m1.1d">±</annotation></semantics></math>0</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.10">0.5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.11">1</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.12">1.5</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.13">2</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.14">3</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.15">4</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2.16">6</td>
</tr>
<tr class="ltx_tr" id="A1.T3.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="A1.T3.3.3.3.2"><span class="ltx_text ltx_font_typewriter" id="A1.T3.3.3.3.2.1">e3m0</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.3">-16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.4">-8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.5">-4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.6">-2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.7">-1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.8">-0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.9">-0.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.1">
<math alttext="\pm" class="ltx_Math" display="inline" id="A1.T3.3.3.3.1.m1.1"><semantics id="A1.T3.3.3.3.1.m1.1a"><mo id="A1.T3.3.3.3.1.m1.1.1" xref="A1.T3.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="A1.T3.3.3.3.1.m1.1b"><csymbol cd="latexml" id="A1.T3.3.3.3.1.m1.1.1.cmml" xref="A1.T3.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="A1.T3.3.3.3.1.m1.1d">±</annotation></semantics></math>0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.10">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.11">0.5</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.12">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.13">2</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.14">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.15">8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.3.3.3.16">16</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table shows the representation of numbers in different 4-bit floating-point formats (FP4).  FP4 is an emerging format for low-precision computing, and different configurations exist, varying in the number of bits assigned to the exponent and mantissa. The table lists the binary representation and the corresponding numerical value for each possible combination in three different FP4 formats: E1M2, E2M1, and E3M0. The formats differ in their dynamic range and precision.  Understanding these formats is crucial for implementing FP4 quantization in machine learning models.
> <details>
> <summary>read the caption</summary>
> Table 3: FP4 Quantization Table under different FP4 formats.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.17116/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.17116/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}