---
title: "LIMO: Less is More for Reasoning"
summary: "LIMO:  Few examples unlock complex reasoning in LLMs, challenging assumptions about data-hungry models and achieving state-of-the-art results with minimal training."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Generative Al Research",]
showSummary: true
date: 2025-02-05
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.03387 {{< /keyword >}}
{{< keyword icon="writer" >}} Yixin Ye et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-06 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.03387" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.03387" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.03387/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current research largely assumes that complex reasoning in large language models (LLMs) necessitates enormous training datasets, often exceeding 100,000 examples. This data-intensive approach is computationally expensive and resource-demanding, posing significant challenges for researchers.  Moreover, the prevailing belief is that supervised fine-tuning primarily leads to memorization rather than true generalization, limiting the broad applicability of these models.

The paper introduces LIMO, a novel approach that challenges these assumptions.  LIMO demonstrates that complex mathematical reasoning can be effectively achieved using a surprisingly small number of carefully curated training samples (only 817). This significantly reduces the need for massive datasets and computational resources.  Furthermore, LIMO's success extends beyond in-domain tasks; it exhibits exceptional out-of-distribution generalization capabilities, outperforming models trained on significantly larger datasets.  The researchers attribute this success to a synergistic combination of rich pre-trained knowledge and efficient computational strategies during inference, which they term the 'Less-is-More' hypothesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Complex mathematical reasoning abilities in LLMs can be effectively elicited with surprisingly few examples, contradicting the belief that massive datasets are necessary. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The LIMO model demonstrates unprecedented performance and efficiency in mathematical reasoning, outperforming models trained on 100x more data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The Less-Is-More Reasoning Hypothesis suggests that sophisticated reasoning capabilities emerge from the synergy of rich pre-trained knowledge and sufficient computational resources at inference time. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it challenges the common assumption that complex reasoning in LLMs requires massive datasets.  **Its findings on data efficiency have significant implications for model training and resource optimization**, opening exciting avenues for future research in data-efficient AI.

------
#### Visual Insights



![](https://arxiv.org/html/2502.03387/x1.png)

> 🔼 This figure showcases the performance of the LIMO model compared to NuminaMath.  LIMO demonstrates significantly better performance across various mathematical and multi-disciplinary benchmarks, achieving this with a drastically smaller number of training samples (817 samples for LIMO vs. 100,000 for NuminaMath).  The chart visually represents LIMO's superior performance across multiple evaluation metrics, highlighting its efficiency and effectiveness even with limited data. The results suggest that LIMO's superior performance is due to its capability to effectively utilize a pre-trained knowledge base, thus reducing the need for extensive supervised fine-tuning.
> <details>
> <summary>read the caption</summary>
> Figure 1:  LIMO achieves substantial improvement over NuminaMath with fewer samples while excelling across diverse mathematical and multi-discipline benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1">
<tr class="ltx_tr" id="S2.T1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="S2.T1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.1">
<span class="ltx_p" id="S2.T1.1.1.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1.1">Aspect</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_tt" id="S2.T1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.2.1">
<span class="ltx_p" id="S2.T1.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1.1.1">General Alignment (LIMA)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_tt" id="S2.T1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.3.1">
<span class="ltx_p" id="S2.T1.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.3.1.1.1">Complex Reasoning (LIMO)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.1.1">
<span class="ltx_p" id="S2.T1.1.2.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.2.1.1.1.1">Core Capability</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="S2.T1.1.2.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.2.1">
<span class="ltx_p" id="S2.T1.1.2.2.1.1">Response format and style adaptation for general-purpose interaction</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.2.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.2.3.1">
<span class="ltx_p" id="S2.T1.1.2.3.1.1">Multi-step logical inference and complex cognitive reasoning</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.1.1">
<span class="ltx_p" id="S2.T1.1.3.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.3.1.1.1.1">Knowledge Foundation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="S2.T1.1.3.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.2.1">
<span class="ltx_itemize" id="S2.I1">
<span class="ltx_item" id="S2.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I1.i1.p1">
<span class="ltx_p" id="S2.I1.i1.p1.1">General text corpus sufficient</span>
</span></span>
<span class="ltx_item" id="S2.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I1.i2.p1">
<span class="ltx_p" id="S2.I1.i2.p1.1">Social interaction patterns</span>
</span></span>
<span class="ltx_item" id="S2.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I1.i3.p1">
<span class="ltx_p" id="S2.I1.i3.p1.1">Basic world knowledge</span>
</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.3.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.3.3.1">
<span class="ltx_itemize" id="S2.I2">
<span class="ltx_item" id="S2.I2.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I2.i1.p1">
<span class="ltx_p" id="S2.I2.i1.p1.1">Diverse reasoning paradigms and problem-solving approaches</span>
</span></span>
<span class="ltx_item" id="S2.I2.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I2.i2.p1">
<span class="ltx_p" id="S2.I2.i2.p1.1">Rich context for exploring alternative solutions</span>
</span></span>
<span class="ltx_item" id="S2.I2.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I2.i3.p1">
<span class="ltx_p" id="S2.I2.i3.p1.1">Deep conceptual connections across domains</span>
</span></span>
</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.1.1">
<span class="ltx_p" id="S2.T1.1.4.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.4.1.1.1.1">Computation Requirements</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="S2.T1.1.4.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.2.1">
<span class="ltx_itemize" id="S2.I3">
<span class="ltx_item" id="S2.I3.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I3.i1.p1">
<span class="ltx_p" id="S2.I3.i1.p1.1">Fixed-length generation sufficient</span>
</span></span>
<span class="ltx_item" id="S2.I3.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I3.i2.p1">
<span class="ltx_p" id="S2.I3.i2.p1.1">Single-pass processing adequate</span>
</span></span>
<span class="ltx_item" id="S2.I3.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I3.i3.p1">
<span class="ltx_p" id="S2.I3.i3.p1.1">Limited context window acceptable</span>
</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.4.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.4.3.1">
<span class="ltx_itemize" id="S2.I4">
<span class="ltx_item" id="S2.I4.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I4.i1.p1">
<span class="ltx_p" id="S2.I4.i1.p1.1">Scalable inference-time computation essential</span>
</span></span>
<span class="ltx_item" id="S2.I4.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I4.i2.p1">
<span class="ltx_p" id="S2.I4.i2.p1.1">Extended reasoning chain support required</span>
</span></span>
<span class="ltx_item" id="S2.I4.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I4.i3.p1">
<span class="ltx_p" id="S2.I4.i3.p1.1">Large cognitive workspace necessary</span>
</span></span>
</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S2.T1.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.1.1">
<span class="ltx_p" id="S2.T1.1.5.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.5.1.1.1.1">Historical Prerequisites</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="S2.T1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.2.1">
<span class="ltx_p" id="S2.T1.1.5.2.1.1">Emerged in 2023, requiring only:</span>
<span class="ltx_itemize" id="S2.I5">
<span class="ltx_item" id="S2.I5.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I5.i1.p1">
<span class="ltx_p" id="S2.I5.i1.p1.1">Base models with general knowledge</span>
</span></span>
<span class="ltx_item" id="S2.I5.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I5.i2.p1">
<span class="ltx_p" id="S2.I5.i2.p1.1">Basic prompt engineering techniques</span>
</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S2.T1.1.5.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.5.3.1">
<span class="ltx_p" id="S2.T1.1.5.3.1.1">Emerged in 2025, requiring convergence of:</span>
<span class="ltx_itemize" id="S2.I6">
<span class="ltx_item" id="S2.I6.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I6.i1.p1">
<span class="ltx_p" id="S2.I6.i1.p1.1">Advanced reasoning architectures</span>
</span></span>
<span class="ltx_item" id="S2.I6.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I6.i2.p1">
<span class="ltx_p" id="S2.I6.i2.p1.1">Inference-time scaling revolution</span>
</span></span>
</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.1.1">
<span class="ltx_p" id="S2.T1.1.6.1.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.6.1.1.1.1">Training Data Quality</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.6.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.2.1">
<span class="ltx_itemize" id="S2.I7">
<span class="ltx_item" id="S2.I7.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I7.i1.p1">
<span class="ltx_p" id="S2.I7.i1.p1.1"><span class="ltx_text ltx_font_bold" id="S2.I7.i1.p1.1.1">Question Design:</span></span>
<span class="ltx_itemize" id="S2.I7.i1.I1">
<span class="ltx_item" id="S2.I7.i1.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i1.I1.i1.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i1.I1.i1.p1">
<span class="ltx_p" id="S2.I7.i1.I1.i1.p1.1">Common interaction scenarios</span>
</span></span>
<span class="ltx_item" id="S2.I7.i1.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i1.I1.i2.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i1.I1.i2.p1">
<span class="ltx_p" id="S2.I7.i1.I1.i2.p1.1">Standard task diversity</span>
</span></span>
<span class="ltx_item" id="S2.I7.i1.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i1.I1.i3.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i1.I1.i3.p1">
<span class="ltx_p" id="S2.I7.i1.I1.i3.p1.1">Basic instruction following</span>
</span></span>
</span>
</span></span>
<span class="ltx_item" id="S2.I7.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I7.i2.p1">
<span class="ltx_p" id="S2.I7.i2.p1.1"><span class="ltx_text ltx_font_bold" id="S2.I7.i2.p1.1.1">Solution Quality:</span></span>
<span class="ltx_itemize" id="S2.I7.i2.I1">
<span class="ltx_item" id="S2.I7.i2.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i2.I1.i1.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i2.I1.i1.p1">
<span class="ltx_p" id="S2.I7.i2.I1.i1.p1.1">Clear communication style</span>
</span></span>
<span class="ltx_item" id="S2.I7.i2.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i2.I1.i2.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i2.I1.i2.p1">
<span class="ltx_p" id="S2.I7.i2.I1.i2.p1.1">Format consistency</span>
</span></span>
<span class="ltx_item" id="S2.I7.i2.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I7.i2.I1.i3.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I7.i2.I1.i3.p1">
<span class="ltx_p" id="S2.I7.i2.I1.i3.p1.1">Appropriate tone</span>
</span></span>
</span>
</span></span>
</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb ltx_border_t" id="S2.T1.1.6.3">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.6.3.1">
<span class="ltx_itemize" id="S2.I8">
<span class="ltx_item" id="S2.I8.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I8.i1.p1">
<span class="ltx_p" id="S2.I8.i1.p1.1"><span class="ltx_text ltx_font_bold" id="S2.I8.i1.p1.1.1">Question Design:</span></span>
<span class="ltx_itemize" id="S2.I8.i1.I1">
<span class="ltx_item" id="S2.I8.i1.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i1.I1.i1.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i1.I1.i1.p1">
<span class="ltx_p" id="S2.I8.i1.I1.i1.p1.1">High-difficulty problems fostering complex reasoning</span>
</span></span>
<span class="ltx_item" id="S2.I8.i1.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i1.I1.i2.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i1.I1.i2.p1">
<span class="ltx_p" id="S2.I8.i1.I1.i2.p1.1">Problems deviating from training distribution</span>
</span></span>
<span class="ltx_item" id="S2.I8.i1.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i1.I1.i3.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i1.I1.i3.p1">
<span class="ltx_p" id="S2.I8.i1.I1.i3.p1.1">Cross-domain knowledge integration challenges</span>
</span></span>
</span>
</span></span>
<span class="ltx_item" id="S2.I8.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item">•</span>
<span class="ltx_para" id="S2.I8.i2.p1">
<span class="ltx_p" id="S2.I8.i2.p1.1"><span class="ltx_text ltx_font_bold" id="S2.I8.i2.p1.1.1">Solution Quality:</span></span>
<span class="ltx_itemize" id="S2.I8.i2.I1">
<span class="ltx_item" id="S2.I8.i2.I1.i1" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i2.I1.i1.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i2.I1.i1.p1">
<span class="ltx_p" id="S2.I8.i2.I1.i1.p1.1">Optimal structure with adaptive step granularity</span>
</span></span>
<span class="ltx_item" id="S2.I8.i2.I1.i2" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i2.I1.i2.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i2.I1.i2.p1">
<span class="ltx_p" id="S2.I8.i2.I1.i2.p1.1">Strategic cognitive scaffolding for reasoning</span>
</span></span>
<span class="ltx_item" id="S2.I8.i2.I1.i3" style="list-style-type:none;"><span class="ltx_tag ltx_tag_item"><span class="ltx_text ltx_font_bold" id="S2.I8.i2.I1.i3.1.1.1">–</span></span>
<span class="ltx_para" id="S2.I8.i2.I1.i3.p1">
<span class="ltx_p" id="S2.I8.i2.I1.i3.p1.1">Rigorous verification throughout solution</span>
</span></span>
</span>
</span></span>
</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares and contrasts two different paradigms in training large language models (LLMs): general alignment (represented by LIMA) and complex reasoning (represented by LIMO).  It highlights key differences in their core capabilities, knowledge foundations, computational requirements, historical prerequisites, and training data quality. This comparison helps illustrate how the 'Less-is-More' phenomenon, initially observed in general alignment, extends to the more challenging domain of complex reasoning.  The table details how LIMO leverages pre-trained knowledge and efficient inference-time computation to achieve sophisticated reasoning with significantly less training data than previously thought necessary.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparative Analysis: Less-is-More Phenomena in Language Models
> </details>





### In-depth insights


#### LIMO Hypothesis
The Less-Is-More Reasoning (LIMO) Hypothesis posits that complex reasoning capabilities in large language models (LLMs) can emerge from minimal, precisely structured training data.  **This challenges the prevailing belief that massive datasets are necessary for sophisticated reasoning**.  The hypothesis hinges on two crucial factors: **a comprehensive knowledge foundation encoded during pre-training** and **the effectiveness of post-training examples serving as cognitive templates**.  The carefully selected examples aren't about sheer quantity but about demonstrating cognitive processes and allowing the model to utilize its pre-existing knowledge base effectively. **LIMO's success is a testament to this data efficiency**: achieving impressive results on complex mathematical reasoning tasks using only a fraction of the data employed by previous methods. This paradigm shift suggests that focusing on the quality and strategic design of training examples, rather than quantity, may unlock the full potential of LLMs for advanced reasoning.

#### Data-Efficient Reasoning
The concept of **data-efficient reasoning** in large language models (LLMs) challenges the conventional wisdom that complex reasoning necessitates massive datasets.  This paradigm shift suggests that sophisticated reasoning capabilities, particularly in mathematics, can be unlocked not through extensive training but by **carefully curated, smaller datasets** that effectively elicit the model's pre-existing knowledge and guide its reasoning processes.  The success of methods like LIMO hinges on a **synergy between the richness of pre-trained knowledge and the efficacy of minimal, precisely-designed examples**.  These examples act as 'cognitive templates,' demonstrating effective cognitive processes, thereby unlocking latent reasoning potential rather than simply memorizing patterns. This approach offers significant advantages, reducing computational costs and data requirements, and promising a more efficient pathway toward achieving advanced AI capabilities.  **Future research** should focus on identifying general principles of data-efficient reasoning applicable across domains and developing theoretical frameworks that explain this emergent phenomenon.

#### Cognitive Templates
The concept of "cognitive templates" in the context of large language models (LLMs) is intriguing.  It suggests that a small number of carefully chosen examples, acting as **prototypical problem-solving demonstrations**, can unlock complex reasoning abilities within an LLM. These templates don't simply provide the model with answers, but rather showcase the **cognitive processes** involved.  By observing how these templates leverage the model's existing knowledge base, the LLM can generalize these strategies to novel problems. The effectiveness hinges on the **richness of the LLM's pre-trained knowledge**, ensuring that the necessary components for reasoning are already present. Essentially, the cognitive template acts as a **key**, unlocking latent potential within a pre-trained model, rather than teaching new knowledge.  This contrasts sharply with traditional fine-tuning approaches which rely on massive datasets.  **The crucial aspect lies in the design of the templates,** ensuring they are both minimal and effectively illustrate the cognitive processes needed for sophisticated reasoning.

#### Benchmark Analyses
Benchmark analyses in this research paper would ideally involve a multi-faceted approach.  First, it's crucial to select a diverse set of established benchmarks, encompassing both **in-domain** (mathematical reasoning) and **out-of-domain** (general reasoning and other disciplines) tasks to thoroughly evaluate the model's generalization capabilities.  Within each domain, benchmarks should vary in complexity, reflecting different levels of reasoning and problem-solving demands.  Next, the methodology for evaluating model performance on these benchmarks must be clearly defined.  This includes specifying evaluation metrics (e.g., accuracy, F1-score, BLEU score, etc.), and data analysis procedures. **Careful attention** should be given to handling potential biases and ensuring fair comparisons across different benchmarks and models. Finally, a thorough analysis of the results is needed, not merely reporting performance numbers but also interpreting the findings in the context of the LIMO hypothesis and related research.  By carefully studying performance variations across benchmarks, valuable insights into the model’s strengths, weaknesses, and the general applicability of LIMO's principles can be gained. **A strong emphasis** on qualitative analysis of model outputs, going beyond just quantitative results, is essential for gaining a deeper understanding of the model’s reasoning processes.

#### Future Research
The "Future Research" section of this paper suggests several promising avenues.  **Domain generalization** is crucial; extending the Less-is-More (LIMO) hypothesis beyond mathematical reasoning to scientific reasoning, logic, and causal inference is a key next step.  This requires adapting quality metrics and developing domain-specific evaluation frameworks.  **Theoretical foundations** need strengthening; a deeper understanding of the relationship between pre-training knowledge, inference-time computation, and reasoning capabilities is needed.  This may involve finding the minimum pre-training knowledge threshold for effective reasoning and developing mathematical models to balance reasoning chain quality and quantity.  Developing **automated quality assessment tools** is vital, moving beyond the current manual approach, to allow for scaling.  Finally, exploring **multi-modal integration** is important; real-world reasoning often involves multiple modalities, so investigating how visual and structured data enhance mathematical reasoning is key, requiring new quality metrics for multi-modal chains and understanding information integration in reasoning.  The overall goal is to move beyond empirical findings towards a more comprehensive theoretical understanding of data-efficient reasoning and its applicability to various domains.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.03387/extracted/6181360/figure/data-quality.png)

> 🔼 The figure shows the performance of models trained on reasoning chains of varying quality levels on two mathematical reasoning benchmarks: AIME24 and MATH500.  The x-axis represents the five quality levels of reasoning chains (L1-L5, with L5 being the highest quality). The y-axis represents the accuracy of the model on each benchmark. The graph shows that models trained on higher quality reasoning chains (L4 and L5) consistently achieve significantly better performance compared to models trained on lower quality reasoning chains (L1, L2 and L3). The difference in performance highlights the substantial impact of reasoning chain quality on the model's ability to solve mathematical reasoning problems. This supports the paper's central hypothesis that high-quality, concise training data is more effective than large amounts of low-quality data in training strong reasoning capabilities in large language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of models trained on reasoning chains of different quality levels.
> </details>



![](https://arxiv.org/html/2502.03387/extracted/6181360/figure/quality-1.png)

> 🔼 Figure 3 presents a comparison of model performance on two mathematical reasoning benchmarks, MATH and AIME.  Three different models were trained, each using a dataset of 500 problems of varying difficulty.  Simple-500 represents a dataset of relatively easier problems, Complex-500 contains moderately difficult problems, and Advanced-500 consists of the most challenging problems. The figure displays the accuracy of each model on both benchmarks, illustrating the impact of question difficulty on model performance and showing that models trained on more challenging problems achieve higher accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Performance comparison on MATH and AIME benchmarks between models trained on different question quality: Simple-500, Complex-500, and Advanced-500.
> </details>



![](https://arxiv.org/html/2502.03387/extracted/6181360/figure/llm-backbone.png)

> 🔼 This figure compares the performance of two large language models (LLMs) fine-tuned using the same dataset (LIMO) but with different pre-trained backbones: Qwen1.5-32B-Chat and Qwen2.5-32B-Instruct.  The models' performance is evaluated on two mathematical reasoning benchmarks: the American Invitational Mathematics Examination (AIME24) and MATH500. The results demonstrate a significant improvement in performance when using Qwen2.5-32B-Instruct as the pre-trained model, highlighting the importance of the pre-trained model's knowledge base in achieving high performance in mathematical reasoning tasks, even with minimal fine-tuning data. This supports the paper's Less-Is-More Reasoning Hypothesis.
> <details>
> <summary>read the caption</summary>
> Figure 4: Impact of Pre-trained Model Choice on Mathematical Reasoning Performance
> </details>



![](https://arxiv.org/html/2502.03387/x2.png)

> 🔼 Figure 5 showcases a comparative analysis of responses generated by three different large language models (LLMs) to the same mathematical reasoning problem.  The models compared are Qwen2.5-32B-Instruct (a strong baseline model), DeepSeek-R1 (a model known for its advanced reasoning capabilities), and LIMO (the authors' proposed model). The figure visually illustrates the differences in the approaches these models take to solving the problem, highlighting LIMO's superior performance and ability to generate more detailed, self-correcting reasoning chains. This emphasizes LIMO's enhanced reasoning capability and its ability to leverage the full inference-time compute capabilities, aspects directly related to the Less-is-More Reasoning Hypothesis presented in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison between the responses generated by Qwen2.5-32B-Instruct, DeepSeek-R1, and LIMO
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T2.1">
<tr class="ltx_tr" id="S2.T2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_tt" id="S2.T2.1.1.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.1.1.1">
<span class="ltx_p" id="S2.T2.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.1.1.1.1">Aspect</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_tt" id="S2.T2.1.1.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.1.2.1">
<span class="ltx_p" id="S2.T2.1.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.2.1.1.1">RL Scaling (e.g., o1, R1)</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S2.T2.1.1.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.1.3.1">
<span class="ltx_p" id="S2.T2.1.1.3.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.1.3.1.1.1">LIMO</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.2.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.2.1.1">
<span class="ltx_p" id="S2.T2.1.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.2.1.1.1.1">First Principle</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.2.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.2.2.1">
<span class="ltx_p" id="S2.T2.1.2.2.1.1">An implementation of the general principle: searching for optimal reasoning trajectories through RL</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.2.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.2.3.1">
<span class="ltx_p" id="S2.T2.1.2.3.1.1">The fundamental principle: reasoning capabilities exist and need to be activated by high-quality reasoning trajectories</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.3.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.3.1.1">
<span class="ltx_p" id="S2.T2.1.3.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.3.1.1.1.1">Solution Nature</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.3.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.3.2.1">
<span class="ltx_p" id="S2.T2.1.3.2.1.1">Discovers reasoning trajectories through extensive RL-based exploration</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.3.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.3.3.1">
<span class="ltx_p" id="S2.T2.1.3.3.1.1">Directly constructs high-quality reasoning trajectories based on cognitive understanding</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.4.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.4.1.1">
<span class="ltx_p" id="S2.T2.1.4.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.4.1.1.1.1">Core Challenge</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.4.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.4.2.1">
<span class="ltx_p" id="S2.T2.1.4.2.1.1">How to efficiently search for effective reasoning trajectories in a large solution space</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.4.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.4.3.1">
<span class="ltx_p" id="S2.T2.1.4.3.1.1">How to identify and construct optimal reasoning trajectories that activate existing capabilities</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.5.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.5.1.1">
<span class="ltx_p" id="S2.T2.1.5.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.5.1.1.1.1">Methodology</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.5.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.5.2.1">
<span class="ltx_p" id="S2.T2.1.5.2.1.1">Implicit trajectory discovery through large-scale RL optimization</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.5.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.5.3.1">
<span class="ltx_p" id="S2.T2.1.5.3.1.1">Explicit trajectory design through cognitive templates</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.6.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.6.1.1">
<span class="ltx_p" id="S2.T2.1.6.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.6.1.1.1.1">Search Strategy</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.6.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.6.2.1">
<span class="ltx_p" id="S2.T2.1.6.2.1.1">Broad exploration of solution space using computational resources</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.6.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.6.3.1">
<span class="ltx_p" id="S2.T2.1.6.3.1.1">Targeted exploration guided by cognitive principles</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.7.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.7.1.1">
<span class="ltx_p" id="S2.T2.1.7.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.7.1.1.1.1">Resource       Efficiency</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_r ltx_border_t" id="S2.T2.1.7.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.7.2.1">
<span class="ltx_p" id="S2.T2.1.7.2.1.1">Resource-intensive search process</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S2.T2.1.7.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.7.3.1">
<span class="ltx_p" id="S2.T2.1.7.3.1.1">Resource-efficient direct construction</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S2.T2.1.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.1.8.1" style="width:65.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.8.1.1">
<span class="ltx_p" id="S2.T2.1.8.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T2.1.8.1.1.1.1">Generalization</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_r ltx_border_t" id="S2.T2.1.8.2" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.8.2.1">
<span class="ltx_p" id="S2.T2.1.8.2.1.1">Through extensive sampling of trajectory space</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S2.T2.1.8.3" style="width:173.4pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T2.1.8.3.1">
<span class="ltx_p" id="S2.T2.1.8.3.1.1">Through understanding of fundamental reasoning patterns</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares and contrasts the Less-is-More Reasoning (LIMO) approach with Reinforcement Learning (RL) scaling methods for developing reasoning capabilities in large language models.  It highlights the core principles, solution nature, key challenges, methodologies, search strategies, resource efficiency, and generalization characteristics of each approach, providing a detailed comparison of their philosophical underpinnings and practical implementations.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparative Analysis of LIMO and RL Scaling Approaches
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T3.3">
<tr class="ltx_tr" id="S5.T3.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T3.3.1.1" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.1.1">Datasets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.2" style="padding:1pt 5.0pt;">
<span class="ltx_text" id="S5.T3.3.1.2.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.2.2"> <span class="ltx_text" id="S5.T3.3.1.2.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.2.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.2.2.1.1.1.1" style="padding:1pt 5.0pt;">OpenAI-o1</span></span>
<span class="ltx_tr" id="S5.T3.3.1.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.2.2.1.1.2.1" style="padding:1pt 5.0pt;">-preview</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.2.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.3" style="padding:1pt 5.0pt;">
<span class="ltx_text" id="S5.T3.3.1.3.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.3.2"> <span class="ltx_text" id="S5.T3.3.1.3.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.3.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.3.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.3.2.1.1.1.1" style="padding:1pt 5.0pt;">Qwen2.5-32B</span></span>
<span class="ltx_tr" id="S5.T3.3.1.3.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.3.2.1.1.2.1" style="padding:1pt 5.0pt;">-Instruct</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.3.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.4" style="padding:1pt 5.0pt;">
<span class="ltx_text" id="S5.T3.3.1.4.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.4.2"> <span class="ltx_text" id="S5.T3.3.1.4.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.4.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.4.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.4.2.1.1.1.1" style="padding:1pt 5.0pt;">QwQ-32B-</span></span>
<span class="ltx_tr" id="S5.T3.3.1.4.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.4.2.1.1.2.1" style="padding:1pt 5.0pt;">preview</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.4.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.5" style="padding:1pt 5.0pt;">
<span class="ltx_text" id="S5.T3.3.1.5.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.5.2"> <span class="ltx_text" id="S5.T3.3.1.5.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.5.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.5.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.5.2.1.1.1.1" style="padding:1pt 5.0pt;">OpenThoughts</span></span>
<span class="ltx_tr" id="S5.T3.3.1.5.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.5.2.1.1.2.1" style="padding:1pt 5.0pt;">(114k)</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.5.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.6" style="padding:1pt 5.0pt;">
<span class="ltx_text" id="S5.T3.3.1.6.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.6.2"> <span class="ltx_text" id="S5.T3.3.1.6.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.6.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.6.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.6.2.1.1.1.1" style="padding:1pt 5.0pt;">NuminaMath</span></span>
<span class="ltx_tr" id="S5.T3.3.1.6.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.6.2.1.1.2.1" style="padding:1pt 5.0pt;">(100k)</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.6.2.2"></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.3.1.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.1.7.1" style="background-color:#DCEFFE;">
<span class="ltx_text" id="S5.T3.3.1.7.1.1"></span><span class="ltx_text ltx_font_bold" id="S5.T3.3.1.7.1.2"> <span class="ltx_text" id="S5.T3.3.1.7.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.T3.3.1.7.1.2.1.1">
<span class="ltx_tr" id="S5.T3.3.1.7.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.7.1.2.1.1.1.1" style="padding:1pt 5.0pt;">LIMO</span></span>
<span class="ltx_tr" id="S5.T3.3.1.7.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T3.3.1.7.1.2.1.1.2.1" style="padding:1pt 5.0pt;">ours(817)</span></span>
</span></span><span class="ltx_text" id="S5.T3.3.1.7.1.2.2"></span></span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S5.T3.3.2.1" style="padding:1pt 5.0pt;">In Domain</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.3.3.1" style="padding:1pt 5.0pt;">AIME24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.2" style="padding:1pt 5.0pt;">44.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.3" style="padding:1pt 5.0pt;">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.4" style="padding:1pt 5.0pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.5" style="padding:1pt 5.0pt;">50.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.6" style="padding:1pt 5.0pt;">6.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.3.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.3.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.3.7.1.1">57.1</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.4">
<td class="ltx_td ltx_align_left" id="S5.T3.3.4.1" style="padding:1pt 5.0pt;">MATH500</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.2" style="padding:1pt 5.0pt;">85.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.3" style="padding:1pt 5.0pt;">79.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.4" style="padding:1pt 5.0pt;">89.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.5" style="padding:1pt 5.0pt;">80.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.6" style="padding:1pt 5.0pt;">59.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.4.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.4.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.4.7.1.1">94.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.5">
<td class="ltx_td ltx_align_left" id="S5.T3.3.5.1" style="padding:1pt 5.0pt;">AMC23</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.2" style="padding:1pt 5.0pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.3" style="padding:1pt 5.0pt;">64.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.4" style="padding:1pt 5.0pt;">83.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.5" style="padding:1pt 5.0pt;">80.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.6" style="padding:1pt 5.0pt;">40.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.5.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.5.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.5.7.1.1">92.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S5.T3.3.6.1" style="padding:1pt 5.0pt;">Out of Domain</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.3.7.1" style="padding:1pt 5.0pt;">OlympiadBench</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.2" style="padding:1pt 5.0pt;">52.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.3" style="padding:1pt 5.0pt;">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.4" style="padding:1pt 5.0pt;">58.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.5" style="padding:1pt 5.0pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.6" style="padding:1pt 5.0pt;">36.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.3.7.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.7.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.7.7.1.1">66.8</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.8">
<td class="ltx_td ltx_align_left" id="S5.T3.3.8.1" style="padding:1pt 5.0pt;">CHMath</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.2" style="padding:1pt 5.0pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.3" style="padding:1pt 5.0pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.4" style="padding:1pt 5.0pt;">68.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.5" style="padding:1pt 5.0pt;">74.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.6" style="padding:1pt 5.0pt;">11.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.8.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.8.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.8.7.1.1">75.4</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.9">
<td class="ltx_td ltx_align_left" id="S5.T3.3.9.1" style="padding:1pt 5.0pt;">Gaokao</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.2" style="padding:1pt 5.0pt;">62.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.3" style="padding:1pt 5.0pt;">72.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.4" style="padding:1pt 5.0pt;">80.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.5" style="padding:1pt 5.0pt;">63.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.6" style="padding:1pt 5.0pt;">49.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.9.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.9.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.9.7.1.1">81.0</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.10">
<td class="ltx_td ltx_align_left" id="S5.T3.3.10.1" style="padding:1pt 5.0pt;">Kaoyan</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.2" style="padding:1pt 5.0pt;">51.5</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.3" style="padding:1pt 5.0pt;">48.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.4" style="padding:1pt 5.0pt;">70.3</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.5" style="padding:1pt 5.0pt;">54.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.6" style="padding:1pt 5.0pt;">32.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.10.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.10.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.10.7.1.1">73.4</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.11">
<td class="ltx_td ltx_align_left" id="S5.T3.3.11.1" style="padding:1pt 5.0pt;">GradeSchool</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.2" style="padding:1pt 5.0pt;">62.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.3" style="padding:1pt 5.0pt;">56.7</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.4" style="padding:1pt 5.0pt;">63.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.5" style="padding:1pt 5.0pt;">39.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.6" style="padding:1pt 5.0pt;">36.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.11.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.11.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.11.7.1.1">76.2</span></span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.12">
<td class="ltx_td ltx_align_left" id="S5.T3.3.12.1" style="padding:1pt 5.0pt;">Minerva</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.12.2.1">47.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.3" style="padding:1pt 5.0pt;">41.2</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.4" style="padding:1pt 5.0pt;">39.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.5" style="padding:1pt 5.0pt;">41.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.6" style="padding:1pt 5.0pt;">24.6</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.12.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.12.7.1" style="background-color:#DCEFFE;">44.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.13">
<td class="ltx_td ltx_align_left" id="S5.T3.3.13.1" style="padding:1pt 5.0pt;">GPQA</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.2" style="padding:1pt 5.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.13.2.1">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.3" style="padding:1pt 5.0pt;">48.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.4" style="padding:1pt 5.0pt;">65.1</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.5" style="padding:1pt 5.0pt;">42.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.6" style="padding:1pt 5.0pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.13.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.13.7.1" style="background-color:#DCEFFE;">66.7</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.14">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T3.3.14.1" style="padding:1pt 5.0pt;">AVG.</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.2" style="padding:1pt 5.0pt;">61.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.3" style="padding:1pt 5.0pt;">49.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.4" style="padding:1pt 5.0pt;">66.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.5" style="padding:1pt 5.0pt;">58.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.6" style="padding:1pt 5.0pt;">32.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.3.14.7" style="background-color:#DCEFFE;padding:1pt 5.0pt;"><span class="ltx_text" id="S5.T3.3.14.7.1" style="background-color:#DCEFFE;"><span class="ltx_text ltx_font_bold" id="S5.T3.3.14.7.1.1">72.8</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of various large language models (LLMs) on several mathematical reasoning benchmarks.  The models include state-of-the-art models like OpenAI-o1-preview and QwQ-32B-Preview, a base Qwen2.5-32B-Instruct model, and models fine-tuned using different datasets. The table shows the pass@1 accuracy (percentage of correctly answered questions in the first try) for each model on each benchmark.  The number of training examples used for fine-tuning is indicated in parentheses.  The best result for each benchmark is highlighted in bold. Notably, the LIMO model, highlighted in blue, significantly outperforms other models despite using only 817 training examples compared to over 100,000 for the others, demonstrating high data efficiency.
> <details>
> <summary>read the caption</summary>
> Table 3:  Comparison of model performance (pass@1) across various mathematical reasoning benchmarks Models include state-of-the-art LLMs (OpenAI-o1-preview, QwQ-32B-Preview), our base model (Qwen2.5-32B-Instruct), and models fine-tuned on different datasets. Training data sizes are shown in parentheses. Best results for each benchmark are shown in bold. Our proposed LIMO model (highlighted in blue) achieves superior performance despite using significantly fewer training examples (817) compared to other fine-tuned models (more than 100k).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.1.1">
<tr class="ltx_tr" id="S5.T4.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.1.1.1.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.1.1">
<span class="ltx_p" id="S5.T4.1.1.1.1.1.1" style="width:86.7pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.1.1.1.1">Data Quality Level</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.1.1.1.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.2.1">
<span class="ltx_p" id="S5.T4.1.1.1.2.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.2.1.1.1">Avg. Tokens per response</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.1.1.1.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.3.1">
<span class="ltx_p" id="S5.T4.1.1.1.3.1.1" style="width:65.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.3.1.1.1">Avg. Lines per response</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S5.T4.1.1.1.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.1.4.1">
<span class="ltx_p" id="S5.T4.1.1.1.4.1.1" style="width:216.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.1.4.1.1.1">Top 10 Frequently Occurring Keywords (in order)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.2.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.2.1.1">
<span class="ltx_p" id="S5.T4.1.1.2.1.1.1" style="width:86.7pt;">Level 1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.2.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.2.2.1">
<span class="ltx_p" id="S5.T4.1.1.2.2.1.1" style="width:65.0pt;">230</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.2.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.2.3.1">
<span class="ltx_p" id="S5.T4.1.1.2.3.1.1" style="width:65.0pt;">9.21</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.2.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.2.4.1">
<span class="ltx_p" id="S5.T4.1.1.2.4.1.1" style="width:216.8pt;">since, however, number, let, thus, which, get, two, triangle, theta</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.3.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.3.1.1">
<span class="ltx_p" id="S5.T4.1.1.3.1.1.1" style="width:86.7pt;">Level 2</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.3.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.3.2.1">
<span class="ltx_p" id="S5.T4.1.1.3.2.1.1" style="width:65.0pt;">444.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.3.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.3.3.1">
<span class="ltx_p" id="S5.T4.1.1.3.3.1.1" style="width:65.0pt;">50.68</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.3.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.3.4.1">
<span class="ltx_p" id="S5.T4.1.1.3.4.1.1" style="width:216.8pt;">number, need, times, which, find, list, thus, since, triangle, sum</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.4.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.4.1.1">
<span class="ltx_p" id="S5.T4.1.1.4.1.1.1" style="width:86.7pt;">Level 3</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.4.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.4.2.1">
<span class="ltx_p" id="S5.T4.1.1.4.2.1.1" style="width:65.0pt;">4956.11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.4.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.4.3.1">
<span class="ltx_p" id="S5.T4.1.1.4.3.1.1" style="width:65.0pt;">375.60</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.4.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.4.4.1">
<span class="ltx_p" id="S5.T4.1.1.4.4.1.1" style="width:216.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.4.1.1.1">perhaps</span>, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.4.1.1.2">alternatively</span>, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.4.1.1.3">consider</span>, number, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.4.4.1.1.4">wait</span>, which, sides, need, equal, seems</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.5.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.5.1.1">
<span class="ltx_p" id="S5.T4.1.1.5.1.1.1" style="width:86.7pt;">Level 4</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.5.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.5.2.1">
<span class="ltx_p" id="S5.T4.1.1.5.2.1.1" style="width:65.0pt;">4726.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.5.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.5.3.1">
<span class="ltx_p" id="S5.T4.1.1.5.3.1.1" style="width:65.0pt;">354.87</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S5.T4.1.1.5.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.5.4.1">
<span class="ltx_p" id="S5.T4.1.1.5.4.1.1" style="width:216.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.1.1.1">wait</span>, which, number, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.1.1.2">perhaps</span>, therefore, let, since, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.5.4.1.1.3">maybe</span>, sides, two</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T4.1.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.1" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.6.1.1">
<span class="ltx_p" id="S5.T4.1.1.6.1.1.1" style="width:86.7pt;">Level 5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.2" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.6.2.1">
<span class="ltx_p" id="S5.T4.1.1.6.2.1.1" style="width:65.0pt;">5290.26</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.3" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.6.3.1">
<span class="ltx_p" id="S5.T4.1.1.6.3.1.1" style="width:65.0pt;">239.29</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S5.T4.1.1.6.4" style="padding-top:2.5pt;padding-bottom:2.5pt;">
<span class="ltx_inline-block ltx_align_top" id="S5.T4.1.1.6.4.1">
<span class="ltx_p" id="S5.T4.1.1.6.4.1.1" style="width:216.8pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.1.1.6.4.1.1.1">wait</span>, therefore, which, number, since, lets, two, sides, let, <span class="ltx_text ltx_font_bold" id="S5.T4.1.1.6.4.1.1.2">maybe</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 shows a statistical analysis comparing models trained on examples of varying quality.  The analysis focuses on three key metrics: average token count per response, average line count per response, and the frequency of keywords in generated responses.  Keywords indicative of reasoning transitions (e.g., indicating uncertainty or complex thought processes) are highlighted in bold. Common words like 'a' and 'the' were excluded to focus on the substantive word usage.  Significant differences in response length and the type of keywords used suggest a correlation between training data quality and reasoning complexity.  Higher quality training data leads to longer responses with more sophisticated vocabulary related to complex reasoning processes.
> <details>
> <summary>read the caption</summary>
> Table 4:  Statistical analysis of models trained with examples of varying data quality. This table presents three key metrics: average token count per response, average line count per response, and frequently occurring keywords in model-generated responses. Keywords associated with reasoning transitions and uncertainty are highlighted in bold, with common stop words (e.g., “a”, “the”) excluded to focus on substantive language patterns. Notable differences in response length and keyword usage patterns suggest varying levels of reasoning complexity.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.03387/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.03387/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}