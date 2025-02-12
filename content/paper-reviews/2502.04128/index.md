---
title: "Llasa: Scaling Train-Time and Inference-Time Compute for Llama-based Speech Synthesis"
summary: "Llasa, a novel single-Transformer TTS model, achieves state-of-the-art performance by scaling both training and inference compute, improving naturalness, prosody and emotional expressiveness."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Text Generation", "🏢 Hong Kong University of Science and Technology",]
showSummary: true
date: 2025-02-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.04128 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhen Ye et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.04128" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.04128" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.04128/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current state-of-the-art speech synthesis often involves multi-stage models, complicating the decision of whether to scale during training or testing.  The research also highlights the lack of a standard framework in TTS, in contrast to the common design philosophy of text LLMs that has spurred rapid progress.  This limits exploring broader research questions beyond architecture exploration.

To address these issues, the paper proposes Llasa, a simple single-Transformer TTS framework aligned with standard LLMs. The approach uses a single-layer vector quantizer (VQ) codec and a single Transformer architecture. Experiments show that scaling training-time compute consistently improves the naturalness and prosody of synthesized speech.  Furthermore, scaling inference compute by integrating speech understanding models as verifiers improves emotional expressiveness, timbre, and content accuracy.  The release of the model and code further promotes community research and development.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Llasa, a novel single-Transformer TTS model, leverages a well-designed speech tokenizer for efficient and scalable speech synthesis. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Scaling training compute for Llasa consistently improves the naturalness and prosody of synthesized speech. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Scaling inference compute by incorporating speech understanding models enhances emotional expressiveness, timbre, and content accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because it systematically investigates the effects of scaling both training-time and inference-time compute on speech synthesis, a significant trend in current research.  It bridges the gap between text-based LLMs and TTS, suggesting novel strategies for performance improvement. The provided open-access model and code further enhance its impact, enabling researchers to build on and extend this work, potentially leading to breakthroughs in natural and expressive speech generation.

------
#### Visual Insights



![](https://arxiv.org/html/2502.04128/extracted/6183923/comparison_plot.png)

> 🔼 This figure presents a comparison of average expert scores for text understanding ability in both Chinese and English.  The scores are based on evaluations performed using several categories of texts designed to assess different facets of text understanding, such as emotional expressiveness, handling of complex syntax, and nuanced prosody. The evaluations were conducted by expert linguistic annotators who rated the generated speech according to predefined criteria. The figure visually shows how the scores vary across different models (Llasa models with varying parameter counts and training data sizes) to demonstrate the relationship between model capacity and training data and the overall text understanding capabilities of the speech synthesis system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison of mean expert score for Chinese and English
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.6.6">
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.7.1" style="font-size:50%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.8.1" style="font-size:50%;">Token Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.9" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.6.6.6.9.1"></span><span class="ltx_text" id="S3.T1.6.6.6.9.2" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.6.6.6.9.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.6.6.6.9.3.1">
<span class="ltx_tr" id="S3.T1.6.6.6.9.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.9.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.9.3.1.1.1.1" style="font-size:140%;">Codebook</span></span></span>
<span class="ltx_tr" id="S3.T1.6.6.6.9.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.9.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.9.3.1.2.1.1" style="font-size:140%;">Size</span></span></span>
</span></span><span class="ltx_text" id="S3.T1.6.6.6.9.4"></span><span class="ltx_text" id="S3.T1.6.6.6.9.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.10" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.6.6.6.10.1"></span><span class="ltx_text" id="S3.T1.6.6.6.10.2" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.6.6.6.10.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.6.6.6.10.3.1">
<span class="ltx_tr" id="S3.T1.6.6.6.10.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.10.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.10.3.1.1.1.1" style="font-size:140%;">Codebook</span></span></span>
<span class="ltx_tr" id="S3.T1.6.6.6.10.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.10.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.10.3.1.2.1.1" style="font-size:140%;">Layer</span></span></span>
</span></span><span class="ltx_text" id="S3.T1.6.6.6.10.4"></span><span class="ltx_text" id="S3.T1.6.6.6.10.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.6.6.6.11" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.6.6.6.11.1"></span><span class="ltx_text" id="S3.T1.6.6.6.11.2" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.6.6.6.11.3" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.6.6.6.11.3.1">
<span class="ltx_tr" id="S3.T1.6.6.6.11.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.11.3.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.11.3.1.1.1.1" style="font-size:140%;">Frame</span></span></span>
<span class="ltx_tr" id="S3.T1.6.6.6.11.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.11.3.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.11.3.1.2.1.1" style="font-size:140%;">Rate</span></span></span>
</span></span><span class="ltx_text" id="S3.T1.6.6.6.11.4"></span><span class="ltx_text" id="S3.T1.6.6.6.11.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.1.1.1.1.2"></span><span class="ltx_text" id="S3.T1.1.1.1.1.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.1.1.1.1.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.1.1.1.1">
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.1.1.1.1.1.1.2.1.1" style="font-size:140%;">WER</span></span></span>
<span class="ltx_tr" id="S3.T1.1.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.1.1.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S3.T1.1.1.1.1.4"></span><span class="ltx_text" id="S3.T1.1.1.1.1.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.2.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.2.2.2.2.2"></span><span class="ltx_text" id="S3.T1.2.2.2.2.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.2.2.2.2.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.2.2.1.1">
<span class="ltx_tr" id="S3.T1.2.2.2.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.2.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.2.2.2.2.1.1.2.1.1" style="font-size:140%;">STOI</span></span></span>
<span class="ltx_tr" id="S3.T1.2.2.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.2.2.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.1.1.1.1.m1.1"><semantics id="S3.T1.2.2.2.2.1.1.1.1.m1.1a"><mo id="S3.T1.2.2.2.2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.1.1.1.1.m1.1b"><ci id="S3.T1.2.2.2.2.1.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S3.T1.2.2.2.2.4"></span><span class="ltx_text" id="S3.T1.2.2.2.2.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.3.3.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.3.3.3.3.2"></span><span class="ltx_text" id="S3.T1.3.3.3.3.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.3.3.3.3.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.3.3.1.1">
<span class="ltx_tr" id="S3.T1.3.3.3.3.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.3.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.3.3.3.3.1.1.2.1.1" style="font-size:140%;">PESQ-</span></span></span>
<span class="ltx_tr" id="S3.T1.3.3.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.3.3.3.3.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.3.3.3.3.1.1.1.1.1" style="font-size:140%;">WB<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1a"><mo id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1b"><ci id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.3.3.3.3.4"></span><span class="ltx_text" id="S3.T1.3.3.3.3.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.4.4.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.4.4.4.4.2"></span><span class="ltx_text" id="S3.T1.4.4.4.4.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.4.4.4.4.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.4.4.4.4.1.1">
<span class="ltx_tr" id="S3.T1.4.4.4.4.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.4.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.4.4.4.1.1.2.1.1" style="font-size:140%;">PESQ-</span></span></span>
<span class="ltx_tr" id="S3.T1.4.4.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.4.4.4.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.4.4.4.4.1.1.1.1.1" style="font-size:140%;">NB<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1"><semantics id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1a"><mo id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1b"><ci id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.4.4.4.4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.4.4.4.4.4"></span><span class="ltx_text" id="S3.T1.4.4.4.4.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.5.5.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.5.5.5.5.2"></span><span class="ltx_text" id="S3.T1.5.5.5.5.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.5.5.5.5.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.5.5.5.1.1">
<span class="ltx_tr" id="S3.T1.5.5.5.5.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.5.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.5.5.5.5.1.1.2.1.1" style="font-size:140%;">SPK-</span></span></span>
<span class="ltx_tr" id="S3.T1.5.5.5.5.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.5.5.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.5.5.5.5.1.1.1.1.1" style="font-size:140%;">SIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1"><semantics id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1a"><mo id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1b"><ci id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.5.5.5.5.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.5.5.5.5.4"></span><span class="ltx_text" id="S3.T1.5.5.5.5.5" style="font-size:50%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.6.6.6.6" style="padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_text" id="S3.T1.6.6.6.6.2"></span><span class="ltx_text" id="S3.T1.6.6.6.6.3" style="font-size:50%;"> </span><span class="ltx_text" id="S3.T1.6.6.6.6.1" style="font-size:50%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.6.6.6.6.1.1">
<span class="ltx_tr" id="S3.T1.6.6.6.6.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.6.1.1.2.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.6.1.1.2.1.1" style="font-size:140%;">UT</span></span></span>
<span class="ltx_tr" id="S3.T1.6.6.6.6.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.6.6.6.6.1.1.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.6.1.1.1.1.1" style="font-size:140%;">MOS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1"><semantics id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1a"><mo id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1b"><ci id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.6.6.6.6.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></span></span>
</span></span><span class="ltx_text" id="S3.T1.6.6.6.6.4"></span><span class="ltx_text" id="S3.T1.6.6.6.6.5" style="font-size:50%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.6.7.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.1.1" style="font-size:50%;">Ground Truth</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.2.1" style="font-size:50%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.3.1" style="font-size:50%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.4.1" style="font-size:50%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.5.1" style="font-size:50%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.6.1" style="font-size:50%;">1.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.7.1" style="font-size:50%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.8.1" style="font-size:50%;">4.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.9.1" style="font-size:50%;">4.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.7.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.10.1" style="font-size:50%;">1.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.7.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.7.11.1" style="font-size:50%;">4.09</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.6.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.8.1.1" style="font-size:50%;">DAC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.8.2.1" style="font-size:50%;">600</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.8.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.8.4.1" style="font-size:50%;">12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.8.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.6.1" style="font-size:50%;">2.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.7.1" style="font-size:50%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.8.1" style="font-size:50%;">4.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.9.1" style="font-size:50%;">4.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.8.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.10.1" style="font-size:50%;">0.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.8.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.8.11.1" style="font-size:50%;">4.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.9.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.1.1" style="font-size:50%;">Encodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.2.1" style="font-size:50%;">600</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.4.1" style="font-size:50%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.5.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.6.1" style="font-size:50%;">2.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.7.1" style="font-size:50%;">0.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.8.1" style="font-size:50%;">2.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.9.1" style="font-size:50%;">3.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.9.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.10.1" style="font-size:50%;">0.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.9.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.9.11.1" style="font-size:50%;">3.09</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.6.10.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.1.1" style="font-size:50%;">Encodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.2.1" style="font-size:50%;">150</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.5.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.6.1" style="font-size:50%;">4.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.7.1" style="font-size:50%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.8.1" style="font-size:50%;">1.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.9.1" style="font-size:50%;">1.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.10.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.10.1" style="font-size:50%;">0.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.10.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.10.11.1" style="font-size:50%;">1.58</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.11.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.1.1" style="font-size:50%;">DAC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.2.1" style="font-size:50%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.6.1" style="font-size:50%;">13.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.7.1" style="font-size:50%;">0.73</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.8.1" style="font-size:50%;">1.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.9.1" style="font-size:50%;">1.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.11.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.10.1" style="font-size:50%;">0.32</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.11.11.1" style="font-size:50%;">1.29</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.12.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.1.1" style="font-size:50%;">SpeechTokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.2.1" style="font-size:50%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.6.1" style="font-size:50%;">3.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.7.1" style="font-size:50%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.8.1" style="font-size:50%;">1.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.9.1" style="font-size:50%;">1.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.12.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.10.1" style="font-size:50%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.12.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.12.11.1" style="font-size:50%;">2.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.13.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.1.1" style="font-size:50%;">Mimi</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.2.1" style="font-size:50%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.3.1" style="font-size:50%;">2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.4.1" style="font-size:50%;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.5.1" style="font-size:50%;">12.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.6.1" style="font-size:50%;">2.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.13.7.1" style="font-size:50%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.8.1" style="font-size:50%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.9.1" style="font-size:50%;">2.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.13.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.13.10.1" style="font-size:50%;">0.73</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.13.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.13.11.1" style="font-size:50%;">3.56</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.14.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.1.1" style="font-size:50%;">X-codec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.2.1" style="font-size:50%;">100</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.14.6.1" style="font-size:50%;">2.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.7.1" style="font-size:50%;">0.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.14.8.1" style="font-size:50%;">2.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.14.9.1" style="font-size:50%;">2.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.14.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.14.10.1" style="font-size:50%;">0.72</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.14.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.14.11.1" style="font-size:50%;">4.21</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.15">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.6.15.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.15.1.1" style="font-size:50%;">BigCodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.15.2.1" style="font-size:50%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.15.3.1" style="font-size:50%;">8192</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.15.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.15.5.1" style="font-size:50%;">80</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.6.1" style="font-size:50%;">2.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.7.1" style="font-size:50%;">0.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.8.1" style="font-size:50%;">2.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.9.1" style="font-size:50%;">3.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.15.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.10.1" style="font-size:50%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.15.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.15.11.1" style="font-size:50%;">4.11</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.16.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.1.1" style="font-size:50%;">WavTokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.2.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.3.1" style="font-size:50%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.5.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.6.1" style="font-size:50%;">3.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.7.1" style="font-size:50%;">0.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.8.1" style="font-size:50%;">2.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.9.1" style="font-size:50%;">2.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.16.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.10.1" style="font-size:50%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.16.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.16.11.1" style="font-size:50%;">3.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.17.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.1.1" style="font-size:50%;">Mimi</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.2.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.3.1" style="font-size:50%;">2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.4.1" style="font-size:50%;">6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.5.1" style="font-size:50%;">12.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.6.1" style="font-size:50%;">3.61</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.7.1" style="font-size:50%;">0.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.8.1" style="font-size:50%;">1.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.9.1" style="font-size:50%;">2.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.17.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.10.1" style="font-size:50%;">0.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.17.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.17.11.1" style="font-size:50%;">3.38</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.18.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.1.1" style="font-size:50%;">Encodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.2.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.5.1" style="font-size:50%;">75</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.6.1" style="font-size:50%;">28.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.7.1" style="font-size:50%;">0.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.8.1" style="font-size:50%;">1.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.9.1" style="font-size:50%;">1.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.18.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.10.1" style="font-size:50%;">0.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.18.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.18.11.1" style="font-size:50%;">1.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.6.6.19.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.1.1" style="font-size:50%;">DAC</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.6.1" style="font-size:50%;">74.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.7.1" style="font-size:50%;">0.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.8.1" style="font-size:50%;">1.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.9.1" style="font-size:50%;">1.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.6.6.19.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.10.1" style="font-size:50%;">0.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.19.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.19.11.1" style="font-size:50%;">1.25</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.20.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.1.1" style="font-size:50%;">SpeechTokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.6.1" style="font-size:50%;">5.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.7.1" style="font-size:50%;">0.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.8.1" style="font-size:50%;">1.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.9.1" style="font-size:50%;">1.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.20.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.10.1" style="font-size:50%;">0.17</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.20.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.20.11.1" style="font-size:50%;">1.27</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.21.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.1.1" style="font-size:50%;">Mimi</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.3.1" style="font-size:50%;">2048</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.4.1" style="font-size:50%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.5.1" style="font-size:50%;">12.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.6.1" style="font-size:50%;">4.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.7.1" style="font-size:50%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.8.1" style="font-size:50%;">1.64</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.9.1" style="font-size:50%;">2.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.21.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.10.1" style="font-size:50%;">0.50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.21.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.21.11.1" style="font-size:50%;">3.03</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.22.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.1.1" style="font-size:50%;">StableCodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.3.1" style="font-size:50%;">15625</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.5.1" style="font-size:50%;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.6.1" style="font-size:50%;">5.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.7.1" style="font-size:50%;">0.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.8.1" style="font-size:50%;">2.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.9.1" style="font-size:50%;">2.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.22.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.22.10.1" style="font-size:50%;">0.62</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.22.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.22.11.1" style="font-size:50%;">4.23</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.23.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.1.1" style="font-size:50%;">SemantiCodec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.3.1" style="font-size:50%;">32768/8192</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.4.1" style="font-size:50%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.5.1" style="font-size:50%;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.6.1" style="font-size:50%;">6.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.7.1" style="font-size:50%;">0.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.8.1" style="font-size:50%;">1.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.9.1" style="font-size:50%;">2.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.23.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.10.1" style="font-size:50%;">0.58</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.23.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.23.11.1" style="font-size:50%;">2.71</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.24.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.1.1" style="font-size:50%;">X-codec</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.3.1" style="font-size:50%;">1024</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.6.1" style="font-size:50%;">3.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.7.1" style="font-size:50%;">0.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.8.1" style="font-size:50%;">1.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.9.1" style="font-size:50%;">2.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.24.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.10.1" style="font-size:50%;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.24.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.24.11.1" style="font-size:50%;">4.05</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.25.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.1.1" style="font-size:50%;">WavTokenizer</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.2.1" style="font-size:50%;">40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.3.1" style="font-size:50%;">4096</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.5.1" style="font-size:50%;">40</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.6.1" style="font-size:50%;">11.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.7.1" style="font-size:50%;">0.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.8.1" style="font-size:50%;">1.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.9.1" style="font-size:50%;">2.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.6.6.25.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.10.1" style="font-size:50%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.25.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.25.11.1" style="font-size:50%;">3.57</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.26">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.1.1" style="font-size:50%;">X-codec2 (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.2.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.3.1" style="font-size:50%;">65536</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.4.1" style="font-size:50%;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.5.1" style="font-size:50%;">50</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.26.6.1" style="font-size:50%;">2.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.26.7.1" style="font-size:50%;">0.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.26.8.1" style="font-size:50%;">2.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.9" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.26.9.1" style="font-size:50%;">3.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.6.6.26.10" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.26.10.1" style="font-size:50%;">0.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.6.6.26.11" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S3.T1.6.6.26.11.1" style="font-size:50%;">4.13</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table compares the performance of different speech codecs in terms of various metrics, including Word Error Rate (WER), Short-Time Objective Intelligibility (STOI), Perceptual Evaluation of Speech Quality (PESQ), speaker similarity (SPK SIM), and Mean Opinion Score (MOS).  The codecs are evaluated across different token rates, which are presented instead of bitrates for better comparison with Large Language Models (LLMs).  Lower WER and higher STOI, PESQ, SPK SIM, and MOS scores generally indicate better performance, showing how well the codec reconstructs the original speech signal, preserves its intelligibility and naturalness, and maintains speaker consistency. The bold values highlight the best-performing codec for each token rate.
> <details>
> <summary>read the caption</summary>
> Table 1: Comparison between different codec models. Bold values indicate the best for each token rate. We use token rate instead of bitrate because, from the perspective of LLMs, it is more intuitive: dividing the speech context window length by the token rate directly gives the generated audio duration in seconds.
> </details>





### In-depth insights


#### LLM-TTS Scaling Laws
Exploring scaling laws in LLM-based text-to-speech (TTS) systems reveals crucial insights into efficiency and quality improvements.  **Model size** and **training data** exhibit a complex interplay; simply increasing model size without sufficient data may yield diminishing returns.  Conversely, massive datasets might not fully leverage larger models' potential, highlighting the need for **balanced scaling**.  **Inference-time scaling**, involving sophisticated search strategies and verifier models, offers exciting possibilities for enhancing quality and expressiveness post-training. Understanding the interaction between these factors will guide future research towards developing more efficient and high-quality LLM-TTS systems, paving the way for personalized and emotionally expressive speech synthesis.

#### X-Codec2 Tokenizer
The X-Codec2 tokenizer represents a **significant advancement** in speech tokenization for text-to-speech (TTS) systems.  It directly addresses the challenge of aligning TTS with the minimalist yet powerful paradigm of text LLMs by **fusing semantic and acoustic features** into a unified codebook. Unlike previous methods requiring separate semantic and acoustic models, X-Codec2 uses a **single vector quantizer**, streamlining the process and improving efficiency.  This design choice, coupled with the **1D causal dependency**, fully aligns the tokenizer with the autoregressive mechanism of LLMs, leveraging their inherent ability to model sequential data effectively. The resulting unified representation allows the LLM to capture all facets of the speech signal, including content, prosody, and timbre, within a single framework.  This approach not only **simplifies the TTS architecture**, making it more flexible and scalable, but also **enhances the quality** and naturalness of the generated speech by facilitating a deeper understanding of the input text and enabling finer control over various acoustic characteristics.  Moreover, the training process, which leverages adversarial training and perceptual loss, further improves the performance and robustness of the tokenizer.

#### Inference-Time Search
Inference-time search in LLMs involves augmenting model outputs with post-hoc refinement.  **Instead of solely relying on the initial model generation, this technique explores multiple candidate outputs and uses a verification or scoring mechanism to select the best one.** This approach is particularly relevant in speech synthesis where achieving high quality often requires substantial computational resources.  The core idea is to **invest more computational effort during the inference phase to compensate for limitations in training data and model architecture**. This may involve sophisticated search algorithms (e.g., beam search) that explore the solution space and refine generated outputs incrementally. The choice of verifier models significantly impacts the performance, with models like speech understanding models, measuring timbre, emotion, naturalness, and content accuracy often being used. While computationally expensive, this approach offers flexibility for improving the final output, especially in challenging scenarios.  **A crucial aspect is balancing computational cost with quality gains; strategies like partial inference-time search (combining different search methods) aim to optimize the tradeoff.** This technique offers a promising avenue for advancing speech synthesis capabilities, especially when combined with training-time scaling methods.

#### Zero-Shot TTS
Zero-shot Text-to-Speech (TTS) represents a significant advancement in speech synthesis, aiming to generate high-quality speech for unseen speakers or languages without requiring any explicit training data for those specific cases.  This capability is particularly valuable because it drastically reduces the need for extensive data collection and model retraining for every new voice or language, making the technology significantly more scalable and efficient.  The success of zero-shot TTS hinges on the model's ability to generalize from its training data.  **Effective generalization requires robust model architectures capable of extracting and applying underlying acoustic and linguistic patterns present across diverse speech datasets.**  Key challenges in zero-shot TTS include maintaining high fidelity and naturalness while avoiding artifacts or distortions associated with generalization.  **Careful selection of both training data and model design is crucial for achieving high performance.**  Further research should focus on improving generalization capabilities, exploring novel model architectures, and investigating strategies to handle variability in speech characteristics.

#### TTS Codec Analysis
A thorough TTS codec analysis would involve a multifaceted investigation.  It would start with a **detailed comparison of different codecs**, examining their performance across standard metrics like WER, STOI, PESQ, and MOS.  The analysis should explore how codec choices impact the overall quality and naturalness of synthesized speech.  Furthermore, it's essential to **evaluate the computational efficiency** of each codec.  This assessment should consider both encoding and decoding times to determine their suitability for real-time or near real-time applications.  Finally, the analysis should investigate the **trade-off between codec complexity and speech quality**.  A high-quality codec might necessitate significant computational resources, whereas a simpler codec may compromise speech naturalness.  The results of the analysis should not only report quantitative metrics but also offer qualitative insights into the perceptual differences between codecs, aiding in the selection of the optimal codec for specific TTS applications.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.5">
<tr class="ltx_tr" id="S4.T2.5.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.6.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.6.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.5.6.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.6.2.1" style="font-size:90%;">test-zh</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T2.5.6.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.6.3.1" style="font-size:90%;">test-en</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.5.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.6.4.1" style="font-size:90%;">test-hard</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.7">
<td class="ltx_td ltx_border_r" id="S4.T2.5.7.1"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.2.1" style="font-size:90%;">CER ↓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.3.1" style="font-size:90%;">sim-o ↑</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.4.1" style="font-size:90%;">WER ↓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.5.1" style="font-size:90%;">sim-o ↑</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.6.1" style="font-size:90%;">WER ↓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.7.7"><span class="ltx_text ltx_font_bold" id="S4.T2.5.7.7.1" style="font-size:90%;">sim-o ↑</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.8">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.8.1"><span class="ltx_text" id="S4.T2.5.8.1.1" style="font-size:90%;">Human</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.2"><span class="ltx_text" id="S4.T2.5.8.2.1" style="font-size:90%;">1.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.3"><span class="ltx_text" id="S4.T2.5.8.3.1" style="font-size:90%;">0.755</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.4"><span class="ltx_text" id="S4.T2.5.8.4.1" style="font-size:90%;">2.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.8.5"><span class="ltx_text" id="S4.T2.5.8.5.1" style="font-size:90%;">0.734</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.6"><span class="ltx_text" id="S4.T2.5.8.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.8.7"><span class="ltx_text" id="S4.T2.5.8.7.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.9.1"><span class="ltx_text" id="S4.T2.5.9.1.1" style="font-size:90%;">Our Codec Resyn.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.2"><span class="ltx_text" id="S4.T2.5.9.2.1" style="font-size:90%;">1.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.3"><span class="ltx_text" id="S4.T2.5.9.3.1" style="font-size:90%;">0.677</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.4"><span class="ltx_text" id="S4.T2.5.9.4.1" style="font-size:90%;">2.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.9.5"><span class="ltx_text" id="S4.T2.5.9.5.1" style="font-size:90%;">0.619</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.6"><span class="ltx_text" id="S4.T2.5.9.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.9.7"><span class="ltx_text" id="S4.T2.5.9.7.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.1">
<span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:90%;">Seed-TTS </span><sup class="ltx_sup" id="S4.T2.1.1.1.2"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2"><span class="ltx_text" id="S4.T2.1.1.2.1" style="font-size:90%;">1.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.3"><span class="ltx_text" id="S4.T2.1.1.3.1" style="font-size:90%;">0.796</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4"><span class="ltx_text" id="S4.T2.1.1.4.1" style="font-size:90%;">2.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.1.1.5"><span class="ltx_text" id="S4.T2.1.1.5.1" style="font-size:90%;">0.762</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6"><span class="ltx_text" id="S4.T2.1.1.6.1" style="font-size:90%;">7.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.7"><span class="ltx_text" id="S4.T2.1.1.7.1" style="font-size:90%;">0.776</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.10.1"><span class="ltx_text" id="S4.T2.5.10.1.1" style="font-size:90%;">FireRedTTS</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.2"><span class="ltx_text" id="S4.T2.5.10.2.1" style="font-size:90%;">1.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.3"><span class="ltx_text" id="S4.T2.5.10.3.1" style="font-size:90%;">0.635</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.4"><span class="ltx_text" id="S4.T2.5.10.4.1" style="font-size:90%;">3.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.10.5"><span class="ltx_text" id="S4.T2.5.10.5.1" style="font-size:90%;">0.460</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.6"><span class="ltx_text" id="S4.T2.5.10.6.1" style="font-size:90%;">17.45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.10.7"><span class="ltx_text" id="S4.T2.5.10.7.1" style="font-size:90%;">0.621</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.11.1"><span class="ltx_text" id="S4.T2.5.11.1.1" style="font-size:90%;">MaskGCT</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.2"><span class="ltx_text" id="S4.T2.5.11.2.1" style="font-size:90%;">2.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.3"><span class="ltx_text" id="S4.T2.5.11.3.1" style="font-size:90%;">0.774</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.4"><span class="ltx_text" id="S4.T2.5.11.4.1" style="font-size:90%;">2.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.11.5"><span class="ltx_text" id="S4.T2.5.11.5.1" style="font-size:90%;">0.714</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.6"><span class="ltx_text" id="S4.T2.5.11.6.1" style="font-size:90%;">10.27</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.11.7"><span class="ltx_text" id="S4.T2.5.11.7.1" style="font-size:90%;">0.748</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.2.1">
<span class="ltx_text" id="S4.T2.2.2.1.1" style="font-size:90%;">E2 TTS (32 NFE)</span><sup class="ltx_sup" id="S4.T2.2.2.1.2"><span class="ltx_text" id="S4.T2.2.2.1.2.1" style="font-size:90%;">†</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:90%;">1.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.3"><span class="ltx_text" id="S4.T2.2.2.3.1" style="font-size:90%;">0.730</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.4"><span class="ltx_text" id="S4.T2.2.2.4.1" style="font-size:90%;">2.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.2.2.5"><span class="ltx_text" id="S4.T2.2.2.5.1" style="font-size:90%;">0.710</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.6"><span class="ltx_text" id="S4.T2.2.2.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.7"><span class="ltx_text" id="S4.T2.2.2.7.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.12.1"><span class="ltx_text" id="S4.T2.5.12.1.1" style="font-size:90%;">F5-TTS (32 NFE)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.2"><span class="ltx_text" id="S4.T2.5.12.2.1" style="font-size:90%;">1.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.3"><span class="ltx_text" id="S4.T2.5.12.3.1" style="font-size:90%;">0.741</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.4"><span class="ltx_text" id="S4.T2.5.12.4.1" style="font-size:90%;">1.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.12.5"><span class="ltx_text" id="S4.T2.5.12.5.1" style="font-size:90%;">0.647</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.6"><span class="ltx_text" id="S4.T2.5.12.6.1" style="font-size:90%;">8.67</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.12.7"><span class="ltx_text" id="S4.T2.5.12.7.1" style="font-size:90%;">0.713</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.13.1"><span class="ltx_text" id="S4.T2.5.13.1.1" style="font-size:90%;">CosyVoice</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.2"><span class="ltx_text" id="S4.T2.5.13.2.1" style="font-size:90%;">3.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.13.3"><span class="ltx_text" id="S4.T2.5.13.3.1" style="font-size:90%;">0.723</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.4"><span class="ltx_text" id="S4.T2.5.13.4.1" style="font-size:90%;">4.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.13.5"><span class="ltx_text" id="S4.T2.5.13.5.1" style="font-size:90%;">0.609</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.6"><span class="ltx_text" id="S4.T2.5.13.6.1" style="font-size:90%;">11.75</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.13.7"><span class="ltx_text" id="S4.T2.5.13.7.1" style="font-size:90%;">0.709</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.14.1"><span class="ltx_text" id="S4.T2.5.14.1.1" style="font-size:90%;">CosyVoice 2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.2"><span class="ltx_text" id="S4.T2.5.14.2.1" style="font-size:90%;">1.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.14.3"><span class="ltx_text" id="S4.T2.5.14.3.1" style="font-size:90%;">0.748</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.4"><span class="ltx_text" id="S4.T2.5.14.4.1" style="font-size:90%;">2.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.14.5"><span class="ltx_text" id="S4.T2.5.14.5.1" style="font-size:90%;">0.652</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.6"><span class="ltx_text" id="S4.T2.5.14.6.1" style="font-size:90%;">6.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.14.7"><span class="ltx_text" id="S4.T2.5.14.7.1" style="font-size:90%;">0.724</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.5.15.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.15.1.1" style="font-size:90%;"> Train-time Scaling</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.16.1"><span class="ltx_text" id="S4.T2.5.16.1.1" style="font-size:90%;">llasa 1b 80k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.16.2"><span class="ltx_text" id="S4.T2.5.16.2.1" style="font-size:90%;">2.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.16.3"><span class="ltx_text" id="S4.T2.5.16.3.1" style="font-size:90%;">0.648 (0.779)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.16.4"><span class="ltx_text" id="S4.T2.5.16.4.1" style="font-size:90%;">3.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.16.5"><span class="ltx_text" id="S4.T2.5.16.5.1" style="font-size:90%;">0.541 (0.685)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.16.6"><span class="ltx_text" id="S4.T2.5.16.6.1" style="font-size:90%;">17.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.16.7"><span class="ltx_text" id="S4.T2.5.16.7.1" style="font-size:90%;">0.618 (0.765)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.17.1"><span class="ltx_text" id="S4.T2.5.17.1.1" style="font-size:90%;">llasa 1b 160k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.2"><span class="ltx_text" id="S4.T2.5.17.2.1" style="font-size:90%;">2.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.17.3"><span class="ltx_text" id="S4.T2.5.17.3.1" style="font-size:90%;">0.658 (0.783)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.4"><span class="ltx_text" id="S4.T2.5.17.4.1" style="font-size:90%;">3.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.17.5"><span class="ltx_text" id="S4.T2.5.17.5.1" style="font-size:90%;">0.563 (0.701)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.6"><span class="ltx_text" id="S4.T2.5.17.6.1" style="font-size:90%;">16.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.17.7"><span class="ltx_text" id="S4.T2.5.17.7.1" style="font-size:90%;">0.627 (0.770)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.18.1"><span class="ltx_text" id="S4.T2.5.18.1.1" style="font-size:90%;">llasa 1b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.2"><span class="ltx_text" id="S4.T2.5.18.2.1" style="font-size:90%;">1.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.18.3"><span class="ltx_text" id="S4.T2.5.18.3.1" style="font-size:90%;">0.669 (0.794)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.4"><span class="ltx_text" id="S4.T2.5.18.4.1" style="font-size:90%;">3.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.18.5"><span class="ltx_text" id="S4.T2.5.18.5.1" style="font-size:90%;">0.572 (0.708)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.6"><span class="ltx_text" id="S4.T2.5.18.6.1" style="font-size:90%;">12.13</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.18.7"><span class="ltx_text" id="S4.T2.5.18.7.1" style="font-size:90%;">0.638 (0.779)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.19.1"><span class="ltx_text" id="S4.T2.5.19.1.1" style="font-size:90%;">llasa 3b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.19.2"><span class="ltx_text" id="S4.T2.5.19.2.1" style="font-size:90%;">1.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.19.3"><span class="ltx_text" id="S4.T2.5.19.3.1" style="font-size:90%;">0.675 (0.792)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.19.4"><span class="ltx_text" id="S4.T2.5.19.4.1" style="font-size:90%;">3.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.19.5"><span class="ltx_text" id="S4.T2.5.19.5.1" style="font-size:90%;">0.579 (0.708)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.19.6"><span class="ltx_text" id="S4.T2.5.19.6.1" style="font-size:90%;">13.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.19.7"><span class="ltx_text" id="S4.T2.5.19.7.1" style="font-size:90%;">0.652 (0.782)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.20.1"><span class="ltx_text" id="S4.T2.5.20.1.1" style="font-size:90%;">llasa 8b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.2"><span class="ltx_text" id="S4.T2.5.20.2.1" style="font-size:90%;">1.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.20.3"><span class="ltx_text" id="S4.T2.5.20.3.1" style="font-size:90%;">0.684 (0.798)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.4"><span class="ltx_text" id="S4.T2.5.20.4.1" style="font-size:90%;">2.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.20.5"><span class="ltx_text" id="S4.T2.5.20.5.1" style="font-size:90%;">0.574 (0.706)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.6"><span class="ltx_text" id="S4.T2.5.20.6.1" style="font-size:90%;">11.09</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.20.7"><span class="ltx_text" id="S4.T2.5.20.7.1" style="font-size:90%;">0.660 (0.787)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.21">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.5.21.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.21.1.1" style="font-size:90%;">Partial PRM (spk sim)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.22">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.22.1"><span class="ltx_text" id="S4.T2.5.22.1.1" style="font-size:90%;">llasa 1b 80k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.22.2"><span class="ltx_text" id="S4.T2.5.22.2.1" style="font-size:90%;">1.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.22.3"><span class="ltx_text" id="S4.T2.5.22.3.1" style="font-size:90%;">0.811 (0.849)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.22.4"><span class="ltx_text" id="S4.T2.5.22.4.1" style="font-size:90%;">2.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.22.5"><span class="ltx_text" id="S4.T2.5.22.5.1" style="font-size:90%;">0.761 (0.798)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.22.6"><span class="ltx_text" id="S4.T2.5.22.6.1" style="font-size:90%;">16.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.22.7"><span class="ltx_text" id="S4.T2.5.22.7.1" style="font-size:90%;">0.759 (0.824)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.23.1"><span class="ltx_text" id="S4.T2.5.23.1.1" style="font-size:90%;">llasa 1b 160k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.23.2"><span class="ltx_text" id="S4.T2.5.23.2.1" style="font-size:90%;">1.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.23.3"><span class="ltx_text" id="S4.T2.5.23.3.1" style="font-size:90%;">0.815 (0.851)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.23.4"><span class="ltx_text" id="S4.T2.5.23.4.1" style="font-size:90%;">2.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.23.5"><span class="ltx_text" id="S4.T2.5.23.5.1" style="font-size:90%;">0.774 (0.804)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.23.6"><span class="ltx_text" id="S4.T2.5.23.6.1" style="font-size:90%;">14.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.23.7"><span class="ltx_text" id="S4.T2.5.23.7.1" style="font-size:90%;">0.768 (0.830)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.24.1"><span class="ltx_text" id="S4.T2.5.24.1.1" style="font-size:90%;">llasa 1b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.24.2"><span class="ltx_text" id="S4.T2.5.24.2.1" style="font-size:90%;">1.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.24.3"><span class="ltx_text" id="S4.T2.5.24.3.1" style="font-size:90%;">0.818 (0.855)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.24.4"><span class="ltx_text" id="S4.T2.5.24.4.1" style="font-size:90%;">2.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.24.5"><span class="ltx_text" id="S4.T2.5.24.5.1" style="font-size:90%;">0.781 (0.809)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.24.6"><span class="ltx_text" id="S4.T2.5.24.6.1" style="font-size:90%;">11.30</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.24.7"><span class="ltx_text" id="S4.T2.5.24.7.1" style="font-size:90%;">0.773 (0.833)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.25.1"><span class="ltx_text" id="S4.T2.5.25.1.1" style="font-size:90%;">llasa 3b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.25.2"><span class="ltx_text" id="S4.T2.5.25.2.1" style="font-size:90%;">1.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.25.3"><span class="ltx_text" id="S4.T2.5.25.3.1" style="font-size:90%;">0.824 (0.856)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.25.4"><span class="ltx_text" id="S4.T2.5.25.4.1" style="font-size:90%;">1.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.25.5">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.25.5.1" style="font-size:90%;">0.784</span><span class="ltx_text" id="S4.T2.5.25.5.2" style="font-size:90%;"> (0.812)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.25.6"><span class="ltx_text" id="S4.T2.5.25.6.1" style="font-size:90%;">11.22</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.25.7"><span class="ltx_text" id="S4.T2.5.25.7.1" style="font-size:90%;">0.780 (0.836)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.26.1"><span class="ltx_text" id="S4.T2.5.26.1.1" style="font-size:90%;">llasa 8b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.26.2"><span class="ltx_text" id="S4.T2.5.26.2.1" style="font-size:90%;">1.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.26.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.26.3.1" style="font-size:90%;">0.827</span><span class="ltx_text" id="S4.T2.5.26.3.2" style="font-size:90%;"> (0.856)</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.26.4"><span class="ltx_text" id="S4.T2.5.26.4.1" style="font-size:90%;">1.84</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.26.5"><span class="ltx_text" id="S4.T2.5.26.5.1" style="font-size:90%;">0.783 (0.806)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.26.6"><span class="ltx_text" id="S4.T2.5.26.6.1" style="font-size:90%;">10.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.26.7">
<span class="ltx_text ltx_font_bold" id="S4.T2.5.26.7.1" style="font-size:90%;">0.785</span><span class="ltx_text" id="S4.T2.5.26.7.2" style="font-size:90%;"> (0.839)</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.27">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="S4.T2.5.27.1"><span class="ltx_text ltx_font_bold" id="S4.T2.5.27.1.1" style="font-size:90%;">Partial PRM (spk sim)+ORM (WER)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.28">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.28.1"><span class="ltx_text" id="S4.T2.5.28.1.1" style="font-size:90%;">llasa 1b 80k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.28.2"><span class="ltx_text" id="S4.T2.5.28.2.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.28.3"><span class="ltx_text" id="S4.T2.5.28.3.1" style="font-size:90%;">0.809 (0.840)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.28.4"><span class="ltx_text" id="S4.T2.5.28.4.1" style="font-size:90%;">1.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.28.5"><span class="ltx_text" id="S4.T2.5.28.5.1" style="font-size:90%;">0.761 (0.792)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.28.6"><span class="ltx_text" id="S4.T2.5.28.6.1" style="font-size:90%;">7.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.28.7"><span class="ltx_text" id="S4.T2.5.28.7.1" style="font-size:90%;">0.732 (0.789)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.29">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.29.1"><span class="ltx_text" id="S4.T2.5.29.1.1" style="font-size:90%;">llasa 1b 160k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.29.2"><span class="ltx_text" id="S4.T2.5.29.2.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.29.3"><span class="ltx_text" id="S4.T2.5.29.3.1" style="font-size:90%;">0.812 (0.841)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.29.4"><span class="ltx_text" id="S4.T2.5.29.4.1" style="font-size:90%;">1.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.29.5"><span class="ltx_text" id="S4.T2.5.29.5.1" style="font-size:90%;">0.775 (0.798)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.29.6"><span class="ltx_text" id="S4.T2.5.29.6.1" style="font-size:90%;">6.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.29.7"><span class="ltx_text" id="S4.T2.5.29.7.1" style="font-size:90%;">0.745 (0.799)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.30.1"><span class="ltx_text" id="S4.T2.5.30.1.1" style="font-size:90%;">llasa 1b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.30.2"><span class="ltx_text ltx_font_bold" id="S4.T2.5.30.2.1" style="font-size:90%;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.30.3"><span class="ltx_text" id="S4.T2.5.30.3.1" style="font-size:90%;">0.818 (0.845)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.30.4"><span class="ltx_text" id="S4.T2.5.30.4.1" style="font-size:90%;">1.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.30.5"><span class="ltx_text" id="S4.T2.5.30.5.1" style="font-size:90%;">0.782 (0.801)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.30.6"><span class="ltx_text" id="S4.T2.5.30.6.1" style="font-size:90%;">5.24</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.30.7"><span class="ltx_text" id="S4.T2.5.30.7.1" style="font-size:90%;">0.750 (0.803)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.31">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.31.1"><span class="ltx_text" id="S4.T2.5.31.1.1" style="font-size:90%;">llasa 3b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.31.2"><span class="ltx_text" id="S4.T2.5.31.2.1" style="font-size:90%;">0.50</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.31.3"><span class="ltx_text" id="S4.T2.5.31.3.1" style="font-size:90%;">0.823 (0.848)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.31.4"><span class="ltx_text ltx_font_bold" id="S4.T2.5.31.4.1" style="font-size:90%;">1.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.31.5"><span class="ltx_text" id="S4.T2.5.31.5.1" style="font-size:90%;">0.783 (0.803)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.31.6"><span class="ltx_text" id="S4.T2.5.31.6.1" style="font-size:90%;">5.39</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.31.7"><span class="ltx_text" id="S4.T2.5.31.7.1" style="font-size:90%;">0.759 (0.808)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.32.1"><span class="ltx_text" id="S4.T2.5.32.1.1" style="font-size:90%;">llasa 8b 250k</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.32.2"><span class="ltx_text" id="S4.T2.5.32.2.1" style="font-size:90%;">0.47</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.32.3"><span class="ltx_text" id="S4.T2.5.32.3.1" style="font-size:90%;">0.825 (0.848)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.32.4"><span class="ltx_text" id="S4.T2.5.32.4.1" style="font-size:90%;">1.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.32.5"><span class="ltx_text" id="S4.T2.5.32.5.1" style="font-size:90%;">0.783 (0.799)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.32.6"><span class="ltx_text ltx_font_bold" id="S4.T2.5.32.6.1" style="font-size:90%;">4.38</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.32.7"><span class="ltx_text" id="S4.T2.5.32.7.1" style="font-size:90%;">0.767 (0.812)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r ltx_border_t" id="S4.T2.5.5.4"><span class="ltx_text" id="S4.T2.5.5.4.1" style="font-size:90%;">llasa 8b 250k</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r ltx_border_t" colspan="4" id="S4.T2.5.5.3">
<span class="ltx_text" id="S4.T2.5.5.3.1" style="font-size:90%;">Chunking: if </span><math alttext="\text{len(char)}&gt;100\rightarrow 2" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mrow id="S4.T2.3.3.1.m1.1.1" xref="S4.T2.3.3.1.m1.1.1.cmml"><mtext id="S4.T2.3.3.1.m1.1.1.2" mathsize="90%" xref="S4.T2.3.3.1.m1.1.1.2a.cmml">len(char)</mtext><mo id="S4.T2.3.3.1.m1.1.1.3" mathsize="90%" xref="S4.T2.3.3.1.m1.1.1.3.cmml">&gt;</mo><mn id="S4.T2.3.3.1.m1.1.1.4" mathsize="90%" xref="S4.T2.3.3.1.m1.1.1.4.cmml">100</mn><mo id="S4.T2.3.3.1.m1.1.1.5" mathsize="90%" stretchy="false" xref="S4.T2.3.3.1.m1.1.1.5.cmml">→</mo><mn id="S4.T2.3.3.1.m1.1.1.6" mathsize="90%" xref="S4.T2.3.3.1.m1.1.1.6.cmml">2</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><apply id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"><and id="S4.T2.3.3.1.m1.1.1a.cmml" xref="S4.T2.3.3.1.m1.1.1"></and><apply id="S4.T2.3.3.1.m1.1.1b.cmml" xref="S4.T2.3.3.1.m1.1.1"><gt id="S4.T2.3.3.1.m1.1.1.3.cmml" xref="S4.T2.3.3.1.m1.1.1.3"></gt><ci id="S4.T2.3.3.1.m1.1.1.2a.cmml" xref="S4.T2.3.3.1.m1.1.1.2"><mtext id="S4.T2.3.3.1.m1.1.1.2.cmml" mathsize="90%" xref="S4.T2.3.3.1.m1.1.1.2">len(char)</mtext></ci><cn id="S4.T2.3.3.1.m1.1.1.4.cmml" type="integer" xref="S4.T2.3.3.1.m1.1.1.4">100</cn></apply><apply id="S4.T2.3.3.1.m1.1.1c.cmml" xref="S4.T2.3.3.1.m1.1.1"><ci id="S4.T2.3.3.1.m1.1.1.5.cmml" xref="S4.T2.3.3.1.m1.1.1.5">→</ci><share href="https://arxiv.org/html/2502.04128v1#S4.T2.3.3.1.m1.1.1.4.cmml" id="S4.T2.3.3.1.m1.1.1d.cmml" xref="S4.T2.3.3.1.m1.1.1"></share><cn id="S4.T2.3.3.1.m1.1.1.6.cmml" type="integer" xref="S4.T2.3.3.1.m1.1.1.6">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">\text{len(char)}&gt;100\rightarrow 2</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">len(char) &gt; 100 → 2</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.5.3.2" style="font-size:90%;"> chunks, </span><math alttext="&gt;200\rightarrow 3" class="ltx_Math" display="inline" id="S4.T2.4.4.2.m2.1"><semantics id="S4.T2.4.4.2.m2.1a"><mrow id="S4.T2.4.4.2.m2.1.1" xref="S4.T2.4.4.2.m2.1.1.cmml"><mi id="S4.T2.4.4.2.m2.1.1.2" xref="S4.T2.4.4.2.m2.1.1.2.cmml"></mi><mo id="S4.T2.4.4.2.m2.1.1.3" mathsize="90%" xref="S4.T2.4.4.2.m2.1.1.3.cmml">&gt;</mo><mn id="S4.T2.4.4.2.m2.1.1.4" mathsize="90%" xref="S4.T2.4.4.2.m2.1.1.4.cmml">200</mn><mo id="S4.T2.4.4.2.m2.1.1.5" mathsize="90%" stretchy="false" xref="S4.T2.4.4.2.m2.1.1.5.cmml">→</mo><mn id="S4.T2.4.4.2.m2.1.1.6" mathsize="90%" xref="S4.T2.4.4.2.m2.1.1.6.cmml">3</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.2.m2.1b"><apply id="S4.T2.4.4.2.m2.1.1.cmml" xref="S4.T2.4.4.2.m2.1.1"><and id="S4.T2.4.4.2.m2.1.1a.cmml" xref="S4.T2.4.4.2.m2.1.1"></and><apply id="S4.T2.4.4.2.m2.1.1b.cmml" xref="S4.T2.4.4.2.m2.1.1"><gt id="S4.T2.4.4.2.m2.1.1.3.cmml" xref="S4.T2.4.4.2.m2.1.1.3"></gt><csymbol cd="latexml" id="S4.T2.4.4.2.m2.1.1.2.cmml" xref="S4.T2.4.4.2.m2.1.1.2">absent</csymbol><cn id="S4.T2.4.4.2.m2.1.1.4.cmml" type="integer" xref="S4.T2.4.4.2.m2.1.1.4">200</cn></apply><apply id="S4.T2.4.4.2.m2.1.1c.cmml" xref="S4.T2.4.4.2.m2.1.1"><ci id="S4.T2.4.4.2.m2.1.1.5.cmml" xref="S4.T2.4.4.2.m2.1.1.5">→</ci><share href="https://arxiv.org/html/2502.04128v1#S4.T2.4.4.2.m2.1.1.4.cmml" id="S4.T2.4.4.2.m2.1.1d.cmml" xref="S4.T2.4.4.2.m2.1.1"></share><cn id="S4.T2.4.4.2.m2.1.1.6.cmml" type="integer" xref="S4.T2.4.4.2.m2.1.1.6">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.2.m2.1c">&gt;200\rightarrow 3</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.2.m2.1d">&gt; 200 → 3</annotation></semantics></math><span class="ltx_text" id="S4.T2.5.5.3.3" style="font-size:90%;"> chunks, </span><math alttext="\dots" class="ltx_Math" display="inline" id="S4.T2.5.5.3.m3.1"><semantics id="S4.T2.5.5.3.m3.1a"><mi id="S4.T2.5.5.3.m3.1.1" mathsize="90%" mathvariant="normal" xref="S4.T2.5.5.3.m3.1.1.cmml">…</mi><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.3.m3.1b"><ci id="S4.T2.5.5.3.m3.1.1.cmml" xref="S4.T2.5.5.3.m3.1.1">…</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.3.m3.1c">\dots</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.3.m3.1d">…</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.5.5.5"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.1" style="font-size:90%;">3.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T2.5.5.6"><span class="ltx_text" id="S4.T2.5.5.6.1" style="font-size:90%;">0.770 (0.791)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the performance of the Llasa model and several other state-of-the-art Text-to-Speech (TTS) models on the SEED-TTS-Eval benchmark dataset.  The table includes results for three subsets of SEED-TTS-Eval: test-zh, test-en, and test-hard.  For each model, the table shows the Character Error Rate (CER), Speaker Similarity (SIM-o), and Word Error Rate (WER). The SIM-o values for the Llasa models include the reconstructed speech similarity (SIM-r) values in parentheses.  Models marked with † indicate that their source code is not publicly available. The table highlights the performance improvements achieved by scaling the Llasa model in terms of training time and data.
> <details>
> <summary>read the caption</summary>
> Table 2: Results of llasa and recent TTS models on the SEED test sets. † denotes close-sourced models. For llasa series, sim-o values include sim-r in parentheses.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.4">
<tr class="ltx_tr" id="S4.T3.4.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.2.1" style="font-size:90%;">Test Clean</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.1.3.1" style="font-size:90%;">Test Other</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.2.1"><span class="ltx_text" id="S4.T3.4.2.1.1" style="font-size:90%;">whisper large v3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.2"><span class="ltx_text" id="S4.T3.4.2.2.1" style="font-size:90%;">1.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.2.3"><span class="ltx_text" id="S4.T3.4.2.3.1" style="font-size:90%;">3.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.3">
<td class="ltx_td ltx_align_left" id="S4.T3.4.3.1"><span class="ltx_text" id="S4.T3.4.3.1.1" style="font-size:90%;">whisper large v2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.2"><span class="ltx_text" id="S4.T3.4.3.2.1" style="font-size:90%;">2.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.3.3"><span class="ltx_text" id="S4.T3.4.3.3.1" style="font-size:90%;">5.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.1"><span class="ltx_text" id="S4.T3.4.4.1.1" style="font-size:90%;">llasa asr 1b</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2"><span class="ltx_text" id="S4.T3.4.4.2.1" style="font-size:90%;">2.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.3"><span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:90%;">7.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.5.1"><span class="ltx_text" id="S4.T3.4.5.1.1" style="font-size:90%;">llasa asr 3b</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.5.2"><span class="ltx_text" id="S4.T3.4.5.2.1" style="font-size:90%;">1.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.5.3"><span class="ltx_text" id="S4.T3.4.5.3.1" style="font-size:90%;">5.9</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different Automatic Speech Recognition (ASR) models on the LibriSpeech dataset's test sets.  It compares the Word Error Rate (WER) achieved by various models, specifically highlighting the performance of the proposed Llasa model (in multiple configurations) against Whisper Large v2 and Whisper Large v3.
> <details>
> <summary>read the caption</summary>
> Table 3: ASR Performance on LibriSpeech Test Sets
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.2">
<tr class="ltx_tr" id="A1.T4.2.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.2.1.1">Model</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.2.1.2">en</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.2.1.3">zh</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.2.2.1">GT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.2">0.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.2.3">0.94</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T4.2.3.1"><span class="ltx_text ltx_font_bold" id="A1.T4.2.3.1.1">Train-time scaling</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.2.4.1">llasa 1b (80k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.4.2">0.753</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.4.3">0.815</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.5">
<td class="ltx_td ltx_align_left" id="A1.T4.2.5.1">llasa 1b (160k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.5.2">0.762</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.5.3">0.822</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.6">
<td class="ltx_td ltx_align_left" id="A1.T4.2.6.1">llasa 1b (250k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.6.2">0.768</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.6.3">0.836</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.7">
<td class="ltx_td ltx_align_left" id="A1.T4.2.7.1">llasa 3b (250k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.7.2">0.769</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.7.3">0.852</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.8">
<td class="ltx_td ltx_align_left" id="A1.T4.2.8.1">llasa 8b (250k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.8.2">0.778</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.8.3">0.861</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.9">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T4.2.9.1"><span class="ltx_text ltx_font_bold" id="A1.T4.2.9.1.1">Process Reward Models (emotion sim)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.2.10.1">llasa 1b (80k)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.10.2">0.933</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.2.10.3">0.970</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.11">
<td class="ltx_td ltx_align_left" id="A1.T4.2.11.1">llasa 1b (160k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.11.2">0.936</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.11.3">0.971</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.12">
<td class="ltx_td ltx_align_left" id="A1.T4.2.12.1">llasa 1b (250k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.12.2">0.937</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.12.3">0.974</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.13">
<td class="ltx_td ltx_align_left" id="A1.T4.2.13.1">llasa 3b (250k)</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.13.2">0.949</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.13.3">0.975</td>
</tr>
<tr class="ltx_tr" id="A1.T4.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.2.14.1">llasa 8b (250k)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.2.14.2">0.951</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.2.14.3">0.974</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents the results of evaluating emotion similarity using Emotion2Vec-Plus-Large for English ('en') and Chinese ('zh') speech synthesis.  It shows the emotion similarity scores (SIM-o and SIM-r) achieved by different models, including various configurations of the Llasa model with different training data sizes and model parameters,  alongside baselines such as ground truth (GT) and other existing systems. SIM-o represents similarity calculated using the original speech, while SIM-r represents similarity computed using the reconstructed speech from the TTS system.  The table allows for comparison of the effect of training-time scaling (different model sizes and training data amounts) on emotion generation accuracy.
> <details>
> <summary>read the caption</summary>
> Table 4:  en, zh Emotion Similarity
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T5.4">
<tr class="ltx_tr" id="A2.T5.4.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.3.1" rowspan="2"><span class="ltx_text" id="A2.T5.4.3.1.1">System</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T5.4.3.2">Continuation</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.4">
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.1">WER-H</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.2">SIM-o</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.4.3">SIM-r</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.5.1">Ground Truth</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.5.2">2.15</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.5.3">0.668</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.5.4">-</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.6.1">Our Codec Resyn.</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.2">2.49</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.3">0.580</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.6.4">0.638</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.7.1">ELLA-V *</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.7.2">2.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.7.3">0.303</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.7.4">0.340</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.3.1.1">VALL-E R <sup class="ltx_sup" id="A2.T5.3.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.1.2">2.32</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.1.3">0.363</td>
<td class="ltx_td ltx_align_center" id="A2.T5.3.1.4">0.397</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.8.1">CLaM-TTS</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.2">2.36</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.3">0.477</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.8.4">0.513</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.9.1">VALL-E</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.9.2">3.8</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.9.3">-</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.9.4">0.508</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.2.1">VALL-E 2 <sup class="ltx_sup" id="A2.T5.4.2.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.2.2">2.32</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.2.3">0.504</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.2.4">0.529</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.10.1">Voicebox</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.10.2">2.0</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.10.3">0.593</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.10.4">0.616</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.11.1">MELLE</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.11.2">1.98</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.11.3">0.508</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.11.4">0.539</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T5.4.12.1"><span class="ltx_text ltx_font_bold" id="A2.T5.4.12.1.1">Train-time Scaling</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.4.12.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.13">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.13.1">LLaSA-TTS 1b 80k</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.13.2">2.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.13.3">0.457</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.13.4">0.614</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.14.1">LLaSA-TTS 1b 160k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.14.2">2.48</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.14.3">0.475</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.14.4">0.625</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.15.1">LLaSA-TTS 1b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.15.2">2.47</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.15.3">0.478</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.15.4">0.627</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.16.1">LLaSA-TTS 3b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.16.2">2.35</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.16.3">0.484</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.16.4">0.628</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.17.1">LLaSA-TTS 8b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.17.2">2.29</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.17.3">0.483</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.17.4">0.626</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T5.4.18.1"><span class="ltx_text ltx_font_bold" id="A2.T5.4.18.1.1">PRM (spk sim)</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.4.18.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.19">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.19.1">LLaSA-TTS-80k 1b</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.19.2">2.43</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.19.3">0.699</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.19.4">0.738</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.20.1">LLaSA-TTS-160k 1b</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.20.2">2.36</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.20.3">0.712</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.20.4">0.744</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.21.1">LLaSA-TTS 1b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.21.2">2.37</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.21.3">0.712</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.21.4">0.743</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.22.1">LLaSA-TTS 3b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.22.2">2.26</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.22.3">0.715</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.22.4">0.745</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.23.1">LLaSA-TTS 8b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.23.2">2.24</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.23.3">0.714</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.23.4">0.741</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.24">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T5.4.24.1"><span class="ltx_text ltx_font_bold" id="A2.T5.4.24.1.1">PRM (spk sim)+ORMs (WER)</span></td>
<td class="ltx_td ltx_border_t" id="A2.T5.4.24.2"></td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.25">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A2.T5.4.25.1">LLaSA-TTS-80k 1b</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.25.2">1.76</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.25.3">0.700</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.4.25.4">0.738</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.26">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.26.1">LLaSA-TTS-160k 1b</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.26.2">1.66</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.26.3">0.710</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.26.4">0.743</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.27.1">LLaSA-TTS 1b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.27.2">1.62</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.27.3">0.712</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.27.4">0.744</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.28">
<td class="ltx_td ltx_align_left ltx_border_r" id="A2.T5.4.28.1">LLaSA-TTS 3b 250k</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.28.2">1.57</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.28.3">0.714</td>
<td class="ltx_td ltx_align_center" id="A2.T5.4.28.4">0.742</td>
</tr>
<tr class="ltx_tr" id="A2.T5.4.29">
<td class="ltx_td ltx_align_left ltx_border_b ltx_border_r" id="A2.T5.4.29.1">LLaSA-TTS 8b 250k</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.4.29.2">1.49</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.4.29.3">0.714</td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A2.T5.4.29.4">0.740</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents an objective comparison of various models' performance on continuation zero-shot speech synthesis tasks.  The evaluation metrics include Word Error Rate (WER) calculated using the HuBERT-Large ASR model, and Speaker Similarity (SIM) scores (both SIM-o, computed with the original speech, and SIM-r, using reconstructed speech).  The table highlights the best and second-best performing models for each metric.  Note that some results are based on reproductions from other papers, and certain results include additional metrics not originally reported by those papers.
> <details>
> <summary>read the caption</summary>
> Table 5: Objective performance comparison on continuation zero-shot speech synthesis tasks. WER-H (%) denotes evaluation with the HuBERT-Large ASR model. The boldface indicates the best result, and the underline denotes the second best. *We quote Han et al. [2024]’s reproduction results, which demonstrate better performance. †We evaluate metrics not reported in the original paper, using the audios provided by the authors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T6.4">
<tr class="ltx_tr" id="A3.T6.4.1">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.1.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.1.1.1">
<span class="ltx_p" id="A3.T6.4.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.1.1.1.1.1" style="font-size:90%;">Category</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.1.2.1">
<span class="ltx_p" id="A3.T6.4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.1.2.1.1.1" style="font-size:90%;">1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.1.3.1">
<span class="ltx_p" id="A3.T6.4.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.1.3.1.1.1" style="font-size:90%;">2</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.1.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.1.4.1">
<span class="ltx_p" id="A3.T6.4.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.1.4.1.1.1" style="font-size:90%;">3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.2">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.2.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.2.1.1">
<span class="ltx_p" id="A3.T6.4.2.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.2.1.1.1.1" style="font-size:90%;">Emotion</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.2.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.2.2.1">
<span class="ltx_p" id="A3.T6.4.2.2.1.1"><span class="ltx_text" id="A3.T6.4.2.2.1.1.1" style="font-size:90%;">No detectable emotion / 无可检测的情感</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.2.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.2.3.1">
<span class="ltx_p" id="A3.T6.4.2.3.1.1"><span class="ltx_text" id="A3.T6.4.2.3.1.1.1" style="font-size:90%;">Emotion present but not convincingly rendered / 存在情感但表达不够令人信服</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.2.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.2.4.1">
<span class="ltx_p" id="A3.T6.4.2.4.1.1"><span class="ltx_text" id="A3.T6.4.2.4.1.1.1" style="font-size:90%;">Correct emotion recognition and appropriate rendering / 正确识别情感并恰当表达</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.3">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.3.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.3.1.1">
<span class="ltx_p" id="A3.T6.4.3.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.3.1.1.1.1" style="font-size:90%;">Paralinguistic</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.3.2.1">
<span class="ltx_p" id="A3.T6.4.3.2.1.1"><span class="ltx_text" id="A3.T6.4.3.2.1.1.1" style="font-size:90%;">No recognition of paralinguistic cues like interjections / 未识别出语调学关键词，如“哎呀”或“嘘”</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.3.3.1">
<span class="ltx_p" id="A3.T6.4.3.3.1.1"><span class="ltx_text" id="A3.T6.4.3.3.1.1.1" style="font-size:90%;">Attempts to render paralinguistic cues but unnatural / 明确意图表达关键词，但表达不自然</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.3.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.3.4.1">
<span class="ltx_p" id="A3.T6.4.3.4.1.1"><span class="ltx_text" id="A3.T6.4.3.4.1.1.1" style="font-size:90%;">Natural rendering of paralinguistic cues with appropriate emphasis / 自然表达语调学关键词，恰当强调</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.4">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.4.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.4.1.1">
<span class="ltx_p" id="A3.T6.4.4.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.4.1.1.1.1" style="font-size:90%;">Chinese Poetry</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.4.2.1">
<span class="ltx_p" id="A3.T6.4.4.2.1.1"><span class="ltx_text" id="A3.T6.4.4.2.1.1.1" style="font-size:90%;">Fails to capture the poetic structure and imagery / 未能捕捉诗歌的结构和意象</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.4.3.1">
<span class="ltx_p" id="A3.T6.4.4.3.1.1"><span class="ltx_text" id="A3.T6.4.4.3.1.1.1" style="font-size:90%;">Captures some poetic elements but lacks depth / 捕捉了一些诗歌元素但缺乏深度</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.4.4.1">
<span class="ltx_p" id="A3.T6.4.4.4.1.1"><span class="ltx_text" id="A3.T6.4.4.4.1.1.1" style="font-size:90%;">Accurately captures the poetic structure, imagery, and emotional depth / 准确捕捉诗歌的结构、意象和情感深度</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.5">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.5.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.5.1.1">
<span class="ltx_p" id="A3.T6.4.5.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.5.1.1.1.1" style="font-size:90%;">Polyphonic Characters</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.5.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.5.2.1">
<span class="ltx_p" id="A3.T6.4.5.2.1.1"><span class="ltx_text" id="A3.T6.4.5.2.1.1.1" style="font-size:90%;">Incorrect pronunciation and meaning of polyphonic characters / 多音字发音错误，意义不正确</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.5.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.5.3.1">
<span class="ltx_p" id="A3.T6.4.5.3.1.1"><span class="ltx_text" id="A3.T6.4.5.3.1.1.1" style="font-size:90%;">Attempts correct pronunciation but with minor errors / 尝试正确发音但有小错误</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.5.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.5.4.1">
<span class="ltx_p" id="A3.T6.4.5.4.1.1"><span class="ltx_text" id="A3.T6.4.5.4.1.1.1" style="font-size:90%;">Correct pronunciation and meaning of polyphonic characters / 多音字发音和意义正确</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.6">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.6.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.6.1.1">
<span class="ltx_p" id="A3.T6.4.6.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.6.1.1.1.1" style="font-size:90%;">Questions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.6.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.6.2.1">
<span class="ltx_p" id="A3.T6.4.6.2.1.1"><span class="ltx_text" id="A3.T6.4.6.2.1.1.1" style="font-size:90%;">Intonation pattern incorrect, failing to convey questioning tone / 语调模式不正确，未能传达问句的语气</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.6.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.6.3.1">
<span class="ltx_p" id="A3.T6.4.6.3.1.1"><span class="ltx_text" id="A3.T6.4.6.3.1.1.1" style="font-size:90%;">Intonation pattern largely correct but with minor flaws / 语调模式大体正确，但有细微瑕疵</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.6.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.6.4.1">
<span class="ltx_p" id="A3.T6.4.6.4.1.1"><span class="ltx_text" id="A3.T6.4.6.4.1.1.1" style="font-size:90%;">Correct intonation patterns that clearly convey the questioning nature / 语调模式正确，清晰传达问句的性质</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.7">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.7.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.7.1.1">
<span class="ltx_p" id="A3.T6.4.7.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.7.1.1.1.1" style="font-size:90%;">Tongue Twisters</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.7.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.7.2.1">
<span class="ltx_p" id="A3.T6.4.7.2.1.1"><span class="ltx_text" id="A3.T6.4.7.2.1.1.1" style="font-size:90%;">Inability to articulate the tongue twister, resulting in errors / 无法清晰表达绕口令，导致错误</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.7.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.7.3.1">
<span class="ltx_p" id="A3.T6.4.7.3.1.1"><span class="ltx_text" id="A3.T6.4.7.3.1.1.1" style="font-size:90%;">Attempts articulation with some errors / 尝试表达绕口令但有部分错误</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_r ltx_border_t" id="A3.T6.4.7.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.7.4.1">
<span class="ltx_p" id="A3.T6.4.7.4.1.1"><span class="ltx_text" id="A3.T6.4.7.4.1.1.1" style="font-size:90%;">Clear and accurate articulation of the tongue twister without errors / 清晰准确地表达绕口令，无错误</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T6.4.8">
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_b ltx_border_l ltx_border_r ltx_border_t" id="A3.T6.4.8.1" style="width:71.1pt;">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.8.1.1">
<span class="ltx_p" id="A3.T6.4.8.1.1.1"><span class="ltx_text ltx_font_bold" id="A3.T6.4.8.1.1.1.1" style="font-size:90%;">Rare Characters</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.8.2.1">
<span class="ltx_p" id="A3.T6.4.8.2.1.1"><span class="ltx_text" id="A3.T6.4.8.2.1.1.1" style="font-size:90%;">Mispronunciation or incorrect interpretation of rare characters / 生僻字发音错误或解释不正确</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.4.8.3">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.8.3.1">
<span class="ltx_p" id="A3.T6.4.8.3.1.1"><span class="ltx_text" id="A3.T6.4.8.3.1.1.1" style="font-size:90%;">Attempts correct pronunciation and interpretation with minor mistakes / 尝试正确发音和解释但有小错误</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_b ltx_border_r ltx_border_t" id="A3.T6.4.8.4">
<span class="ltx_inline-block ltx_align_top" id="A3.T6.4.8.4.1">
<span class="ltx_p" id="A3.T6.4.8.4.1.1"><span class="ltx_text" id="A3.T6.4.8.4.1.1.1" style="font-size:90%;">Accurate pronunciation and insightful interpretation of rare characters / 生僻字发音和解释准确</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the evaluation criteria used to assess the performance of text-to-speech (TTS) systems on Chinese language tests.  Each row represents a category of text (e.g., Emotion, Paralinguistic cues, etc.) and lists three scoring levels reflecting the naturalness and accuracy of the TTS system's output in capturing the nuances of the language,  The three levels of scores 1, 2, and 3  describe the performance from poor to excellent, respectively.  Specifically, score 1 indicates the system fails to capture the intended aspects, score 2 shows attempts to do so but with some flaws, and score 3 indicates accurate and natural rendering.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation Criteria for Chinese Test Set
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A4.T7.4">
<tr class="ltx_tr" id="A4.T7.4.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T7.4.1.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.1.1.1">
<span class="ltx_p" id="A4.T7.4.1.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.1.1.1.1">Categories</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T7.4.1.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.1.2.1">
<span class="ltx_p" id="A4.T7.4.1.2.1.1" style="width:142.3pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.2.1.1.1">Example sentence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A4.T7.4.1.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.1.3.1">
<span class="ltx_p" id="A4.T7.4.1.3.1.1" style="width:156.5pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.1.3.1.1.1">Evaluation criteria</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T7.4.2.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.2.1.1">
<span class="ltx_p" id="A4.T7.4.2.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.2.1.1.1.1">Compound Nouns</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T7.4.2.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.2.2.1">
<span class="ltx_p" id="A4.T7.4.2.2.1.1" style="width:142.3pt;">The Beckhams decided to rent a charming stone-built quaint countryside holiday cottage.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A4.T7.4.2.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.2.3.1">
<span class="ltx_p" id="A4.T7.4.2.3.1.1" style="width:156.5pt;">1 = fails to recognise compound nouns 
<br class="ltx_break"/>2 = fails to realise the phrasal stress naturally 
<br class="ltx_break"/>3 = natural phrasal stress</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.3.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.3.1.1">
<span class="ltx_p" id="A4.T7.4.3.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.3.1.1.1.1">Emotions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.3.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.3.2.1">
<span class="ltx_p" id="A4.T7.4.3.2.1.1" style="width:142.3pt;">”Oh my gosh! Are we really going to the Maldives? That’s unbelievable!” Jennie squealed, bouncing on her toes with uncontained glee.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.3.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.3.3.1">
<span class="ltx_p" id="A4.T7.4.3.3.1.1" style="width:156.5pt;">1 = no audible emotions 
<br class="ltx_break"/>2 = emotion present but insufficient 
<br class="ltx_break"/>3 = correct emotion recognition and appropriate rendering</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.4.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.4.1.1">
<span class="ltx_p" id="A4.T7.4.4.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.4.1.1.1.1">Foreign Words</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.4.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.4.2.1">
<span class="ltx_p" id="A4.T7.4.4.2.1.1" style="width:142.3pt;">Mr. Henry, renowned for his mise en place, orchestrated a seven-course meal, each dish a pièce de résistance.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.4.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.4.3.1">
<span class="ltx_p" id="A4.T7.4.4.3.1.1" style="width:156.5pt;">1 = pronounces foreign words with incorrect anglicized pronunciation 
<br class="ltx_break"/>2 = applies foreign accent but not entirely correctly 
<br class="ltx_break"/>3 = correct rendering in the intended language or accepted anglicized reading</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.5.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.5.1.1">
<span class="ltx_p" id="A4.T7.4.5.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.5.1.1.1.1">Paralinguistics</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.5.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.5.2.1">
<span class="ltx_p" id="A4.T7.4.5.2.1.1" style="width:142.3pt;">”Shh, Lucy, shhh, we mustn’t wake your baby brother,” Tom whispered, as they tiptoed past the nursery.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.5.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.5.3.1">
<span class="ltx_p" id="A4.T7.4.5.3.1.1" style="width:156.5pt;">1 = no recognition of paralinguistic keywords such as ”shhh” or ”phew” 
<br class="ltx_break"/>2 = clear intention to render keywords distinctly, but rendering unnatural 
<br class="ltx_break"/>3 = natural rendering, e.g. making speech voiceless on ”shhh” and other whispered speech</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.6.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.6.1.1">
<span class="ltx_p" id="A4.T7.4.6.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.6.1.1.1.1">Punctuations</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.6.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.6.2.1">
<span class="ltx_p" id="A4.T7.4.6.2.1.1" style="width:142.3pt;">She received an odd text from her brother: ’Emergency @ home; call ASAP! Mom &amp; Dad are worried…#familymatters.’</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.6.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.6.3.1">
<span class="ltx_p" id="A4.T7.4.6.3.1.1" style="width:156.5pt;">1 = glitches on uncommon punctuations such as # or &amp; 
<br class="ltx_break"/>2 = no glitch but incorrect rendering 
<br class="ltx_break"/>3 = no glitch and correct pausing and verbalization, e.g. @ as ”at”.</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.7.1" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.7.1.1">
<span class="ltx_p" id="A4.T7.4.7.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.7.1.1.1.1">Questions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.7.2" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.7.2.1">
<span class="ltx_p" id="A4.T7.4.7.2.1.1" style="width:142.3pt;">But the Brexit question remains: After all the trials and tribulations, will the ministers find the answers in time?</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A4.T7.4.7.3" style="padding-bottom:8.61108pt;">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.7.3.1">
<span class="ltx_p" id="A4.T7.4.7.3.1.1" style="width:156.5pt;">1 = intonation pattern incorrect 
<br class="ltx_break"/>2 = intonation pattern largely correct but with minor flaws 
<br class="ltx_break"/>3 = correct intonation</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A4.T7.4.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T7.4.8.1">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.8.1.1">
<span class="ltx_p" id="A4.T7.4.8.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.4.8.1.1.1.1">Syntactic Complexities</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T7.4.8.2">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.8.2.1">
<span class="ltx_p" id="A4.T7.4.8.2.1.1" style="width:142.3pt;">The movie that De Moya who was recently awarded the lifetime achievement award starred in 2022 was a box-office hit, despite the mixed reviews.</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A4.T7.4.8.3">
<span class="ltx_inline-block ltx_align_top" id="A4.T7.4.8.3.1">
<span class="ltx_p" id="A4.T7.4.8.3.1.1" style="width:156.5pt;">1 = failure to parse the syntax correctly 
<br class="ltx_break"/>2 = parses the syntax largely correctly but the rendering is not entirely natural 
<br class="ltx_break"/>3 = parsing correct and rendering natural</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the evaluation criteria and example sentences used to assess the emergent abilities of the tested Text-to-Speech (TTS) models across seven different categories: Compound Nouns, Emotions, Foreign Words, Paralinguistics, Punctuations, Questions, and Syntactic Complexities.  For each category, three score levels (1, 2, and 3) are defined, representing different levels of success in capturing nuanced aspects of the text, such as appropriate stress and intonation, accurate emotion conveyance, correct pronunciation of foreign words, proper rendering of paralinguistic cues, handling of punctuation, comprehension of questions, and accurate parsing and rendering of complex sentences. Example sentences are provided for each category to illustrate the evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Table 7: Emergent abilities testset by category and evaluation criteria.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.04128/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.04128/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}