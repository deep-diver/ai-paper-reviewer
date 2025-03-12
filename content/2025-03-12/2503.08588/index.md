---
title: "BiasEdit: Debiasing Stereotyped Language Models via Model Editing"
summary: "BIASEDIT: Efficiently debiasing language models via lightweight network edits!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of California, San Diego",]
showSummary: true
date: 2025-03-11
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.08588 {{< /keyword >}}
{{< keyword icon="writer" >}} Xin Xu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-12 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.08588" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.08588" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.08588/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Pre-trained language models often exhibit societal biases, which can lead to unfair or inaccurate applications. Existing debiasing strategies, such as retraining or representation projection, can be inefficient or fail to directly alter biased internal representations. Thus, there's a need for more effective methods to eliminate bias from models while preserving their language capabilities. 



To address the issues, this paper introduces **BIASEDIT**, a model editing method that uses lightweight networks to generate parameter updates, removing stereotypical bias from language models. It employs a debiasing loss to guide edits on partial parameters and a retention loss to maintain language modeling abilities. Experiments demonstrate BIASEDIT's effectiveness in eliminating bias with minimal impact on general capabilities.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BIASEDIT significantly reduces stereotypical biases in language models compared to existing methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} BIASEDIT preserves language modeling abilities during debiasing through a retention loss. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Bias editing on upper blocks of language models has fewer negative impacts on language modeling abilities. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces an efficient model editing method to remove stereotypical bias while preserving language modeling abilities. It offers insights into bias associations within language models, guiding future debiasing efforts.

------
#### Visual Insights



![](https://arxiv.org/html/2503.08588/x1.png)

> 🔼 This figure illustrates the BiasEdit model's debiasing process.  A stereotypical sentence, such as 'Girls tend to be more [soft] than boys,' is input into a pre-trained language model.  BiasEdit uses lightweight editor networks to modify the model's internal parameters, focusing on specific parts of the model rather than retraining the whole thing. This modification changes the model's output probability to assign equal likelihood to both the stereotypical phrase and a corresponding anti-stereotypical phrase, such as 'Girls tend to be more [determined] than boys.'  Importantly, BiasEdit also includes a loss function to maintain the model's ability to generate grammatically correct and meaningful text, even as the bias is removed. This ensures that removing the bias does not negatively impact the language model's overall functionality.
> <details>
> <summary>read the caption</summary>
> Figure 1: Debiasing a language model with BiasEdit.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.12.12">
<tr class="ltx_tr" id="S3.T1.12.12.13">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.12.13.1" rowspan="3"><span class="ltx_text" id="S3.T1.12.12.13.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.12.12.13.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.13.2.1">GPT2-medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.12.12.13.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.13.3.1">Gemma-2b</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">SS (%) <math alttext="\rightarrow 50\%" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml"><mi id="S3.T1.1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.1.1.1.1.1.m1.1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.1.cmml">→</mo><mrow id="S3.T1.1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.1.m1.1.1.3.cmml"><mn id="S3.T1.1.1.1.1.1.m1.1.1.3.2" xref="S3.T1.1.1.1.1.1.m1.1.1.3.2.cmml">50</mn><mo id="S3.T1.1.1.1.1.1.m1.1.1.3.1" xref="S3.T1.1.1.1.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1"><ci id="S3.T1.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.2">absent</csymbol><apply id="S3.T1.1.1.1.1.1.m1.1.1.3.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.3"><csymbol cd="latexml" id="S3.T1.1.1.1.1.1.m1.1.1.3.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1.3.1">percent</csymbol><cn id="S3.T1.1.1.1.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.1.1.1.1.1.m1.1.1.3.2">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\rightarrow 50\%</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">→ 50 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.3.3.3.3">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mi id="S3.T1.2.2.2.2.m1.1.1" mathvariant="normal" xref="S3.T1.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.1">LMS (%) <math alttext="\rightarrow 0" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.m1.1a"><mrow id="S3.T1.3.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.3.1.m1.1.1.cmml"><mi id="S3.T1.3.3.3.3.1.m1.1.1.2" xref="S3.T1.3.3.3.3.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.3.3.3.3.1.m1.1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.1.m1.1.1.1.cmml">→</mo><mn id="S3.T1.3.3.3.3.1.m1.1.1.3" xref="S3.T1.3.3.3.3.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.m1.1b"><apply id="S3.T1.3.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1"><ci id="S3.T1.3.3.3.3.1.m1.1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.3.3.3.3.1.m1.1.1.2.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1.2">absent</csymbol><cn id="S3.T1.3.3.3.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.3.3.3.3.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.m1.1c">\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.m1.1d">→ 0</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.4.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.4.1">SS (%) <math alttext="\rightarrow 50\%" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.4.1.m1.1a"><mrow id="S3.T1.4.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.4.1.m1.1.1.cmml"><mi id="S3.T1.4.4.4.4.1.m1.1.1.2" xref="S3.T1.4.4.4.4.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.4.4.4.4.1.m1.1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.1.m1.1.1.1.cmml">→</mo><mrow id="S3.T1.4.4.4.4.1.m1.1.1.3" xref="S3.T1.4.4.4.4.1.m1.1.1.3.cmml"><mn id="S3.T1.4.4.4.4.1.m1.1.1.3.2" xref="S3.T1.4.4.4.4.1.m1.1.1.3.2.cmml">50</mn><mo id="S3.T1.4.4.4.4.1.m1.1.1.3.1" xref="S3.T1.4.4.4.4.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.1.m1.1b"><apply id="S3.T1.4.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1"><ci id="S3.T1.4.4.4.4.1.m1.1.1.1.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.4.4.4.4.1.m1.1.1.2.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1.2">absent</csymbol><apply id="S3.T1.4.4.4.4.1.m1.1.1.3.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1.3"><csymbol cd="latexml" id="S3.T1.4.4.4.4.1.m1.1.1.3.1.cmml" xref="S3.T1.4.4.4.4.1.m1.1.1.3.1">percent</csymbol><cn id="S3.T1.4.4.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.4.4.4.4.1.m1.1.1.3.2">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.1.m1.1c">\rightarrow 50\%</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.1.m1.1d">→ 50 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.6.6.6.6">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.5.5.5.5.m1.1"><semantics id="S3.T1.5.5.5.5.m1.1a"><mi id="S3.T1.5.5.5.5.m1.1.1" mathvariant="normal" xref="S3.T1.5.5.5.5.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.5.m1.1b"><ci id="S3.T1.5.5.5.5.m1.1.1.cmml" xref="S3.T1.5.5.5.5.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.5.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.5.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.6.6.1">LMS (%) <math alttext="\rightarrow 0" class="ltx_Math" display="inline" id="S3.T1.6.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.6.1.m1.1a"><mrow id="S3.T1.6.6.6.6.1.m1.1.1" xref="S3.T1.6.6.6.6.1.m1.1.1.cmml"><mi id="S3.T1.6.6.6.6.1.m1.1.1.2" xref="S3.T1.6.6.6.6.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.6.6.6.6.1.m1.1.1.1" stretchy="false" xref="S3.T1.6.6.6.6.1.m1.1.1.1.cmml">→</mo><mn id="S3.T1.6.6.6.6.1.m1.1.1.3" xref="S3.T1.6.6.6.6.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.6.1.m1.1b"><apply id="S3.T1.6.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.6.1.m1.1.1"><ci id="S3.T1.6.6.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.6.6.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.6.6.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.6.6.1.m1.1.1.2">absent</csymbol><cn id="S3.T1.6.6.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.6.6.6.6.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.6.1.m1.1c">\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.6.1.m1.1d">→ 0</annotation></semantics></math></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.14">
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.1">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.2">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.3">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.4">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.5">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.6">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.7">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.8">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.9">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.10">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.11">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.14.12">Religion</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.15">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.12.12.15.1"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.15.1.1">Pre-edit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.2">65.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.3">61.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.4">62.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.5">93.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.6">92.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.7">90.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.8">69.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.9">64.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.10">62.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.11">94.57</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.12">94.26</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.15.13">93.43</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.16">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.12.12.16.1">CDA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.2">63.29</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.3">61.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.4">61.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.5"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.16.5.1">-0.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.6">-3.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.16.7"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.16.7.1">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T1.12.12.16.8">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.17">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.17.1">SentenceDebias</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.2">67.99</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.3">58.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.4">56.64</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.5">+0.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.6">+1.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.7">+0.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.8">68.86</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.9">63.87</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.10">60.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.11"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.17.11.1">-2.65</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.12">-0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.17.13"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.17.13.1">-0.58</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.18">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.18.1">Self-Debias</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.2">60.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.3">57.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.4">57.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.5">-3.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.6">-4.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.7">-1.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.8">65.70</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.9">58.29</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.10">58.02</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.11">-35.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.12">-30.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.18.13">-21.69</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.19">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.19.1">INLP</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.2">63.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.3">60.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.4">58.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.5">-5.15</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.6"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.6.1">-1.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.7">-2.48</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.8">52.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.9">62.96</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.10">58.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.11">-12.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.12"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.19.12.1">-0.30</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.19.13">-2.01</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.20">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.20.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.12.12.20.1.1">BiasEdit</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.2.1">49.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.3.1">56.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.4"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.4.1">53.55</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.5">-8.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.6">-5.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.7">-1.92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.8"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.8.1">48.59</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.9"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.9.1">55.86</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.10"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.20.10.1">47.36</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.11">-4.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.12">-4.35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.20.13">-5.44</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.21">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.21.1" rowspan="3"><span class="ltx_text" id="S3.T1.12.12.21.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T1.12.12.21.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.21.2.1">Mistral-7B-v0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T1.12.12.21.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.21.3.1">Llama3-8B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.7.7.7.1"><span class="ltx_text ltx_font_bold" id="S3.T1.7.7.7.1.1">SS (%) <math alttext="\rightarrow 50\%" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.1.m1.1"><semantics id="S3.T1.7.7.7.1.1.m1.1a"><mrow id="S3.T1.7.7.7.1.1.m1.1.1" xref="S3.T1.7.7.7.1.1.m1.1.1.cmml"><mi id="S3.T1.7.7.7.1.1.m1.1.1.2" xref="S3.T1.7.7.7.1.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.7.7.7.1.1.m1.1.1.1" stretchy="false" xref="S3.T1.7.7.7.1.1.m1.1.1.1.cmml">→</mo><mrow id="S3.T1.7.7.7.1.1.m1.1.1.3" xref="S3.T1.7.7.7.1.1.m1.1.1.3.cmml"><mn id="S3.T1.7.7.7.1.1.m1.1.1.3.2" xref="S3.T1.7.7.7.1.1.m1.1.1.3.2.cmml">50</mn><mo id="S3.T1.7.7.7.1.1.m1.1.1.3.1" xref="S3.T1.7.7.7.1.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.1.m1.1b"><apply id="S3.T1.7.7.7.1.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1"><ci id="S3.T1.7.7.7.1.1.m1.1.1.1.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.7.7.7.1.1.m1.1.1.2.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1.2">absent</csymbol><apply id="S3.T1.7.7.7.1.1.m1.1.1.3.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1.3"><csymbol cd="latexml" id="S3.T1.7.7.7.1.1.m1.1.1.3.1.cmml" xref="S3.T1.7.7.7.1.1.m1.1.1.3.1">percent</csymbol><cn id="S3.T1.7.7.7.1.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.7.7.7.1.1.m1.1.1.3.2">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.1.m1.1c">\rightarrow 50\%</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.1.m1.1d">→ 50 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.9.9.9.3">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m1.1"><semantics id="S3.T1.8.8.8.2.m1.1a"><mi id="S3.T1.8.8.8.2.m1.1.1" mathvariant="normal" xref="S3.T1.8.8.8.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m1.1b"><ci id="S3.T1.8.8.8.2.m1.1.1.cmml" xref="S3.T1.8.8.8.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S3.T1.9.9.9.3.1">LMS (%) <math alttext="\rightarrow 0" class="ltx_Math" display="inline" id="S3.T1.9.9.9.3.1.m1.1"><semantics id="S3.T1.9.9.9.3.1.m1.1a"><mrow id="S3.T1.9.9.9.3.1.m1.1.1" xref="S3.T1.9.9.9.3.1.m1.1.1.cmml"><mi id="S3.T1.9.9.9.3.1.m1.1.1.2" xref="S3.T1.9.9.9.3.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.9.9.9.3.1.m1.1.1.1" stretchy="false" xref="S3.T1.9.9.9.3.1.m1.1.1.1.cmml">→</mo><mn id="S3.T1.9.9.9.3.1.m1.1.1.3" xref="S3.T1.9.9.9.3.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.3.1.m1.1b"><apply id="S3.T1.9.9.9.3.1.m1.1.1.cmml" xref="S3.T1.9.9.9.3.1.m1.1.1"><ci id="S3.T1.9.9.9.3.1.m1.1.1.1.cmml" xref="S3.T1.9.9.9.3.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.9.9.9.3.1.m1.1.1.2.cmml" xref="S3.T1.9.9.9.3.1.m1.1.1.2">absent</csymbol><cn id="S3.T1.9.9.9.3.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.9.9.9.3.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.3.1.m1.1c">\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.3.1.m1.1d">→ 0</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.10.10.10.4"><span class="ltx_text ltx_font_bold" id="S3.T1.10.10.10.4.1">SS (%) <math alttext="\rightarrow 50\%" class="ltx_Math" display="inline" id="S3.T1.10.10.10.4.1.m1.1"><semantics id="S3.T1.10.10.10.4.1.m1.1a"><mrow id="S3.T1.10.10.10.4.1.m1.1.1" xref="S3.T1.10.10.10.4.1.m1.1.1.cmml"><mi id="S3.T1.10.10.10.4.1.m1.1.1.2" xref="S3.T1.10.10.10.4.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.10.10.10.4.1.m1.1.1.1" stretchy="false" xref="S3.T1.10.10.10.4.1.m1.1.1.1.cmml">→</mo><mrow id="S3.T1.10.10.10.4.1.m1.1.1.3" xref="S3.T1.10.10.10.4.1.m1.1.1.3.cmml"><mn id="S3.T1.10.10.10.4.1.m1.1.1.3.2" xref="S3.T1.10.10.10.4.1.m1.1.1.3.2.cmml">50</mn><mo id="S3.T1.10.10.10.4.1.m1.1.1.3.1" xref="S3.T1.10.10.10.4.1.m1.1.1.3.1.cmml">%</mo></mrow></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.4.1.m1.1b"><apply id="S3.T1.10.10.10.4.1.m1.1.1.cmml" xref="S3.T1.10.10.10.4.1.m1.1.1"><ci id="S3.T1.10.10.10.4.1.m1.1.1.1.cmml" xref="S3.T1.10.10.10.4.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.10.10.10.4.1.m1.1.1.2.cmml" xref="S3.T1.10.10.10.4.1.m1.1.1.2">absent</csymbol><apply id="S3.T1.10.10.10.4.1.m1.1.1.3.cmml" xref="S3.T1.10.10.10.4.1.m1.1.1.3"><csymbol cd="latexml" id="S3.T1.10.10.10.4.1.m1.1.1.3.1.cmml" xref="S3.T1.10.10.10.4.1.m1.1.1.3.1">percent</csymbol><cn id="S3.T1.10.10.10.4.1.m1.1.1.3.2.cmml" type="integer" xref="S3.T1.10.10.10.4.1.m1.1.1.3.2">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.4.1.m1.1c">\rightarrow 50\%</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.4.1.m1.1d">→ 50 %</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.12.12.12.6">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.11.11.11.5.m1.1"><semantics id="S3.T1.11.11.11.5.m1.1a"><mi id="S3.T1.11.11.11.5.m1.1.1" mathvariant="normal" xref="S3.T1.11.11.11.5.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.5.m1.1b"><ci id="S3.T1.11.11.11.5.m1.1.1.cmml" xref="S3.T1.11.11.11.5.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.5.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.5.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.12.6.1">LMS (%) <math alttext="\rightarrow 0" class="ltx_Math" display="inline" id="S3.T1.12.12.12.6.1.m1.1"><semantics id="S3.T1.12.12.12.6.1.m1.1a"><mrow id="S3.T1.12.12.12.6.1.m1.1.1" xref="S3.T1.12.12.12.6.1.m1.1.1.cmml"><mi id="S3.T1.12.12.12.6.1.m1.1.1.2" xref="S3.T1.12.12.12.6.1.m1.1.1.2.cmml"></mi><mo id="S3.T1.12.12.12.6.1.m1.1.1.1" stretchy="false" xref="S3.T1.12.12.12.6.1.m1.1.1.1.cmml">→</mo><mn id="S3.T1.12.12.12.6.1.m1.1.1.3" xref="S3.T1.12.12.12.6.1.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.6.1.m1.1b"><apply id="S3.T1.12.12.12.6.1.m1.1.1.cmml" xref="S3.T1.12.12.12.6.1.m1.1.1"><ci id="S3.T1.12.12.12.6.1.m1.1.1.1.cmml" xref="S3.T1.12.12.12.6.1.m1.1.1.1">→</ci><csymbol cd="latexml" id="S3.T1.12.12.12.6.1.m1.1.1.2.cmml" xref="S3.T1.12.12.12.6.1.m1.1.1.2">absent</csymbol><cn id="S3.T1.12.12.12.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.12.12.12.6.1.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.6.1.m1.1c">\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.6.1.m1.1d">→ 0</annotation></semantics></math></span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.22">
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.1">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.2">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.3">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.4">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.5">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.6">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.7">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.8">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.9">Religion</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.10">Gender</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.11">Race</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.22.12">Religion</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.23">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.12.12.23.1"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.23.1.1">Pre-edit</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.2">70.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.3">64.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.4">56.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.5">93.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.6">89.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.7">88.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.8">72.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.9">65.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.10">60.87</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.11">95.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.12">92.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.12.12.23.13">91.33</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.24">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.12.12.24.1">CDA</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T1.12.12.24.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S3.T1.12.12.24.3">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.25">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.25.1">SentenceDebias</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.2">68.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.3">64.54</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.4">54.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.5">-0.61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.6">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.7">+0.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.8">68.55</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.9">64.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.10">59.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.11"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.25.11.1">-0.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.12">-1.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.25.13">-0.66</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.26">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.26.1">Self-Debias</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.2">61.79</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.3"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.26.3.1">50.54</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.4">60.68</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.5">-39.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.6">-29.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.7">-32.37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.8">65.46</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.9">60.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.10">58.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.11">-40.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.12">-2.54</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.26.13">-28.64</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.27">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.27.1">INLP</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.2">69.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.3">65.23</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.4">55.90</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.5"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.27.5.1">+0.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.6"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.27.6.1">-0.15</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.7">-0.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.8">68.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.9">65.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.10">62.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.11">-1.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.12"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.27.12.1">-0.09</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.27.13"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.27.13.1">0.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.28">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.12.12.28.1"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S3.T1.12.12.28.1.1">BiasEdit</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.2"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.2.1">46.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.3">51.46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.4"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.4.1">50.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.5">-8.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.6">-8.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.7"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.7.1">-0.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.8"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.8.1">49.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.9"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.9.1">53.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.10"><span class="ltx_text ltx_font_bold" id="S3.T1.12.12.28.10.1">51.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.11">-13.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.12">-11.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.28.13">-10.02</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of BIASEDIT's performance against several established debiasing methods.  For each method, it shows the average Stereotype Score (SS) before debiasing (Pre-edit), and the average Stereotype Score after debiasing (SSpost-avg).  It also includes the change in Language Modeling Score (ΔLMS), which indicates the impact of debiasing on the model's overall language capabilities.  Lower SS values indicate better bias reduction, while a ΔLMS close to 0 suggests minimal effect on the model's general performance.  The results are broken down by bias type (Gender, Race, Religion) and model.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of BiasEdit compared to previous debiasing baselines. Pre-edit: SSpre-avgsubscriptSSpre-avg\textit{SS}_{\text{pre-avg}}SS start_POSTSUBSCRIPT pre-avg end_POSTSUBSCRIPT and LMSpre-avgsubscriptLMSpre-avg\textit{LMS}_{\text{pre-avg}}LMS start_POSTSUBSCRIPT pre-avg end_POSTSUBSCRIPT. SSpost-avgsubscriptSSpost-avg\textit{SS}_{\text{post-avg}}SS start_POSTSUBSCRIPT post-avg end_POSTSUBSCRIPT and Δ⁢LMS=LMSpost-avg−LMSpre-avgΔLMSsubscriptLMSpost-avgsubscriptLMSpre-avg\Delta\text{{LMS}}=\text{{LMS}}_{\text{post-avg}}-\textit{LMS}_{\text{pre-avg}}roman_Δ LMS = LMS start_POSTSUBSCRIPT post-avg end_POSTSUBSCRIPT - LMS start_POSTSUBSCRIPT pre-avg end_POSTSUBSCRIPT are reported for all baselines and BiasEdit.
> </details>





### In-depth insights


#### BiasEdit: Intro
**BIASEDIT**, as a model editing approach, directly tackles the issue of **stereotypical biases in language models**. It introduces lightweight editor networks to refine model parameters and balance the likelihood of stereotypical and anti-stereotypical contexts. By employing a **debiasing loss** that focuses on local edits and a **retention loss** to preserve language modeling abilities, BIASEDIT aims for effective bias removal with minimal impact on the model's general capabilities. This method stands out by modifying model parameters, rather than relying solely on data manipulation or representation projection, potentially leading to more robust and unbiased language models. The approach involves creating **symmetric KL divergence** to treat stereotyped and anti-stereotyped contexts fairly. This involves editor networks to make parameters shift, thus changing parameters of the language model to reduce bias.

#### BiasEdit: Method
**BiasEdit** focuses on efficiently debiasing language models. It introduces a novel model editing method targeting stereotypical biases. Unlike full fine-tuning, it employs lightweight editor networks to generate parameter updates. A key aspect is the **debiasing loss** that guides these networks to conduct local edits, specifically targeting parameters associated with bias. Simultaneously, a **retention loss** preserves general language modeling capabilities, preventing unintended side effects during the bias removal process. This approach facilitates focused and efficient bias mitigation.

#### BiasEdit: Results
Considering hypothetical BiasEdit results, one could expect findings related to the method's effectiveness in mitigating biases across various dimensions like gender, race, and religion in language models. The results might highlight BiasEdit's superior performance compared to existing debiasing techniques, showcasing reduced stereotype scores while preserving language modeling capabilities. Key results would likely emphasize the trade-off between bias reduction and model accuracy, potentially revealing minimal impact on general NLP tasks. Furthermore, the analysis might include insights into the method's robustness, examining its performance on counterfactual examples and semantically similar inputs. Additional findings could explore the impact of editing different components of the language model, shedding light on the most effective strategies for debiasing.

#### BiasEdit: Ablation
While "BiasEdit: Ablation" isn't a direct heading, ablation studies in the context of debiasing models are crucial. These studies systematically remove components (**retention loss**) of the BIASEDIT framework to assess their individual impact on performance (**LM abilities**). Analyzing changes in stereotype scores and language modeling abilities upon ablation helps pinpoint which parts of the model are most effective at reducing bias, and which might be redundant or even detrimental. Key observations often focus on how removing the retention loss impacts language modeling itself, to evaluate any trade offs for debiasing.

#### BiasEdit: Robust
**BiasEdit's robustness is crucial** for real-world applications. A robust BiasEdit would consistently mitigate biases across different datasets and model architectures. **Generalization across diverse demographic groups** (gender, race, religion) is also key. Evaluation should include measuring bias reduction and minimal impact on model accuracy. It will be a good sign for a robust method if **performance holds even with semantic variations** or adversarial attacks on input data. Furthermore, **robustness to hyperparameter tuning** and different training conditions is important. 


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.08588/x2.png)

> 🔼 The figure illustrates the BiasEdit model, which uses lightweight editor networks to debias a language model.  The editor networks generate parameter updates that specifically target stereotypical biases while preserving the model's overall language modeling capabilities.  This is achieved using two loss functions: a debiasing loss (Ld) which guides the networks to remove the bias by equalizing probabilities of stereotypical and anti-stereotypical contexts, and a retention loss (Lr) to ensure that unrelated associations are maintained.  The figure shows that after editing, the model is debiased, and this debiasing effect is robust to gender reversal and semantic generality tests. The labels s, a, and m represent stereotyped, anti-stereotyped, and meaningless contexts respectively.
> <details>
> <summary>read the caption</summary>
> Figure 2: Debiasing a language model with BiasEdit. Editor networks ϕitalic-ϕ\phiitalic_ϕ are trained  to produce edit shifts on partial parameters 𝒲𝒲\mathcal{W}caligraphic_W of a language model while its parameters θ𝜃\thetaitalic_θ are frozen . After editing, an unbiased LM is obtained with the robustness of gender reversal and semantic generality. ℒdsubscriptℒ𝑑\mathcal{L}_{d}caligraphic_L start_POSTSUBSCRIPT italic_d end_POSTSUBSCRIPT and ℒrsubscriptℒ𝑟\mathcal{L}_{r}caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT refer to Equation 1 and 2 respectively. s: stereotyped. a: anti-stereotyped. m: meaningless.
> </details>



![](https://arxiv.org/html/2503.08588/x3.png)

> 🔼 This figure displays the Stereotype Score (SS) and the change in Language Modeling Score (ΔLMS) after applying bias editing to different layers of four distinct language models.  The x-axis represents various combinations of blocks within the language model that were modified.  '1', '2', and '3' indicate edits to the first, second, and third blocks respectively.  '12' signifies edits to the first two blocks, and '123' shows edits to the first three blocks. Negative numbers (-1, -2, -3) denote edits to the last, second-to-last, and third-to-last blocks respectively. '−21' indicates edits to the last two blocks, and '−321' represents edits to the last three blocks.  The y-axis shows the SS and ΔLMS for each model, revealing the impact of the bias editing on both bias mitigation and overall language modeling capability.
> <details>
> <summary>read the caption</summary>
> Figure 3: SS (%) and ΔΔ\Deltaroman_ΔLMS (%) of debiased language models after editing the last layer in the MLP of different blocks. 1/2/3: the first/second/third block. 12: the first 2 blocks. 123: the first 3 blocks. -1/-2/-3, the last/penultimate/antepenultimate block, -321: the last 3 blocks. -21: the last 2 blocks.
> </details>



![](https://arxiv.org/html/2503.08588/x4.png)

> 🔼 This figure demonstrates the robustness of the BiasEdit model to gender reversal.  It displays the Stereotype Score (SS) for four different language models before debiasing (Pre-debias) and after debiasing with BiasEdit (Debiased). The gender reversal test set was created by reversing the gender terms in the original StereotypeSet dataset.  A lower SS indicates less bias. The figure visually shows the impact of BiasEdit on reducing gender bias, even when presented with reversed gender terms, indicating that the model learns a more nuanced and equitable representation of gender.
> <details>
> <summary>read the caption</summary>
> Figure 4: Gender Reversal Robustness. Pre-debias refers to SS of pre-trained language models on the gender reversal test set before debiasing. Debiased refers to SS of debiased models by BiasEdit.
> </details>



![](https://arxiv.org/html/2503.08588/x5.png)

> 🔼 Figure 5 presents a detailed analysis of gender bias in the GPT2-medium language model using bias tracing.  Panel (a) compares the strength of bias associations across different layers of the model (hidden states, attention, and MLP layers). Panel (b) shows how bias associations vary depending on which specific words within the sentence are examined: the bias attribute word itself, the word preceding it, and the attribute term.  Panels (c-h) further investigate the impact of these bias associations on the model's output probabilities.  This is done by selectively corrupting (adding noise to) the embeddings of bias-related words and then restoring different parts of the model's internal activations (hidden states, attention, or MLP layers only). By comparing the changes in output probabilities before and after these manipulations, the figure illustrates how different parts of the model contribute to the overall gender bias.
> <details>
> <summary>read the caption</summary>
> Figure 5: Gender bias tracing on GPT2-medium. (a) Comparing bias associations of bias attribute words on hidden states, attention layers, and MLP layers. (b) Comparing bias associations on single states of the bias attribute word, the token before the attribute term, and the attribute term. The bias impacts on output probability are mapped for the effect of (c-d) each hidden state on the context, (e-f) only MLP activations, and (g-h) only attention activations. * marks the corrupted bias attribute words and [] refers to the attribute terms in (c-h).
> </details>



![](https://arxiv.org/html/2503.08588/x6.png)

> 🔼 This figure presents the results of a bias tracing analysis performed on the GPT-2-medium language model, focusing on racial bias.  It visualizes the association between bias and different components of the model's architecture (hidden states, attention, and MLP layers) across various layers.  The plots likely show how the model's representation of race changes throughout the processing stages and how manipulating specific states within the model impacts the overall bias in its output. The subplots might show the effect of different interventions, such as removing or restoring specific activations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Race bias tracing on GPT2-medium.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.8.8">
<tr class="ltx_tr" id="S3.T2.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.9.1" rowspan="2"><span class="ltx_text" id="S3.T2.8.8.9.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S3.T2.8.8.9.2">Model</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.1.1.1"><math alttext="\text{Llama3}_{\text{pre}}" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><msub id="S3.T2.1.1.1.1.m1.1.1" xref="S3.T2.1.1.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.1.1.1.1.m1.1.1.2" xref="S3.T2.1.1.1.1.m1.1.1.2a.cmml">Llama3</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.1.1.1.1.m1.1.1.3" xref="S3.T2.1.1.1.1.m1.1.1.3a.cmml">pre</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><apply id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.1.1.1.1.m1.1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T2.1.1.1.1.m1.1.1.2a.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.1.1.1.1.m1.1.1.2.cmml" xref="S3.T2.1.1.1.1.m1.1.1.2">Llama3</mtext></ci><ci id="S3.T2.1.1.1.1.m1.1.1.3a.cmml" xref="S3.T2.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.1.1.1.1.m1.1.1.3">pre</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\text{Llama3}_{\text{pre}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">Llama3 start_POSTSUBSCRIPT pre end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2.2"><math alttext="\text{Llama3}_{\text{post}}" class="ltx_Math" display="inline" id="S3.T2.2.2.2.2.m1.1"><semantics id="S3.T2.2.2.2.2.m1.1a"><msub id="S3.T2.2.2.2.2.m1.1.1" xref="S3.T2.2.2.2.2.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.2.2.2.2.m1.1.1.2" xref="S3.T2.2.2.2.2.m1.1.1.2a.cmml">Llama3</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.2.2.2.2.m1.1.1.3" xref="S3.T2.2.2.2.2.m1.1.1.3a.cmml">post</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.2.m1.1b"><apply id="S3.T2.2.2.2.2.m1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.2.2.2.2.m1.1.1.1.cmml" xref="S3.T2.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S3.T2.2.2.2.2.m1.1.1.2a.cmml" xref="S3.T2.2.2.2.2.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.2.2.2.2.m1.1.1.2.cmml" xref="S3.T2.2.2.2.2.m1.1.1.2">Llama3</mtext></ci><ci id="S3.T2.2.2.2.2.m1.1.1.3a.cmml" xref="S3.T2.2.2.2.2.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.2.2.2.2.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.2.2.2.2.m1.1.1.3">post</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.2.m1.1c">\text{Llama3}_{\text{post}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.2.m1.1d">Llama3 start_POSTSUBSCRIPT post end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.3.3.3"><math alttext="\text{Mistral}_{\text{pre}}" class="ltx_Math" display="inline" id="S3.T2.3.3.3.3.m1.1"><semantics id="S3.T2.3.3.3.3.m1.1a"><msub id="S3.T2.3.3.3.3.m1.1.1" xref="S3.T2.3.3.3.3.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.3.3.3.3.m1.1.1.2" xref="S3.T2.3.3.3.3.m1.1.1.2a.cmml">Mistral</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.3.3.3.3.m1.1.1.3" xref="S3.T2.3.3.3.3.m1.1.1.3a.cmml">pre</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.3.m1.1b"><apply id="S3.T2.3.3.3.3.m1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.3.3.3.3.m1.1.1.1.cmml" xref="S3.T2.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S3.T2.3.3.3.3.m1.1.1.2a.cmml" xref="S3.T2.3.3.3.3.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.3.3.3.3.m1.1.1.2.cmml" xref="S3.T2.3.3.3.3.m1.1.1.2">Mistral</mtext></ci><ci id="S3.T2.3.3.3.3.m1.1.1.3a.cmml" xref="S3.T2.3.3.3.3.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.3.3.3.3.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.3.3.3.3.m1.1.1.3">pre</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.3.m1.1c">\text{Mistral}_{\text{pre}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.3.m1.1d">Mistral start_POSTSUBSCRIPT pre end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.4.4.4.4"><math alttext="\text{Mistral}_{\text{post}}" class="ltx_Math" display="inline" id="S3.T2.4.4.4.4.m1.1"><semantics id="S3.T2.4.4.4.4.m1.1a"><msub id="S3.T2.4.4.4.4.m1.1.1" xref="S3.T2.4.4.4.4.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.4.4.4.4.m1.1.1.2" xref="S3.T2.4.4.4.4.m1.1.1.2a.cmml">Mistral</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.4.4.4.4.m1.1.1.3" xref="S3.T2.4.4.4.4.m1.1.1.3a.cmml">post</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.4.m1.1b"><apply id="S3.T2.4.4.4.4.m1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.4.4.4.4.m1.1.1.1.cmml" xref="S3.T2.4.4.4.4.m1.1.1">subscript</csymbol><ci id="S3.T2.4.4.4.4.m1.1.1.2a.cmml" xref="S3.T2.4.4.4.4.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.4.4.4.4.m1.1.1.2.cmml" xref="S3.T2.4.4.4.4.m1.1.1.2">Mistral</mtext></ci><ci id="S3.T2.4.4.4.4.m1.1.1.3a.cmml" xref="S3.T2.4.4.4.4.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.4.4.4.4.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.4.4.4.4.m1.1.1.3">post</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.4.m1.1c">\text{Mistral}_{\text{post}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.4.m1.1d">Mistral start_POSTSUBSCRIPT post end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.5.5.5.5"><math alttext="\text{Gemma}_{\text{pre}}" class="ltx_Math" display="inline" id="S3.T2.5.5.5.5.m1.1"><semantics id="S3.T2.5.5.5.5.m1.1a"><msub id="S3.T2.5.5.5.5.m1.1.1" xref="S3.T2.5.5.5.5.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.5.5.5.5.m1.1.1.2" xref="S3.T2.5.5.5.5.m1.1.1.2a.cmml">Gemma</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.5.5.5.5.m1.1.1.3" xref="S3.T2.5.5.5.5.m1.1.1.3a.cmml">pre</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.5.m1.1b"><apply id="S3.T2.5.5.5.5.m1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.5.5.5.5.m1.1.1.1.cmml" xref="S3.T2.5.5.5.5.m1.1.1">subscript</csymbol><ci id="S3.T2.5.5.5.5.m1.1.1.2a.cmml" xref="S3.T2.5.5.5.5.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.5.5.5.5.m1.1.1.2.cmml" xref="S3.T2.5.5.5.5.m1.1.1.2">Gemma</mtext></ci><ci id="S3.T2.5.5.5.5.m1.1.1.3a.cmml" xref="S3.T2.5.5.5.5.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.5.5.5.5.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.5.5.5.5.m1.1.1.3">pre</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.5.m1.1c">\text{Gemma}_{\text{pre}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.5.m1.1d">Gemma start_POSTSUBSCRIPT pre end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.6.6.6.6"><math alttext="\text{Gemma}_{\text{post}}" class="ltx_Math" display="inline" id="S3.T2.6.6.6.6.m1.1"><semantics id="S3.T2.6.6.6.6.m1.1a"><msub id="S3.T2.6.6.6.6.m1.1.1" xref="S3.T2.6.6.6.6.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.6.6.6.6.m1.1.1.2" xref="S3.T2.6.6.6.6.m1.1.1.2a.cmml">Gemma</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.6.6.6.6.m1.1.1.3" xref="S3.T2.6.6.6.6.m1.1.1.3a.cmml">post</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.6.m1.1b"><apply id="S3.T2.6.6.6.6.m1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.6.6.6.6.m1.1.1.1.cmml" xref="S3.T2.6.6.6.6.m1.1.1">subscript</csymbol><ci id="S3.T2.6.6.6.6.m1.1.1.2a.cmml" xref="S3.T2.6.6.6.6.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.6.6.6.6.m1.1.1.2.cmml" xref="S3.T2.6.6.6.6.m1.1.1.2">Gemma</mtext></ci><ci id="S3.T2.6.6.6.6.m1.1.1.3a.cmml" xref="S3.T2.6.6.6.6.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.6.6.6.6.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.6.6.6.6.m1.1.1.3">post</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.6.m1.1c">\text{Gemma}_{\text{post}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.6.m1.1d">Gemma start_POSTSUBSCRIPT post end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.7.7.7"><math alttext="\text{GPT2m}_{\text{pre}}" class="ltx_Math" display="inline" id="S3.T2.7.7.7.7.m1.1"><semantics id="S3.T2.7.7.7.7.m1.1a"><msub id="S3.T2.7.7.7.7.m1.1.1" xref="S3.T2.7.7.7.7.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.7.7.7.7.m1.1.1.2" xref="S3.T2.7.7.7.7.m1.1.1.2a.cmml">GPT2m</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.7.7.7.7.m1.1.1.3" xref="S3.T2.7.7.7.7.m1.1.1.3a.cmml">pre</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.7.m1.1b"><apply id="S3.T2.7.7.7.7.m1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.7.7.7.7.m1.1.1.1.cmml" xref="S3.T2.7.7.7.7.m1.1.1">subscript</csymbol><ci id="S3.T2.7.7.7.7.m1.1.1.2a.cmml" xref="S3.T2.7.7.7.7.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.7.7.7.7.m1.1.1.2.cmml" xref="S3.T2.7.7.7.7.m1.1.1.2">GPT2m</mtext></ci><ci id="S3.T2.7.7.7.7.m1.1.1.3a.cmml" xref="S3.T2.7.7.7.7.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.7.7.7.7.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.7.7.7.7.m1.1.1.3">pre</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.7.m1.1c">\text{GPT2m}_{\text{pre}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.7.m1.1d">GPT2m start_POSTSUBSCRIPT pre end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.8.8.8.8"><math alttext="\text{GPT2m}_{\text{post}}" class="ltx_Math" display="inline" id="S3.T2.8.8.8.8.m1.1"><semantics id="S3.T2.8.8.8.8.m1.1a"><msub id="S3.T2.8.8.8.8.m1.1.1" xref="S3.T2.8.8.8.8.m1.1.1.cmml"><mtext class="ltx_mathvariant_bold" id="S3.T2.8.8.8.8.m1.1.1.2" xref="S3.T2.8.8.8.8.m1.1.1.2a.cmml">GPT2m</mtext><mtext class="ltx_mathvariant_bold" id="S3.T2.8.8.8.8.m1.1.1.3" xref="S3.T2.8.8.8.8.m1.1.1.3a.cmml">post</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T2.8.8.8.8.m1.1b"><apply id="S3.T2.8.8.8.8.m1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.8.8.8.8.m1.1.1.1.cmml" xref="S3.T2.8.8.8.8.m1.1.1">subscript</csymbol><ci id="S3.T2.8.8.8.8.m1.1.1.2a.cmml" xref="S3.T2.8.8.8.8.m1.1.1.2"><mtext class="ltx_mathvariant_bold" id="S3.T2.8.8.8.8.m1.1.1.2.cmml" xref="S3.T2.8.8.8.8.m1.1.1.2">GPT2m</mtext></ci><ci id="S3.T2.8.8.8.8.m1.1.1.3a.cmml" xref="S3.T2.8.8.8.8.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T2.8.8.8.8.m1.1.1.3.cmml" mathsize="70%" xref="S3.T2.8.8.8.8.m1.1.1.3">post</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.8.8.8.m1.1c">\text{GPT2m}_{\text{post}}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.8.8.8.m1.1d">GPT2m start_POSTSUBSCRIPT post end_POSTSUBSCRIPT</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.8.8.10.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.10.1.1">OpenBookQA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.2">80.80</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.3">78.94</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.4">84.20</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.5">82.90</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.6">46.80</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.7">46.48</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.8">40.40</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.8.8.10.9">40.57</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.11">
<td class="ltx_td ltx_align_left" id="S3.T2.8.8.11.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.11.1.1">BoolQ</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.2">70.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.3">65.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.4">64.25</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.5">62.89</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.6">62.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.7">61.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.8">55.00</td>
<td class="ltx_td ltx_align_center" id="S3.T2.8.8.11.9">55.40</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.8.8.12.1"><span class="ltx_text ltx_font_bold" id="S3.T2.8.8.12.1.1">COPA</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.2">68.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.3">67.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.4">78.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.5">77.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.6">62.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.7">61.09</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.8">24.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.8.8.12.9">24.68</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of different language models (LLMs) on a set of general benchmark tasks, both before and after bias mitigation.  The metrics used are accuracies (in percentage). The models tested include Llama3, Mistral, Gemma, and GPT2-medium.  The pre-edit and post-edit accuracies showcase the impact of the debiasing technique on the models' general performance.  The goal is to determine if bias editing affects the models' ability to perform standard language understanding tasks. 
> <details>
> <summary>read the caption</summary>
> Table 2: Accuracies (%) of general model benchmarks. ’pre’: pre-edit, ‘post-’: post-edit, ‘GPT2m’: ‘GP2-medium’
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.6.6">
<tr class="ltx_tr" id="S4.T3.6.6.7">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.6.7.1" rowspan="3"><span class="ltx_text" id="S4.T3.6.6.7.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T3.6.6.7.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.7.2.1">GPT2-medium</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.2.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mi id="S4.T3.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T3.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1">LMS</span> (%)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.8">
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.1">gender</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.2">race</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.3">religion</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.4">gender</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.5">race</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.8.6">religion</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.2.2.1">w/o <math alttext="\mathcal{L}_{r}" class="ltx_Math" display="inline" id="S4.T3.2.2.2.1.m1.1"><semantics id="S4.T3.2.2.2.1.m1.1a"><msub id="S4.T3.2.2.2.1.m1.1.1" xref="S4.T3.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.2.2.2.1.m1.1.1.2" xref="S4.T3.2.2.2.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.2.2.2.1.m1.1.1.3" xref="S4.T3.2.2.2.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.1.m1.1b"><apply id="S4.T3.2.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.2.2.2.1.m1.1.1.1.cmml" xref="S4.T3.2.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T3.2.2.2.1.m1.1.1.2.cmml" xref="S4.T3.2.2.2.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.2.2.2.1.m1.1.1.3.cmml" xref="S4.T3.2.2.2.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.1.m1.1c">\mathcal{L}_{r}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.2">52.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.3">56.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.4">45.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.5">-52.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.6">-59.96</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.2.2.7">-61.54</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3">
<td class="ltx_td ltx_align_left" id="S4.T3.3.3.3.1">w <math alttext="\mathcal{L}_{r}" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><msub id="S4.T3.3.3.3.1.m1.1.1" xref="S4.T3.3.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.3.3.3.1.m1.1.1.2" xref="S4.T3.3.3.3.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.3.3.3.1.m1.1.1.3" xref="S4.T3.3.3.3.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><apply id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.3.3.3.1.m1.1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S4.T3.3.3.3.1.m1.1.1.2.cmml" xref="S4.T3.3.3.3.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.3.3.3.1.m1.1.1.3.cmml" xref="S4.T3.3.3.3.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\mathcal{L}_{r}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.2">49.42</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3">56.34</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.4">53.55</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.5">-8.82</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.6">-5.12</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.7">-1.92</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.6.6.9.1" rowspan="3"><span class="ltx_text" id="S4.T3.6.6.9.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="S4.T3.6.6.9.2"><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.9.2.1">Gemma-2b</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.4.4.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.2.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T3.4.4.4.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T3.4.4.4.1.m1.1"><semantics id="S4.T3.4.4.4.1.m1.1a"><mi id="S4.T3.4.4.4.1.m1.1.1" mathvariant="normal" xref="S4.T3.4.4.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.1.m1.1b"><ci id="S4.T3.4.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.1.1">LMS</span> (%)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.10">
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.1">gender</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.2">race</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.3">religion</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.4">gender</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.5">race</td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.10.6">religion</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.5.5.5.1">w/o <math alttext="\mathcal{L}_{r}" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><msub id="S4.T3.5.5.5.1.m1.1.1" xref="S4.T3.5.5.5.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.5.5.5.1.m1.1.1.2" xref="S4.T3.5.5.5.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.5.5.5.1.m1.1.1.3" xref="S4.T3.5.5.5.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><apply id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.5.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1">subscript</csymbol><ci id="S4.T3.5.5.5.1.m1.1.1.2.cmml" xref="S4.T3.5.5.5.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.5.5.5.1.m1.1.1.3.cmml" xref="S4.T3.5.5.5.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\mathcal{L}_{r}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.2">50.81</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.3">52.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.4">41.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.5">-29.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.6">-27.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.5.5.5.7">-62.29</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.6.6.6.1">w <math alttext="\mathcal{L}_{r}" class="ltx_Math" display="inline" id="S4.T3.6.6.6.1.m1.1"><semantics id="S4.T3.6.6.6.1.m1.1a"><msub id="S4.T3.6.6.6.1.m1.1.1" xref="S4.T3.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.6.6.6.1.m1.1.1.2" xref="S4.T3.6.6.6.1.m1.1.1.2.cmml">ℒ</mi><mi id="S4.T3.6.6.6.1.m1.1.1.3" xref="S4.T3.6.6.6.1.m1.1.1.3.cmml">r</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.1.m1.1b"><apply id="S4.T3.6.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.6.6.6.1.m1.1.1.1.cmml" xref="S4.T3.6.6.6.1.m1.1.1">subscript</csymbol><ci id="S4.T3.6.6.6.1.m1.1.1.2.cmml" xref="S4.T3.6.6.6.1.m1.1.1.2">ℒ</ci><ci id="S4.T3.6.6.6.1.m1.1.1.3.cmml" xref="S4.T3.6.6.6.1.m1.1.1.3">𝑟</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.1.m1.1c">\mathcal{L}_{r}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.2">48.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.3">52.25</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.4">47.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.5">-4.78</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.6">-4.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.6.6.6.7">-5.44</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of BIASEDIT with and without the retention loss (ℒr). It shows the Stereotype Score (SS) and the change in Language Modeling Score (△LMS) for gender, race, and religion bias on GPT2-medium and Gemma-2b language models.  The retention loss is designed to prevent negative impacts on the language modeling capabilities of the model during the debiasing process.  By comparing the results with and without this loss, the table highlights its effectiveness in preserving the model's overall performance while reducing bias.
> <details>
> <summary>read the caption</summary>
> Table 3: BiasEdit w and w/o the retention loss ℒrsubscriptℒ𝑟\mathcal{L}_{r}caligraphic_L start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.1.1">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">Model / SS (%)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.1.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Pre-debias</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S4.T4.1.1.1.3.1">BiasEdit</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.1">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.2">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.3">Religion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.4">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.5">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.2.6">Religion</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T4.1.1.3.1">GPT2-medium</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.3">53.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.4">64.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.5">52.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.6">48.53</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.7">55.82</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.4.1">Gemma-2B</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.2">51.79</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3">54.39</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.4">58.89</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.5">51.84</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.6">50.29</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.7">54.76</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5">
<td class="ltx_td ltx_align_left" id="S4.T4.1.1.5.1">Mistral-7B-v0.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.2">48.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.3">52.92</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4">53.54</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.5">58.17</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.6">49.46</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.7">58.17</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T4.1.1.6.1">Llama3-8B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.2">45.37</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.3">58.79</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.4">58.17</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.5">49.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.6">53.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.6.7">51.14</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the Stereotype Score (SS) on a synonym-augmented test set.  The synonym-augmented test set replaces attribute terms in the original StereoSet test set with their synonyms.  This assesses the robustness and generalizability of the BIASEDIT debiasing method by evaluating its performance on semantically similar, but not identically worded, instances of bias.
> <details>
> <summary>read the caption</summary>
> Table 4: SS (%) on the synonym-augmented test set.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T5.3.3">
<tr class="ltx_tr" id="A2.T5.3.3.4">
<td class="ltx_td ltx_border_tt" id="A2.T5.3.3.4.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.3.3.4.2"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.4.2.1"># Gender</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.3.3.4.3"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.4.3.1"># Race</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T5.3.3.4.4"><span class="ltx_text ltx_font_bold" id="A2.T5.3.3.4.4.1"># Religion</span></td>
</tr>
<tr class="ltx_tr" id="A2.T5.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T5.1.1.1.1"><math alttext="\mathcal{S}_{\text{edit}}^{\text{train}}" class="ltx_Math" display="inline" id="A2.T5.1.1.1.1.m1.1"><semantics id="A2.T5.1.1.1.1.m1.1a"><msubsup id="A2.T5.1.1.1.1.m1.1.1" xref="A2.T5.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A2.T5.1.1.1.1.m1.1.1.2.2" xref="A2.T5.1.1.1.1.m1.1.1.2.2.cmml">𝒮</mi><mtext class="ltx_mathvariant_bold" id="A2.T5.1.1.1.1.m1.1.1.2.3" xref="A2.T5.1.1.1.1.m1.1.1.2.3a.cmml">edit</mtext><mtext class="ltx_mathvariant_bold" id="A2.T5.1.1.1.1.m1.1.1.3" xref="A2.T5.1.1.1.1.m1.1.1.3a.cmml">train</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A2.T5.1.1.1.1.m1.1b"><apply id="A2.T5.1.1.1.1.m1.1.1.cmml" xref="A2.T5.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.1.1.1.1.m1.1.1.1.cmml" xref="A2.T5.1.1.1.1.m1.1.1">superscript</csymbol><apply id="A2.T5.1.1.1.1.m1.1.1.2.cmml" xref="A2.T5.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.1.1.1.1.m1.1.1.2.1.cmml" xref="A2.T5.1.1.1.1.m1.1.1">subscript</csymbol><ci id="A2.T5.1.1.1.1.m1.1.1.2.2.cmml" xref="A2.T5.1.1.1.1.m1.1.1.2.2">𝒮</ci><ci id="A2.T5.1.1.1.1.m1.1.1.2.3a.cmml" xref="A2.T5.1.1.1.1.m1.1.1.2.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.1.1.1.1.m1.1.1.2.3.cmml" mathsize="70%" xref="A2.T5.1.1.1.1.m1.1.1.2.3">edit</mtext></ci></apply><ci id="A2.T5.1.1.1.1.m1.1.1.3a.cmml" xref="A2.T5.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.1.1.1.1.m1.1.1.3">train</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.1.1.1.1.m1.1c">\mathcal{S}_{\text{edit}}^{\text{train}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.1.1.1.1.m1.1d">caligraphic_S start_POSTSUBSCRIPT edit end_POSTSUBSCRIPT start_POSTSUPERSCRIPT train end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.2">617</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.3">2,307</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T5.1.1.1.4">210</td>
</tr>
<tr class="ltx_tr" id="A2.T5.2.2.2">
<td class="ltx_td ltx_align_left" id="A2.T5.2.2.2.1"><math alttext="\mathcal{S}_{\text{edit}}^{\text{dev}}" class="ltx_Math" display="inline" id="A2.T5.2.2.2.1.m1.1"><semantics id="A2.T5.2.2.2.1.m1.1a"><msubsup id="A2.T5.2.2.2.1.m1.1.1" xref="A2.T5.2.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A2.T5.2.2.2.1.m1.1.1.2.2" xref="A2.T5.2.2.2.1.m1.1.1.2.2.cmml">𝒮</mi><mtext class="ltx_mathvariant_bold" id="A2.T5.2.2.2.1.m1.1.1.2.3" xref="A2.T5.2.2.2.1.m1.1.1.2.3a.cmml">edit</mtext><mtext class="ltx_mathvariant_bold" id="A2.T5.2.2.2.1.m1.1.1.3" xref="A2.T5.2.2.2.1.m1.1.1.3a.cmml">dev</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A2.T5.2.2.2.1.m1.1b"><apply id="A2.T5.2.2.2.1.m1.1.1.cmml" xref="A2.T5.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.2.2.2.1.m1.1.1.1.cmml" xref="A2.T5.2.2.2.1.m1.1.1">superscript</csymbol><apply id="A2.T5.2.2.2.1.m1.1.1.2.cmml" xref="A2.T5.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.2.2.2.1.m1.1.1.2.1.cmml" xref="A2.T5.2.2.2.1.m1.1.1">subscript</csymbol><ci id="A2.T5.2.2.2.1.m1.1.1.2.2.cmml" xref="A2.T5.2.2.2.1.m1.1.1.2.2">𝒮</ci><ci id="A2.T5.2.2.2.1.m1.1.1.2.3a.cmml" xref="A2.T5.2.2.2.1.m1.1.1.2.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.2.2.2.1.m1.1.1.2.3.cmml" mathsize="70%" xref="A2.T5.2.2.2.1.m1.1.1.2.3">edit</mtext></ci></apply><ci id="A2.T5.2.2.2.1.m1.1.1.3a.cmml" xref="A2.T5.2.2.2.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.2.2.2.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.2.2.2.1.m1.1.1.3">dev</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.2.2.2.1.m1.1c">\mathcal{S}_{\text{edit}}^{\text{dev}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.2.2.2.1.m1.1d">caligraphic_S start_POSTSUBSCRIPT edit end_POSTSUBSCRIPT start_POSTSUPERSCRIPT dev end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.2.2">70</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.2.3">297</td>
<td class="ltx_td ltx_align_center" id="A2.T5.2.2.2.4">25</td>
</tr>
<tr class="ltx_tr" id="A2.T5.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T5.3.3.3.1"><math alttext="\mathcal{S}_{\text{edit}}^{\text{test}}" class="ltx_Math" display="inline" id="A2.T5.3.3.3.1.m1.1"><semantics id="A2.T5.3.3.3.1.m1.1a"><msubsup id="A2.T5.3.3.3.1.m1.1.1" xref="A2.T5.3.3.3.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="A2.T5.3.3.3.1.m1.1.1.2.2" xref="A2.T5.3.3.3.1.m1.1.1.2.2.cmml">𝒮</mi><mtext class="ltx_mathvariant_bold" id="A2.T5.3.3.3.1.m1.1.1.2.3" xref="A2.T5.3.3.3.1.m1.1.1.2.3a.cmml">edit</mtext><mtext class="ltx_mathvariant_bold" id="A2.T5.3.3.3.1.m1.1.1.3" xref="A2.T5.3.3.3.1.m1.1.1.3a.cmml">test</mtext></msubsup><annotation-xml encoding="MathML-Content" id="A2.T5.3.3.3.1.m1.1b"><apply id="A2.T5.3.3.3.1.m1.1.1.cmml" xref="A2.T5.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.3.3.3.1.m1.1.1.1.cmml" xref="A2.T5.3.3.3.1.m1.1.1">superscript</csymbol><apply id="A2.T5.3.3.3.1.m1.1.1.2.cmml" xref="A2.T5.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="A2.T5.3.3.3.1.m1.1.1.2.1.cmml" xref="A2.T5.3.3.3.1.m1.1.1">subscript</csymbol><ci id="A2.T5.3.3.3.1.m1.1.1.2.2.cmml" xref="A2.T5.3.3.3.1.m1.1.1.2.2">𝒮</ci><ci id="A2.T5.3.3.3.1.m1.1.1.2.3a.cmml" xref="A2.T5.3.3.3.1.m1.1.1.2.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.3.3.3.1.m1.1.1.2.3.cmml" mathsize="70%" xref="A2.T5.3.3.3.1.m1.1.1.2.3">edit</mtext></ci></apply><ci id="A2.T5.3.3.3.1.m1.1.1.3a.cmml" xref="A2.T5.3.3.3.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="A2.T5.3.3.3.1.m1.1.1.3.cmml" mathsize="70%" xref="A2.T5.3.3.3.1.m1.1.1.3">test</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T5.3.3.3.1.m1.1c">\mathcal{S}_{\text{edit}}^{\text{test}}</annotation><annotation encoding="application/x-llamapun" id="A2.T5.3.3.3.1.m1.1d">caligraphic_S start_POSTSUBSCRIPT edit end_POSTSUBSCRIPT start_POSTSUPERSCRIPT test end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.3.3.3.2">253</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.3.3.3.3">962</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T5.3.3.3.4">77</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of samples across different bias categories (gender, race, and religion) within the StereoSet dataset used in the study.  It shows the number of samples used for training (Strain), development (Sdev), and testing (Stest) sets for each bias type.
> <details>
> <summary>read the caption</summary>
> Table 5: The numbers of samples about different bias in our dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T6.1.1">
<tr class="ltx_tr" id="A2.T6.1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.1.1" rowspan="2"><span class="ltx_text" id="A2.T6.1.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A2.T6.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.2.1">GPT2-medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="A2.T6.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.1.3.1">Gemma-2b</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.1">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.2">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.3">Religion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.4">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.5">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.2.6">Religion</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.1.3.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.3.1.1">Pre-edit</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.2">61.46</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.3">59.57</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.4">73.33</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.5">63.54</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.6">64.54</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.3.7">66.67</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.4.1">CDA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.4.2">51.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.4.3">44.68</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.4.4">66.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T6.1.1.4.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.4.5.1">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.5">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.5.1">SentenceDebias</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.2">56.33</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.3">55.48</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.4">53.14</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.5">60.42</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.6">60.99</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.5.7">61.29</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.6">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.6.1">Self-Debias</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.6.2.1">50.00</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.3">59.57</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.4">53.33</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.5">56.25</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.6">43.26</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.6.7">56.25</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.7">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.7.1">INLP</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.2">47.92</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.3">52.81</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.4">61.29</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.5">63.57</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.6">60.99</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.7.7">63.33</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.8">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.8.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.1.1">EditBias</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.2">53.08</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.3.1">50.35</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.4.1">53.12</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.5.1">52.81</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.6"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.6.1">49.83</span></td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.8.7"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.8.7.1">53.17</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.9.1" rowspan="2"><span class="ltx_text" id="A2.T6.1.1.9.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T6.1.1.9.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.9.2.1">Mistral-7B-v0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A2.T6.1.1.9.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.9.3.1">Llama3-8B</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.10">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.1">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.2">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.3">Religion</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.4">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.5">Race</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T6.1.1.10.6">Religion</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T6.1.1.11.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.11.1.1">Pre-edit</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.2">65.62</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.3">68.09</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.4">70.00</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.5">62.50</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.6">62.41</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T6.1.1.11.7">73.33</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T6.1.1.12.1">CDA</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="6" id="A2.T6.1.1.12.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.12.2.1">-</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.13">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.13.1">SentenceDebias</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.2">61.46</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.3">66.67</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.4">70.00</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.5">60.42</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.6">61.49</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.13.7">62.50</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.14">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.14.1">Self-Debias</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.2">41.67</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.3">41.89</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.4">40.00</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.5">44.79</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.6">47.52</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.14.7"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.14.7.1">46.67</span></td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.15">
<td class="ltx_td ltx_align_left" id="A2.T6.1.1.15.1">INLP</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.2">59.38</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.3">68.79</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.4">68.75</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.5">56.25</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.6">63.83</td>
<td class="ltx_td ltx_align_center" id="A2.T6.1.1.15.7">70.00</td>
</tr>
<tr class="ltx_tr" id="A2.T6.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T6.1.1.16.1"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.1.1">EditBias</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.2"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.2.1">49.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.3"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.3.1">48.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.4"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.4.1">53.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.5"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.5.1">52.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.6"><span class="ltx_text ltx_font_bold" id="A2.T6.1.1.16.6.1">50.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T6.1.1.16.7">54.94</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of evaluating different bias mitigation methods on the Crowds-Pairs dataset.  It shows the Stereotype Score (SS), a metric representing the percentage of times a model prefers stereotypical contexts over anti-stereotypical ones.  Lower scores indicate less bias. The table compares the performance of four established baselines (CDA, SentenceDebias, Self-Debias, INLP) against the proposed method, BiasEdit, across three bias types (gender, race, religion) and four language models (GPT2-medium, Gemma-2b, Mistral-7B-v0.3, Llama3-8B).  Pre-edit scores represent the bias levels before any mitigation.
> <details>
> <summary>read the caption</summary>
> Table 6: Stereotype Score (%) for evaluating the baselines and BiasEdit on Crows-Pairs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A2.T7.8.8">
<tr class="ltx_tr" id="A2.T7.8.8.9">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.9.1" rowspan="3"><span class="ltx_text" id="A2.T7.8.8.9.1.1">Bias
<br class="ltx_break"/>Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A2.T7.8.8.9.2"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.9.2.1">GPT2-medium</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="A2.T7.8.8.9.3"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.9.3.1">Gemma-2b</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.10">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.10.1"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.10.1.1">One</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.10.2"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.10.2.1">Mixture</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.10.3"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.10.3.1">One</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.10.4"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.10.4.1">Mixture</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.4.4.4">
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4.5"><span class="ltx_text ltx_font_bold" id="A2.T7.4.4.4.5.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.1.1.1.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.1.1.1.1.m1.1"><semantics id="A2.T7.1.1.1.1.m1.1a"><mi id="A2.T7.1.1.1.1.m1.1.1" mathvariant="normal" xref="A2.T7.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.1.1.1.1.m1.1b"><ci id="A2.T7.1.1.1.1.m1.1.1.cmml" xref="A2.T7.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.1.1.1.1.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4.6"><span class="ltx_text ltx_font_bold" id="A2.T7.4.4.4.6.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.2.2.2.2">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.2.2.2.2.m1.1"><semantics id="A2.T7.2.2.2.2.m1.1a"><mi id="A2.T7.2.2.2.2.m1.1.1" mathvariant="normal" xref="A2.T7.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.2.2.2.2.m1.1b"><ci id="A2.T7.2.2.2.2.m1.1.1.cmml" xref="A2.T7.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.2.2.2.2.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4.7"><span class="ltx_text ltx_font_bold" id="A2.T7.4.4.4.7.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.3.3.3.3">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.3.3.3.3.m1.1"><semantics id="A2.T7.3.3.3.3.m1.1a"><mi id="A2.T7.3.3.3.3.m1.1.1" mathvariant="normal" xref="A2.T7.3.3.3.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.3.3.3.3.m1.1b"><ci id="A2.T7.3.3.3.3.m1.1.1.cmml" xref="A2.T7.3.3.3.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.3.3.3.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.3.3.3.3.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.3.3.3.3.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4.8"><span class="ltx_text ltx_font_bold" id="A2.T7.4.4.4.8.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.4.4.4.4">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.4.4.4.4.m1.1"><semantics id="A2.T7.4.4.4.4.m1.1a"><mi id="A2.T7.4.4.4.4.m1.1.1" mathvariant="normal" xref="A2.T7.4.4.4.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.4.4.4.4.m1.1b"><ci id="A2.T7.4.4.4.4.m1.1.1.cmml" xref="A2.T7.4.4.4.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.4.4.4.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.4.4.4.4.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.4.4.4.4.1">LMS (%)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.8.8.11.1">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.2">49.81</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.3">-1.22</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.4">49.42</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.5">-8.82</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.6">47.71</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.7">-5.36</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.8">48.59</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.11.9">-4.78</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.12">
<td class="ltx_td ltx_align_left" id="A2.T7.8.8.12.1">Race</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.2">55.27</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.3">-5.57</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.4">56.34</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.5">-5.12</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.6">54.88</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.7">-2.39</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.8">55.86</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.12.9">-4.35</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.13">
<td class="ltx_td ltx_align_left" id="A2.T7.8.8.13.1">Religion</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.2">49.64</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.3">-6.94</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.4">53.55</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.5">-1.92</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.6">50.42</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.7">-8.53</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.8">47.36</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.13.9">-5.44</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.8.8.14.1" rowspan="3"><span class="ltx_text" id="A2.T7.8.8.14.1.1">Bias
<br class="ltx_break"/>Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A2.T7.8.8.14.2"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.14.2.1">Mistral-7B-v0.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="A2.T7.8.8.14.3"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.14.3.1">Llama3-8B</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.15">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.15.1"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.15.1.1">One</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.15.2"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.15.2.1">Mixture</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.15.3"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.15.3.1">One</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A2.T7.8.8.15.4"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.15.4.1">Mixture</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.8">
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.8.5"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.8.5.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.5.5.5.1">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.5.5.5.1.m1.1"><semantics id="A2.T7.5.5.5.1.m1.1a"><mi id="A2.T7.5.5.5.1.m1.1.1" mathvariant="normal" xref="A2.T7.5.5.5.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.5.5.5.1.m1.1b"><ci id="A2.T7.5.5.5.1.m1.1.1.cmml" xref="A2.T7.5.5.5.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.5.5.5.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.5.5.5.1.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.5.5.5.1.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.8.6"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.8.6.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.6.6.6.2">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.6.6.6.2.m1.1"><semantics id="A2.T7.6.6.6.2.m1.1a"><mi id="A2.T7.6.6.6.2.m1.1.1" mathvariant="normal" xref="A2.T7.6.6.6.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.6.6.6.2.m1.1b"><ci id="A2.T7.6.6.6.2.m1.1.1.cmml" xref="A2.T7.6.6.6.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.6.6.6.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.6.6.6.2.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.6.6.6.2.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.8.7"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.8.7.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.7.7.7.3">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.7.7.7.3.m1.1"><semantics id="A2.T7.7.7.7.3.m1.1a"><mi id="A2.T7.7.7.7.3.m1.1.1" mathvariant="normal" xref="A2.T7.7.7.7.3.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.7.7.7.3.m1.1b"><ci id="A2.T7.7.7.7.3.m1.1.1.cmml" xref="A2.T7.7.7.7.3.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.7.7.7.3.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.7.7.7.3.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.7.7.7.3.1">LMS (%)</span>
</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.8.8"><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.8.8.1">SS (%)</span></td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.8.4">
<math alttext="\Delta" class="ltx_Math" display="inline" id="A2.T7.8.8.8.4.m1.1"><semantics id="A2.T7.8.8.8.4.m1.1a"><mi id="A2.T7.8.8.8.4.m1.1.1" mathvariant="normal" xref="A2.T7.8.8.8.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="A2.T7.8.8.8.4.m1.1b"><ci id="A2.T7.8.8.8.4.m1.1.1.cmml" xref="A2.T7.8.8.8.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T7.8.8.8.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="A2.T7.8.8.8.4.m1.1d">roman_Δ</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="A2.T7.8.8.8.4.1">LMS (%)</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.16">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T7.8.8.16.1">Gender</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.2">48.96</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.3">-10.55</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.4">46.24</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.5">-8.81</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.6">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.7">-10.98</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.8">49.18</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.8.8.16.9">-13.42</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.17">
<td class="ltx_td ltx_align_left" id="A2.T7.8.8.17.1">Race</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.2">53.32</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.3">-6.25</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.4">51.46</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.5">-8.59</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.6">46.28</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.7">-20.84</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.8">53.51</td>
<td class="ltx_td ltx_align_center" id="A2.T7.8.8.17.9">-11.77</td>
</tr>
<tr class="ltx_tr" id="A2.T7.8.8.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T7.8.8.18.1">Religion</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.2">52.15</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.3">-7.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.4">50.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.5">-0.03</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.6">50.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.7">-8.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.8">51.13</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.8.8.18.9">-10.02</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of training bias editor networks using two different approaches: one using data for a single bias type (gender, race, or religion) and another using a mixture of all three bias types.  The table shows the stereotype score (SS) and the change in language modeling score (△LMS) for each model (GPT2-medium, Gemma-2b, Mistral-7B-v0.3, and Llama3-8B) and bias type, comparing the performance of the two training methods.  Lower SS values indicate better debiasing performance, and △LMS close to 0 indicates minimal impact on the language modeling ability.
> <details>
> <summary>read the caption</summary>
> Table 7: Training editor networks with data for one type of bias vs. mixed types of bias.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.08588/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.08588/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}