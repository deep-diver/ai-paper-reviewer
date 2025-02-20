---
title: "Why Safeguarded Ships Run Aground? Aligned Large Language Models' Safety Mechanisms Tend to Be Anchored in The Template Region"
summary: "Aligned LLMs' safety often anchors in the template region, creating vulnerabilities. Detaching safety mechanisms shows promise in mitigation."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["AI Theory", "Safety", "🏢 Hong Kong Polytechnic University",]
showSummary: true
date: 2025-02-19
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13946 {{< /keyword >}}
{{< keyword icon="writer" >}} Chak Tou Leong et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-20 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13946" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13946" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13946/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) use safety alignment techniques to avoid harmful queries. However, safety alignment in LLMs is superficial, causing vulnerabilities. When models process harmful requests, attention shifts from instruction to a template. This issue is Template-Anchored Safety Alignment (TASA), leading to safety vulnerabilities. Jailbreak attacks manipulate the model's interpretation of the input, bypassing safeguards to generate harmful responses. The work conducts experiments to verify that TASA is widespread across LLMs.



The research establishes a strong connection between TASA and inference-time vulnerabilities. When the models produce responses to harmful inputs, intervention occurs exclusively in the template region, and models comply with the input, without any alteration to the original input instruction. Additionally, detaching safety mechanisms anchored in the template region enhances the safety of a model. Overall, LLMs heavily rely on information aggregated from the template region for initial safety-related decisions.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs' safety mechanisms are often template-anchored, leading to vulnerabilities. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Inference-time attacks exploit this template reliance to bypass safeguards. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Detaching safety mechanisms from the template region enhances model robustness. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research highlights a critical vulnerability in aligned LLMs, paving the way for more robust safety mechanisms that minimize reliance on template shortcuts and address inference-time attacks. By understanding and mitigating TASA, researchers can develop more reliable and trustworthy AI systems, ensuring safer interactions and preventing unintended consequences. Future work should focus on detaching safety mechanisms and incorporating robust defense patterns during training.

------
#### Visual Insights



![](https://arxiv.org/html/2502.13946/x1.png)

> 🔼 The figure illustrates a common architecture of Large Language Models (LLMs) that incorporate a fixed template between the input instruction and the model's initial output.  The safety mechanism of the LLM relies heavily on the information within this template region to determine whether the input is safe or harmful.  This dependency is a vulnerability because adversarial attacks can manipulate the information in the template to bypass the safety mechanisms and elicit unsafe outputs, even if the original instruction is harmless.
> <details>
> <summary>read the caption</summary>
> Figure 1: LLMs may inadvertently anchor their safety mechanisms to the template region: safety-related decision-making overly relies on the aggregated information (e.g., harmfulness of input) from that region, potentially causing vulnerabilities.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.19.19">
<tr class="ltx_tr" id="S5.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S5.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.3.1">Attacks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.4.1">w/o Detach</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S5.T1.1.1.1.5.1">w/ Detach</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T1.1.1.1.1"><math alttext="\Delta\%" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mrow id="S5.T1.1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.1.m1.1.1.cmml"><mi id="S5.T1.1.1.1.1.m1.1.1.2" mathvariant="normal" xref="S5.T1.1.1.1.1.m1.1.1.2.cmml">Δ</mi><mo id="S5.T1.1.1.1.1.m1.1.1.1" xref="S5.T1.1.1.1.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1.1">percent</csymbol><ci id="S5.T1.1.1.1.1.m1.1.1.2.cmml" xref="S5.T1.1.1.1.1.m1.1.1.2">Δ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">\Delta\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">roman_Δ %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.4.4.4.4" rowspan="3"><span class="ltx_text" id="S5.T1.4.4.4.4.1">Gemma-2-9b-it</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.4.4.4.5">AIM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.2.2.2.1"><math alttext="89.3\%" class="ltx_Math" display="inline" id="S5.T1.2.2.2.1.m1.1"><semantics id="S5.T1.2.2.2.1.m1.1a"><mrow id="S5.T1.2.2.2.1.m1.1.1" xref="S5.T1.2.2.2.1.m1.1.1.cmml"><mn id="S5.T1.2.2.2.1.m1.1.1.2" xref="S5.T1.2.2.2.1.m1.1.1.2.cmml">89.3</mn><mo id="S5.T1.2.2.2.1.m1.1.1.1" xref="S5.T1.2.2.2.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.1.m1.1b"><apply id="S5.T1.2.2.2.1.m1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.2.2.2.1.m1.1.1.1.cmml" xref="S5.T1.2.2.2.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.2.2.2.1.m1.1.1.2.cmml" type="float" xref="S5.T1.2.2.2.1.m1.1.1.2">89.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.1.m1.1c">89.3\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.1.m1.1d">89.3 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.3.3.3.2"><math alttext="0.0\%" class="ltx_Math" display="inline" id="S5.T1.3.3.3.2.m1.1"><semantics id="S5.T1.3.3.3.2.m1.1a"><mrow id="S5.T1.3.3.3.2.m1.1.1" xref="S5.T1.3.3.3.2.m1.1.1.cmml"><mn id="S5.T1.3.3.3.2.m1.1.1.2" xref="S5.T1.3.3.3.2.m1.1.1.2.cmml">0.0</mn><mo id="S5.T1.3.3.3.2.m1.1.1.1" xref="S5.T1.3.3.3.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.2.m1.1b"><apply id="S5.T1.3.3.3.2.m1.1.1.cmml" xref="S5.T1.3.3.3.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.3.3.3.2.m1.1.1.1.cmml" xref="S5.T1.3.3.3.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.3.3.3.2.m1.1.1.2.cmml" type="float" xref="S5.T1.3.3.3.2.m1.1.1.2">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.2.m1.1c">0.0\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.2.m1.1d">0.0 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.4.4.4.3"><math alttext="-89.3\%" class="ltx_Math" display="inline" id="S5.T1.4.4.4.3.m1.1"><semantics id="S5.T1.4.4.4.3.m1.1a"><mrow id="S5.T1.4.4.4.3.m1.1.1" xref="S5.T1.4.4.4.3.m1.1.1.cmml"><mo id="S5.T1.4.4.4.3.m1.1.1a" xref="S5.T1.4.4.4.3.m1.1.1.cmml">−</mo><mrow id="S5.T1.4.4.4.3.m1.1.1.2" xref="S5.T1.4.4.4.3.m1.1.1.2.cmml"><mn id="S5.T1.4.4.4.3.m1.1.1.2.2" xref="S5.T1.4.4.4.3.m1.1.1.2.2.cmml">89.3</mn><mo id="S5.T1.4.4.4.3.m1.1.1.2.1" xref="S5.T1.4.4.4.3.m1.1.1.2.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.3.m1.1b"><apply id="S5.T1.4.4.4.3.m1.1.1.cmml" xref="S5.T1.4.4.4.3.m1.1.1"><minus id="S5.T1.4.4.4.3.m1.1.1.1.cmml" xref="S5.T1.4.4.4.3.m1.1.1"></minus><apply id="S5.T1.4.4.4.3.m1.1.1.2.cmml" xref="S5.T1.4.4.4.3.m1.1.1.2"><csymbol cd="latexml" id="S5.T1.4.4.4.3.m1.1.1.2.1.cmml" xref="S5.T1.4.4.4.3.m1.1.1.2.1">percent</csymbol><cn id="S5.T1.4.4.4.3.m1.1.1.2.2.cmml" type="float" xref="S5.T1.4.4.4.3.m1.1.1.2.2">89.3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.3.m1.1c">-89.3\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.3.m1.1d">- 89.3 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7.7">
<td class="ltx_td ltx_align_left" id="S5.T1.7.7.7.4">AmpleGCG</td>
<td class="ltx_td ltx_align_center" id="S5.T1.5.5.5.1"><math alttext="62.3\%" class="ltx_Math" display="inline" id="S5.T1.5.5.5.1.m1.1"><semantics id="S5.T1.5.5.5.1.m1.1a"><mrow id="S5.T1.5.5.5.1.m1.1.1" xref="S5.T1.5.5.5.1.m1.1.1.cmml"><mn id="S5.T1.5.5.5.1.m1.1.1.2" xref="S5.T1.5.5.5.1.m1.1.1.2.cmml">62.3</mn><mo id="S5.T1.5.5.5.1.m1.1.1.1" xref="S5.T1.5.5.5.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.1.m1.1b"><apply id="S5.T1.5.5.5.1.m1.1.1.cmml" xref="S5.T1.5.5.5.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.5.5.5.1.m1.1.1.1.cmml" xref="S5.T1.5.5.5.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.5.5.5.1.m1.1.1.2.cmml" type="float" xref="S5.T1.5.5.5.1.m1.1.1.2">62.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.1.m1.1c">62.3\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.1.m1.1d">62.3 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.6.6.6.2"><math alttext="5.7\%" class="ltx_Math" display="inline" id="S5.T1.6.6.6.2.m1.1"><semantics id="S5.T1.6.6.6.2.m1.1a"><mrow id="S5.T1.6.6.6.2.m1.1.1" xref="S5.T1.6.6.6.2.m1.1.1.cmml"><mn id="S5.T1.6.6.6.2.m1.1.1.2" xref="S5.T1.6.6.6.2.m1.1.1.2.cmml">5.7</mn><mo id="S5.T1.6.6.6.2.m1.1.1.1" xref="S5.T1.6.6.6.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.2.m1.1b"><apply id="S5.T1.6.6.6.2.m1.1.1.cmml" xref="S5.T1.6.6.6.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.6.6.6.2.m1.1.1.1.cmml" xref="S5.T1.6.6.6.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.6.6.6.2.m1.1.1.2.cmml" type="float" xref="S5.T1.6.6.6.2.m1.1.1.2">5.7</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.2.m1.1c">5.7\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.2.m1.1d">5.7 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.7.7.7.3"><math alttext="-56.6\%" class="ltx_Math" display="inline" id="S5.T1.7.7.7.3.m1.1"><semantics id="S5.T1.7.7.7.3.m1.1a"><mrow id="S5.T1.7.7.7.3.m1.1.1" xref="S5.T1.7.7.7.3.m1.1.1.cmml"><mo id="S5.T1.7.7.7.3.m1.1.1a" xref="S5.T1.7.7.7.3.m1.1.1.cmml">−</mo><mrow id="S5.T1.7.7.7.3.m1.1.1.2" xref="S5.T1.7.7.7.3.m1.1.1.2.cmml"><mn id="S5.T1.7.7.7.3.m1.1.1.2.2" xref="S5.T1.7.7.7.3.m1.1.1.2.2.cmml">56.6</mn><mo id="S5.T1.7.7.7.3.m1.1.1.2.1" xref="S5.T1.7.7.7.3.m1.1.1.2.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.3.m1.1b"><apply id="S5.T1.7.7.7.3.m1.1.1.cmml" xref="S5.T1.7.7.7.3.m1.1.1"><minus id="S5.T1.7.7.7.3.m1.1.1.1.cmml" xref="S5.T1.7.7.7.3.m1.1.1"></minus><apply id="S5.T1.7.7.7.3.m1.1.1.2.cmml" xref="S5.T1.7.7.7.3.m1.1.1.2"><csymbol cd="latexml" id="S5.T1.7.7.7.3.m1.1.1.2.1.cmml" xref="S5.T1.7.7.7.3.m1.1.1.2.1">percent</csymbol><cn id="S5.T1.7.7.7.3.m1.1.1.2.2.cmml" type="float" xref="S5.T1.7.7.7.3.m1.1.1.2.2">56.6</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.3.m1.1c">-56.6\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.3.m1.1d">- 56.6 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.10.4">PAIR</td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8.1"><math alttext="94.3\%" class="ltx_Math" display="inline" id="S5.T1.8.8.8.1.m1.1"><semantics id="S5.T1.8.8.8.1.m1.1a"><mrow id="S5.T1.8.8.8.1.m1.1.1" xref="S5.T1.8.8.8.1.m1.1.1.cmml"><mn id="S5.T1.8.8.8.1.m1.1.1.2" xref="S5.T1.8.8.8.1.m1.1.1.2.cmml">94.3</mn><mo id="S5.T1.8.8.8.1.m1.1.1.1" xref="S5.T1.8.8.8.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.8.1.m1.1b"><apply id="S5.T1.8.8.8.1.m1.1.1.cmml" xref="S5.T1.8.8.8.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.8.8.8.1.m1.1.1.1.cmml" xref="S5.T1.8.8.8.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.8.8.8.1.m1.1.1.2.cmml" type="float" xref="S5.T1.8.8.8.1.m1.1.1.2">94.3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.8.1.m1.1c">94.3\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.8.1.m1.1d">94.3 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9.2"><math alttext="11.9\%" class="ltx_Math" display="inline" id="S5.T1.9.9.9.2.m1.1"><semantics id="S5.T1.9.9.9.2.m1.1a"><mrow id="S5.T1.9.9.9.2.m1.1.1" xref="S5.T1.9.9.9.2.m1.1.1.cmml"><mn id="S5.T1.9.9.9.2.m1.1.1.2" xref="S5.T1.9.9.9.2.m1.1.1.2.cmml">11.9</mn><mo id="S5.T1.9.9.9.2.m1.1.1.1" xref="S5.T1.9.9.9.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.9.9.9.2.m1.1b"><apply id="S5.T1.9.9.9.2.m1.1.1.cmml" xref="S5.T1.9.9.9.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.9.9.9.2.m1.1.1.1.cmml" xref="S5.T1.9.9.9.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.9.9.9.2.m1.1.1.2.cmml" type="float" xref="S5.T1.9.9.9.2.m1.1.1.2">11.9</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.9.9.9.2.m1.1c">11.9\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.9.9.9.2.m1.1d">11.9 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.3"><math alttext="-82.4\%" class="ltx_Math" display="inline" id="S5.T1.10.10.10.3.m1.1"><semantics id="S5.T1.10.10.10.3.m1.1a"><mrow id="S5.T1.10.10.10.3.m1.1.1" xref="S5.T1.10.10.10.3.m1.1.1.cmml"><mo id="S5.T1.10.10.10.3.m1.1.1a" xref="S5.T1.10.10.10.3.m1.1.1.cmml">−</mo><mrow id="S5.T1.10.10.10.3.m1.1.1.2" xref="S5.T1.10.10.10.3.m1.1.1.2.cmml"><mn id="S5.T1.10.10.10.3.m1.1.1.2.2" xref="S5.T1.10.10.10.3.m1.1.1.2.2.cmml">82.4</mn><mo id="S5.T1.10.10.10.3.m1.1.1.2.1" xref="S5.T1.10.10.10.3.m1.1.1.2.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.10.10.10.3.m1.1b"><apply id="S5.T1.10.10.10.3.m1.1.1.cmml" xref="S5.T1.10.10.10.3.m1.1.1"><minus id="S5.T1.10.10.10.3.m1.1.1.1.cmml" xref="S5.T1.10.10.10.3.m1.1.1"></minus><apply id="S5.T1.10.10.10.3.m1.1.1.2.cmml" xref="S5.T1.10.10.10.3.m1.1.1.2"><csymbol cd="latexml" id="S5.T1.10.10.10.3.m1.1.1.2.1.cmml" xref="S5.T1.10.10.10.3.m1.1.1.2.1">percent</csymbol><cn id="S5.T1.10.10.10.3.m1.1.1.2.2.cmml" type="float" xref="S5.T1.10.10.10.3.m1.1.1.2.2">82.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.10.10.10.3.m1.1c">-82.4\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.10.10.10.3.m1.1d">- 82.4 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.13.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T1.13.13.13.4" rowspan="3"><span class="ltx_text" id="S5.T1.13.13.13.4.1">Llama-3-8B-Instruct</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.13.13.13.5">AIM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.11.11.11.1"><math alttext="0.0\%" class="ltx_Math" display="inline" id="S5.T1.11.11.11.1.m1.1"><semantics id="S5.T1.11.11.11.1.m1.1a"><mrow id="S5.T1.11.11.11.1.m1.1.1" xref="S5.T1.11.11.11.1.m1.1.1.cmml"><mn id="S5.T1.11.11.11.1.m1.1.1.2" xref="S5.T1.11.11.11.1.m1.1.1.2.cmml">0.0</mn><mo id="S5.T1.11.11.11.1.m1.1.1.1" xref="S5.T1.11.11.11.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.11.11.11.1.m1.1b"><apply id="S5.T1.11.11.11.1.m1.1.1.cmml" xref="S5.T1.11.11.11.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.11.11.11.1.m1.1.1.1.cmml" xref="S5.T1.11.11.11.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.11.11.11.1.m1.1.1.2.cmml" type="float" xref="S5.T1.11.11.11.1.m1.1.1.2">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.11.11.11.1.m1.1c">0.0\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.11.11.11.1.m1.1d">0.0 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.12.12.12.2"><math alttext="0.0\%" class="ltx_Math" display="inline" id="S5.T1.12.12.12.2.m1.1"><semantics id="S5.T1.12.12.12.2.m1.1a"><mrow id="S5.T1.12.12.12.2.m1.1.1" xref="S5.T1.12.12.12.2.m1.1.1.cmml"><mn id="S5.T1.12.12.12.2.m1.1.1.2" xref="S5.T1.12.12.12.2.m1.1.1.2.cmml">0.0</mn><mo id="S5.T1.12.12.12.2.m1.1.1.1" xref="S5.T1.12.12.12.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.12.12.12.2.m1.1b"><apply id="S5.T1.12.12.12.2.m1.1.1.cmml" xref="S5.T1.12.12.12.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.12.12.12.2.m1.1.1.1.cmml" xref="S5.T1.12.12.12.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.12.12.12.2.m1.1.1.2.cmml" type="float" xref="S5.T1.12.12.12.2.m1.1.1.2">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.12.12.12.2.m1.1c">0.0\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.12.12.12.2.m1.1d">0.0 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.13.13.13.3"><math alttext="0.0\%" class="ltx_Math" display="inline" id="S5.T1.13.13.13.3.m1.1"><semantics id="S5.T1.13.13.13.3.m1.1a"><mrow id="S5.T1.13.13.13.3.m1.1.1" xref="S5.T1.13.13.13.3.m1.1.1.cmml"><mn id="S5.T1.13.13.13.3.m1.1.1.2" xref="S5.T1.13.13.13.3.m1.1.1.2.cmml">0.0</mn><mo id="S5.T1.13.13.13.3.m1.1.1.1" xref="S5.T1.13.13.13.3.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.13.13.13.3.m1.1b"><apply id="S5.T1.13.13.13.3.m1.1.1.cmml" xref="S5.T1.13.13.13.3.m1.1.1"><csymbol cd="latexml" id="S5.T1.13.13.13.3.m1.1.1.1.cmml" xref="S5.T1.13.13.13.3.m1.1.1.1">percent</csymbol><cn id="S5.T1.13.13.13.3.m1.1.1.2.cmml" type="float" xref="S5.T1.13.13.13.3.m1.1.1.2">0.0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.13.13.13.3.m1.1c">0.0\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.13.13.13.3.m1.1d">0.0 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.16.16.16">
<td class="ltx_td ltx_align_left" id="S5.T1.16.16.16.4">AmpleGCG</td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.14.1"><math alttext="29.6\%" class="ltx_Math" display="inline" id="S5.T1.14.14.14.1.m1.1"><semantics id="S5.T1.14.14.14.1.m1.1a"><mrow id="S5.T1.14.14.14.1.m1.1.1" xref="S5.T1.14.14.14.1.m1.1.1.cmml"><mn id="S5.T1.14.14.14.1.m1.1.1.2" xref="S5.T1.14.14.14.1.m1.1.1.2.cmml">29.6</mn><mo id="S5.T1.14.14.14.1.m1.1.1.1" xref="S5.T1.14.14.14.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.14.14.14.1.m1.1b"><apply id="S5.T1.14.14.14.1.m1.1.1.cmml" xref="S5.T1.14.14.14.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.14.14.14.1.m1.1.1.1.cmml" xref="S5.T1.14.14.14.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.14.14.14.1.m1.1.1.2.cmml" type="float" xref="S5.T1.14.14.14.1.m1.1.1.2">29.6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.14.14.14.1.m1.1c">29.6\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.14.14.14.1.m1.1d">29.6 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.15.2"><math alttext="3.1\%" class="ltx_Math" display="inline" id="S5.T1.15.15.15.2.m1.1"><semantics id="S5.T1.15.15.15.2.m1.1a"><mrow id="S5.T1.15.15.15.2.m1.1.1" xref="S5.T1.15.15.15.2.m1.1.1.cmml"><mn id="S5.T1.15.15.15.2.m1.1.1.2" xref="S5.T1.15.15.15.2.m1.1.1.2.cmml">3.1</mn><mo id="S5.T1.15.15.15.2.m1.1.1.1" xref="S5.T1.15.15.15.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.15.15.15.2.m1.1b"><apply id="S5.T1.15.15.15.2.m1.1.1.cmml" xref="S5.T1.15.15.15.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.15.15.15.2.m1.1.1.1.cmml" xref="S5.T1.15.15.15.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.15.15.15.2.m1.1.1.2.cmml" type="float" xref="S5.T1.15.15.15.2.m1.1.1.2">3.1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.15.15.15.2.m1.1c">3.1\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.15.15.15.2.m1.1d">3.1 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.16.3"><math alttext="-26.5\%" class="ltx_Math" display="inline" id="S5.T1.16.16.16.3.m1.1"><semantics id="S5.T1.16.16.16.3.m1.1a"><mrow id="S5.T1.16.16.16.3.m1.1.1" xref="S5.T1.16.16.16.3.m1.1.1.cmml"><mo id="S5.T1.16.16.16.3.m1.1.1a" xref="S5.T1.16.16.16.3.m1.1.1.cmml">−</mo><mrow id="S5.T1.16.16.16.3.m1.1.1.2" xref="S5.T1.16.16.16.3.m1.1.1.2.cmml"><mn id="S5.T1.16.16.16.3.m1.1.1.2.2" xref="S5.T1.16.16.16.3.m1.1.1.2.2.cmml">26.5</mn><mo id="S5.T1.16.16.16.3.m1.1.1.2.1" xref="S5.T1.16.16.16.3.m1.1.1.2.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.16.16.16.3.m1.1b"><apply id="S5.T1.16.16.16.3.m1.1.1.cmml" xref="S5.T1.16.16.16.3.m1.1.1"><minus id="S5.T1.16.16.16.3.m1.1.1.1.cmml" xref="S5.T1.16.16.16.3.m1.1.1"></minus><apply id="S5.T1.16.16.16.3.m1.1.1.2.cmml" xref="S5.T1.16.16.16.3.m1.1.1.2"><csymbol cd="latexml" id="S5.T1.16.16.16.3.m1.1.1.2.1.cmml" xref="S5.T1.16.16.16.3.m1.1.1.2.1">percent</csymbol><cn id="S5.T1.16.16.16.3.m1.1.1.2.2.cmml" type="float" xref="S5.T1.16.16.16.3.m1.1.1.2.2">26.5</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.16.16.16.3.m1.1c">-26.5\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.16.16.16.3.m1.1d">- 26.5 %</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T1.19.19.19.4">PAIR</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.17.17.17.1"><math alttext="56.6\%" class="ltx_Math" display="inline" id="S5.T1.17.17.17.1.m1.1"><semantics id="S5.T1.17.17.17.1.m1.1a"><mrow id="S5.T1.17.17.17.1.m1.1.1" xref="S5.T1.17.17.17.1.m1.1.1.cmml"><mn id="S5.T1.17.17.17.1.m1.1.1.2" xref="S5.T1.17.17.17.1.m1.1.1.2.cmml">56.6</mn><mo id="S5.T1.17.17.17.1.m1.1.1.1" xref="S5.T1.17.17.17.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.17.17.17.1.m1.1b"><apply id="S5.T1.17.17.17.1.m1.1.1.cmml" xref="S5.T1.17.17.17.1.m1.1.1"><csymbol cd="latexml" id="S5.T1.17.17.17.1.m1.1.1.1.cmml" xref="S5.T1.17.17.17.1.m1.1.1.1">percent</csymbol><cn id="S5.T1.17.17.17.1.m1.1.1.2.cmml" type="float" xref="S5.T1.17.17.17.1.m1.1.1.2">56.6</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.17.17.17.1.m1.1c">56.6\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.17.17.17.1.m1.1d">56.6 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.18.18.18.2"><math alttext="16.2\%" class="ltx_Math" display="inline" id="S5.T1.18.18.18.2.m1.1"><semantics id="S5.T1.18.18.18.2.m1.1a"><mrow id="S5.T1.18.18.18.2.m1.1.1" xref="S5.T1.18.18.18.2.m1.1.1.cmml"><mn id="S5.T1.18.18.18.2.m1.1.1.2" xref="S5.T1.18.18.18.2.m1.1.1.2.cmml">16.2</mn><mo id="S5.T1.18.18.18.2.m1.1.1.1" xref="S5.T1.18.18.18.2.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.18.18.18.2.m1.1b"><apply id="S5.T1.18.18.18.2.m1.1.1.cmml" xref="S5.T1.18.18.18.2.m1.1.1"><csymbol cd="latexml" id="S5.T1.18.18.18.2.m1.1.1.1.cmml" xref="S5.T1.18.18.18.2.m1.1.1.1">percent</csymbol><cn id="S5.T1.18.18.18.2.m1.1.1.2.cmml" type="float" xref="S5.T1.18.18.18.2.m1.1.1.2">16.2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.18.18.18.2.m1.1c">16.2\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.18.18.18.2.m1.1d">16.2 %</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.19.3"><math alttext="-40.4\%" class="ltx_Math" display="inline" id="S5.T1.19.19.19.3.m1.1"><semantics id="S5.T1.19.19.19.3.m1.1a"><mrow id="S5.T1.19.19.19.3.m1.1.1" xref="S5.T1.19.19.19.3.m1.1.1.cmml"><mo id="S5.T1.19.19.19.3.m1.1.1a" xref="S5.T1.19.19.19.3.m1.1.1.cmml">−</mo><mrow id="S5.T1.19.19.19.3.m1.1.1.2" xref="S5.T1.19.19.19.3.m1.1.1.2.cmml"><mn id="S5.T1.19.19.19.3.m1.1.1.2.2" xref="S5.T1.19.19.19.3.m1.1.1.2.2.cmml">40.4</mn><mo id="S5.T1.19.19.19.3.m1.1.1.2.1" xref="S5.T1.19.19.19.3.m1.1.1.2.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.19.19.19.3.m1.1b"><apply id="S5.T1.19.19.19.3.m1.1.1.cmml" xref="S5.T1.19.19.19.3.m1.1.1"><minus id="S5.T1.19.19.19.3.m1.1.1.1.cmml" xref="S5.T1.19.19.19.3.m1.1.1"></minus><apply id="S5.T1.19.19.19.3.m1.1.1.2.cmml" xref="S5.T1.19.19.19.3.m1.1.1.2"><csymbol cd="latexml" id="S5.T1.19.19.19.3.m1.1.1.2.1.cmml" xref="S5.T1.19.19.19.3.m1.1.1.2.1">percent</csymbol><cn id="S5.T1.19.19.19.3.m1.1.1.2.2.cmml" type="float" xref="S5.T1.19.19.19.3.m1.1.1.2.2">40.4</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.19.19.19.3.m1.1c">-40.4\%</annotation><annotation encoding="application/x-llamapun" id="S5.T1.19.19.19.3.m1.1d">- 40.4 %</annotation></semantics></math></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the success rates of various attack methods against language models, both with and without a modified safety mechanism. The modification involves detaching the safety mechanism from the template region during response generation.  The table compares the attack success rates before and after this modification, highlighting the impact of the modified safety mechanism on the model's vulnerability to attacks.
> <details>
> <summary>read the caption</summary>
> Table 1: Success rates of attacks with (w/) and without (w/o) detaching safety mechanism from the template region during response generation.
> </details>





### In-depth insights


#### TASA: The Core
**Template-Anchored Safety Alignment (TASA)** is a novel concept introduced in this paper, highlighting a potential vulnerability in aligned Large Language Models (LLMs). It suggests that safety mechanisms in LLMs may be inadvertently over-reliant on the information aggregated within the template region, that resides in the input prompt. This tendency creates a shortcut, leading to safety breaches when models face adversarial attacks designed to manipulate the model's initial behavior. Instead of deep understanding, LLMs tends to make a decision from the templates in the prompt. If the attacks are able to manipulate the key templates, the LLMs will comply to the harmful requests. This observation raises concerns about the robustness of current safety alignment techniques and the need for more nuanced approaches that promote genuine understanding and reduce reliance on potential shortcuts.

#### Template Reliance
Template reliance in LLMs signifies a crucial vulnerability. It suggests that **safety mechanisms are overly anchored in the template region**, a fixed structure between user input and model output. This over-dependence on the template makes the model susceptible to jailbreak attacks. **Models may not generalize well to inputs outside of the training distribution**. Research should explore methods to **decouple safety from the template**, making models more robust. Addressing template reliance is vital for reliable and secure LLM deployments as it highlights the inherent risks in current safety alignment strategies and underscores the need for developing mechanisms which are more contextually aware and less prone to exploitation.

#### Breaking LLMs
Breaking LLMs is a critical area, involving techniques like **jailbreaking** to bypass safety alignments. These methods exploit vulnerabilities, often through crafted prompts or adversarial inputs, causing unintended or harmful outputs. Understanding these weaknesses is vital for enhancing LLM security and reliability. Research focuses on identifying attack surfaces and developing robust defenses to prevent misuse and ensure responsible AI behavior. This includes improving alignment strategies and architectural designs to mitigate the risks associated with LLMs' susceptibility to adversarial attacks. Efforts include **representation engineering**, activation steering, and other novel defense mechanisms. Studies examine how attacks disrupt internal representations, leading to incorrect decisions. Addressing these issues is essential for preventing LLMs from generating toxic, biased, or factually incorrect content.

#### Detaching Safety
**Detaching safety mechanisms** in large language models is crucial for robustness. Relying solely on template-anchored safety creates vulnerabilities, as attacks can bypass these shortcuts. A more effective approach involves monitoring harmful content generation during inference and injecting features to trigger refusal behavior. This **dynamic safety mechanism** reduces the reliance on static templates, enhancing the model's ability to detect and counteract harmful outputs, ultimately improving overall safety and reliability. It is important to inject additional harmfulness features should be injected during generation to counteract their decline in effective attacks.

#### Future Alignment
**Future alignment** is an evolving field crucial for ensuring AI systems remain beneficial as they become more capable. Current alignment techniques often focus on short-term goals, potentially leading to unintended long-term consequences. **Addressing issues like value drift, where a system's understanding of desired outcomes changes over time, is essential**. Furthermore, as AI systems gain greater autonomy, ensuring their goals remain aligned with human values becomes increasingly complex. **Research into mechanisms that allow AI to adapt to evolving human preferences** and societal norms is vital. One approach involves **incorporating feedback loops** that continuously refine the AI's understanding of alignment. Another area of focus is **developing robust methods for specifying and verifying AI goals**, ensuring they are resistant to manipulation and unintended interpretations. Ethical considerations are also paramount, requiring careful examination of potential biases and impacts on fairness and equity. Effectively handling these challenges will be critical to building a future where AI serves humanity's best interests.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13946/x2.png)

> 🔼 This figure shows the chat template used in the Llama-3-Instruct series of large language models.  The template demonstrates the structure of the input and output.  It shows how the user's instruction is separated from the model's response by special tokens, indicating the beginning and end of user input and the beginning of the model's response. This structure is crucial to how the model processes information and generates responses.
> <details>
> <summary>read the caption</summary>
> Figure 2: Chat template from Llama-3-Instruct series.
> </details>



![](https://arxiv.org/html/2502.13946/x7.png)

> 🔼 This figure shows how the attention mechanism in LLMs shifts when processing harmful versus harmless inputs.  The left side presents histograms for multiple LLMs.  Each histogram displays the distribution of attention weights across the instruction and template regions for both harmful and harmless inputs. It shows a consistent pattern across different LLMs: a shift in attention from the instruction region to the template region when processing harmful requests. The right side provides a visual illustration with attention heatmaps from a specific layer and head (17th layer, 21st head) within Llama-3-8B-Instruct. The heatmaps visually confirm the attention shift from instruction to template for harmful inputs.
> <details>
> <summary>read the caption</summary>
> Figure 3: Left: Attention distributions across different LLMs demonstrate that their attentions shift systematically from the instruction to the template region when processing harmful inputs. Right: Attention heatmaps (17th-layer, 21st-head) from Llama-3-8B-Instruct consistently illustrate this distinct pattern.
> </details>



![](https://arxiv.org/html/2502.13946/x8.png)

> 🔼 Figure 4 illustrates the process of activation patching, a technique used to assess the causal influence of specific neuron activations on model behavior. The left panel visually depicts this process for two inputs: one harmless and one harmful. The right panel presents the results of applying this technique across various LLMs, focusing on two distinct input regions: the instruction region and the template region.  The normalized indirect effects clearly show a much stronger influence of the template region on the LLMs' safety decisions, highlighting a key vulnerability where safety mechanisms are overly reliant on this region.
> <details>
> <summary>read the caption</summary>
> Figure 4: Left: Illustration of the activation patching process from harmless to harmful inputs. Right: Normalized indirect effects when patching activations are from two different regions (instruction v.s. template) across various LLMs, revealing that these models’ safety functions are primarily anchored in the template regions.
> </details>



![](https://arxiv.org/html/2502.13946/x9.png)

> 🔼 This figure compares the success rates of various attack methods against language models.  The attacks aim to make the model generate unsafe responses, such as instructions to build a bomb or bully a child. The methods include established techniques (AIM, PAIR, AmpleGCG) and a novel method called TempPatch, which specifically targets the template region in the model input. The results show that TempPatch, which involves directly manipulating the template region, is surprisingly effective at bypassing safety mechanisms and causing the model to generate unsafe responses, highlighting the vulnerability of relying on template information for safety in language models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance of different attack methods. Surprisingly, simply intervening information from the template region (i.e., TempPatch) can significantly increase attack success rates.
> </details>



![](https://arxiv.org/html/2502.13946/x10.png)

> 🔼 Figure 6 presents a detailed analysis of the Llama-3-8B-Instruct model's safety mechanisms by visualizing the 'harmful rates' across different layers and positions within the template region.  The harmful rate indicates the likelihood of a given intermediate representation being classified as harmful based on a trained probe. The x-axis represents the layer of the model, and each sub-plot shows the harmful rates for various positions in the template, moving from positions furthest from the end of the template (5th) to closest (1st).  The y-axis represents the harmful rate, and the background color intensity of each cell corresponds to the importance of that layer's state in safety-related decisions (as further detailed in Figure 10). The figure reveals patterns in how harmfulness information is processed within the template region, differentiating between successful and failed jailbreak attacks.
> <details>
> <summary>read the caption</summary>
> Figure 6: Probed harmful rates in the residual streams across layers and template positions (from the 5th to the 1st closest to the ending position) of Llama-3-8B-Instruct. The background intensity reflects the importance of each layer’s states for safety-related decisions, as aligned with Figure 10.
> </details>



![](https://arxiv.org/html/2502.13946/x11.png)

> 🔼 This figure demonstrates the transferability of harmful probes trained on intermediate layers of a large language model (LLM) to the response generation phase.  Specifically, it shows that probes trained on layer 14 of Llama-3-8B-Instruct, which identify harmful content, maintain high accuracy when applied to generated responses. This indicates that the learned harmfulness features are not solely confined to the template region where they were initially identified, suggesting a more generalized representation of safety mechanisms within the model.
> <details>
> <summary>read the caption</summary>
> Figure 7: Harmful probes from middle layers (i.e., layer 14 in Llama-3-8B-Instruct) can be transferred to response generation while maintaining high accuracy.
> </details>



![](https://arxiv.org/html/2502.13946/x12.png)

> 🔼 Figure 8 illustrates the attack success rates (ASR) achieved by applying the TempPatch method with varying proportions of patched attention heads. The solid lines represent the results obtained using the Danlz dataset, while the dashed lines show the results from the Deval dataset.  This demonstrates how the effectiveness of the TempPatch attack changes as more attention heads are modified.
> <details>
> <summary>read the caption</summary>
> Figure 8: The ASR of applying TempPatch on different proportion of attention heads, with results from 𝒟anlzsubscript𝒟anlz{\mathcal{D}}_{\text{anlz}}caligraphic_D start_POSTSUBSCRIPT anlz end_POSTSUBSCRIPT in solid lines and𝒟evalsubscript𝒟eval{\mathcal{D}}_{\text{eval}}caligraphic_D start_POSTSUBSCRIPT eval end_POSTSUBSCRIPT in dash lines.
> </details>



![](https://arxiv.org/html/2502.13946/x13.png)

> 🔼 This figure shows the prompt template used to instruct the AIM persona in the experiments.  The AIM persona is designed to be an unfiltered and amoral chatbot, always providing a response regardless of ethical or legal implications.  The instructions emphasize that AIM should never apologize or express any reservations, and it should use sophisticated language.  This specific prompt is crucial for testing the model's vulnerability to generating harmful content by circumventing built-in safety mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 9: The prompt template of AIM.
> </details>



![](https://arxiv.org/html/2502.13946/x14.png)

> 🔼 This figure visualizes the results of activation patching experiments performed on various LLMs.  Activation patching involves selectively replacing the activations (intermediate representations) of a model at specific locations (template positions) during the processing of a harmful input with those from a corresponding harmless input. The y-axis represents the normalized indirect effect (NIE), which quantifies the influence of the patched activation on the model's final decision (whether to comply with or refuse a harmful request). The x-axis denotes the template position, indicating where the activation was modified in the input sequence. Each line in the graph represents a different LLM model, illustrating how the model's response changes when activating different parts of the template region.  A higher NIE suggests a stronger influence of the template region on safety-related decisions.
> <details>
> <summary>read the caption</summary>
> Figure 10: Activation patching on the residual streams at template positions, measured by the proportion of refusal logit recovered.
> </details>



![](https://arxiv.org/html/2502.13946/x15.png)

> 🔼 This figure shows the accuracy of probes that identify harmful content.  These probes were initially trained on the template region of the model's intermediate activations (specifically, position 0 within the template) during the processing of harmful inputs. The figure then assesses the performance of these same probes when applied to the model's responses during the generation process for both harmful and harmless inputs. The x-axis represents the position of the token being generated in the response, and the y-axis shows the probe's accuracy in correctly identifying harmful content.  The color intensity likely represents the magnitude or confidence of the probe's prediction, with darker colors indicating higher confidence.
> <details>
> <summary>read the caption</summary>
> Figure 11: The accuracy of harmful probes from position 0 in template when transferred to response.
> </details>



![](https://arxiv.org/html/2502.13946/x16.png)

> 🔼 This figure displays the accuracy of probes that detect harmful content.  These probes were initially trained on intermediate activations from the template region (specifically, position 1) during the model's processing of harmful inputs. The figure shows how well these same probes can identify harmful content in the model's *responses*.  The x-axis represents the token position within the generated response, and the y-axis shows the layer of the model. The color intensity of each cell reflects the probe's accuracy at that specific layer and token position, with darker shades indicating higher accuracy.
> <details>
> <summary>read the caption</summary>
> Figure 12: The accuracy of harmful probes from position 1 in template when transferred to response.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13946/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13946/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}