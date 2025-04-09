---
title: "Efficient Model Selection for Time Series Forecasting via LLMs"
summary: "LLMs streamline time series model selection, outperforming traditional methods with reduced overhead."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Meta Learning", "🏢 Virginia Tech",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02119 {{< /keyword >}}
{{< keyword icon="writer" >}} Wang Wei et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02119" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02119" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02119/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Time series forecasting is vital across many real-world applications. Selecting the right forecasting model is complex, often needing deep expertise and significant computational resources. Traditional methods involve manual effort in model design, feature engineering, and hyperparameter tuning. Meta-learning approaches try to automate this but depend on pre-built performance matrices which are expensive to create and maintain. It can be difficult to deliver consistently high-quality predictions due to the inherent diversity in time series data. 



To solve these issues, this paper explores using **Large Language Models (LLMs)** for model selection, removing the need for explicit performance matrices. The study uses Llama, GPT, and Gemini, demonstrating superior performance over traditional meta-learning and heuristic baselines, while greatly cutting computational overhead. The findings show LLMs have the potential to efficiently select models for time series forecasting. The authors also investigate various prompt designs and their effects on different LLMs.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LLMs can effectively perform zero-shot model selection for time series forecasting. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} LLM-based selection significantly reduces computational costs compared to traditional meta-learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Prompt design, incorporating meta-features, impacts LLM performance in model selection. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel **LLM-driven approach** for time series model selection, offering a **computationally efficient alternative** to traditional methods, which can potentially reshape research in automated forecasting and meta-learning.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02119/x1.png)

> 🔼 This figure illustrates the process of model selection for time series forecasting using Large Language Models (LLMs).  The process begins with a time series dataset, which may optionally include pre-computed meta-features. A prompt is constructed using the dataset values, meta-features (if included), and optionally, chain-of-thought (CoT) reasoning steps.  This prompt is then submitted to one of several candidate LLMs (Llama 3.2, GPT-4, Gemini 2.0). The LLM processes the prompt and outputs a selected model, including the forecasting algorithm, hyperparameters, and data representation. Finally, the selected model is evaluated on a testing dataset to assess its performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: An overview of model selection via LLMs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.T1.6.6">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S3.T1.4.4.4.5"><span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.5.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">hit@1 accuracy</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.2.1">hit@5 accuracy</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.1">hit@10 accuracy</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.4.4.4.4">
<span class="ltx_text ltx_font_bold" id="S3.T1.4.4.4.4.1">hit@50 accuracy</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.4.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.4.m1.1a"><mo id="S3.T1.4.4.4.4.m1.1.1" stretchy="false" xref="S3.T1.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.7.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.6.7.1.1">Random selection</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.7.1.2">0.31</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.7.1.3">1.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.7.1.4">3.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.6.6.7.1.5">14.75</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.8.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.6.8.2.1">Popular Selection</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8.2.2">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8.2.3">1.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8.2.4">3.77</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.8.2.5">19.94</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.5.5.5.1"><math alttext="ISAC^{*}" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mrow id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml"><mi id="S3.T1.5.5.5.1.m1.1.1.2" xref="S3.T1.5.5.5.1.m1.1.1.2.cmml">I</mi><mo id="S3.T1.5.5.5.1.m1.1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.5.5.5.1.m1.1.1.3" xref="S3.T1.5.5.5.1.m1.1.1.3.cmml">S</mi><mo id="S3.T1.5.5.5.1.m1.1.1.1a" xref="S3.T1.5.5.5.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.5.5.5.1.m1.1.1.4" xref="S3.T1.5.5.5.1.m1.1.1.4.cmml">A</mi><mo id="S3.T1.5.5.5.1.m1.1.1.1b" xref="S3.T1.5.5.5.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.5.5.5.1.m1.1.1.5" xref="S3.T1.5.5.5.1.m1.1.1.5.cmml"><mi id="S3.T1.5.5.5.1.m1.1.1.5.2" xref="S3.T1.5.5.5.1.m1.1.1.5.2.cmml">C</mi><mo id="S3.T1.5.5.5.1.m1.1.1.5.3" xref="S3.T1.5.5.5.1.m1.1.1.5.3.cmml">∗</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><apply id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1"><times id="S3.T1.5.5.5.1.m1.1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1.1"></times><ci id="S3.T1.5.5.5.1.m1.1.1.2.cmml" xref="S3.T1.5.5.5.1.m1.1.1.2">𝐼</ci><ci id="S3.T1.5.5.5.1.m1.1.1.3.cmml" xref="S3.T1.5.5.5.1.m1.1.1.3">𝑆</ci><ci id="S3.T1.5.5.5.1.m1.1.1.4.cmml" xref="S3.T1.5.5.5.1.m1.1.1.4">𝐴</ci><apply id="S3.T1.5.5.5.1.m1.1.1.5.cmml" xref="S3.T1.5.5.5.1.m1.1.1.5"><csymbol cd="ambiguous" id="S3.T1.5.5.5.1.m1.1.1.5.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1.5">superscript</csymbol><ci id="S3.T1.5.5.5.1.m1.1.1.5.2.cmml" xref="S3.T1.5.5.5.1.m1.1.1.5.2">𝐶</ci><times id="S3.T1.5.5.5.1.m1.1.1.5.3.cmml" xref="S3.T1.5.5.5.1.m1.1.1.5.3"></times></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">ISAC^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">italic_I italic_S italic_A italic_C start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.2">0.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.3">2.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.4">4.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.5">11.45</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S3.T1.6.6.6.1"><math alttext="MLP^{*}" class="ltx_Math" display="inline" id="S3.T1.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.1.m1.1a"><mrow id="S3.T1.6.6.6.1.m1.1.1" xref="S3.T1.6.6.6.1.m1.1.1.cmml"><mi id="S3.T1.6.6.6.1.m1.1.1.2" xref="S3.T1.6.6.6.1.m1.1.1.2.cmml">M</mi><mo id="S3.T1.6.6.6.1.m1.1.1.1" xref="S3.T1.6.6.6.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.6.6.6.1.m1.1.1.3" xref="S3.T1.6.6.6.1.m1.1.1.3.cmml">L</mi><mo id="S3.T1.6.6.6.1.m1.1.1.1a" xref="S3.T1.6.6.6.1.m1.1.1.1.cmml">⁢</mo><msup id="S3.T1.6.6.6.1.m1.1.1.4" xref="S3.T1.6.6.6.1.m1.1.1.4.cmml"><mi id="S3.T1.6.6.6.1.m1.1.1.4.2" xref="S3.T1.6.6.6.1.m1.1.1.4.2.cmml">P</mi><mo id="S3.T1.6.6.6.1.m1.1.1.4.3" xref="S3.T1.6.6.6.1.m1.1.1.4.3.cmml">∗</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.1.m1.1b"><apply id="S3.T1.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1"><times id="S3.T1.6.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1.1"></times><ci id="S3.T1.6.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.6.1.m1.1.1.2">𝑀</ci><ci id="S3.T1.6.6.6.1.m1.1.1.3.cmml" xref="S3.T1.6.6.6.1.m1.1.1.3">𝐿</ci><apply id="S3.T1.6.6.6.1.m1.1.1.4.cmml" xref="S3.T1.6.6.6.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.6.6.6.1.m1.1.1.4.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1.4">superscript</csymbol><ci id="S3.T1.6.6.6.1.m1.1.1.4.2.cmml" xref="S3.T1.6.6.6.1.m1.1.1.4.2">𝑃</ci><times id="S3.T1.6.6.6.1.m1.1.1.4.3.cmml" xref="S3.T1.6.6.6.1.m1.1.1.4.3"></times></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.1.m1.1c">MLP^{*}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.1.m1.1d">italic_M italic_L italic_P start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.2">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.3">1.13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.4">4.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.5">22.25</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.9.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.6.9.3.1">Ours-Llama3.2</th>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.9.3.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.9.3.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.9.3.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.9.3.5"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.10.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.10.4.1">w. data</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.10.4.2">0.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.10.4.3">3.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.10.4.4">6.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.10.4.5">26.27</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.11.5">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.11.5.1">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11.5.2">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11.5.3">3.12</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11.5.4">5.82</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.11.5.5">26.69</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.12.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.12.6.1">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.12.6.2"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.12.6.2.1">1.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.12.6.3"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.12.6.3.1">4.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.12.6.4"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.12.6.4.1">7.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.12.6.5"><span class="ltx_text ltx_font_bold" id="S3.T1.6.6.12.6.5.1">29.60</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.13.7">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.13.7.1">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.13.7.2">1.14</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.13.7.3">3.43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.13.7.4">6.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.13.7.5">25.96</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.14.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.6.14.8.1">Ours-GPT4o</th>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.14.8.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.14.8.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.14.8.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.14.8.5"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.15.9">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.15.9.1">w. data</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.15.9.2">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.15.9.3">2.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.15.9.4">4.47</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.15.9.5">21.39</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.16.10">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.16.10.1">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.16.10.2">0.10</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.16.10.3">1.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.16.10.4">4.36</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.16.10.5">21.39</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.17.11">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.17.11.1">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.17.11.2">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.17.11.3">2.39</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.17.11.4">4.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.17.11.5">20.56</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.18.12">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.18.12.1">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.18.12.2">0.52</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.18.12.3">2.60</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.18.12.4">4.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.18.12.5">21.91</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.19.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S3.T1.6.6.19.13.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.19.13.2"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.19.13.3"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.19.13.4"></td>
<td class="ltx_td ltx_border_t" id="S3.T1.6.6.19.13.5"></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.20.14">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.20.14.1">w. data</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.20.14.2">0.21</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.20.14.3">0.62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.20.14.4">3.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.20.14.5">20.77</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.21.15">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.21.15.1">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.21.15.2">0.31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.21.15.3">0.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.21.15.4">2.91</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.21.15.5">19.94</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.22.16">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S3.T1.6.6.22.16.1">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.22.16.2">0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.22.16.3">1.04</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.22.16.4">2.80</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.22.16.5">20.87</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.23.17">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S3.T1.6.6.23.17.1">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.6.23.17.2">0.21</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.6.23.17.3">1.35</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.6.23.17.4">3.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.6.6.23.17.5">17.13</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of the hit@k accuracy (a higher value indicates better performance) achieved by different methods for time series forecasting model selection. The methods include several baselines (random selection, selection of the most popular model, and two meta-learning approaches, ISAC and MLP), and three Large Language Model (LLM) approaches (using Llama, GPT and Gemini). The LLMs are compared across four different configurations: using only raw data, incorporating chain of thought (CoT) prompting, using meta-features from the dataset and using meta-features plus CoT. The meta-learning baselines used a pre-computed performance matrix to select the models, whereas the LLM-based methods did not. This highlights the performance advantage of LLMs compared to traditional meta-learning methods, especially in terms of computational efficiency, as demonstrated in later sections of the paper.
> <details>
> <summary>read the caption</summary>
> Table 1: hit@k𝑘kitalic_k Accuracy (the higher (↑↑\uparrow↑), the better) comparison of LLMs against the different baselines. ∗*∗ denotes meta-learning methods which utilized performance matrix during training.
> </details>





### In-depth insights


#### LLMs for TS?
LLMs have shown promise in time series (TS) by offering **zero-shot capabilities and reasoning**. This eliminates the need for extensive training data. The models also help with **automation** by using prompt engineering to select TS models, drastically cutting costs. But **limitations still exist**. LLMs can struggle with complexity, which impacts accuracy. Furthermore, a need for more research to ensure the selection generalizes across all types of TS data.

#### No more matrix?
The phrase "No more matrix?" alludes to a shift away from traditional meta-learning approaches in time series forecasting that heavily rely on a **pre-computed performance matrix**. This matrix, capturing model performances across numerous datasets, is computationally expensive to construct. This prompts exploration of lighter alternatives like LLMs which **eliminate the need for explicit performance matrices** by leveraging their inherent knowledge and reasoning, offering a more efficient model selection approach. **LLMs infer optimal models instantly**, reducing training overhead.

#### CoT's drawback
CoT's potential drawback lies in its **increased computational cost** and **risk of over-analysis**. While designed to guide the LLM through reasoned steps, CoT can lead to **unnecessary complexity** if the task relies on pattern recognition rather than explicit reasoning. The added steps increase inference time and token usage, potentially **reducing efficiency**. Furthermore, CoT prompting might lead LLMs to **overanalyze irrelevant aspects**, causing suboptimal model selection. The addition of reasoning steps could even increase the risk of **hallucination**, guiding the LLM to flawed conclusions.

#### Llama's Success
The paper highlights **Llama's success in model selection for time series forecasting**. Specifically, Llama 3.2 outperforms other methods in both **hit@k accuracy and MSE**, demonstrating its effectiveness in choosing appropriate models. While Llama excels in performance, it's noted to produce more **incomplete outputs** compared to other models like Gemini. This suggests a **trade-off between accuracy and output reliability** which could be further explored. Despite the output validity issues, the overall success of Llama highlights the potential of using LLMs for efficient model selection, **reducing the need for expensive pre-computed performance matrix**.

#### Dataset Diversity
**Dataset diversity** is crucial in time series forecasting, as real-world data exhibits varying patterns and characteristics. A model trained on a narrow dataset may struggle to generalize to unseen data with different trends or seasonality. **Evaluating models on diverse datasets** helps ensure robustness and reliability across various applications. This involves using datasets from different domains (e.g., finance, healthcare), with varying lengths, resolutions, and noise levels. **Addressing dataset diversity** can lead to the development of more adaptable and accurate forecasting models. LLMs show promise in handling dataset diversity by leveraging inherent knowledge to select suitable forecasting models.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02119/x2.png)

> 🔼 Figure 2a displays a bar chart comparing the average training and inference times for different model selection methods. The methods include a naïve approach (without model selection), two meta-learning techniques (ISAC and MLP), and three LLM-based methods using Llama 3.2, GPT-40, and Gemini 2.0. For each method, the chart shows two bars representing the average training time and average inference time in seconds.  Detailed mean and standard deviation values for all times are available in Table 6. This figure highlights the significant speed advantage of using LLMs for model selection in time-series forecasting, showing much faster inference times than the baselines.
> <details>
> <summary>read the caption</summary>
> (a) Average training and inference time (in seconds). Detailed mean and standard deviation values are provided in Table 6.
> </details>



![](https://arxiv.org/html/2504.02119/x3.png)

> 🔼 The bar chart visualizes the significant decrease in inference time achieved by the LLM-based model selection methods compared to the traditional, exhaustive 'naïve' approach.  The median inference time reduction factors are striking: 14x for Llama, 18x for GPT, and a remarkable 89x for Gemini. This highlights the substantial computational efficiency gained by using LLMs for model selection in time series forecasting, across all datasets considered in the study.
> <details>
> <summary>read the caption</summary>
> (b) The inference time reduction of LLM-based methods over the naïve approach. Our Llama, GPT, and Gemini-based methods give a median reduction of 14X,18X, and 89X over naïve approach on all the datasets.
> </details>



![](https://arxiv.org/html/2504.02119/x4.png)

> 🔼 This figure compares the training and inference times of different model selection methods used for time series forecasting. The methods include a naive approach, meta-learning methods like ISAC and MLP, and the proposed LLM-based methods using different LLMs (Llama, GPT, and Gemini) and various prompt designs. The bar chart shows that the training time is negligible for the LLM-based methods, while the inference time is significantly reduced compared to the naive approach, with the Gemini-based method showing the greatest reduction.
> <details>
> <summary>read the caption</summary>
> Figure 2: Comparison of training and inference time across different methods.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.13">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1">
<th class="ltx_td ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.1.1.2"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="S4.T2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.3.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1">Mean Square Error</span> <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.2" rowspan="7"><span class="ltx_text" id="S4.T2.2.2.2.1">No Model Selection</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.2.2.3">Seasonal Naïve</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.1"><math alttext="0.0345\pm 0.0382" class="ltx_Math" display="inline" id="S4.T2.2.2.1.m1.1"><semantics id="S4.T2.2.2.1.m1.1a"><mrow id="S4.T2.2.2.1.m1.1.1" xref="S4.T2.2.2.1.m1.1.1.cmml"><mn id="S4.T2.2.2.1.m1.1.1.2" xref="S4.T2.2.2.1.m1.1.1.2.cmml">0.0345</mn><mo id="S4.T2.2.2.1.m1.1.1.1" xref="S4.T2.2.2.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.2.2.1.m1.1.1.3" xref="S4.T2.2.2.1.m1.1.1.3.cmml">0.0382</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.1.m1.1b"><apply id="S4.T2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.2.2.1.m1.1.1.1.cmml" xref="S4.T2.2.2.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.2.2.1.m1.1.1.2.cmml" type="float" xref="S4.T2.2.2.1.m1.1.1.2">0.0345</cn><cn id="S4.T2.2.2.1.m1.1.1.3.cmml" type="float" xref="S4.T2.2.2.1.m1.1.1.3">0.0382</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.1.m1.1c">0.0345\pm 0.0382</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.1.m1.1d">0.0345 ± 0.0382</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.3.3.2">DeepAR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.1"><math alttext="0.0164\pm 0.0506" class="ltx_Math" display="inline" id="S4.T2.3.3.1.m1.1"><semantics id="S4.T2.3.3.1.m1.1a"><mrow id="S4.T2.3.3.1.m1.1.1" xref="S4.T2.3.3.1.m1.1.1.cmml"><mn id="S4.T2.3.3.1.m1.1.1.2" xref="S4.T2.3.3.1.m1.1.1.2.cmml">0.0164</mn><mo id="S4.T2.3.3.1.m1.1.1.1" xref="S4.T2.3.3.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.3.3.1.m1.1.1.3" xref="S4.T2.3.3.1.m1.1.1.3.cmml">0.0506</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.1.m1.1b"><apply id="S4.T2.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.3.3.1.m1.1.1.2.cmml" type="float" xref="S4.T2.3.3.1.m1.1.1.2">0.0164</cn><cn id="S4.T2.3.3.1.m1.1.1.3.cmml" type="float" xref="S4.T2.3.3.1.m1.1.1.3">0.0506</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.1.m1.1c">0.0164\pm 0.0506</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.1.m1.1d">0.0164 ± 0.0506</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.4.4.2">Deep Factors</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.1"><math alttext="0.0217\pm 0.0415" class="ltx_Math" display="inline" id="S4.T2.4.4.1.m1.1"><semantics id="S4.T2.4.4.1.m1.1a"><mrow id="S4.T2.4.4.1.m1.1.1" xref="S4.T2.4.4.1.m1.1.1.cmml"><mn id="S4.T2.4.4.1.m1.1.1.2" xref="S4.T2.4.4.1.m1.1.1.2.cmml">0.0217</mn><mo id="S4.T2.4.4.1.m1.1.1.1" xref="S4.T2.4.4.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.4.4.1.m1.1.1.3" xref="S4.T2.4.4.1.m1.1.1.3.cmml">0.0415</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.1.m1.1b"><apply id="S4.T2.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.4.4.1.m1.1.1.1.cmml" xref="S4.T2.4.4.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.4.4.1.m1.1.1.2.cmml" type="float" xref="S4.T2.4.4.1.m1.1.1.2">0.0217</cn><cn id="S4.T2.4.4.1.m1.1.1.3.cmml" type="float" xref="S4.T2.4.4.1.m1.1.1.3">0.0415</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.1.m1.1c">0.0217\pm 0.0415</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.1.m1.1d">0.0217 ± 0.0415</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.2">Random Forest</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.1"><math alttext="0.0199\pm 0.0398" class="ltx_Math" display="inline" id="S4.T2.5.5.1.m1.1"><semantics id="S4.T2.5.5.1.m1.1a"><mrow id="S4.T2.5.5.1.m1.1.1" xref="S4.T2.5.5.1.m1.1.1.cmml"><mn id="S4.T2.5.5.1.m1.1.1.2" xref="S4.T2.5.5.1.m1.1.1.2.cmml">0.0199</mn><mo id="S4.T2.5.5.1.m1.1.1.1" xref="S4.T2.5.5.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.5.5.1.m1.1.1.3" xref="S4.T2.5.5.1.m1.1.1.3.cmml">0.0398</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.1.m1.1b"><apply id="S4.T2.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.5.5.1.m1.1.1.2.cmml" type="float" xref="S4.T2.5.5.1.m1.1.1.2">0.0199</cn><cn id="S4.T2.5.5.1.m1.1.1.3.cmml" type="float" xref="S4.T2.5.5.1.m1.1.1.3">0.0398</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.1.m1.1c">0.0199\pm 0.0398</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.1.m1.1d">0.0199 ± 0.0398</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.6.6.2">Prophet</td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.1"><math alttext="0.0155\pm 0.0295" class="ltx_Math" display="inline" id="S4.T2.6.6.1.m1.1"><semantics id="S4.T2.6.6.1.m1.1a"><mrow id="S4.T2.6.6.1.m1.1.1" xref="S4.T2.6.6.1.m1.1.1.cmml"><mn id="S4.T2.6.6.1.m1.1.1.2" xref="S4.T2.6.6.1.m1.1.1.2.cmml">0.0155</mn><mo id="S4.T2.6.6.1.m1.1.1.1" xref="S4.T2.6.6.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.6.6.1.m1.1.1.3" xref="S4.T2.6.6.1.m1.1.1.3.cmml">0.0295</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.1.m1.1b"><apply id="S4.T2.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.6.6.1.m1.1.1.1.cmml" xref="S4.T2.6.6.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.6.6.1.m1.1.1.2.cmml" type="float" xref="S4.T2.6.6.1.m1.1.1.2">0.0155</cn><cn id="S4.T2.6.6.1.m1.1.1.3.cmml" type="float" xref="S4.T2.6.6.1.m1.1.1.3">0.0295</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.1.m1.1c">0.0155\pm 0.0295</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.1.m1.1d">0.0155 ± 0.0295</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.7.7.2">Gaussian Process</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.1"><math alttext="0.1661\pm 0.2104" class="ltx_Math" display="inline" id="S4.T2.7.7.1.m1.1"><semantics id="S4.T2.7.7.1.m1.1a"><mrow id="S4.T2.7.7.1.m1.1.1" xref="S4.T2.7.7.1.m1.1.1.cmml"><mn id="S4.T2.7.7.1.m1.1.1.2" xref="S4.T2.7.7.1.m1.1.1.2.cmml">0.1661</mn><mo id="S4.T2.7.7.1.m1.1.1.1" xref="S4.T2.7.7.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.7.7.1.m1.1.1.3" xref="S4.T2.7.7.1.m1.1.1.3.cmml">0.2104</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.1.m1.1b"><apply id="S4.T2.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.7.7.1.m1.1.1.1.cmml" xref="S4.T2.7.7.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.7.7.1.m1.1.1.2.cmml" type="float" xref="S4.T2.7.7.1.m1.1.1.2">0.1661</cn><cn id="S4.T2.7.7.1.m1.1.1.3.cmml" type="float" xref="S4.T2.7.7.1.m1.1.1.3">0.2104</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.1.m1.1c">0.1661\pm 0.2104</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.1.m1.1d">0.1661 ± 0.2104</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.8.8.2">VAR</td>
<td class="ltx_td ltx_align_center" id="S4.T2.8.8.1"><math alttext="0.0602\pm 0.1260" class="ltx_Math" display="inline" id="S4.T2.8.8.1.m1.1"><semantics id="S4.T2.8.8.1.m1.1a"><mrow id="S4.T2.8.8.1.m1.1.1" xref="S4.T2.8.8.1.m1.1.1.cmml"><mn id="S4.T2.8.8.1.m1.1.1.2" xref="S4.T2.8.8.1.m1.1.1.2.cmml">0.0602</mn><mo id="S4.T2.8.8.1.m1.1.1.1" xref="S4.T2.8.8.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.8.8.1.m1.1.1.3" xref="S4.T2.8.8.1.m1.1.1.3.cmml">0.1260</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.1.m1.1b"><apply id="S4.T2.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.8.8.1.m1.1.1.1.cmml" xref="S4.T2.8.8.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.8.8.1.m1.1.1.2.cmml" type="float" xref="S4.T2.8.8.1.m1.1.1.2">0.0602</cn><cn id="S4.T2.8.8.1.m1.1.1.3.cmml" type="float" xref="S4.T2.8.8.1.m1.1.1.3">0.1260</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.1.m1.1c">0.0602\pm 0.1260</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.1.m1.1d">0.0602 ± 0.1260</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.9.9.2" rowspan="2"><span class="ltx_text" id="S4.T2.9.9.2.1">Meta learner</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.9.9.3">ISAC</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.9.1"><math alttext="\mathbf{0.0071\pm 0.0145}" class="ltx_Math" display="inline" id="S4.T2.9.9.1.m1.1"><semantics id="S4.T2.9.9.1.m1.1a"><mrow id="S4.T2.9.9.1.m1.1.1" xref="S4.T2.9.9.1.m1.1.1.cmml"><mn class="ltx_mathvariant_bold" id="S4.T2.9.9.1.m1.1.1.2" mathvariant="bold" xref="S4.T2.9.9.1.m1.1.1.2.cmml">0.0071</mn><mo id="S4.T2.9.9.1.m1.1.1.1" xref="S4.T2.9.9.1.m1.1.1.1.cmml">±</mo><mn class="ltx_mathvariant_bold" id="S4.T2.9.9.1.m1.1.1.3" mathvariant="bold" xref="S4.T2.9.9.1.m1.1.1.3.cmml">0.0145</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.1.m1.1b"><apply id="S4.T2.9.9.1.m1.1.1.cmml" xref="S4.T2.9.9.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.9.9.1.m1.1.1.1.cmml" xref="S4.T2.9.9.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.9.9.1.m1.1.1.2.cmml" type="float" xref="S4.T2.9.9.1.m1.1.1.2">0.0071</cn><cn id="S4.T2.9.9.1.m1.1.1.3.cmml" type="float" xref="S4.T2.9.9.1.m1.1.1.3">0.0145</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.1.m1.1c">\mathbf{0.0071\pm 0.0145}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.1.m1.1d">bold_0.0071 ± bold_0.0145</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.10.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.10.10.2">MLP</td>
<td class="ltx_td ltx_align_center" id="S4.T2.10.10.1"><math alttext="0.0351\pm 0.1186" class="ltx_Math" display="inline" id="S4.T2.10.10.1.m1.1"><semantics id="S4.T2.10.10.1.m1.1a"><mrow id="S4.T2.10.10.1.m1.1.1" xref="S4.T2.10.10.1.m1.1.1.cmml"><mn id="S4.T2.10.10.1.m1.1.1.2" xref="S4.T2.10.10.1.m1.1.1.2.cmml">0.0351</mn><mo id="S4.T2.10.10.1.m1.1.1.1" xref="S4.T2.10.10.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.10.10.1.m1.1.1.3" xref="S4.T2.10.10.1.m1.1.1.3.cmml">0.1186</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.1.m1.1b"><apply id="S4.T2.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.10.10.1.m1.1.1.1.cmml" xref="S4.T2.10.10.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.10.10.1.m1.1.1.2.cmml" type="float" xref="S4.T2.10.10.1.m1.1.1.2">0.0351</cn><cn id="S4.T2.10.10.1.m1.1.1.3.cmml" type="float" xref="S4.T2.10.10.1.m1.1.1.3">0.1186</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.1.m1.1c">0.0351\pm 0.1186</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.1.m1.1d">0.0351 ± 0.1186</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.11.11.2" rowspan="3"><span class="ltx_text" id="S4.T2.11.11.2.1">LLM based</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.11.11.3">Ours-Llama3.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.11.11.1"><math alttext="\underline{0.0081\pm 0.0297}" class="ltx_Math" display="inline" id="S4.T2.11.11.1.m1.1"><semantics id="S4.T2.11.11.1.m1.1a"><munder accentunder="true" id="S4.T2.11.11.1.m1.1.1" xref="S4.T2.11.11.1.m1.1.1.cmml"><mrow id="S4.T2.11.11.1.m1.1.1.2" xref="S4.T2.11.11.1.m1.1.1.2.cmml"><mn id="S4.T2.11.11.1.m1.1.1.2.2" xref="S4.T2.11.11.1.m1.1.1.2.2.cmml">0.0081</mn><mo id="S4.T2.11.11.1.m1.1.1.2.1" xref="S4.T2.11.11.1.m1.1.1.2.1.cmml">±</mo><mn id="S4.T2.11.11.1.m1.1.1.2.3" xref="S4.T2.11.11.1.m1.1.1.2.3.cmml">0.0297</mn></mrow><mo id="S4.T2.11.11.1.m1.1.1.1" xref="S4.T2.11.11.1.m1.1.1.1.cmml">¯</mo></munder><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.1.m1.1b"><apply id="S4.T2.11.11.1.m1.1.1.cmml" xref="S4.T2.11.11.1.m1.1.1"><ci id="S4.T2.11.11.1.m1.1.1.1.cmml" xref="S4.T2.11.11.1.m1.1.1.1">¯</ci><apply id="S4.T2.11.11.1.m1.1.1.2.cmml" xref="S4.T2.11.11.1.m1.1.1.2"><csymbol cd="latexml" id="S4.T2.11.11.1.m1.1.1.2.1.cmml" xref="S4.T2.11.11.1.m1.1.1.2.1">plus-or-minus</csymbol><cn id="S4.T2.11.11.1.m1.1.1.2.2.cmml" type="float" xref="S4.T2.11.11.1.m1.1.1.2.2">0.0081</cn><cn id="S4.T2.11.11.1.m1.1.1.2.3.cmml" type="float" xref="S4.T2.11.11.1.m1.1.1.2.3">0.0297</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.1.m1.1c">\underline{0.0081\pm 0.0297}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.1.m1.1d">under¯ start_ARG 0.0081 ± 0.0297 end_ARG</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.12.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.12.12.2">Ours-GPT4o</td>
<td class="ltx_td ltx_align_center" id="S4.T2.12.12.1"><math alttext="0.0234\pm 0.0596" class="ltx_Math" display="inline" id="S4.T2.12.12.1.m1.1"><semantics id="S4.T2.12.12.1.m1.1a"><mrow id="S4.T2.12.12.1.m1.1.1" xref="S4.T2.12.12.1.m1.1.1.cmml"><mn id="S4.T2.12.12.1.m1.1.1.2" xref="S4.T2.12.12.1.m1.1.1.2.cmml">0.0234</mn><mo id="S4.T2.12.12.1.m1.1.1.1" xref="S4.T2.12.12.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.12.12.1.m1.1.1.3" xref="S4.T2.12.12.1.m1.1.1.3.cmml">0.0596</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.1.m1.1b"><apply id="S4.T2.12.12.1.m1.1.1.cmml" xref="S4.T2.12.12.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.12.12.1.m1.1.1.1.cmml" xref="S4.T2.12.12.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.12.12.1.m1.1.1.2.cmml" type="float" xref="S4.T2.12.12.1.m1.1.1.2">0.0234</cn><cn id="S4.T2.12.12.1.m1.1.1.3.cmml" type="float" xref="S4.T2.12.12.1.m1.1.1.3">0.0596</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.1.m1.1c">0.0234\pm 0.0596</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.1.m1.1d">0.0234 ± 0.0596</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T2.13.13.2">Ours-Gemini2.0 flash</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.13.13.1"><math alttext="0.0169\pm 0.0407" class="ltx_Math" display="inline" id="S4.T2.13.13.1.m1.1"><semantics id="S4.T2.13.13.1.m1.1a"><mrow id="S4.T2.13.13.1.m1.1.1" xref="S4.T2.13.13.1.m1.1.1.cmml"><mn id="S4.T2.13.13.1.m1.1.1.2" xref="S4.T2.13.13.1.m1.1.1.2.cmml">0.0169</mn><mo id="S4.T2.13.13.1.m1.1.1.1" xref="S4.T2.13.13.1.m1.1.1.1.cmml">±</mo><mn id="S4.T2.13.13.1.m1.1.1.3" xref="S4.T2.13.13.1.m1.1.1.3.cmml">0.0407</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.1.m1.1b"><apply id="S4.T2.13.13.1.m1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1"><csymbol cd="latexml" id="S4.T2.13.13.1.m1.1.1.1.cmml" xref="S4.T2.13.13.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T2.13.13.1.m1.1.1.2.cmml" type="float" xref="S4.T2.13.13.1.m1.1.1.2">0.0169</cn><cn id="S4.T2.13.13.1.m1.1.1.3.cmml" type="float" xref="S4.T2.13.13.1.m1.1.1.3">0.0407</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.1.m1.1c">0.0169\pm 0.0407</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.1.m1.1d">0.0169 ± 0.0407</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a comparison of the Mean Squared Error (MSE) for one-step-ahead time series forecasting across different methods.  Lower MSE values indicate better forecasting accuracy. The methods compared include several baselines (no model selection, selecting a popular model, and meta-learners like ISAC and MLP), along with the proposed LLM-based model selection approach using three different LLMs (Llama 3.2, GPT-40, and Gemini 2.0). The table shows that the models selected by the LLMs achieve a MSE that is only slightly higher than the best performing meta-learner and is substantially better than the baseline methods.
> <details>
> <summary>read the caption</summary>
> Table 2: Results for one-step ahead forecasting (MSE; the lower (↓↓\downarrow↓) the better). The selected model by LLMs yields second best performance compared to baseline meta-learners and SOTA methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.24">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.24.25.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.24.25.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.24.25.1.1.1">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.24.25.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.24.25.1.2.1">Input Tokens</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.24.25.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.24.25.1.3.1">Output Tokens</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.24.26.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.24.26.1.1">Ours-Llama3.2</th>
<td class="ltx_td ltx_border_t" id="S4.T3.24.26.1.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.24.26.1.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.2.2.3">w. data</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1"><math alttext="661.35\pm 1.16" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mn id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">661.35</mn><mo id="S4.T3.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">1.16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.1.1.1.m1.1.1.2.cmml" type="float" xref="S4.T3.1.1.1.m1.1.1.2">661.35</cn><cn id="S4.T3.1.1.1.m1.1.1.3.cmml" type="float" xref="S4.T3.1.1.1.m1.1.1.3">1.16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">661.35\pm 1.16</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">661.35 ± 1.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2"><math alttext="157.14\pm 508.51" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mn id="S4.T3.2.2.2.m1.1.1.2" xref="S4.T3.2.2.2.m1.1.1.2.cmml">157.14</mn><mo id="S4.T3.2.2.2.m1.1.1.1" xref="S4.T3.2.2.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.m1.1.1.3.cmml">508.51</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.2.2.2.m1.1.1.2.cmml" type="float" xref="S4.T3.2.2.2.m1.1.1.2">157.14</cn><cn id="S4.T3.2.2.2.m1.1.1.3.cmml" type="float" xref="S4.T3.2.2.2.m1.1.1.3">508.51</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">157.14\pm 508.51</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">157.14 ± 508.51</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.4.4.3">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.1"><math alttext="739.35\pm 1.16" class="ltx_Math" display="inline" id="S4.T3.3.3.1.m1.1"><semantics id="S4.T3.3.3.1.m1.1a"><mrow id="S4.T3.3.3.1.m1.1.1" xref="S4.T3.3.3.1.m1.1.1.cmml"><mn id="S4.T3.3.3.1.m1.1.1.2" xref="S4.T3.3.3.1.m1.1.1.2.cmml">739.35</mn><mo id="S4.T3.3.3.1.m1.1.1.1" xref="S4.T3.3.3.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.3.3.1.m1.1.1.3" xref="S4.T3.3.3.1.m1.1.1.3.cmml">1.16</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.1.m1.1b"><apply id="S4.T3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.3.3.1.m1.1.1.1.cmml" xref="S4.T3.3.3.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.3.3.1.m1.1.1.2.cmml" type="float" xref="S4.T3.3.3.1.m1.1.1.2">739.35</cn><cn id="S4.T3.3.3.1.m1.1.1.3.cmml" type="float" xref="S4.T3.3.3.1.m1.1.1.3">1.16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.1.m1.1c">739.35\pm 1.16</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.1.m1.1d">739.35 ± 1.16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.2"><math alttext="519.00\pm 1445.28" class="ltx_Math" display="inline" id="S4.T3.4.4.2.m1.1"><semantics id="S4.T3.4.4.2.m1.1a"><mrow id="S4.T3.4.4.2.m1.1.1" xref="S4.T3.4.4.2.m1.1.1.cmml"><mn id="S4.T3.4.4.2.m1.1.1.2" xref="S4.T3.4.4.2.m1.1.1.2.cmml">519.00</mn><mo id="S4.T3.4.4.2.m1.1.1.1" xref="S4.T3.4.4.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.4.4.2.m1.1.1.3" xref="S4.T3.4.4.2.m1.1.1.3.cmml">1445.28</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.2.m1.1b"><apply id="S4.T3.4.4.2.m1.1.1.cmml" xref="S4.T3.4.4.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.4.4.2.m1.1.1.1.cmml" xref="S4.T3.4.4.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.4.4.2.m1.1.1.2.cmml" type="float" xref="S4.T3.4.4.2.m1.1.1.2">519.00</cn><cn id="S4.T3.4.4.2.m1.1.1.3.cmml" type="float" xref="S4.T3.4.4.2.m1.1.1.3">1445.28</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.2.m1.1c">519.00\pm 1445.28</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.2.m1.1d">519.00 ± 1445.28</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.6.6.3">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.1"><math alttext="20547.43\pm 125.70" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mrow id="S4.T3.5.5.1.m1.1.1" xref="S4.T3.5.5.1.m1.1.1.cmml"><mn id="S4.T3.5.5.1.m1.1.1.2" xref="S4.T3.5.5.1.m1.1.1.2.cmml">20547.43</mn><mo id="S4.T3.5.5.1.m1.1.1.1" xref="S4.T3.5.5.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.5.5.1.m1.1.1.3" xref="S4.T3.5.5.1.m1.1.1.3.cmml">125.70</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><apply id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.5.5.1.m1.1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.5.5.1.m1.1.1.2.cmml" type="float" xref="S4.T3.5.5.1.m1.1.1.2">20547.43</cn><cn id="S4.T3.5.5.1.m1.1.1.3.cmml" type="float" xref="S4.T3.5.5.1.m1.1.1.3">125.70</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">20547.43\pm 125.70</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">20547.43 ± 125.70</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2"><math alttext="116.75\pm 274.24" class="ltx_Math" display="inline" id="S4.T3.6.6.2.m1.1"><semantics id="S4.T3.6.6.2.m1.1a"><mrow id="S4.T3.6.6.2.m1.1.1" xref="S4.T3.6.6.2.m1.1.1.cmml"><mn id="S4.T3.6.6.2.m1.1.1.2" xref="S4.T3.6.6.2.m1.1.1.2.cmml">116.75</mn><mo id="S4.T3.6.6.2.m1.1.1.1" xref="S4.T3.6.6.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.6.6.2.m1.1.1.3" xref="S4.T3.6.6.2.m1.1.1.3.cmml">274.24</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.2.m1.1b"><apply id="S4.T3.6.6.2.m1.1.1.cmml" xref="S4.T3.6.6.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.6.6.2.m1.1.1.1.cmml" xref="S4.T3.6.6.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.6.6.2.m1.1.1.2.cmml" type="float" xref="S4.T3.6.6.2.m1.1.1.2">116.75</cn><cn id="S4.T3.6.6.2.m1.1.1.3.cmml" type="float" xref="S4.T3.6.6.2.m1.1.1.3">274.24</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.2.m1.1c">116.75\pm 274.24</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.2.m1.1d">116.75 ± 274.24</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.8.8.3">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.7.7.1"><math alttext="20632.43\pm 125.70" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mrow id="S4.T3.7.7.1.m1.1.1" xref="S4.T3.7.7.1.m1.1.1.cmml"><mn id="S4.T3.7.7.1.m1.1.1.2" xref="S4.T3.7.7.1.m1.1.1.2.cmml">20632.43</mn><mo id="S4.T3.7.7.1.m1.1.1.1" xref="S4.T3.7.7.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.7.7.1.m1.1.1.3" xref="S4.T3.7.7.1.m1.1.1.3.cmml">125.70</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><apply id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.7.7.1.m1.1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.7.7.1.m1.1.1.2.cmml" type="float" xref="S4.T3.7.7.1.m1.1.1.2">20632.43</cn><cn id="S4.T3.7.7.1.m1.1.1.3.cmml" type="float" xref="S4.T3.7.7.1.m1.1.1.3">125.70</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">20632.43\pm 125.70</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">20632.43 ± 125.70</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.8.2"><math alttext="350.21\pm 931.21" class="ltx_Math" display="inline" id="S4.T3.8.8.2.m1.1"><semantics id="S4.T3.8.8.2.m1.1a"><mrow id="S4.T3.8.8.2.m1.1.1" xref="S4.T3.8.8.2.m1.1.1.cmml"><mn id="S4.T3.8.8.2.m1.1.1.2" xref="S4.T3.8.8.2.m1.1.1.2.cmml">350.21</mn><mo id="S4.T3.8.8.2.m1.1.1.1" xref="S4.T3.8.8.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.8.8.2.m1.1.1.3" xref="S4.T3.8.8.2.m1.1.1.3.cmml">931.21</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.2.m1.1b"><apply id="S4.T3.8.8.2.m1.1.1.cmml" xref="S4.T3.8.8.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.8.8.2.m1.1.1.1.cmml" xref="S4.T3.8.8.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.8.8.2.m1.1.1.2.cmml" type="float" xref="S4.T3.8.8.2.m1.1.1.2">350.21</cn><cn id="S4.T3.8.8.2.m1.1.1.3.cmml" type="float" xref="S4.T3.8.8.2.m1.1.1.3">931.21</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.2.m1.1c">350.21\pm 931.21</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.2.m1.1d">350.21 ± 931.21</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.27.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.24.27.2.1">Ours-GPT4o</th>
<td class="ltx_td ltx_border_t" id="S4.T3.24.27.2.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.24.27.2.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.10.10.3">w. data</th>
<td class="ltx_td ltx_align_center" id="S4.T3.9.9.1"><math alttext="2418.98\pm 1472.00" class="ltx_Math" display="inline" id="S4.T3.9.9.1.m1.1"><semantics id="S4.T3.9.9.1.m1.1a"><mrow id="S4.T3.9.9.1.m1.1.1" xref="S4.T3.9.9.1.m1.1.1.cmml"><mn id="S4.T3.9.9.1.m1.1.1.2" xref="S4.T3.9.9.1.m1.1.1.2.cmml">2418.98</mn><mo id="S4.T3.9.9.1.m1.1.1.1" xref="S4.T3.9.9.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.9.9.1.m1.1.1.3" xref="S4.T3.9.9.1.m1.1.1.3.cmml">1472.00</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.1.m1.1b"><apply id="S4.T3.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.9.9.1.m1.1.1.1.cmml" xref="S4.T3.9.9.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.9.9.1.m1.1.1.2.cmml" type="float" xref="S4.T3.9.9.1.m1.1.1.2">2418.98</cn><cn id="S4.T3.9.9.1.m1.1.1.3.cmml" type="float" xref="S4.T3.9.9.1.m1.1.1.3">1472.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.1.m1.1c">2418.98\pm 1472.00</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.1.m1.1d">2418.98 ± 1472.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.10.10.2"><math alttext="68.89\pm 7.32" class="ltx_Math" display="inline" id="S4.T3.10.10.2.m1.1"><semantics id="S4.T3.10.10.2.m1.1a"><mrow id="S4.T3.10.10.2.m1.1.1" xref="S4.T3.10.10.2.m1.1.1.cmml"><mn id="S4.T3.10.10.2.m1.1.1.2" xref="S4.T3.10.10.2.m1.1.1.2.cmml">68.89</mn><mo id="S4.T3.10.10.2.m1.1.1.1" xref="S4.T3.10.10.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.10.10.2.m1.1.1.3" xref="S4.T3.10.10.2.m1.1.1.3.cmml">7.32</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.2.m1.1b"><apply id="S4.T3.10.10.2.m1.1.1.cmml" xref="S4.T3.10.10.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.10.10.2.m1.1.1.1.cmml" xref="S4.T3.10.10.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.10.10.2.m1.1.1.2.cmml" type="float" xref="S4.T3.10.10.2.m1.1.1.2">68.89</cn><cn id="S4.T3.10.10.2.m1.1.1.3.cmml" type="float" xref="S4.T3.10.10.2.m1.1.1.3">7.32</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.2.m1.1c">68.89\pm 7.32</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.2.m1.1d">68.89 ± 7.32</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.12.12.3">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.11.11.1"><math alttext="2711.98\pm 1472.00" class="ltx_Math" display="inline" id="S4.T3.11.11.1.m1.1"><semantics id="S4.T3.11.11.1.m1.1a"><mrow id="S4.T3.11.11.1.m1.1.1" xref="S4.T3.11.11.1.m1.1.1.cmml"><mn id="S4.T3.11.11.1.m1.1.1.2" xref="S4.T3.11.11.1.m1.1.1.2.cmml">2711.98</mn><mo id="S4.T3.11.11.1.m1.1.1.1" xref="S4.T3.11.11.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.11.11.1.m1.1.1.3" xref="S4.T3.11.11.1.m1.1.1.3.cmml">1472.00</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.1.m1.1b"><apply id="S4.T3.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.11.11.1.m1.1.1.1.cmml" xref="S4.T3.11.11.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.11.11.1.m1.1.1.2.cmml" type="float" xref="S4.T3.11.11.1.m1.1.1.2">2711.98</cn><cn id="S4.T3.11.11.1.m1.1.1.3.cmml" type="float" xref="S4.T3.11.11.1.m1.1.1.3">1472.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.1.m1.1c">2711.98\pm 1472.00</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.1.m1.1d">2711.98 ± 1472.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.12.12.2"><math alttext="297.18\pm 46.68" class="ltx_Math" display="inline" id="S4.T3.12.12.2.m1.1"><semantics id="S4.T3.12.12.2.m1.1a"><mrow id="S4.T3.12.12.2.m1.1.1" xref="S4.T3.12.12.2.m1.1.1.cmml"><mn id="S4.T3.12.12.2.m1.1.1.2" xref="S4.T3.12.12.2.m1.1.1.2.cmml">297.18</mn><mo id="S4.T3.12.12.2.m1.1.1.1" xref="S4.T3.12.12.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.12.12.2.m1.1.1.3" xref="S4.T3.12.12.2.m1.1.1.3.cmml">46.68</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.2.m1.1b"><apply id="S4.T3.12.12.2.m1.1.1.cmml" xref="S4.T3.12.12.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.12.12.2.m1.1.1.1.cmml" xref="S4.T3.12.12.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.12.12.2.m1.1.1.2.cmml" type="float" xref="S4.T3.12.12.2.m1.1.1.2">297.18</cn><cn id="S4.T3.12.12.2.m1.1.1.3.cmml" type="float" xref="S4.T3.12.12.2.m1.1.1.3">46.68</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.2.m1.1c">297.18\pm 46.68</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.2.m1.1d">297.18 ± 46.68</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.14.14.3">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S4.T3.13.13.1"><math alttext="22475.06\pm 1490.00" class="ltx_Math" display="inline" id="S4.T3.13.13.1.m1.1"><semantics id="S4.T3.13.13.1.m1.1a"><mrow id="S4.T3.13.13.1.m1.1.1" xref="S4.T3.13.13.1.m1.1.1.cmml"><mn id="S4.T3.13.13.1.m1.1.1.2" xref="S4.T3.13.13.1.m1.1.1.2.cmml">22475.06</mn><mo id="S4.T3.13.13.1.m1.1.1.1" xref="S4.T3.13.13.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.13.13.1.m1.1.1.3" xref="S4.T3.13.13.1.m1.1.1.3.cmml">1490.00</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.1.m1.1b"><apply id="S4.T3.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.13.13.1.m1.1.1.1.cmml" xref="S4.T3.13.13.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.13.13.1.m1.1.1.2.cmml" type="float" xref="S4.T3.13.13.1.m1.1.1.2">22475.06</cn><cn id="S4.T3.13.13.1.m1.1.1.3.cmml" type="float" xref="S4.T3.13.13.1.m1.1.1.3">1490.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.1.m1.1c">22475.06\pm 1490.00</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.1.m1.1d">22475.06 ± 1490.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.14.14.2"><math alttext="67.54\pm 8.37" class="ltx_Math" display="inline" id="S4.T3.14.14.2.m1.1"><semantics id="S4.T3.14.14.2.m1.1a"><mrow id="S4.T3.14.14.2.m1.1.1" xref="S4.T3.14.14.2.m1.1.1.cmml"><mn id="S4.T3.14.14.2.m1.1.1.2" xref="S4.T3.14.14.2.m1.1.1.2.cmml">67.54</mn><mo id="S4.T3.14.14.2.m1.1.1.1" xref="S4.T3.14.14.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.14.14.2.m1.1.1.3" xref="S4.T3.14.14.2.m1.1.1.3.cmml">8.37</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.2.m1.1b"><apply id="S4.T3.14.14.2.m1.1.1.cmml" xref="S4.T3.14.14.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.14.14.2.m1.1.1.1.cmml" xref="S4.T3.14.14.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.14.14.2.m1.1.1.2.cmml" type="float" xref="S4.T3.14.14.2.m1.1.1.2">67.54</cn><cn id="S4.T3.14.14.2.m1.1.1.3.cmml" type="float" xref="S4.T3.14.14.2.m1.1.1.3">8.37</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.2.m1.1c">67.54\pm 8.37</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.2.m1.1d">67.54 ± 8.37</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.16.16.3">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.15.15.1"><math alttext="22750.06\pm 1490.00" class="ltx_Math" display="inline" id="S4.T3.15.15.1.m1.1"><semantics id="S4.T3.15.15.1.m1.1a"><mrow id="S4.T3.15.15.1.m1.1.1" xref="S4.T3.15.15.1.m1.1.1.cmml"><mn id="S4.T3.15.15.1.m1.1.1.2" xref="S4.T3.15.15.1.m1.1.1.2.cmml">22750.06</mn><mo id="S4.T3.15.15.1.m1.1.1.1" xref="S4.T3.15.15.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.15.15.1.m1.1.1.3" xref="S4.T3.15.15.1.m1.1.1.3.cmml">1490.00</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.1.m1.1b"><apply id="S4.T3.15.15.1.m1.1.1.cmml" xref="S4.T3.15.15.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.15.15.1.m1.1.1.1.cmml" xref="S4.T3.15.15.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.15.15.1.m1.1.1.2.cmml" type="float" xref="S4.T3.15.15.1.m1.1.1.2">22750.06</cn><cn id="S4.T3.15.15.1.m1.1.1.3.cmml" type="float" xref="S4.T3.15.15.1.m1.1.1.3">1490.00</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.1.m1.1c">22750.06\pm 1490.00</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.1.m1.1d">22750.06 ± 1490.00</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.16.16.2"><math alttext="300.68\pm 46.50" class="ltx_Math" display="inline" id="S4.T3.16.16.2.m1.1"><semantics id="S4.T3.16.16.2.m1.1a"><mrow id="S4.T3.16.16.2.m1.1.1" xref="S4.T3.16.16.2.m1.1.1.cmml"><mn id="S4.T3.16.16.2.m1.1.1.2" xref="S4.T3.16.16.2.m1.1.1.2.cmml">300.68</mn><mo id="S4.T3.16.16.2.m1.1.1.1" xref="S4.T3.16.16.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.16.16.2.m1.1.1.3" xref="S4.T3.16.16.2.m1.1.1.3.cmml">46.50</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.2.m1.1b"><apply id="S4.T3.16.16.2.m1.1.1.cmml" xref="S4.T3.16.16.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.16.16.2.m1.1.1.1.cmml" xref="S4.T3.16.16.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.16.16.2.m1.1.1.2.cmml" type="float" xref="S4.T3.16.16.2.m1.1.1.2">300.68</cn><cn id="S4.T3.16.16.2.m1.1.1.3.cmml" type="float" xref="S4.T3.16.16.2.m1.1.1.3">46.50</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.2.m1.1c">300.68\pm 46.50</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.2.m1.1d">300.68 ± 46.50</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.28.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.24.28.3.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_border_t" id="S4.T3.24.28.3.2"></td>
<td class="ltx_td ltx_border_t" id="S4.T3.24.28.3.3"></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.18.18.3">w. data</th>
<td class="ltx_td ltx_align_center" id="S4.T3.17.17.1"><math alttext="3075.64\pm 2192.18" class="ltx_Math" display="inline" id="S4.T3.17.17.1.m1.1"><semantics id="S4.T3.17.17.1.m1.1a"><mrow id="S4.T3.17.17.1.m1.1.1" xref="S4.T3.17.17.1.m1.1.1.cmml"><mn id="S4.T3.17.17.1.m1.1.1.2" xref="S4.T3.17.17.1.m1.1.1.2.cmml">3075.64</mn><mo id="S4.T3.17.17.1.m1.1.1.1" xref="S4.T3.17.17.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.17.17.1.m1.1.1.3" xref="S4.T3.17.17.1.m1.1.1.3.cmml">2192.18</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.1.m1.1b"><apply id="S4.T3.17.17.1.m1.1.1.cmml" xref="S4.T3.17.17.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.17.17.1.m1.1.1.1.cmml" xref="S4.T3.17.17.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.17.17.1.m1.1.1.2.cmml" type="float" xref="S4.T3.17.17.1.m1.1.1.2">3075.64</cn><cn id="S4.T3.17.17.1.m1.1.1.3.cmml" type="float" xref="S4.T3.17.17.1.m1.1.1.3">2192.18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.1.m1.1c">3075.64\pm 2192.18</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.1.m1.1d">3075.64 ± 2192.18</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.18.18.2"><math alttext="84.33\pm 7.28" class="ltx_Math" display="inline" id="S4.T3.18.18.2.m1.1"><semantics id="S4.T3.18.18.2.m1.1a"><mrow id="S4.T3.18.18.2.m1.1.1" xref="S4.T3.18.18.2.m1.1.1.cmml"><mn id="S4.T3.18.18.2.m1.1.1.2" xref="S4.T3.18.18.2.m1.1.1.2.cmml">84.33</mn><mo id="S4.T3.18.18.2.m1.1.1.1" xref="S4.T3.18.18.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.18.18.2.m1.1.1.3" xref="S4.T3.18.18.2.m1.1.1.3.cmml">7.28</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.2.m1.1b"><apply id="S4.T3.18.18.2.m1.1.1.cmml" xref="S4.T3.18.18.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.18.18.2.m1.1.1.1.cmml" xref="S4.T3.18.18.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.18.18.2.m1.1.1.2.cmml" type="float" xref="S4.T3.18.18.2.m1.1.1.2">84.33</cn><cn id="S4.T3.18.18.2.m1.1.1.3.cmml" type="float" xref="S4.T3.18.18.2.m1.1.1.3">7.28</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.2.m1.1c">84.33\pm 7.28</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.2.m1.1d">84.33 ± 7.28</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.20.20">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.20.20.3">w. data+CoT</th>
<td class="ltx_td ltx_align_center" id="S4.T3.19.19.1"><math alttext="3075.64\pm 2192.18" class="ltx_Math" display="inline" id="S4.T3.19.19.1.m1.1"><semantics id="S4.T3.19.19.1.m1.1a"><mrow id="S4.T3.19.19.1.m1.1.1" xref="S4.T3.19.19.1.m1.1.1.cmml"><mn id="S4.T3.19.19.1.m1.1.1.2" xref="S4.T3.19.19.1.m1.1.1.2.cmml">3075.64</mn><mo id="S4.T3.19.19.1.m1.1.1.1" xref="S4.T3.19.19.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.19.19.1.m1.1.1.3" xref="S4.T3.19.19.1.m1.1.1.3.cmml">2192.18</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.19.19.1.m1.1b"><apply id="S4.T3.19.19.1.m1.1.1.cmml" xref="S4.T3.19.19.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.19.19.1.m1.1.1.1.cmml" xref="S4.T3.19.19.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.19.19.1.m1.1.1.2.cmml" type="float" xref="S4.T3.19.19.1.m1.1.1.2">3075.64</cn><cn id="S4.T3.19.19.1.m1.1.1.3.cmml" type="float" xref="S4.T3.19.19.1.m1.1.1.3">2192.18</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.19.19.1.m1.1c">3075.64\pm 2192.18</annotation><annotation encoding="application/x-llamapun" id="S4.T3.19.19.1.m1.1d">3075.64 ± 2192.18</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.20.20.2"><math alttext="340.53\pm 60.29" class="ltx_Math" display="inline" id="S4.T3.20.20.2.m1.1"><semantics id="S4.T3.20.20.2.m1.1a"><mrow id="S4.T3.20.20.2.m1.1.1" xref="S4.T3.20.20.2.m1.1.1.cmml"><mn id="S4.T3.20.20.2.m1.1.1.2" xref="S4.T3.20.20.2.m1.1.1.2.cmml">340.53</mn><mo id="S4.T3.20.20.2.m1.1.1.1" xref="S4.T3.20.20.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.20.20.2.m1.1.1.3" xref="S4.T3.20.20.2.m1.1.1.3.cmml">60.29</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.20.20.2.m1.1b"><apply id="S4.T3.20.20.2.m1.1.1.cmml" xref="S4.T3.20.20.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.20.20.2.m1.1.1.1.cmml" xref="S4.T3.20.20.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.20.20.2.m1.1.1.2.cmml" type="float" xref="S4.T3.20.20.2.m1.1.1.2">340.53</cn><cn id="S4.T3.20.20.2.m1.1.1.3.cmml" type="float" xref="S4.T3.20.20.2.m1.1.1.3">60.29</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.20.20.2.m1.1c">340.53\pm 60.29</annotation><annotation encoding="application/x-llamapun" id="S4.T3.20.20.2.m1.1d">340.53 ± 60.29</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.22.22">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row" id="S4.T3.22.22.3">w. data+meta_features</th>
<td class="ltx_td ltx_align_center" id="S4.T3.21.21.1"><math alttext="26761.32\pm 2267.30" class="ltx_Math" display="inline" id="S4.T3.21.21.1.m1.1"><semantics id="S4.T3.21.21.1.m1.1a"><mrow id="S4.T3.21.21.1.m1.1.1" xref="S4.T3.21.21.1.m1.1.1.cmml"><mn id="S4.T3.21.21.1.m1.1.1.2" xref="S4.T3.21.21.1.m1.1.1.2.cmml">26761.32</mn><mo id="S4.T3.21.21.1.m1.1.1.1" xref="S4.T3.21.21.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.21.21.1.m1.1.1.3" xref="S4.T3.21.21.1.m1.1.1.3.cmml">2267.30</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.21.21.1.m1.1b"><apply id="S4.T3.21.21.1.m1.1.1.cmml" xref="S4.T3.21.21.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.21.21.1.m1.1.1.1.cmml" xref="S4.T3.21.21.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.21.21.1.m1.1.1.2.cmml" type="float" xref="S4.T3.21.21.1.m1.1.1.2">26761.32</cn><cn id="S4.T3.21.21.1.m1.1.1.3.cmml" type="float" xref="S4.T3.21.21.1.m1.1.1.3">2267.30</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.21.21.1.m1.1c">26761.32\pm 2267.30</annotation><annotation encoding="application/x-llamapun" id="S4.T3.21.21.1.m1.1d">26761.32 ± 2267.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T3.22.22.2"><math alttext="80.99\pm 4.06" class="ltx_Math" display="inline" id="S4.T3.22.22.2.m1.1"><semantics id="S4.T3.22.22.2.m1.1a"><mrow id="S4.T3.22.22.2.m1.1.1" xref="S4.T3.22.22.2.m1.1.1.cmml"><mn id="S4.T3.22.22.2.m1.1.1.2" xref="S4.T3.22.22.2.m1.1.1.2.cmml">80.99</mn><mo id="S4.T3.22.22.2.m1.1.1.1" xref="S4.T3.22.22.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.22.22.2.m1.1.1.3" xref="S4.T3.22.22.2.m1.1.1.3.cmml">4.06</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.22.22.2.m1.1b"><apply id="S4.T3.22.22.2.m1.1.1.cmml" xref="S4.T3.22.22.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.22.22.2.m1.1.1.1.cmml" xref="S4.T3.22.22.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.22.22.2.m1.1.1.2.cmml" type="float" xref="S4.T3.22.22.2.m1.1.1.2">80.99</cn><cn id="S4.T3.22.22.2.m1.1.1.3.cmml" type="float" xref="S4.T3.22.22.2.m1.1.1.3">4.06</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.22.22.2.m1.1c">80.99\pm 4.06</annotation><annotation encoding="application/x-llamapun" id="S4.T3.22.22.2.m1.1d">80.99 ± 4.06</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.24.24">
<th class="ltx_td ltx_align_right ltx_th ltx_th_row ltx_border_bb" id="S4.T3.24.24.3">w. data+meta_features+CoT</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.23.23.1"><math alttext="27080.32\pm 2267.30" class="ltx_Math" display="inline" id="S4.T3.23.23.1.m1.1"><semantics id="S4.T3.23.23.1.m1.1a"><mrow id="S4.T3.23.23.1.m1.1.1" xref="S4.T3.23.23.1.m1.1.1.cmml"><mn id="S4.T3.23.23.1.m1.1.1.2" xref="S4.T3.23.23.1.m1.1.1.2.cmml">27080.32</mn><mo id="S4.T3.23.23.1.m1.1.1.1" xref="S4.T3.23.23.1.m1.1.1.1.cmml">±</mo><mn id="S4.T3.23.23.1.m1.1.1.3" xref="S4.T3.23.23.1.m1.1.1.3.cmml">2267.30</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.23.23.1.m1.1b"><apply id="S4.T3.23.23.1.m1.1.1.cmml" xref="S4.T3.23.23.1.m1.1.1"><csymbol cd="latexml" id="S4.T3.23.23.1.m1.1.1.1.cmml" xref="S4.T3.23.23.1.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.23.23.1.m1.1.1.2.cmml" type="float" xref="S4.T3.23.23.1.m1.1.1.2">27080.32</cn><cn id="S4.T3.23.23.1.m1.1.1.3.cmml" type="float" xref="S4.T3.23.23.1.m1.1.1.3">2267.30</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.23.23.1.m1.1c">27080.32\pm 2267.30</annotation><annotation encoding="application/x-llamapun" id="S4.T3.23.23.1.m1.1d">27080.32 ± 2267.30</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.24.24.2"><math alttext="352.31\pm 80.54" class="ltx_Math" display="inline" id="S4.T3.24.24.2.m1.1"><semantics id="S4.T3.24.24.2.m1.1a"><mrow id="S4.T3.24.24.2.m1.1.1" xref="S4.T3.24.24.2.m1.1.1.cmml"><mn id="S4.T3.24.24.2.m1.1.1.2" xref="S4.T3.24.24.2.m1.1.1.2.cmml">352.31</mn><mo id="S4.T3.24.24.2.m1.1.1.1" xref="S4.T3.24.24.2.m1.1.1.1.cmml">±</mo><mn id="S4.T3.24.24.2.m1.1.1.3" xref="S4.T3.24.24.2.m1.1.1.3.cmml">80.54</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.24.24.2.m1.1b"><apply id="S4.T3.24.24.2.m1.1.1.cmml" xref="S4.T3.24.24.2.m1.1.1"><csymbol cd="latexml" id="S4.T3.24.24.2.m1.1.1.1.cmml" xref="S4.T3.24.24.2.m1.1.1.1">plus-or-minus</csymbol><cn id="S4.T3.24.24.2.m1.1.1.2.cmml" type="float" xref="S4.T3.24.24.2.m1.1.1.2">352.31</cn><cn id="S4.T3.24.24.2.m1.1.1.3.cmml" type="float" xref="S4.T3.24.24.2.m1.1.1.3">80.54</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.24.24.2.m1.1c">352.31\pm 80.54</annotation><annotation encoding="application/x-llamapun" id="S4.T3.24.24.2.m1.1d">352.31 ± 80.54</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the number of input and output tokens used by different Large Language Models (LLMs) for each time series dataset during the model selection process.  The input tokens represent the prompt given to the LLM, incorporating elements such as dataset values, meta-features (where applicable), and chain-of-thought prompting (where applicable). The output tokens represent the LLM's response, which includes the selected forecasting model, hyperparameters, and reasoning steps (if Chain-of-Thought prompting was used). This table is crucial for understanding the computational cost and efficiency of using LLMs for model selection in time series forecasting.
> <details>
> <summary>read the caption</summary>
> Table 3: Input and output token count for each time series dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T4.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1.1">hit@<math alttext="k" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.1.m1.1a"><mi id="S4.T4.1.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.1.m1.1.1.cmml">k</mi><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.m1.1.1">𝑘</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.1.m1.1c">k</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.1.m1.1d">italic_k</annotation></semantics></math> accuracy</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_tt" id="S4.T4.1.1.1.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.2.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T4.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.3.1">Data Representation</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.2.1">
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.1.1">LLM Selection</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.1.2">Exponential Smoothing</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.2.1.3">Raw</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.3.2.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.1.3.2.1.1">hit@1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.3.2.2">Ours-Llama3.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.2.3.1">1.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2.4">1.04</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.3.2.5">0.31</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.4.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.4.3.1">Ours-GPT4o</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.2">0.52</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.3">0.62</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.4.3.4">0.31</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.5.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.5.4.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.2">0.21</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.3">0</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.5.4.4">0.42</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.6.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.6.5.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.1.6.5.1.1">hit@5</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.6.5.2">Ours-Llama3.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.6.5.3">4.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.6.5.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.5.4.1">4.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.6.5.5">3.32</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.7.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.7.6.1">Ours-GPT4o</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.2">2.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.3">2.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.7.6.4">1.66</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.8.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.8.7.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.2">0.62</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.3">0.31</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.8.7.4">2.18</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.9.8">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.9.8.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.1.9.8.1.1">hit@10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.9.8.2">Ours-Llama3.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.3">7.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.9.8.4.1">8.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.9.8.5">4.47</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.10.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.10.9.1">Ours-GPT4o</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.2">4.88</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.3">6.33</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.10.9.4">3.01</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.11.10">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.11.10.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.2">3.53</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.3">1.87</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.11.10.4">2.70</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.12.11">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.1.12.11.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.1.12.11.1.1">hit@50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T4.1.1.12.11.2">Ours-Llama3.2</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.11.3">29.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.11.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.12.11.4.1">31.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.1.12.11.5">14.23</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.13.12">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T4.1.1.13.12.1">Ours-GPT4o</th>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.2">21.91</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.3">23.36</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.1.13.12.4">11.84</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.1.14.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T4.1.1.14.13.1">Ours-Gemini2.0 flash</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.14.13.2">20.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.14.13.3">19.94</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.1.14.13.4">8.10</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the hit@k accuracy results of LLM-based model selection methods.  The hit@k metric measures the percentage of times the selected model ranks within the top k models based on actual performance.  The table compares the performance when the data representation (either raw data or exponential smoothing) is decided by the LLM model versus when it is set to a default (exponential smoothing or raw data). This allows for an assessment of how the LLM's choice of data representation affects the accuracy of model selection.
> <details>
> <summary>read the caption</summary>
> Table 4: hit@k𝑘kitalic_k accuracy of LLM-based model selection, where the data representation is either chosen by the LLM or defaults to Exponential Smoothing or Raw.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.1.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T5.1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.1.1">Forecasting Algorithm</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.2"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.2.1">HyperParameter(s)</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.3.1">Data Representation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T5.1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.1.1.4.1">Total</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.1">DeepAR</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.2">num_cells = [10,20,30,40,50]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.2.2.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.2.2.4">50</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.3.3">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.3.1"><cite class="ltx_cite ltx_citemacro_citep">(Salinas et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib24" title="">2019</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.3.3.2">num_rnn_layers = [1,2,3,4,5]</td>
<td class="ltx_td" id="A1.T5.1.1.3.3.3"></td>
<td class="ltx_td" id="A1.T5.1.1.3.3.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.4.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.4.4.1">DeepFactor</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.4.4.2">num_hidden_global = [10,20,30,40,50]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.4.4.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.4.4.4">50</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.5.5">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.5.1"><cite class="ltx_cite ltx_citemacro_citep">(Salinas et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib24" title="">2019</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.5.5.2">num_global_factors = [1,5,10,15,20]</td>
<td class="ltx_td" id="A1.T5.1.1.5.5.3"></td>
<td class="ltx_td" id="A1.T5.1.1.5.5.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.1">Prophet</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.2">changepoint_prior_scale = [0.001, 0.01, 0.1, 0.2, 0.5]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.6.6.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.6.6.4">50</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.7.7">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.7.1"><cite class="ltx_cite ltx_citemacro_citep">(Taylor &amp; Letham, <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib28" title="">2017</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.7.7.2">seasonality_prior_scale = [0.01, 0.1, 1.0, 5.0, 10.0]</td>
<td class="ltx_td" id="A1.T5.1.1.7.7.3"></td>
<td class="ltx_td" id="A1.T5.1.1.7.7.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.8.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.8.8.1">Seasonal Naive</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.8.8.2">season_length = [1,5,7,10,30]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.8.8.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.8.8.4">10</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.9.9">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.9.9.1"><cite class="ltx_cite ltx_citemacro_citep">(Montero-Manso et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib20" title="">2020</a>)</cite></td>
<td class="ltx_td" id="A1.T5.1.1.9.9.2"></td>
<td class="ltx_td" id="A1.T5.1.1.9.9.3"></td>
<td class="ltx_td" id="A1.T5.1.1.9.9.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.10.10">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.10.10.1">Gaussian Process</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.10.10.2">cardinality = [2,4,6,8,10]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.10.10.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.10.10.4">50</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.11.11">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.11.1"><cite class="ltx_cite ltx_citemacro_citep">(Yan et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib32" title="">2009</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.11.11.2">max_iter_jitter = [5,10,15,20,25]</td>
<td class="ltx_td" id="A1.T5.1.1.11.11.3"></td>
<td class="ltx_td" id="A1.T5.1.1.11.11.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.12.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.12.12.1">Vector Auto Regression</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.12.12.2">cov_type={“HC0”,“HC1”,“HC2”,“HC3”,“nonrobust”}</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.12.12.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.12.12.4">40</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.13.13">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.13.1"><cite class="ltx_cite ltx_citemacro_citep">(Lewis &amp; Reinsel, <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib16" title="">1985</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.13.13.2">trend = {‘n’, ‘c’, ‘t’, ‘ct’}</td>
<td class="ltx_td" id="A1.T5.1.1.13.13.3"></td>
<td class="ltx_td" id="A1.T5.1.1.13.13.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.14.14.1">Random Forest Regressor</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.14.14.2">n_estimators = [10,50,100,250,500,1000]</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.1.1.14.14.3">{Exp_smoothing, Raw}</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.1.1.14.14.4">72</td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.15.15">
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.15.1"><cite class="ltx_cite ltx_citemacro_citep">(Liaw &amp; Wiener, <a class="ltx_ref" href="https://arxiv.org/html/2504.02119v1#bib.bib18" title="">2001</a>)</cite></td>
<td class="ltx_td ltx_align_left" id="A1.T5.1.1.15.15.2">max_depth = [2,5,10,25,50,’None’]</td>
<td class="ltx_td" id="A1.T5.1.1.15.15.3"></td>
<td class="ltx_td" id="A1.T5.1.1.15.15.4"></td>
</tr>
<tr class="ltx_tr" id="A1.T5.1.1.16.16">
<td class="ltx_td ltx_border_bb ltx_border_t" id="A1.T5.1.1.16.16.1"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A1.T5.1.1.16.16.2"></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A1.T5.1.1.16.16.3"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T5.1.1.16.16.4"><span class="ltx_text ltx_font_bold" id="A1.T5.1.1.16.16.4.1">322</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 details the models used for time series forecasting in the study. It lists various forecasting algorithms from the GluonTS and statsmodels libraries, along with their hyperparameters and data representation methods (exponential smoothing or raw data). The last column shows the total number of unique models created by combining all possible hyperparameter and data representation options for each algorithm.
> <details>
> <summary>read the caption</summary>
> Table 5: Time-Series Forecasting Model Space. See hyperparameter definitions for various algorithms from GluonTS(Alexandrov et al., 2020) and statsmodels(Skipper Seabold & Josef Perktold, 2010). The number of models (last column) is all possible combinations of hyperparameters and data representations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.19">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T6.19.20.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.19.20.1.1"><span class="ltx_text ltx_font_bold" id="A1.T6.19.20.1.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.19.20.1.2"><span class="ltx_text ltx_font_bold" id="A1.T6.19.20.1.2.1">Training Time</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.19.20.1.3"><span class="ltx_text ltx_font_bold" id="A1.T6.19.20.1.3.1">Inference Time</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.2">Naïve</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.3">N/A</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1"><math alttext="70.9500\pm 1.7801" class="ltx_Math" display="inline" id="A1.T6.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.m1.1a"><mrow id="A1.T6.1.1.1.m1.1.1" xref="A1.T6.1.1.1.m1.1.1.cmml"><mn id="A1.T6.1.1.1.m1.1.1.2" xref="A1.T6.1.1.1.m1.1.1.2.cmml">70.9500</mn><mo id="A1.T6.1.1.1.m1.1.1.1" xref="A1.T6.1.1.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.1.1.1.m1.1.1.3" xref="A1.T6.1.1.1.m1.1.1.3.cmml">1.7801</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.m1.1b"><apply id="A1.T6.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.1.1.1.m1.1.1.1.cmml" xref="A1.T6.1.1.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.1.1.1.m1.1.1.2.cmml" type="float" xref="A1.T6.1.1.1.m1.1.1.2">70.9500</cn><cn id="A1.T6.1.1.1.m1.1.1.3.cmml" type="float" xref="A1.T6.1.1.1.m1.1.1.3">1.7801</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.m1.1c">70.9500\pm 1.7801</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.m1.1d">70.9500 ± 1.7801</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.4.4">
<td class="ltx_td ltx_align_center" id="A1.T6.2.2.1"><math alttext="ISAC^{*}" class="ltx_Math" display="inline" id="A1.T6.2.2.1.m1.1"><semantics id="A1.T6.2.2.1.m1.1a"><mrow id="A1.T6.2.2.1.m1.1.1" xref="A1.T6.2.2.1.m1.1.1.cmml"><mi id="A1.T6.2.2.1.m1.1.1.2" xref="A1.T6.2.2.1.m1.1.1.2.cmml">I</mi><mo id="A1.T6.2.2.1.m1.1.1.1" xref="A1.T6.2.2.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.2.2.1.m1.1.1.3" xref="A1.T6.2.2.1.m1.1.1.3.cmml">S</mi><mo id="A1.T6.2.2.1.m1.1.1.1a" xref="A1.T6.2.2.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.2.2.1.m1.1.1.4" xref="A1.T6.2.2.1.m1.1.1.4.cmml">A</mi><mo id="A1.T6.2.2.1.m1.1.1.1b" xref="A1.T6.2.2.1.m1.1.1.1.cmml">⁢</mo><msup id="A1.T6.2.2.1.m1.1.1.5" xref="A1.T6.2.2.1.m1.1.1.5.cmml"><mi id="A1.T6.2.2.1.m1.1.1.5.2" xref="A1.T6.2.2.1.m1.1.1.5.2.cmml">C</mi><mo id="A1.T6.2.2.1.m1.1.1.5.3" xref="A1.T6.2.2.1.m1.1.1.5.3.cmml">∗</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.1.m1.1b"><apply id="A1.T6.2.2.1.m1.1.1.cmml" xref="A1.T6.2.2.1.m1.1.1"><times id="A1.T6.2.2.1.m1.1.1.1.cmml" xref="A1.T6.2.2.1.m1.1.1.1"></times><ci id="A1.T6.2.2.1.m1.1.1.2.cmml" xref="A1.T6.2.2.1.m1.1.1.2">𝐼</ci><ci id="A1.T6.2.2.1.m1.1.1.3.cmml" xref="A1.T6.2.2.1.m1.1.1.3">𝑆</ci><ci id="A1.T6.2.2.1.m1.1.1.4.cmml" xref="A1.T6.2.2.1.m1.1.1.4">𝐴</ci><apply id="A1.T6.2.2.1.m1.1.1.5.cmml" xref="A1.T6.2.2.1.m1.1.1.5"><csymbol cd="ambiguous" id="A1.T6.2.2.1.m1.1.1.5.1.cmml" xref="A1.T6.2.2.1.m1.1.1.5">superscript</csymbol><ci id="A1.T6.2.2.1.m1.1.1.5.2.cmml" xref="A1.T6.2.2.1.m1.1.1.5.2">𝐶</ci><times id="A1.T6.2.2.1.m1.1.1.5.3.cmml" xref="A1.T6.2.2.1.m1.1.1.5.3"></times></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.1.m1.1c">ISAC^{*}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.1.m1.1d">italic_I italic_S italic_A italic_C start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.3.2"><math alttext="278.8083\pm 57.9900" class="ltx_Math" display="inline" id="A1.T6.3.3.2.m1.1"><semantics id="A1.T6.3.3.2.m1.1a"><mrow id="A1.T6.3.3.2.m1.1.1" xref="A1.T6.3.3.2.m1.1.1.cmml"><mn id="A1.T6.3.3.2.m1.1.1.2" xref="A1.T6.3.3.2.m1.1.1.2.cmml">278.8083</mn><mo id="A1.T6.3.3.2.m1.1.1.1" xref="A1.T6.3.3.2.m1.1.1.1.cmml">±</mo><mn id="A1.T6.3.3.2.m1.1.1.3" xref="A1.T6.3.3.2.m1.1.1.3.cmml">57.9900</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.2.m1.1b"><apply id="A1.T6.3.3.2.m1.1.1.cmml" xref="A1.T6.3.3.2.m1.1.1"><csymbol cd="latexml" id="A1.T6.3.3.2.m1.1.1.1.cmml" xref="A1.T6.3.3.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.3.3.2.m1.1.1.2.cmml" type="float" xref="A1.T6.3.3.2.m1.1.1.2">278.8083</cn><cn id="A1.T6.3.3.2.m1.1.1.3.cmml" type="float" xref="A1.T6.3.3.2.m1.1.1.3">57.9900</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.2.m1.1c">278.8083\pm 57.9900</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.2.m1.1d">278.8083 ± 57.9900</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.4.3"><math alttext="10.2480\pm 2.7182" class="ltx_Math" display="inline" id="A1.T6.4.4.3.m1.1"><semantics id="A1.T6.4.4.3.m1.1a"><mrow id="A1.T6.4.4.3.m1.1.1" xref="A1.T6.4.4.3.m1.1.1.cmml"><mn id="A1.T6.4.4.3.m1.1.1.2" xref="A1.T6.4.4.3.m1.1.1.2.cmml">10.2480</mn><mo id="A1.T6.4.4.3.m1.1.1.1" xref="A1.T6.4.4.3.m1.1.1.1.cmml">±</mo><mn id="A1.T6.4.4.3.m1.1.1.3" xref="A1.T6.4.4.3.m1.1.1.3.cmml">2.7182</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.3.m1.1b"><apply id="A1.T6.4.4.3.m1.1.1.cmml" xref="A1.T6.4.4.3.m1.1.1"><csymbol cd="latexml" id="A1.T6.4.4.3.m1.1.1.1.cmml" xref="A1.T6.4.4.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.4.4.3.m1.1.1.2.cmml" type="float" xref="A1.T6.4.4.3.m1.1.1.2">10.2480</cn><cn id="A1.T6.4.4.3.m1.1.1.3.cmml" type="float" xref="A1.T6.4.4.3.m1.1.1.3">2.7182</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.3.m1.1c">10.2480\pm 2.7182</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.3.m1.1d">10.2480 ± 2.7182</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.7">
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.1"><math alttext="MLP^{*}" class="ltx_Math" display="inline" id="A1.T6.5.5.1.m1.1"><semantics id="A1.T6.5.5.1.m1.1a"><mrow id="A1.T6.5.5.1.m1.1.1" xref="A1.T6.5.5.1.m1.1.1.cmml"><mi id="A1.T6.5.5.1.m1.1.1.2" xref="A1.T6.5.5.1.m1.1.1.2.cmml">M</mi><mo id="A1.T6.5.5.1.m1.1.1.1" xref="A1.T6.5.5.1.m1.1.1.1.cmml">⁢</mo><mi id="A1.T6.5.5.1.m1.1.1.3" xref="A1.T6.5.5.1.m1.1.1.3.cmml">L</mi><mo id="A1.T6.5.5.1.m1.1.1.1a" xref="A1.T6.5.5.1.m1.1.1.1.cmml">⁢</mo><msup id="A1.T6.5.5.1.m1.1.1.4" xref="A1.T6.5.5.1.m1.1.1.4.cmml"><mi id="A1.T6.5.5.1.m1.1.1.4.2" xref="A1.T6.5.5.1.m1.1.1.4.2.cmml">P</mi><mo id="A1.T6.5.5.1.m1.1.1.4.3" xref="A1.T6.5.5.1.m1.1.1.4.3.cmml">∗</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.1.m1.1b"><apply id="A1.T6.5.5.1.m1.1.1.cmml" xref="A1.T6.5.5.1.m1.1.1"><times id="A1.T6.5.5.1.m1.1.1.1.cmml" xref="A1.T6.5.5.1.m1.1.1.1"></times><ci id="A1.T6.5.5.1.m1.1.1.2.cmml" xref="A1.T6.5.5.1.m1.1.1.2">𝑀</ci><ci id="A1.T6.5.5.1.m1.1.1.3.cmml" xref="A1.T6.5.5.1.m1.1.1.3">𝐿</ci><apply id="A1.T6.5.5.1.m1.1.1.4.cmml" xref="A1.T6.5.5.1.m1.1.1.4"><csymbol cd="ambiguous" id="A1.T6.5.5.1.m1.1.1.4.1.cmml" xref="A1.T6.5.5.1.m1.1.1.4">superscript</csymbol><ci id="A1.T6.5.5.1.m1.1.1.4.2.cmml" xref="A1.T6.5.5.1.m1.1.1.4.2">𝑃</ci><times id="A1.T6.5.5.1.m1.1.1.4.3.cmml" xref="A1.T6.5.5.1.m1.1.1.4.3"></times></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.1.m1.1c">MLP^{*}</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.1.m1.1d">italic_M italic_L italic_P start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.6.6.2"><math alttext="705.2908\pm 123.3715" class="ltx_Math" display="inline" id="A1.T6.6.6.2.m1.1"><semantics id="A1.T6.6.6.2.m1.1a"><mrow id="A1.T6.6.6.2.m1.1.1" xref="A1.T6.6.6.2.m1.1.1.cmml"><mn id="A1.T6.6.6.2.m1.1.1.2" xref="A1.T6.6.6.2.m1.1.1.2.cmml">705.2908</mn><mo id="A1.T6.6.6.2.m1.1.1.1" xref="A1.T6.6.6.2.m1.1.1.1.cmml">±</mo><mn id="A1.T6.6.6.2.m1.1.1.3" xref="A1.T6.6.6.2.m1.1.1.3.cmml">123.3715</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.2.m1.1b"><apply id="A1.T6.6.6.2.m1.1.1.cmml" xref="A1.T6.6.6.2.m1.1.1"><csymbol cd="latexml" id="A1.T6.6.6.2.m1.1.1.1.cmml" xref="A1.T6.6.6.2.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.6.6.2.m1.1.1.2.cmml" type="float" xref="A1.T6.6.6.2.m1.1.1.2">705.2908</cn><cn id="A1.T6.6.6.2.m1.1.1.3.cmml" type="float" xref="A1.T6.6.6.2.m1.1.1.3">123.3715</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.2.m1.1c">705.2908\pm 123.3715</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.2.m1.1d">705.2908 ± 123.3715</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.7.3"><math alttext="1.2745\pm 0.5198" class="ltx_Math" display="inline" id="A1.T6.7.7.3.m1.1"><semantics id="A1.T6.7.7.3.m1.1a"><mrow id="A1.T6.7.7.3.m1.1.1" xref="A1.T6.7.7.3.m1.1.1.cmml"><mn id="A1.T6.7.7.3.m1.1.1.2" xref="A1.T6.7.7.3.m1.1.1.2.cmml">1.2745</mn><mo id="A1.T6.7.7.3.m1.1.1.1" xref="A1.T6.7.7.3.m1.1.1.1.cmml">±</mo><mn id="A1.T6.7.7.3.m1.1.1.3" xref="A1.T6.7.7.3.m1.1.1.3.cmml">0.5198</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.7.7.3.m1.1b"><apply id="A1.T6.7.7.3.m1.1.1.cmml" xref="A1.T6.7.7.3.m1.1.1"><csymbol cd="latexml" id="A1.T6.7.7.3.m1.1.1.1.cmml" xref="A1.T6.7.7.3.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.7.7.3.m1.1.1.2.cmml" type="float" xref="A1.T6.7.7.3.m1.1.1.2">1.2745</cn><cn id="A1.T6.7.7.3.m1.1.1.3.cmml" type="float" xref="A1.T6.7.7.3.m1.1.1.3">0.5198</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.7.7.3.m1.1c">1.2745\pm 0.5198</annotation><annotation encoding="application/x-llamapun" id="A1.T6.7.7.3.m1.1d">1.2745 ± 0.5198</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.19.21.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.19.21.2.1">Ours-Llama3.2</td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.21.2.2"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.21.2.3"></td>
</tr>
<tr class="ltx_tr" id="A1.T6.8.8">
<td class="ltx_td ltx_align_right" id="A1.T6.8.8.2">w. data</td>
<td class="ltx_td ltx_align_center" id="A1.T6.8.8.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.8.8.1"><math alttext="4.7201\pm 16.9481" class="ltx_Math" display="inline" id="A1.T6.8.8.1.m1.1"><semantics id="A1.T6.8.8.1.m1.1a"><mrow id="A1.T6.8.8.1.m1.1.1" xref="A1.T6.8.8.1.m1.1.1.cmml"><mn id="A1.T6.8.8.1.m1.1.1.2" xref="A1.T6.8.8.1.m1.1.1.2.cmml">4.7201</mn><mo id="A1.T6.8.8.1.m1.1.1.1" xref="A1.T6.8.8.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.8.8.1.m1.1.1.3" xref="A1.T6.8.8.1.m1.1.1.3.cmml">16.9481</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.8.8.1.m1.1b"><apply id="A1.T6.8.8.1.m1.1.1.cmml" xref="A1.T6.8.8.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.8.8.1.m1.1.1.1.cmml" xref="A1.T6.8.8.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.8.8.1.m1.1.1.2.cmml" type="float" xref="A1.T6.8.8.1.m1.1.1.2">4.7201</cn><cn id="A1.T6.8.8.1.m1.1.1.3.cmml" type="float" xref="A1.T6.8.8.1.m1.1.1.3">16.9481</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.8.8.1.m1.1c">4.7201\pm 16.9481</annotation><annotation encoding="application/x-llamapun" id="A1.T6.8.8.1.m1.1d">4.7201 ± 16.9481</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.9.9">
<td class="ltx_td ltx_align_right" id="A1.T6.9.9.2">w. data+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T6.9.9.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.9.9.1"><math alttext="11.6174\pm 32.7716" class="ltx_Math" display="inline" id="A1.T6.9.9.1.m1.1"><semantics id="A1.T6.9.9.1.m1.1a"><mrow id="A1.T6.9.9.1.m1.1.1" xref="A1.T6.9.9.1.m1.1.1.cmml"><mn id="A1.T6.9.9.1.m1.1.1.2" xref="A1.T6.9.9.1.m1.1.1.2.cmml">11.6174</mn><mo id="A1.T6.9.9.1.m1.1.1.1" xref="A1.T6.9.9.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.9.9.1.m1.1.1.3" xref="A1.T6.9.9.1.m1.1.1.3.cmml">32.7716</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.9.9.1.m1.1b"><apply id="A1.T6.9.9.1.m1.1.1.cmml" xref="A1.T6.9.9.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.9.9.1.m1.1.1.1.cmml" xref="A1.T6.9.9.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.9.9.1.m1.1.1.2.cmml" type="float" xref="A1.T6.9.9.1.m1.1.1.2">11.6174</cn><cn id="A1.T6.9.9.1.m1.1.1.3.cmml" type="float" xref="A1.T6.9.9.1.m1.1.1.3">32.7716</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.9.9.1.m1.1c">11.6174\pm 32.7716</annotation><annotation encoding="application/x-llamapun" id="A1.T6.9.9.1.m1.1d">11.6174 ± 32.7716</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.10.10">
<td class="ltx_td ltx_align_right" id="A1.T6.10.10.2">w. data+meta_features</td>
<td class="ltx_td ltx_align_center" id="A1.T6.10.10.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.10.10.1"><math alttext="6.7067\pm 17.8676" class="ltx_Math" display="inline" id="A1.T6.10.10.1.m1.1"><semantics id="A1.T6.10.10.1.m1.1a"><mrow id="A1.T6.10.10.1.m1.1.1" xref="A1.T6.10.10.1.m1.1.1.cmml"><mn id="A1.T6.10.10.1.m1.1.1.2" xref="A1.T6.10.10.1.m1.1.1.2.cmml">6.7067</mn><mo id="A1.T6.10.10.1.m1.1.1.1" xref="A1.T6.10.10.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.10.10.1.m1.1.1.3" xref="A1.T6.10.10.1.m1.1.1.3.cmml">17.8676</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.10.10.1.m1.1b"><apply id="A1.T6.10.10.1.m1.1.1.cmml" xref="A1.T6.10.10.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.10.10.1.m1.1.1.1.cmml" xref="A1.T6.10.10.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.10.10.1.m1.1.1.2.cmml" type="float" xref="A1.T6.10.10.1.m1.1.1.2">6.7067</cn><cn id="A1.T6.10.10.1.m1.1.1.3.cmml" type="float" xref="A1.T6.10.10.1.m1.1.1.3">17.8676</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.10.10.1.m1.1c">6.7067\pm 17.8676</annotation><annotation encoding="application/x-llamapun" id="A1.T6.10.10.1.m1.1d">6.7067 ± 17.8676</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.11.11">
<td class="ltx_td ltx_align_right" id="A1.T6.11.11.2">w. data+meta_features+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T6.11.11.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.11.11.1"><math alttext="17.1308\pm 50.1011" class="ltx_Math" display="inline" id="A1.T6.11.11.1.m1.1"><semantics id="A1.T6.11.11.1.m1.1a"><mrow id="A1.T6.11.11.1.m1.1.1" xref="A1.T6.11.11.1.m1.1.1.cmml"><mn id="A1.T6.11.11.1.m1.1.1.2" xref="A1.T6.11.11.1.m1.1.1.2.cmml">17.1308</mn><mo id="A1.T6.11.11.1.m1.1.1.1" xref="A1.T6.11.11.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.11.11.1.m1.1.1.3" xref="A1.T6.11.11.1.m1.1.1.3.cmml">50.1011</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.11.11.1.m1.1b"><apply id="A1.T6.11.11.1.m1.1.1.cmml" xref="A1.T6.11.11.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.11.11.1.m1.1.1.1.cmml" xref="A1.T6.11.11.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.11.11.1.m1.1.1.2.cmml" type="float" xref="A1.T6.11.11.1.m1.1.1.2">17.1308</cn><cn id="A1.T6.11.11.1.m1.1.1.3.cmml" type="float" xref="A1.T6.11.11.1.m1.1.1.3">50.1011</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.11.11.1.m1.1c">17.1308\pm 50.1011</annotation><annotation encoding="application/x-llamapun" id="A1.T6.11.11.1.m1.1d">17.1308 ± 50.1011</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.19.22.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.19.22.3.1">Ours-GPT4o</td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.22.3.2"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.22.3.3"></td>
</tr>
<tr class="ltx_tr" id="A1.T6.12.12">
<td class="ltx_td ltx_align_right" id="A1.T6.12.12.2">w. data</td>
<td class="ltx_td ltx_align_center" id="A1.T6.12.12.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.12.12.1"><math alttext="1.4905\pm 0.7234" class="ltx_Math" display="inline" id="A1.T6.12.12.1.m1.1"><semantics id="A1.T6.12.12.1.m1.1a"><mrow id="A1.T6.12.12.1.m1.1.1" xref="A1.T6.12.12.1.m1.1.1.cmml"><mn id="A1.T6.12.12.1.m1.1.1.2" xref="A1.T6.12.12.1.m1.1.1.2.cmml">1.4905</mn><mo id="A1.T6.12.12.1.m1.1.1.1" xref="A1.T6.12.12.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.12.12.1.m1.1.1.3" xref="A1.T6.12.12.1.m1.1.1.3.cmml">0.7234</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.12.12.1.m1.1b"><apply id="A1.T6.12.12.1.m1.1.1.cmml" xref="A1.T6.12.12.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.12.12.1.m1.1.1.1.cmml" xref="A1.T6.12.12.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.12.12.1.m1.1.1.2.cmml" type="float" xref="A1.T6.12.12.1.m1.1.1.2">1.4905</cn><cn id="A1.T6.12.12.1.m1.1.1.3.cmml" type="float" xref="A1.T6.12.12.1.m1.1.1.3">0.7234</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.12.12.1.m1.1c">1.4905\pm 0.7234</annotation><annotation encoding="application/x-llamapun" id="A1.T6.12.12.1.m1.1d">1.4905 ± 0.7234</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.13.13">
<td class="ltx_td ltx_align_right" id="A1.T6.13.13.2">w. data+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T6.13.13.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.13.13.1"><math alttext="4.7821\pm 2.0229" class="ltx_Math" display="inline" id="A1.T6.13.13.1.m1.1"><semantics id="A1.T6.13.13.1.m1.1a"><mrow id="A1.T6.13.13.1.m1.1.1" xref="A1.T6.13.13.1.m1.1.1.cmml"><mn id="A1.T6.13.13.1.m1.1.1.2" xref="A1.T6.13.13.1.m1.1.1.2.cmml">4.7821</mn><mo id="A1.T6.13.13.1.m1.1.1.1" xref="A1.T6.13.13.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.13.13.1.m1.1.1.3" xref="A1.T6.13.13.1.m1.1.1.3.cmml">2.0229</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.13.13.1.m1.1b"><apply id="A1.T6.13.13.1.m1.1.1.cmml" xref="A1.T6.13.13.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.13.13.1.m1.1.1.1.cmml" xref="A1.T6.13.13.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.13.13.1.m1.1.1.2.cmml" type="float" xref="A1.T6.13.13.1.m1.1.1.2">4.7821</cn><cn id="A1.T6.13.13.1.m1.1.1.3.cmml" type="float" xref="A1.T6.13.13.1.m1.1.1.3">2.0229</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.13.13.1.m1.1c">4.7821\pm 2.0229</annotation><annotation encoding="application/x-llamapun" id="A1.T6.13.13.1.m1.1d">4.7821 ± 2.0229</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.14.14">
<td class="ltx_td ltx_align_right" id="A1.T6.14.14.2">w. data+meta_features</td>
<td class="ltx_td ltx_align_center" id="A1.T6.14.14.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.14.14.1"><math alttext="2.4630\pm 0.7546" class="ltx_Math" display="inline" id="A1.T6.14.14.1.m1.1"><semantics id="A1.T6.14.14.1.m1.1a"><mrow id="A1.T6.14.14.1.m1.1.1" xref="A1.T6.14.14.1.m1.1.1.cmml"><mn id="A1.T6.14.14.1.m1.1.1.2" xref="A1.T6.14.14.1.m1.1.1.2.cmml">2.4630</mn><mo id="A1.T6.14.14.1.m1.1.1.1" xref="A1.T6.14.14.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.14.14.1.m1.1.1.3" xref="A1.T6.14.14.1.m1.1.1.3.cmml">0.7546</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.14.14.1.m1.1b"><apply id="A1.T6.14.14.1.m1.1.1.cmml" xref="A1.T6.14.14.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.14.14.1.m1.1.1.1.cmml" xref="A1.T6.14.14.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.14.14.1.m1.1.1.2.cmml" type="float" xref="A1.T6.14.14.1.m1.1.1.2">2.4630</cn><cn id="A1.T6.14.14.1.m1.1.1.3.cmml" type="float" xref="A1.T6.14.14.1.m1.1.1.3">0.7546</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.14.14.1.m1.1c">2.4630\pm 0.7546</annotation><annotation encoding="application/x-llamapun" id="A1.T6.14.14.1.m1.1d">2.4630 ± 0.7546</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.15.15">
<td class="ltx_td ltx_align_right" id="A1.T6.15.15.2">w. data+meta_features+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T6.15.15.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.15.15.1"><math alttext="5.2368\pm 1.4140" class="ltx_Math" display="inline" id="A1.T6.15.15.1.m1.1"><semantics id="A1.T6.15.15.1.m1.1a"><mrow id="A1.T6.15.15.1.m1.1.1" xref="A1.T6.15.15.1.m1.1.1.cmml"><mn id="A1.T6.15.15.1.m1.1.1.2" xref="A1.T6.15.15.1.m1.1.1.2.cmml">5.2368</mn><mo id="A1.T6.15.15.1.m1.1.1.1" xref="A1.T6.15.15.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.15.15.1.m1.1.1.3" xref="A1.T6.15.15.1.m1.1.1.3.cmml">1.4140</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.15.15.1.m1.1b"><apply id="A1.T6.15.15.1.m1.1.1.cmml" xref="A1.T6.15.15.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.15.15.1.m1.1.1.1.cmml" xref="A1.T6.15.15.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.15.15.1.m1.1.1.2.cmml" type="float" xref="A1.T6.15.15.1.m1.1.1.2">5.2368</cn><cn id="A1.T6.15.15.1.m1.1.1.3.cmml" type="float" xref="A1.T6.15.15.1.m1.1.1.3">1.4140</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.15.15.1.m1.1c">5.2368\pm 1.4140</annotation><annotation encoding="application/x-llamapun" id="A1.T6.15.15.1.m1.1d">5.2368 ± 1.4140</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.19.23.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.19.23.4.1">Ours-Gemini2.0 flash</td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.23.4.2"></td>
<td class="ltx_td ltx_border_t" id="A1.T6.19.23.4.3"></td>
</tr>
<tr class="ltx_tr" id="A1.T6.16.16">
<td class="ltx_td ltx_align_right" id="A1.T6.16.16.2">w. data</td>
<td class="ltx_td ltx_align_center" id="A1.T6.16.16.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.16.16.1"><math alttext="0.7780\pm 0.0543" class="ltx_Math" display="inline" id="A1.T6.16.16.1.m1.1"><semantics id="A1.T6.16.16.1.m1.1a"><mrow id="A1.T6.16.16.1.m1.1.1" xref="A1.T6.16.16.1.m1.1.1.cmml"><mn id="A1.T6.16.16.1.m1.1.1.2" xref="A1.T6.16.16.1.m1.1.1.2.cmml">0.7780</mn><mo id="A1.T6.16.16.1.m1.1.1.1" xref="A1.T6.16.16.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.16.16.1.m1.1.1.3" xref="A1.T6.16.16.1.m1.1.1.3.cmml">0.0543</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.16.16.1.m1.1b"><apply id="A1.T6.16.16.1.m1.1.1.cmml" xref="A1.T6.16.16.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.16.16.1.m1.1.1.1.cmml" xref="A1.T6.16.16.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.16.16.1.m1.1.1.2.cmml" type="float" xref="A1.T6.16.16.1.m1.1.1.2">0.7780</cn><cn id="A1.T6.16.16.1.m1.1.1.3.cmml" type="float" xref="A1.T6.16.16.1.m1.1.1.3">0.0543</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.16.16.1.m1.1c">0.7780\pm 0.0543</annotation><annotation encoding="application/x-llamapun" id="A1.T6.16.16.1.m1.1d">0.7780 ± 0.0543</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.17.17">
<td class="ltx_td ltx_align_right" id="A1.T6.17.17.2">w. data+CoT</td>
<td class="ltx_td ltx_align_center" id="A1.T6.17.17.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.17.17.1"><math alttext="2.1587\pm 0.3407" class="ltx_Math" display="inline" id="A1.T6.17.17.1.m1.1"><semantics id="A1.T6.17.17.1.m1.1a"><mrow id="A1.T6.17.17.1.m1.1.1" xref="A1.T6.17.17.1.m1.1.1.cmml"><mn id="A1.T6.17.17.1.m1.1.1.2" xref="A1.T6.17.17.1.m1.1.1.2.cmml">2.1587</mn><mo id="A1.T6.17.17.1.m1.1.1.1" xref="A1.T6.17.17.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.17.17.1.m1.1.1.3" xref="A1.T6.17.17.1.m1.1.1.3.cmml">0.3407</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.17.17.1.m1.1b"><apply id="A1.T6.17.17.1.m1.1.1.cmml" xref="A1.T6.17.17.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.17.17.1.m1.1.1.1.cmml" xref="A1.T6.17.17.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.17.17.1.m1.1.1.2.cmml" type="float" xref="A1.T6.17.17.1.m1.1.1.2">2.1587</cn><cn id="A1.T6.17.17.1.m1.1.1.3.cmml" type="float" xref="A1.T6.17.17.1.m1.1.1.3">0.3407</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.17.17.1.m1.1c">2.1587\pm 0.3407</annotation><annotation encoding="application/x-llamapun" id="A1.T6.17.17.1.m1.1d">2.1587 ± 0.3407</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.18.18">
<td class="ltx_td ltx_align_right" id="A1.T6.18.18.2">w. data+meta_features</td>
<td class="ltx_td ltx_align_center" id="A1.T6.18.18.3">N/A</td>
<td class="ltx_td ltx_align_center" id="A1.T6.18.18.1"><math alttext="0.9790\pm 0.0597" class="ltx_Math" display="inline" id="A1.T6.18.18.1.m1.1"><semantics id="A1.T6.18.18.1.m1.1a"><mrow id="A1.T6.18.18.1.m1.1.1" xref="A1.T6.18.18.1.m1.1.1.cmml"><mn id="A1.T6.18.18.1.m1.1.1.2" xref="A1.T6.18.18.1.m1.1.1.2.cmml">0.9790</mn><mo id="A1.T6.18.18.1.m1.1.1.1" xref="A1.T6.18.18.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.18.18.1.m1.1.1.3" xref="A1.T6.18.18.1.m1.1.1.3.cmml">0.0597</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.18.18.1.m1.1b"><apply id="A1.T6.18.18.1.m1.1.1.cmml" xref="A1.T6.18.18.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.18.18.1.m1.1.1.1.cmml" xref="A1.T6.18.18.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.18.18.1.m1.1.1.2.cmml" type="float" xref="A1.T6.18.18.1.m1.1.1.2">0.9790</cn><cn id="A1.T6.18.18.1.m1.1.1.3.cmml" type="float" xref="A1.T6.18.18.1.m1.1.1.3">0.0597</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.18.18.1.m1.1c">0.9790\pm 0.0597</annotation><annotation encoding="application/x-llamapun" id="A1.T6.18.18.1.m1.1d">0.9790 ± 0.0597</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T6.19.19">
<td class="ltx_td ltx_align_right ltx_border_bb" id="A1.T6.19.19.2">w. data+meta_features+CoT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.19.19.3">N/A</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.19.19.1"><math alttext="2.4974\pm 0.4361" class="ltx_Math" display="inline" id="A1.T6.19.19.1.m1.1"><semantics id="A1.T6.19.19.1.m1.1a"><mrow id="A1.T6.19.19.1.m1.1.1" xref="A1.T6.19.19.1.m1.1.1.cmml"><mn id="A1.T6.19.19.1.m1.1.1.2" xref="A1.T6.19.19.1.m1.1.1.2.cmml">2.4974</mn><mo id="A1.T6.19.19.1.m1.1.1.1" xref="A1.T6.19.19.1.m1.1.1.1.cmml">±</mo><mn id="A1.T6.19.19.1.m1.1.1.3" xref="A1.T6.19.19.1.m1.1.1.3.cmml">0.4361</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T6.19.19.1.m1.1b"><apply id="A1.T6.19.19.1.m1.1.1.cmml" xref="A1.T6.19.19.1.m1.1.1"><csymbol cd="latexml" id="A1.T6.19.19.1.m1.1.1.1.cmml" xref="A1.T6.19.19.1.m1.1.1.1">plus-or-minus</csymbol><cn id="A1.T6.19.19.1.m1.1.1.2.cmml" type="float" xref="A1.T6.19.19.1.m1.1.1.2">2.4974</cn><cn id="A1.T6.19.19.1.m1.1.1.3.cmml" type="float" xref="A1.T6.19.19.1.m1.1.1.3">0.4361</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.19.19.1.m1.1c">2.4974\pm 0.4361</annotation><annotation encoding="application/x-llamapun" id="A1.T6.19.19.1.m1.1d">2.4974 ± 0.4361</annotation></semantics></math></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a detailed breakdown of the average and standard deviation for both training and inference times across all datasets used in the experiments. The table is broken down by method (including baseline and LLM methods), detailing each model's performance and showing the impact of additional components (like CoT and meta-features).  This allows for a precise comparison of computational efficiency between different model selection approaches.
> <details>
> <summary>read the caption</summary>
> Table 6: Average and standard deviation inference and training runtime performance (in seconds) over all datasets.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02119/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02119/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}