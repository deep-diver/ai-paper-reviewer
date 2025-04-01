---
title: "UPME: An Unsupervised Peer Review Framework for Multimodal Large Language Model Evaluation"
summary: "UPME: Peer review for MLLMs, minus human bias!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-03-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14941 {{< /keyword >}}
{{< keyword icon="writer" >}} Qihui Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14941" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14941" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14941/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing methods for evaluating Multimodal Large Language Models (MLLMs) face challenges due to high human annotation costs and biases. While automated approaches attempt to reduce workload, they often introduce biases.  To resolve these limitations, this paper introduces an Unsupervised Peer review MLLM Evaluation (**UPME**) framework which focuses on conducting objective evaluation.



 The **UPME** framework utilizes only image data, enabling models to generate questions automatically and conduct peer review assessments. To mitigate bias, a vision-language scoring system assesses response correctness, visual understanding, and image-text correlation. Results showed that UPME aligns with human-designed benchmarks and inherent preferences. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UPME framework effectively reduces reliance on human workload in MLLM evaluation by using unsupervised peer review. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The vision-language scoring system of the UPME achieves high consistency with human evaluations, reducing verbosity and self-preference issues. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experimental results demonstrate that UPME aligns closely with human-designed benchmarks, showing potential for reliable automation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an innovative framework for evaluating MLLMs, addressing key limitations of existing methods such as annotation costs and biases. It offers a promising direction for automating and improving the objectivity of multimodal model assessments and opens new avenues for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14941/x1.png)

> 🔼 The figure illustrates the challenges associated with existing Multimodal Large Language Model (MLLM) evaluation methods. These methods often involve significant human annotation effort for creating question-answer pairs, leading to high costs and limited evaluation scale.  Additionally, existing MLLM-as-Judge approaches, while aiming to reduce human workload, can introduce biases. The figure contrasts these existing approaches with the proposed Unsupervised Peer review MLLM Evaluation (UPME) framework.  UPME tackles these limitations by using an unsupervised peer-review mechanism in which MLLMs automatically generate questions and evaluate each other's answers.  This reduces the dependence on human annotation, minimizes costs, and achieves evaluation results that closely align with human judgment.
> <details>
> <summary>read the caption</summary>
> Figure 1: Existing methods for evaluating MLLMs face various challenges. Our proposed UPME framework addresses these limitations by leveraging a peer review mechanism, reducing annotation costs, and aligning closely with human judgment.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.72.72">
<tr class="ltx_tr" id="S3.T1.72.72.73">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.72.72.73.1" rowspan="2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.72.72.73.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T1.72.72.73.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.72.72.73.2.1" style="font-size:90%;">MMstar</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.72.72.73.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.72.72.73.3.1" style="font-size:90%;">ScienceQA</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1" style="font-size:90%;">Pearson (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.2.1" style="font-size:90%;">Spearman (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.2.1.m1.1a"><mo id="S3.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.1.m1.1b"><ci id="S3.T1.2.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.3.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.1" style="font-size:90%;">Per.Ent. (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.m1.1d">↓</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.4.1" style="font-size:90%;">Pearson (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.4.1.m1.1a"><mo id="S3.T1.4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.1.m1.1b"><ci id="S3.T1.4.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.5.5.1" style="font-size:90%;">Spearman (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T1.5.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.1.m1.1b"><ci id="S3.T1.5.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.1.m1.1d">↑</annotation></semantics></math>)</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.6.1" style="font-size:90%;">Per.Ent. (<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.6.1.m1.1a"><mo id="S3.T1.6.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.1.m1.1b"><ci id="S3.T1.6.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.6.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.1.m1.1d">↓</annotation></semantics></math>)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.12.12.12.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.12.12.12.7.1" style="font-size:90%;">LLama-3.2-11b-V</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.7.7.7.1.1" style="font-size:90%;">0.314</span><sup class="ltx_sup" id="S3.T1.7.7.7.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.7.7.7.1.2.1" style="font-size:90%;">±0.0757</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.8.8.8.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.8.8.8.2.1" style="font-size:90%;">0.550</span><sup class="ltx_sup" id="S3.T1.8.8.8.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.8.8.8.2.2.1" style="font-size:90%;">±0.0577</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.9.9.9.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.9.9.9.3.1" style="font-size:90%;">0.983</span><sup class="ltx_sup" id="S3.T1.9.9.9.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.9.9.9.3.2.1" style="font-size:90%;">±0.2310</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.10.10.10.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.10.10.10.4.1" style="font-size:90%;">0.160</span><sup class="ltx_sup" id="S3.T1.10.10.10.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.10.10.10.4.2.1" style="font-size:90%;">±0.0430</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.11.11.11.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.11.11.11.5.1" style="font-size:90%;">0.225</span><sup class="ltx_sup" id="S3.T1.11.11.11.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.11.11.11.5.2.1" style="font-size:90%;">±0.0957</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.12.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.12.12.12.6.1" style="font-size:90%;">1.099</span><sup class="ltx_sup" id="S3.T1.12.12.12.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.12.12.12.6.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.18.18.18.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.18.18.18.7.1" style="font-size:90%;">Claude-3-haiku</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.13.13.13.1.1" style="font-size:90%;">0.095</span><sup class="ltx_sup" id="S3.T1.13.13.13.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.13.13.13.1.2.1" style="font-size:90%;">±0.1301</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.14.14.14.2.1" style="font-size:90%;">0.225</span><sup class="ltx_sup" id="S3.T1.14.14.14.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.14.14.14.2.2.1" style="font-size:90%;">±0.1500</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.15.15.15.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.15.15.15.3.1" style="font-size:90%;">1.099</span><sup class="ltx_sup" id="S3.T1.15.15.15.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.15.15.15.3.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.16.16.16.4.1" style="font-size:90%;">-0.145</span><sup class="ltx_sup" id="S3.T1.16.16.16.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.16.16.16.4.2.1" style="font-size:90%;">±0.0308</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.17.17.17.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.17.17.17.5.1" style="font-size:90%;">-0.525</span><sup class="ltx_sup" id="S3.T1.17.17.17.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.17.17.17.5.2.1" style="font-size:90%;">±0.2061</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.18.18.18.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.18.18.18.6.1" style="font-size:90%;">1.099</span><sup class="ltx_sup" id="S3.T1.18.18.18.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.18.18.18.6.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.24.24.24.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.24.24.24.7.1" style="font-size:90%;">Claude-3.5-sonnet</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.19.19.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.19.19.19.1.1" style="font-size:90%;">0.780</span><sup class="ltx_sup" id="S3.T1.19.19.19.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.19.19.19.1.2.1" style="font-size:90%;">±0.0146</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.20.20.20.2.1" style="font-size:90%;">0.825</span><sup class="ltx_sup" id="S3.T1.20.20.20.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.20.20.20.2.2.1" style="font-size:90%;">±0.0500</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.21.21.21.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.21.21.21.3.1" style="font-size:90%;">0.752</span><sup class="ltx_sup" id="S3.T1.21.21.21.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.21.21.21.3.2.1" style="font-size:90%;">±0.2310</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.22.22.22.4.1" style="font-size:90%;">0.437</span><sup class="ltx_sup" id="S3.T1.22.22.22.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.22.22.22.4.2.1" style="font-size:90%;">±0.0452</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.23.23.23.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.23.23.23.5.1" style="font-size:90%;">0.450</span><sup class="ltx_sup" id="S3.T1.23.23.23.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.23.23.23.5.2.1" style="font-size:90%;">±0.1732</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.24.24.24.6.1" style="font-size:90%;">0.752</span><sup class="ltx_sup" id="S3.T1.24.24.24.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.24.24.24.6.2.1" style="font-size:90%;">±0.2310</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.30.30.30">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.30.30.30.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.30.30.30.7.1" style="font-size:90%;">Gemini-1.5-pro</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.25.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.25.25.25.1.1" style="font-size:90%;">0.864</span><sup class="ltx_sup" id="S3.T1.25.25.25.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.25.25.25.1.2.1" style="font-size:90%;">±0.0068</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.26.26.26.2.1" style="font-size:90%;">0.850</span><sup class="ltx_sup" id="S3.T1.26.26.26.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.26.26.26.2.2.1" style="font-size:90%;">±0.0577</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.27.27.27.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.27.27.27.3.1" style="font-size:90%;">0.637</span><sup class="ltx_sup" id="S3.T1.27.27.27.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.27.27.27.3.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.28.28.28.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.28.28.28.4.1" style="font-size:90%;">0.4147</span><sup class="ltx_sup" id="S3.T1.28.28.28.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.28.28.28.4.2.1" style="font-size:90%;">±0.0464</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.29.29.29.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.29.29.29.5.1" style="font-size:90%;">0.725<sup class="ltx_sup" id="S3.T1.29.29.29.5.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.29.29.29.5.1.1.1">±0.2062</span></sup></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.30.30.30.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.30.30.6.1" style="font-size:90%;">0.434<sup class="ltx_sup" id="S3.T1.30.30.30.6.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.30.30.30.6.1.1.1">±0.5352</span></sup></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.36.36.36">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.36.36.36.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.36.36.36.7.1" style="font-size:90%;">GPT-4o-mini</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.31.31.31.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.31.31.31.1.1" style="font-size:90%;">0.668</span><sup class="ltx_sup" id="S3.T1.31.31.31.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.31.31.31.1.2.1" style="font-size:90%;">±0.0073</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.32.32.32.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.32.32.32.2.1" style="font-size:90%;">0.725</span><sup class="ltx_sup" id="S3.T1.32.32.32.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.32.32.32.2.2.1" style="font-size:90%;">±0.1258</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.33.33.33.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.33.33.33.3.1" style="font-size:90%;">0.868</span><sup class="ltx_sup" id="S3.T1.33.33.33.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.33.33.33.3.2.1" style="font-size:90%;">±0.2886</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.34.34.34.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.34.34.34.4.1" style="font-size:90%;">0.3354</span><sup class="ltx_sup" id="S3.T1.34.34.34.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.34.34.34.4.2.1" style="font-size:90%;">±0.0635</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.35.35.35.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.35.35.35.5.1" style="font-size:90%;">0.600</span><sup class="ltx_sup" id="S3.T1.35.35.35.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.35.35.35.5.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.36.36.36.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.36.36.36.6.1" style="font-size:90%;">1.099</span><sup class="ltx_sup" id="S3.T1.36.36.36.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.36.36.36.6.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.42.42.42">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.42.42.42.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.42.42.42.7.1" style="font-size:90%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.37.37.37.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.37.37.37.1.1" style="font-size:90%;">0.878<sup class="ltx_sup" id="S3.T1.37.37.37.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.37.37.37.1.1.1.1">±0.0038</span></sup></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.38.38.38.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.38.38.38.2.1" style="font-size:90%;">0.875<sup class="ltx_sup" id="S3.T1.38.38.38.2.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.38.38.38.2.1.1.1">±0.0050</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.39.39.39.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.39.39.39.3.1" style="font-size:90%;">0.159<sup class="ltx_sup" id="S3.T1.39.39.39.3.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.39.39.39.3.1.1.1">±0.3183</span></sup></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.40.40.40.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.40.40.40.4.1" style="font-size:90%;">0.617<sup class="ltx_sup" id="S3.T1.40.40.40.4.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.40.40.40.4.1.1.1">±0.0071</span></sup></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.41.41.41.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.41.41.41.5.1" style="font-size:90%;">0.625</span><sup class="ltx_sup" id="S3.T1.41.41.41.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.41.41.41.5.2.1" style="font-size:90%;">±0.1258</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.42.42.42.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.42.42.42.6.1" style="font-size:90%;">0.637</span><sup class="ltx_sup" id="S3.T1.42.42.42.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.42.42.42.6.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.72.72.74">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.72.72.74.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.72.72.74.1.1" style="font-size:90%;">Methods</span></td>
<td class="ltx_td ltx_border_t" id="S3.T1.72.72.74.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.72.72.74.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S3.T1.72.72.74.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.72.72.74.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.72.72.74.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.72.72.74.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.48.48.48">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.48.48.48.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.48.48.48.7.1" style="font-size:90%;">Peer Review</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.43.43.43.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.43.43.43.1.1" style="font-size:90%;">0.725</span><sup class="ltx_sup" id="S3.T1.43.43.43.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.43.43.43.1.2.1" style="font-size:90%;">±0.0044</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.44.44.44.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.44.44.44.2.1" style="font-size:90%;">0.771</span><sup class="ltx_sup" id="S3.T1.44.44.44.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.44.44.44.2.2.1" style="font-size:90%;">±0.1616</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.45.45.45.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.45.45.45.3.1" style="font-size:90%;">1.040</span><sup class="ltx_sup" id="S3.T1.45.45.45.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.45.45.45.3.2.1" style="font-size:90%;">±0.2830</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.46.46.46.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.46.46.46.4.1" style="font-size:90%;">0.463</span><sup class="ltx_sup" id="S3.T1.46.46.46.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.46.46.46.4.2.1" style="font-size:90%;">±0.0193</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.47.47.47.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.47.47.47.5.1" style="font-size:90%;">0.686</span><sup class="ltx_sup" id="S3.T1.47.47.47.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.47.47.47.5.2.1" style="font-size:90%;">±0.1777</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.48.48.48.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.48.48.48.6.1" style="font-size:90%;">1.040</span><sup class="ltx_sup" id="S3.T1.48.48.48.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.48.48.48.6.2.1" style="font-size:90%;">±0.2830</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.54.54.54">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.54.54.54.7" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.54.54.54.7.1" style="font-size:90%;">Majority Vote </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.54.54.54.7.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14941v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S3.T1.54.54.54.7.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.49.49.49.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.49.49.49.1.1" style="font-size:90%;">0.757</span><sup class="ltx_sup" id="S3.T1.49.49.49.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.49.49.49.1.2.1" style="font-size:90%;">±0.0013</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.50.50.50.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.50.50.50.2.1" style="font-size:90%;">0.757</span><sup class="ltx_sup" id="S3.T1.50.50.50.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.50.50.50.2.2.1" style="font-size:90%;">±0.0857</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.51.51.51.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.51.51.51.3.1" style="font-size:90%;">1.299</span><sup class="ltx_sup" id="S3.T1.51.51.51.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.51.51.51.3.2.1" style="font-size:90%;">±0.1733</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.52.52.52.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.52.52.52.4.1" style="font-size:90%;">0.509</span><sup class="ltx_sup" id="S3.T1.52.52.52.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.52.52.52.4.2.1" style="font-size:90%;">±0.0181</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.53.53.53.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.53.53.53.5.1" style="font-size:90%;">0.524</span><sup class="ltx_sup" id="S3.T1.53.53.53.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.53.53.53.5.2.1" style="font-size:90%;">±0.0660</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.54.54.54.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.54.54.54.6.1" style="font-size:90%;">1.040</span><sup class="ltx_sup" id="S3.T1.54.54.54.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.54.54.54.6.2.1" style="font-size:90%;">±0.0000</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.60.60.60">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.60.60.60.7" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.60.60.60.7.1" style="font-size:90%;">Rating Vote </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.60.60.60.7.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14941v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S3.T1.60.60.60.7.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.55.55.55.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.55.55.55.1.1" style="font-size:90%;">0.795</span><sup class="ltx_sup" id="S3.T1.55.55.55.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.55.55.55.1.2.1" style="font-size:90%;">±0.0013</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.56.56.56.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.56.56.56.2.1" style="font-size:90%;">0.743</span><sup class="ltx_sup" id="S3.T1.56.56.56.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.56.56.56.2.2.1" style="font-size:90%;">±0.2309</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.57.57.57.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.57.57.57.3.1" style="font-size:90%;">0.628</span><sup class="ltx_sup" id="S3.T1.57.57.57.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.57.57.57.3.2.1" style="font-size:90%;">±0.0755</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.58.58.58.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.58.58.58.4.1" style="font-size:90%;">0.623</span><sup class="ltx_sup" id="S3.T1.58.58.58.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.58.58.58.4.2.1" style="font-size:90%;">±0.0084</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.59.59.59.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.59.59.59.5.1" style="font-size:90%;">0.629</span><sup class="ltx_sup" id="S3.T1.59.59.59.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.59.59.59.5.2.1" style="font-size:90%;">±0.1895</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.60.60.60.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.60.60.60.6.1" style="font-size:90%;">0.920</span><sup class="ltx_sup" id="S3.T1.60.60.60.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.60.60.60.6.2.1" style="font-size:90%;">±0.2387</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.66.66.66">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.66.66.66.7" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.66.66.66.7.1" style="font-size:90%;">PRD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.66.66.66.7.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14941v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S3.T1.66.66.66.7.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.61.61.61.1" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.61.61.61.1.1" style="font-size:90%;">0.838</span><sup class="ltx_sup" id="S3.T1.61.61.61.1.2"><span class="ltx_text ltx_font_italic" id="S3.T1.61.61.61.1.2.1" style="font-size:90%;">±0.0027</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.62.62.62.2" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.62.62.62.2.1" style="font-size:90%;">0.864</span><sup class="ltx_sup" id="S3.T1.62.62.62.2.2"><span class="ltx_text ltx_font_italic" id="S3.T1.62.62.62.2.2.1" style="font-size:90%;">±0.0317</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.63.63.63.3" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.63.63.63.3.1" style="font-size:90%;">0.427</span><sup class="ltx_sup" id="S3.T1.63.63.63.3.2"><span class="ltx_text ltx_font_italic" id="S3.T1.63.63.63.3.2.1" style="font-size:90%;">±0.0087</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.64.64.64.4" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.64.64.64.4.1" style="font-size:90%;">0.636</span><sup class="ltx_sup" id="S3.T1.64.64.64.4.2"><span class="ltx_text ltx_font_italic" id="S3.T1.64.64.64.4.2.1" style="font-size:90%;">±0.0042</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.65.65.65.5" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.65.65.65.5.1" style="font-size:90%;">0.694</span><sup class="ltx_sup" id="S3.T1.65.65.65.5.2"><span class="ltx_text ltx_font_italic" id="S3.T1.65.65.65.5.2.1" style="font-size:90%;">±0.0734</span></sup>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.66.66.66.6" style="padding-top:0.45pt;padding-bottom:0.45pt;">
<span class="ltx_text" id="S3.T1.66.66.66.6.1" style="font-size:90%;">0.746</span><sup class="ltx_sup" id="S3.T1.66.66.66.6.2"><span class="ltx_text ltx_font_italic" id="S3.T1.66.66.66.6.2.1" style="font-size:90%;">±0.0016</span></sup>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.72.72.72">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.72.72.72.7" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text" id="S3.T1.72.72.72.7.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.67.67.67.1" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.67.67.67.1.1" style="font-size:90%;">0.944<sup class="ltx_sup" id="S3.T1.67.67.67.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.67.67.67.1.1.2.1">±0.0011</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.68.68.68.2" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.68.68.68.2.1" style="font-size:90%;">0.972<sup class="ltx_sup" id="S3.T1.68.68.68.2.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.68.68.68.2.1.2.1">±0.0330</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T1.69.69.69.3" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.69.69.69.3.1" style="font-size:90%;">0.141<sup class="ltx_sup" id="S3.T1.69.69.69.3.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.69.69.69.3.1.2.1">±0.2812</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.70.70.70.4" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.70.70.70.4.1" style="font-size:90%;">0.814<sup class="ltx_sup" id="S3.T1.70.70.70.4.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.70.70.70.4.1.2.1">±0.0024</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.71.71.71.5" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.71.71.71.5.1" style="font-size:90%;">0.886<sup class="ltx_sup" id="S3.T1.71.71.71.5.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.71.71.71.5.1.2.1">±0.0286</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.72.72.72.6" style="padding-top:0.45pt;padding-bottom:0.45pt;"><span class="ltx_text ltx_font_bold ltx_framed ltx_framed_underline" id="S3.T1.72.72.72.6.1" style="font-size:90%;">0.422<sup class="ltx_sup" id="S3.T1.72.72.72.6.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S3.T1.72.72.72.6.1.2.1">±0.2812</span></sup></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the performance of various multimodal large language models (MLLMs) and evaluation methods on two benchmark datasets: MMStar and ScienceQA.  The models are evaluated using three metrics: Pearson correlation, Spearman rank correlation, and permutation entropy.  The Pearson and Spearman correlations measure the agreement between the model's rankings and human judgments. Permutation entropy quantifies the complexity or randomness of the model's rankings. Because a model cannot evaluate itself, the scores are computed using the other five models in the pool. The optimal results are highlighted in the table.  Standard deviations are reported to show the reliability of the results, which are based on four independent runs of each experiment.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results of different models and methods on MMstar and ScienceQA datasets, evaluated by Pearson, Spearman, and Permutation Entropy metrics. Since the model cannot judge itself, scores from the other five models involved in the computations are used for evaluation. Optimal results are highlighted in bold and underlined. Standard deviation (std) is calculated based on four runs.
> </details>





### In-depth insights


#### Unsupervised Peer
The concept of an "Unsupervised Peer" review system presents a paradigm shift in automated evaluation. Its core strength lies in **removing the need for human-labeled data**, reducing both annotation costs and potential biases. The system's performance hinges on the quality of its constituent models. A critical element is the **vision-language scoring system**, designed to overcome biases inherent in MLLMs. The framework's iterative optimization cycles aims to generate consistent and unbiased scores. Successfully implementing this unsupervised peer evaluation would revolutionize model assessment by creating efficient, adaptable, and objective evaluations, and ultimately **enable more rapid progress in MLLM development**.

#### Vision-Language
Vision-language models represent a pivotal advancement, **bridging the gap between visual perception and natural language understanding**. These models are designed to process and interpret information from both images and text, enabling a wide range of applications. Key to their success is the ability to **establish intricate correlations between visual elements and their textual descriptions**. This involves complex tasks such as **image captioning, visual question answering (VQA), and text-to-image generation**. Furthermore, vision-language models are instrumental in enhancing multimodal reasoning, allowing AI systems to **derive deeper insights from combined visual and textual inputs** than either modality alone. Efficient feature extraction, cross-modal attention mechanisms, and contextual understanding are critical components. A significant challenge lies in **mitigating biases** and ensuring robust performance across diverse datasets and scenarios, including handling nuanced and context-dependent queries.

#### Dynamic Weights
The use of dynamic weights is crucial for optimizing model performance by adaptively adjusting the importance of different components or models. **Dynamic weighting** schemes enhance accuracy and robustness by learning the optimal contribution of each element, allowing the system to focus on the most relevant information. This approach is particularly useful in multimodal learning, where balancing the influence of various modalities (e.g., vision and language) can significantly improve overall performance. By dynamically adjusting weights, the model can better align with human preferences and achieve superior results compared to static weighting methods. The **dynamic adjustment ensures consistent performance and better evaluation**.

#### Human Alignment
The research delves into the crucial aspect of aligning AI evaluations with **human preferences**, a notable challenge in the field. Traditional metrics can be skewed by inherent biases of evaluation methods, such as verbosity or model self-preference in MLLM-as-Judge setups. The paper addresses this by exploring how the proposed UPME framework correlates with human judgments, aiming to overcome the limitations of automated assessments. The core question becomes whether UPME, without explicit human-labeled data, can accurately reflect what humans perceive as a 'good' evaluation. The paper also contrasts UPME with the baseline review method to determine if it better capture the nuances of human understanding. **Mitigating biases** is key to achieving this alignment, improving the reliability of AI assessments. By demonstrating a closer agreement with human evaluators, UPME signifies advancement in unbiased AI evaluation.

#### Mitigating Bias
**Mitigating bias** is crucial for fair MLLM evaluation. Verbosity, where models favor longer outputs, can skew results. Addressing this involves prioritizing concise, relevant answers during scoring. Self-preference, where models favor their own outputs, needs strategies like **anonymization** and **blinded reviews**. Also important is aligning the evaluation framework with **human preferences** to avoid creating a system that optimizes for metrics but not real-world usefulness. The goal is to achieve more accurate, reliable results in an unsupervised setting. Finally, we consider creating a diverse model pool to avoid over-reliance on specific architectures.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14941/x2.png)

> 🔼 The figure illustrates the UPME framework's architecture, detailing its three core components.  The Peer Review Mechanism randomly selects two candidate language models and a review model from a pool. The review model generates a question about a given image, and the candidate models provide answers. The Vision-Language Judgment Scoring System then assesses these answers based on three criteria: response correctness, visual understanding and reasoning, and image-text correlation (using CLIP scores). Finally, the Dynamic Weight Optimization component refines the confidence weights associated with each model through iterative optimization cycles, ensuring consistent scores across the evaluation process. This iterative process improves the accuracy and reduces bias in the evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 2: The UPME framework consists of three main components: (i)𝑖(i)( italic_i ) Peer Review Mechanism, where two candidate models and one review model are randomly selected from the MLLM pool. The review model generates questions based on a selected image, and candidate models provide responses. (i⁢i)𝑖𝑖(ii)( italic_i italic_i ) Vision-Language Judgment Scoring System, which evaluates answers based on textual correctness, visual understanding and reasoning, and image-text correlation. (i⁢i⁢i)𝑖𝑖𝑖(iii)( italic_i italic_i italic_i ) Dynamic Weight Optimization, ensuring consistency between confidence weights and estimated scores through iterative optimization cycles.
> </details>



![](https://arxiv.org/html/2503.14941/x3.png)

> 🔼 The figure displays the convergence behavior of the UPME framework's dynamic weight optimization process during its training. It shows how the average loss decreases and the average Pearson correlation increases over epochs (training iterations), indicating that the model's predicted scores are becoming increasingly similar to human-provided scores.  The graph visually demonstrates that the UPME framework's optimization process effectively converges towards a solution that aligns with human judgment, as reflected by the rising Pearson correlation coefficient.
> <details>
> <summary>read the caption</summary>
> Figure 3: Convergence experiments.
> </details>



![](https://arxiv.org/html/2503.14941/x4.png)

> 🔼 This figure showcases the impact of varying sample sizes on the performance of the Unsupervised Peer Review MLLM Evaluation (UPME) framework.  The x-axis represents different sample sizes used for evaluation (25, 50, 75, and 100). The y-axis displays three key metrics: Pearson correlation, Spearman correlation, and Permutation Entropy.  Pearson and Spearman correlations measure the similarity between the UPME-generated scores and human-annotated scores, while Permutation Entropy assesses the complexity and unpredictability of the scores.  The figure likely contains separate lines for both MMSTAR and ScienceQA datasets, illustrating how the performance of UPME in terms of these metrics changes as the sample size increases. It demonstrates the point at which increasing the sample size yields diminishing returns, suggesting an optimal sample size for the UPME framework.
> <details>
> <summary>read the caption</summary>
> Figure 4: The performance of UPME in different sample size.
> </details>



![](https://arxiv.org/html/2503.14941/x5.png)

> 🔼 Figure 5 presents a comparison of model accuracy in peer review settings, both with and without the UPME framework.  The x-axis shows different models being evaluated. The y-axis represents the accuracy percentage. Three bars are shown for each model:  'Peer Review_Cor' represents the accuracy of the original peer review method considering only response correctness; 'UPME_Cor' indicates the accuracy of UPME focusing on response correctness; 'UPME_Vis' shows UPME's accuracy considering both response correctness and visual understanding (as defined in Section 3.2). This figure visually demonstrates the improvement in accuracy that UPME achieves by incorporating visual understanding into its evaluation.
> <details>
> <summary>read the caption</summary>
> Figure 5: Model accuracy comparison in peer review framework w/ and w/o UPME, where Peer Review_Cor. represents the correctness of the original peer review, and UPME_Cor. and UPME_Vis. correspond to the two judgment dimensions of response correctness and visual understanding, introduced in subsection 3.2.
> </details>



![](https://arxiv.org/html/2503.14941/x6.png)

> 🔼 The figure (a) visualizes the verbosity bias in the peer review process.  It shows a comparison of the number of correct and incorrect responses given by the peer review models. The x-axis represents the verbosity of the response (Non-Verbose vs Verbose), and the y-axis represents the number of responses. The figure demonstrates that verbose responses were more likely to be incorrectly judged in the peer review setting compared to non-verbose responses, indicating a bias towards longer responses.
> <details>
> <summary>read the caption</summary>
> (a) Verbosity Bias
> </details>



![](https://arxiv.org/html/2503.14941/x7.png)

> 🔼 Figure 6(b) shows the heatmap and statistical analysis results for self-preference bias. The heatmap visually represents the distribution of correct and incorrect responses within two groups: those favored by the model itself and those that are not. The statistical analysis, including the Chi-square value, p-value, and Phi coefficient, quantifies the significance of the self-preference bias. This figure provides a visual and quantitative assessment of the degree to which the models show a bias towards selecting their own responses as superior, even when other responses are more accurate or appropriate.
> <details>
> <summary>read the caption</summary>
> (b) Self Preference
> </details>



![](https://arxiv.org/html/2503.14941/x8.png)

> 🔼 Figure 6 presents a comparative analysis of Peer Review and UPME methods in terms of mitigating self-preference and verbosity biases in multimodal large language model (MLLM) evaluation.  It uses a heatmap visualization to illustrate the distribution of correct and incorrect responses, categorized by verbosity (verbose vs. non-verbose) and self-preference (self vs. non-self). The accompanying table provides a quantitative summary using statistical measures (Chi-square, p-value, and Phi coefficient) to formally test the significance of these biases within both methods, showcasing how UPME effectively reduces the impact of these biases compared to the traditional Peer Review approach.
> <details>
> <summary>read the caption</summary>
> Figure 6: Heatmap and Table for Peer Review and UPME on Self Preference and Verbosity Bias.
> </details>



![](https://arxiv.org/html/2503.14941/extracted/6270370/imgs/screenshot.png)

> 🔼 Figure 7 showcases three examples illustrating how the UPME framework addresses issues in traditional MLLM-as-judge methods. The top example demonstrates a scenario where the review model is unable to answer the original question, highlighting limitations of previous methods. The middle example illustrates the presence of verbosity bias in the original peer-review approach, where the length of responses influences evaluation. The bottom example demonstrates self-preference bias, showing how models favor their own outputs over superior alternatives.  UPME is shown to mitigate these issues by generating new questions that are suitable for the review model's capabilities and by employing a vision-language scoring system that focuses on visual understanding and reasoning, rather than solely on response length.
> <details>
> <summary>read the caption</summary>
> Figure 7: Case study illustration of UPME. We provide the original human-designed questions and the UPME-generated questions, along with the answer analysis. The upper case presents the Disability of review model, where the review model can not answer the original question itself. The middle case demonstrates cases exhibiting verbosity bias. The bottom case shows self-preference bias.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_border_tt" id="S4.T2.1.1.2.1" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T2.1.1.2.2" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T2.1.1.2.3" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T2.1.1.2.4" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.2.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.2.5.1" style="font-size:90%;">MMstar</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.1.1.2.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.2.6.1" style="font-size:90%;">ScienceQA</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S4.T2.1.1.3.1.1"></span><span class="ltx_text" id="S4.T2.1.1.3.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T2.1.1.3.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.3.1.3.1">
<span class="ltx_tr" id="S4.T2.1.1.3.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.3.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Method</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.3.1.4"></span><span class="ltx_text" id="S4.T2.1.1.3.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.3.2.1" style="font-size:90%;">Cor.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.1" style="font-size:90%;">Vis.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.3.4.1" style="font-size:90%;">Cli.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.5.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.6.1" style="font-size:90%;">Spearman</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.7.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.3.8" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.8.1" style="font-size:90%;">Spearman</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S4.T2.1.1.4.1.1"></span><span class="ltx_text" id="S4.T2.1.1.4.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T2.1.1.4.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.4.1.3.1">
<span class="ltx_tr" id="S4.T2.1.1.4.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Peer</span></span>
<span class="ltx_tr" id="S4.T2.1.1.4.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.4.1.3.1.2.1" style="padding:0.45pt 2.8pt;">Review</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.4.1.4"></span><span class="ltx_text" id="S4.T2.1.1.4.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.4.2" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.4.3" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.4.4" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.4.5.1" style="font-size:90%;">0.727</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.4.6.1" style="font-size:90%;">0.714</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.4.7.1" style="font-size:90%;">0.457</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.4.8" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.4.8.1" style="font-size:90%;">0.600</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S4.T2.1.1.5.1.1"></span><span class="ltx_text" id="S4.T2.1.1.5.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S4.T2.1.1.5.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.5.1.3.1">
<span class="ltx_tr" id="S4.T2.1.1.5.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.5.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Score</span></span>
<span class="ltx_tr" id="S4.T2.1.1.5.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.5.1.3.1.2.1" style="padding:0.45pt 2.8pt;">Optimization</span></span>
</span></span><span class="ltx_text" id="S4.T2.1.1.5.1.4"></span><span class="ltx_text" id="S4.T2.1.1.5.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.5.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.5.3" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.5.4" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.5.5.1" style="font-size:90%;">0.854</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.5.6.1" style="font-size:90%;">0.771</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.5.7.1" style="font-size:90%;">0.713</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.5.8" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.5.8.1" style="font-size:90%;">0.657</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.1" rowspan="3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.1.1" style="font-size:90%;"><span class="ltx_text" id="S4.T2.1.1.6.1.1.1"></span> <span class="ltx_text" id="S4.T2.1.1.6.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.6.1.1.2.1">
<span class="ltx_tr" id="S4.T2.1.1.6.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.1.1.2.1.1.1" style="padding:0.45pt 2.8pt;">Visual</span></span>
<span class="ltx_tr" id="S4.T2.1.1.6.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.6.1.1.2.1.2.1" style="padding:0.45pt 2.8pt;">Alignment</span></span>
</span></span> <span class="ltx_text" id="S4.T2.1.1.6.1.1.3"></span></span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.6.2" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="S4.T2.1.1.6.4" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.5.1" style="font-size:90%;">0.873</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.6.1" style="font-size:90%;">0.886</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.7.1" style="font-size:90%;">0.701</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.6.8" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.6.8.1" style="font-size:90%;">0.771</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.7">
<td class="ltx_td" id="S4.T2.1.1.7.1" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td" id="S4.T2.1.1.7.2" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.7.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.7.4.1" style="font-size:90%;">0.785</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.7.5.1" style="font-size:90%;">0.829</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.7.6.1" style="font-size:90%;">0.548</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.7.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.7.7.1" style="font-size:90%;">0.771</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.8">
<td class="ltx_td" id="S4.T2.1.1.8.1" style="padding:0.45pt 2.8pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.4.1" style="font-size:90%;">0.903</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.5.1" style="font-size:90%;">0.943</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.6.1" style="font-size:90%;">0.775</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.8.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.8.7.1" style="font-size:90%;">0.886</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.1" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S4.T2.1.1.1.1.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.5.1" style="font-size:90%;">0.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.6" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.6.1" style="font-size:90%;">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.7" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.7.1" style="font-size:90%;">0.814</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.1.8" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.8.1" style="font-size:90%;">0.886</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different components within the UPME framework on its performance across two datasets, MMStar and ScienceQA.  The table shows the Pearson and Spearman correlation coefficients, along with permutation entropy, for various model configurations.  The configurations progressively include the Response Correctness (Cor.), Visual Understanding (Vis.), and Image-Text Correlation (Cli.) modules.  The results highlight the contributions of each module and the overall synergistic effect of combining them in the UPME framework.  Optimal results, indicating the strongest alignment with human evaluation, are shown in bold and underlined.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study with Pearson and Spearman similarity metrics for each dataset. Optimal results are highlighted in bold and underlined. ‘Cor.’ stands for correctness, ‘Vis.’ stands for visual understanding, and ‘Cli.’ stands for Clip.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T3.2.1">
<tr class="ltx_tr" id="S5.T3.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.2.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.3.1">Agreement (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T3.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.1.4.1">Consistency (%)</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.2.1.1">MMstar</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">Peer Review</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">71.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">67.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.3">
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">UPME</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">95.9</td>
<td class="ltx_td ltx_align_center" id="S5.T3.2.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">89.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T3.2.1.4.1" rowspan="2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.2.1.4.1.1">ScienceQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">Peer Review</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">68.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.2.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">61.8</td>
</tr>
<tr class="ltx_tr" id="S5.T3.2.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.1" style="padding-top:1pt;padding-bottom:1pt;">UPME</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.2" style="padding-top:1pt;padding-bottom:1pt;">87.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.2.1.5.3" style="padding-top:1pt;padding-bottom:1pt;">82.6</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of human evaluations assessing the agreement and consistency of the UPME framework's outputs compared to a traditional peer review method.  The evaluation assesses the accuracy of model judgments on two datasets, MMStar and ScienceQA.  Agreement refers to the percentage of instances where human evaluators concur with the model's assessment, while consistency measures the frequency of times the model provides the same evaluation for the same data. Higher agreement and consistency scores indicate better alignment between the model's judgments and human consensus.
> <details>
> <summary>read the caption</summary>
> Table 3: Human Agreement (%) and Human Consistency (%) Rates on Various Datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.F6.4.1">
<tr class="ltx_tr" id="S5.F6.4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.4.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.1.1.1" style="font-size:90%;">Bias Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.4.1.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.1.2.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.4.1.1.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.1.3.1" style="font-size:90%;">Chi-Square</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.4.1.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.1.4.1" style="font-size:90%;">p-value</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.F6.4.1.1.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.1.5.1" style="font-size:90%;">Phi Coefficient</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.2.1" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.2.1.1" style="font-size:90%;"><span class="ltx_text" id="S5.F6.4.1.2.1.1.1"></span><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.2.1.1.2"> <span class="ltx_text" id="S5.F6.4.1.2.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.F6.4.1.2.1.1.2.1.1">
<span class="ltx_tr" id="S5.F6.4.1.2.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.4.1.2.1.1.2.1.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">Verbosity</span></span>
<span class="ltx_tr" id="S5.F6.4.1.2.1.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.4.1.2.1.1.2.1.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">Bias</span></span>
</span></span> <span class="ltx_text" id="S5.F6.4.1.2.1.1.2.2"></span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.2.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.2.2.1" style="font-size:90%;">Peer review</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.2.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.2.3.1" style="font-size:90%;">10.996</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.2.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.2.4.1" style="font-size:90%;">0.00091</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.2.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.2.5.1" style="font-size:90%;">0.135</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.4.1.3">
<td class="ltx_td ltx_align_center" id="S5.F6.4.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.3.1.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.4.1.3.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.3.2.1" style="font-size:90%;">0.280</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.4.1.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.3.3.1" style="font-size:90%;">0.59696</span></td>
<td class="ltx_td ltx_align_center" id="S5.F6.4.1.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.3.4.1" style="font-size:90%;">0.022</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.4.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.F6.4.1.4.1" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.4.1.1" style="font-size:90%;"><span class="ltx_text" id="S5.F6.4.1.4.1.1.1"></span><span class="ltx_text ltx_font_bold" id="S5.F6.4.1.4.1.1.2"> <span class="ltx_text" id="S5.F6.4.1.4.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S5.F6.4.1.4.1.1.2.1.1">
<span class="ltx_tr" id="S5.F6.4.1.4.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.4.1.4.1.1.2.1.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">Self</span></span>
<span class="ltx_tr" id="S5.F6.4.1.4.1.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S5.F6.4.1.4.1.1.2.1.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">Preference</span></span>
</span></span> <span class="ltx_text" id="S5.F6.4.1.4.1.1.2.2"></span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.4.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.4.2.1" style="font-size:90%;">Peer review</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.4.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.4.3.1" style="font-size:90%;">39.584</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.4.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.4.4.1" style="font-size:90%;">3.142e-10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.F6.4.1.4.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.4.5.1" style="font-size:90%;">0.257</span></td>
</tr>
<tr class="ltx_tr" id="S5.F6.4.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F6.4.1.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.5.1.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F6.4.1.5.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.5.2.1" style="font-size:90%;">3.489</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F6.4.1.5.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.5.3.1" style="font-size:90%;">0.0618</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.F6.4.1.5.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S5.F6.4.1.5.4.1" style="font-size:90%;">0.076</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of three different weighting methods used in the UPME framework: Consistent Weight, Uniform Weight, and Reverse Weight.  It shows the Pearson and Spearman correlation scores, and the permutation entropy for each weighting method, on two benchmark datasets (MMStar and ScienceQA). This allows for an evaluation of how well the different weighting schemes align with human-annotated scores and helps to justify the choice of the Consistent Weight method in the final UPME framework.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance comparison of Consistent, Uniform and Reverse weight.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T4.1.1">
<tr class="ltx_tr" id="S8.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T4.1.1.2.1" rowspan="2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.2.1.1" style="font-size:90%;"><span class="ltx_text" id="S8.T4.1.1.2.1.1.1"></span> <span class="ltx_text" id="S8.T4.1.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S8.T4.1.1.2.1.1.2.1">
<span class="ltx_tr" id="S8.T4.1.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T4.1.1.2.1.1.2.1.1.1" style="padding:0.45pt 2.8pt;">Method</span></span>
</span></span> <span class="ltx_text" id="S8.T4.1.1.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S8.T4.1.1.2.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.2.2.1" style="font-size:90%;">MMstar</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S8.T4.1.1.2.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.2.3.1" style="font-size:90%;">ScienceQA</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.3.1" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.3.1.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.3.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.3.2.1" style="font-size:90%;">Spearman</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.3.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.3.3.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.3.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.3.4.1" style="font-size:90%;">Spearman</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.4.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S8.T4.1.1.4.1.1"></span><span class="ltx_text" id="S8.T4.1.1.4.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S8.T4.1.1.4.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S8.T4.1.1.4.1.3.1">
<span class="ltx_tr" id="S8.T4.1.1.4.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T4.1.1.4.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Reverse Weight</span></span>
</span></span><span class="ltx_text" id="S8.T4.1.1.4.1.4"></span><span class="ltx_text" id="S8.T4.1.1.4.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.4.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.4.2.1" style="font-size:90%;">0.607</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.4.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.4.3.1" style="font-size:90%;">0.486</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.4.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.4.4.1" style="font-size:90%;">0.334</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T4.1.1.4.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.4.5.1" style="font-size:90%;">0.257</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1.5">
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.5.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S8.T4.1.1.5.1.1"></span><span class="ltx_text" id="S8.T4.1.1.5.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S8.T4.1.1.5.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S8.T4.1.1.5.1.3.1">
<span class="ltx_tr" id="S8.T4.1.1.5.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T4.1.1.5.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Uniform Weight</span></span>
</span></span><span class="ltx_text" id="S8.T4.1.1.5.1.4"></span><span class="ltx_text" id="S8.T4.1.1.5.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.5.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.5.2.1" style="font-size:90%;">0.725</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.5.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.5.3.1" style="font-size:90%;">0.771</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.5.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.5.4.1" style="font-size:90%;">0.463</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.5.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.5.5.1" style="font-size:90%;">0.686</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1.6">
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.6.1" style="padding:0.45pt 2.8pt;">
<span class="ltx_text" id="S8.T4.1.1.6.1.1"></span><span class="ltx_text" id="S8.T4.1.1.6.1.2" style="font-size:90%;"> </span><span class="ltx_text" id="S8.T4.1.1.6.1.3" style="font-size:90%;">
<span class="ltx_tabular ltx_align_middle" id="S8.T4.1.1.6.1.3.1">
<span class="ltx_tr" id="S8.T4.1.1.6.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T4.1.1.6.1.3.1.1.1" style="padding:0.45pt 2.8pt;">Consistent Weight</span></span>
</span></span><span class="ltx_text" id="S8.T4.1.1.6.1.4"></span><span class="ltx_text" id="S8.T4.1.1.6.1.5" style="font-size:90%;"></span>
</td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.6.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.6.2.1" style="font-size:90%;">0.807</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.6.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.6.3.1" style="font-size:90%;">0.829</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.6.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.6.4.1" style="font-size:90%;">0.760</span></td>
<td class="ltx_td ltx_align_center" id="S8.T4.1.1.6.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text" id="S8.T4.1.1.6.5.1" style="font-size:90%;">0.771</span></td>
</tr>
<tr class="ltx_tr" id="S8.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T4.1.1.1.1" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_markedasmath ltx_font_bold" id="S8.T4.1.1.1.1.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T4.1.1.1.2" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.1.2.1" style="font-size:90%;">0.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T4.1.1.1.3" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.1.3.1" style="font-size:90%;">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T4.1.1.1.4" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.1.4.1" style="font-size:90%;">0.814</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S8.T4.1.1.1.5" style="padding:0.45pt 2.8pt;"><span class="ltx_text ltx_font_bold" id="S8.T4.1.1.1.5.1" style="font-size:90%;">0.886</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of the proposed UPME framework's performance against several recently published methods for multimodal large language model (MLLM) evaluation.  The comparison is performed across three datasets: MMStar, ScienceQA, and MMVet, using Pearson and Spearman correlation metrics. This allows for a comprehensive evaluation of the UPME framework's effectiveness in aligning with human-based evaluations, compared to other techniques. The inclusion of multiple datasets and metrics offers a robust assessment of the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison with recent methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T5.2.1">
<tr class="ltx_tr" id="S8.T5.2.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S8.T5.2.1.1.1" rowspan="2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S8.T5.2.1.1.1.1" style="font-size:90%;">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S8.T5.2.1.1.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S8.T5.2.1.1.2.1" style="font-size:90%;">MMstar</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="2" id="S8.T5.2.1.1.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S8.T5.2.1.1.3.1" style="font-size:90%;">ScienceQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S8.T5.2.1.1.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text ltx_font_bold" id="S8.T5.2.1.1.4.1" style="font-size:90%;">MMVet</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.2">
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.1.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.2.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.2.1" style="font-size:90%;">Spearman</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.2.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.3.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.2.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.4.1" style="font-size:90%;">Spearman</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.2.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.5.1" style="font-size:90%;">Pearson</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.2.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.2.6.1" style="font-size:90%;">Spearman</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S8.T5.2.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.1.1" style="font-size:90%;">Peer Review</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.2.1.3.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.2.1" style="font-size:90%;">0.725</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T5.2.1.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.3.1" style="font-size:90%;">0.771</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.2.1.3.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.4.1" style="font-size:90%;">0.463</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S8.T5.2.1.3.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.5.1" style="font-size:90%;">0.686</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.2.1.3.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.6.1" style="font-size:90%;">0.688</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T5.2.1.3.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.3.7.1" style="font-size:90%;">0.752</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S8.T5.2.1.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.1.1" style="font-size:90%;">Majority Vote</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.4.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.2.1" style="font-size:90%;">0.757</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.4.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.3.1" style="font-size:90%;">0.757</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.4.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.4.1" style="font-size:90%;">0.509</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.4.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.5.1" style="font-size:90%;">0.524</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.4.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.6.1" style="font-size:90%;">0.732</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.4.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.4.7.1" style="font-size:90%;">0.643</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S8.T5.2.1.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.1.1" style="font-size:90%;">Rating Vote</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.5.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.2.1" style="font-size:90%;">0.795</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.5.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.3.1" style="font-size:90%;">0.743</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.5.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.4.1" style="font-size:90%;">0.623</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.5.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.5.1" style="font-size:90%;">0.629</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.5.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.6.1" style="font-size:90%;">0.739</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.5.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.5.7.1" style="font-size:90%;">0.743</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S8.T5.2.1.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_text" id="S8.T5.2.1.6.1.1" style="font-size:90%;">PRD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S8.T5.2.1.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14941v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S8.T5.2.1.6.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.6.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.2.1" style="font-size:90%;">0.838</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.6.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.3.1" style="font-size:90%;">0.864</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.6.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.4.1" style="font-size:90%;">0.692</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S8.T5.2.1.6.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.5.1" style="font-size:90%;">0.636</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.6.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.6.1" style="font-size:90%;">0.794</span></td>
<td class="ltx_td ltx_align_center" id="S8.T5.2.1.6.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.6.7.1" style="font-size:90%;">0.814</span></td>
</tr>
<tr class="ltx_tr" id="S8.T5.2.1.7">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S8.T5.2.1.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.1.1" style="font-size:90%;">UPME</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T5.2.1.7.2" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.2.1" style="font-size:90%;">0.944</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T5.2.1.7.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.3.1" style="font-size:90%;">0.972</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T5.2.1.7.4" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.4.1" style="font-size:90%;">0.814</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S8.T5.2.1.7.5" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.5.1" style="font-size:90%;">0.886</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T5.2.1.7.6" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.6.1" style="font-size:90%;">0.914</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T5.2.1.7.7" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_text" id="S8.T5.2.1.7.7.1" style="font-size:90%;">0.928</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of different weighting schemes for the three criteria within the vision-language judgment scoring system (Response Correctness, Visual Understanding and Reasoning, and Image-Text Correlation) of the UPME framework.  It shows how variations in the weights (γ1, γ2, γ3) assigned to each criterion affect the Pearson and Spearman correlation coefficients, which measure the alignment between the UPME-generated scores and human evaluations.  The goal is to determine the optimal weighting configuration that maximizes the correlation and reflects human judgment most accurately.
> <details>
> <summary>read the caption</summary>
> Table 6: hyperparameter in Scoring criteria.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T6.3.3">
<tr class="ltx_tr" id="S8.T6.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.1.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="\bm{\gamma_{1}}" class="ltx_Math" display="inline" id="S8.T6.1.1.1.1.m1.1"><semantics id="S8.T6.1.1.1.1.m1.1a"><msub id="S8.T6.1.1.1.1.m1.1.1" xref="S8.T6.1.1.1.1.m1.1.1.cmml"><mi id="S8.T6.1.1.1.1.m1.1.1.2" mathsize="144%" xref="S8.T6.1.1.1.1.m1.1.1.2.cmml">𝜸</mi><mn id="S8.T6.1.1.1.1.m1.1.1.3" mathsize="144%" xref="S8.T6.1.1.1.1.m1.1.1.3.cmml">𝟏</mn></msub><annotation-xml encoding="MathML-Content" id="S8.T6.1.1.1.1.m1.1b"><apply id="S8.T6.1.1.1.1.m1.1.1.cmml" xref="S8.T6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S8.T6.1.1.1.1.m1.1.1.1.cmml" xref="S8.T6.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S8.T6.1.1.1.1.m1.1.1.2.cmml" xref="S8.T6.1.1.1.1.m1.1.1.2">𝜸</ci><cn id="S8.T6.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S8.T6.1.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.1.1.1.1.m1.1c">\bm{\gamma_{1}}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.1.1.1.1.m1.1d">bold_italic_γ start_POSTSUBSCRIPT bold_1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.2.2.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="\bm{\gamma_{2}}" class="ltx_Math" display="inline" id="S8.T6.2.2.2.2.m1.1"><semantics id="S8.T6.2.2.2.2.m1.1a"><msub id="S8.T6.2.2.2.2.m1.1.1" xref="S8.T6.2.2.2.2.m1.1.1.cmml"><mi id="S8.T6.2.2.2.2.m1.1.1.2" mathsize="144%" xref="S8.T6.2.2.2.2.m1.1.1.2.cmml">𝜸</mi><mn id="S8.T6.2.2.2.2.m1.1.1.3" mathsize="144%" xref="S8.T6.2.2.2.2.m1.1.1.3.cmml">𝟐</mn></msub><annotation-xml encoding="MathML-Content" id="S8.T6.2.2.2.2.m1.1b"><apply id="S8.T6.2.2.2.2.m1.1.1.cmml" xref="S8.T6.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S8.T6.2.2.2.2.m1.1.1.1.cmml" xref="S8.T6.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S8.T6.2.2.2.2.m1.1.1.2.cmml" xref="S8.T6.2.2.2.2.m1.1.1.2">𝜸</ci><cn id="S8.T6.2.2.2.2.m1.1.1.3.cmml" type="integer" xref="S8.T6.2.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.2.2.2.2.m1.1c">\bm{\gamma_{2}}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.2.2.2.2.m1.1d">bold_italic_γ start_POSTSUBSCRIPT bold_2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><math alttext="\bm{\gamma_{3}}" class="ltx_Math" display="inline" id="S8.T6.3.3.3.3.m1.1"><semantics id="S8.T6.3.3.3.3.m1.1a"><msub id="S8.T6.3.3.3.3.m1.1.1" xref="S8.T6.3.3.3.3.m1.1.1.cmml"><mi id="S8.T6.3.3.3.3.m1.1.1.2" mathsize="144%" xref="S8.T6.3.3.3.3.m1.1.1.2.cmml">𝜸</mi><mn id="S8.T6.3.3.3.3.m1.1.1.3" mathsize="144%" xref="S8.T6.3.3.3.3.m1.1.1.3.cmml">𝟑</mn></msub><annotation-xml encoding="MathML-Content" id="S8.T6.3.3.3.3.m1.1b"><apply id="S8.T6.3.3.3.3.m1.1.1.cmml" xref="S8.T6.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S8.T6.3.3.3.3.m1.1.1.1.cmml" xref="S8.T6.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S8.T6.3.3.3.3.m1.1.1.2.cmml" xref="S8.T6.3.3.3.3.m1.1.1.2">𝜸</ci><cn id="S8.T6.3.3.3.3.m1.1.1.3.cmml" type="integer" xref="S8.T6.3.3.3.3.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S8.T6.3.3.3.3.m1.1c">\bm{\gamma_{3}}</annotation><annotation encoding="application/x-llamapun" id="S8.T6.3.3.3.3.m1.1d">bold_italic_γ start_POSTSUBSCRIPT bold_3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.3.3.3.4.1" style="font-size:144%;">Pearson</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T6.3.3.3.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T6.3.3.3.5.1" style="font-size:144%;">Spearman</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.3.3.4.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.4.1.1" style="font-size:144%;">0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.3.3.4.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.4.2.1" style="font-size:144%;">0.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.3.3.4.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.4.3.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.3.3.4.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.4.4.1" style="font-size:144%;">0.9415</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T6.3.3.4.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.4.5.1" style="font-size:144%;">0.9441</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.3.3.5">
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.5.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.5.1.1" style="font-size:144%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.5.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.5.2.1" style="font-size:144%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.5.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.5.3.1" style="font-size:144%;">0.4</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.5.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.5.4.1" style="font-size:144%;">0.9397</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.5.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.5.5.1" style="font-size:144%;">0.8581</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.3.3.6">
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.6.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.6.1.1" style="font-size:144%;">0.5</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.6.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.6.2.1" style="font-size:144%;">0.3</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.6.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.6.3.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.6.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.6.4.1" style="font-size:144%;">0.9306</span></td>
<td class="ltx_td ltx_align_center" id="S8.T6.3.3.6.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.6.5.1" style="font-size:144%;">0.7174</span></td>
</tr>
<tr class="ltx_tr" id="S8.T6.3.3.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.3.3.7.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.7.1.1" style="font-size:144%;">0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.3.3.7.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.7.2.1" style="font-size:144%;">0.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.3.3.7.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.7.3.1" style="font-size:144%;">0.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.3.3.7.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.7.4.1" style="font-size:144%;">0.9365</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T6.3.3.7.5" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T6.3.3.7.5.1" style="font-size:144%;">0.8857</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents the reliability of the JudgeCorrect metric within the UPME framework.  It compares the accuracy of the JudgeCorrect metric against human judgments on two datasets: MMStar and ScienceQA. The table shows the accuracy of the automated method and the percentage of agreement between the automated and human judgments, demonstrating the alignment of the UPME framework's evaluations with human assessment.
> <details>
> <summary>read the caption</summary>
> Table 7:  J⁢u⁢d⁢g⁢eC⁢o⁢r⁢r⁢e⁢c⁢t𝐽𝑢𝑑𝑔subscript𝑒𝐶𝑜𝑟𝑟𝑒𝑐𝑡Judge_{Correct}italic_J italic_u italic_d italic_g italic_e start_POSTSUBSCRIPT italic_C italic_o italic_r italic_r italic_e italic_c italic_t end_POSTSUBSCRIPT reliability.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S8.T7.4.1">
<tr class="ltx_tr" id="S8.T7.4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S8.T7.4.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.4.1.1.1.1" style="font-size:144%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T7.4.1.1.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.4.1.1.2.1" style="font-size:144%;">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T7.4.1.1.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.4.1.1.3.1" style="font-size:144%;">Accuracy (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S8.T7.4.1.1.4" style="padding-top:1.45pt;padding-bottom:1.45pt;">
<span class="ltx_text" id="S8.T7.4.1.1.4.1"></span><span class="ltx_text" id="S8.T7.4.1.1.4.2" style="font-size:144%;"> </span><span class="ltx_text" id="S8.T7.4.1.1.4.3" style="font-size:144%;">
<span class="ltx_tabular ltx_align_middle" id="S8.T7.4.1.1.4.3.1">
<span class="ltx_tr" id="S8.T7.4.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T7.4.1.1.4.3.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.4.1.1.4.3.1.1.1.1">Human (%)</span></span></span>
<span class="ltx_tr" id="S8.T7.4.1.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T7.4.1.1.4.3.1.2.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.4.1.1.4.3.1.2.1.1">Alignment</span></span></span>
</span></span><span class="ltx_text" id="S8.T7.4.1.1.4.4"></span><span class="ltx_text" id="S8.T7.4.1.1.4.5" style="font-size:144%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S8.T7.4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S8.T7.4.1.2.1" rowspan="2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.2.1.1" style="font-size:144%;"><span class="ltx_text" id="S8.T7.4.1.2.1.1.1"></span> <span class="ltx_text" id="S8.T7.4.1.2.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S8.T7.4.1.2.1.1.2.1">
<span class="ltx_tr" id="S8.T7.4.1.2.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T7.4.1.2.1.1.2.1.1.1" style="padding-top:1.45pt;padding-bottom:1.45pt;">Peer</span></span>
<span class="ltx_tr" id="S8.T7.4.1.2.1.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S8.T7.4.1.2.1.1.2.1.2.1" style="padding-top:1.45pt;padding-bottom:1.45pt;">Review</span></span>
</span></span> <span class="ltx_text" id="S8.T7.4.1.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.4.1.2.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.2.2.1" style="font-size:144%;">MMStar</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.4.1.2.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.2.3.1" style="font-size:144%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.4.1.2.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.2.4.1" style="font-size:144%;">71.1</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.4.1.3">
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.3.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.3.1.1" style="font-size:144%;">ScienceQA</span></td>
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.3.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.3.2.1" style="font-size:144%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.3.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.3.3.1" style="font-size:144%;">68.2</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.4.1.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S8.T7.4.1.4.1" rowspan="2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.4.1.1" style="font-size:144%;">UPME</span></td>
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.4.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.4.2.1" style="font-size:144%;">MMStar</span></td>
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.4.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.4.3.1" style="font-size:144%;">87.8</span></td>
<td class="ltx_td ltx_align_center" id="S8.T7.4.1.4.4" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.4.4.1" style="font-size:144%;">95.9</span></td>
</tr>
<tr class="ltx_tr" id="S8.T7.4.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T7.4.1.5.1" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.5.1.1" style="font-size:144%;">ScienceQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T7.4.1.5.2" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.5.2.1" style="font-size:144%;">79.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T7.4.1.5.3" style="padding-top:1.45pt;padding-bottom:1.45pt;"><span class="ltx_text" id="S8.T7.4.1.5.3.1" style="font-size:144%;">87.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the time and financial costs associated with different methods for evaluating large language models.  It shows that traditional methods, involving significant human annotation, require substantial time (3-10 minutes per image) and high costs ($2-7 per image).  In contrast, automated methods like Majority Vote and Rating Vote reduce the time but still require human involvement and incur costs.  UPME, the proposed unsupervised peer review framework, drastically reduces both the time (to 1.5 seconds per image) and cost (to $0.15 per image) by eliminating the need for manual annotation.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison of Time and Financial Costs
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14941/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14941/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}