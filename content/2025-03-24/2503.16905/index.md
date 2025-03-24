---
title: "MAPS: A Multi-Agent Framework Based on Big Seven Personality and Socratic Guidance for Multimodal Scientific Problem Solving"
summary: "MAPS solves multimodal scientific problems better by combining multiple agents and Socratic learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Multimodal Reasoning", "🏢 Xi'an Jiaotong University",]
showSummary: true
date: 2025-03-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.16905 {{< /keyword >}}
{{< keyword icon="writer" >}} Jian Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.16905" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.16905" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.16905/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Multimodal scientific problems(MSPs) challenge AI due to the demand for comprehensive reasoning and reflective capabilities. Existing methods are limited in integrating multiple modalities and mimicking human-like, iterative solving. This results in failure to combine skills in complex scenarios and lack of self-correction to optimize initial reasoning.



This paper introduces MAPS, a multi-agent framework inspired by the Big Seven Personality theory and Socratic questioning. MAPS employs seven agents guided by feedback to solve MSPs, overcoming the limitations of existing methods.  It outperforms current models by 15.84% and achieves a better accuracy, demonstrating superior reasoning and generalization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A multi-agent framework based on the Big Seven Personality theory can effectively solve complex scientific problems. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Socratic questioning can enhance reflective and iterative problem-solving capabilities in AI. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MAPS outperforms existing state-of-the-art models in multimodal scientific problem-solving tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers due to **MAPS' superior performance** in complex scientific problem-solving.  It demonstrates an innovative approach to AI, combining multi-agent systems with Socratic learning.  It opens new avenues for future research into AI-driven problem-solving and collaborative learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure1.png)

> 🔼 This figure shows a multimodal scientific problem, which involves integrating information from multiple modalities such as text and diagrams to arrive at a solution.  The example illustrates a physics problem presented as a multiple-choice question with accompanying text description and diagram. The solution requires a deep understanding of physical principles and an ability to synthesize textual and visual data. Solving such multimodal problems involves complex reasoning and is a current challenge in artificial intelligence.
> <details>
> <summary>read the caption</summary>
> Figure 1:  An example of a multimodal scientific multiple-choice problem. The correct answer is derived based on the reasoning over inputs that include context, question, and diagram.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S2.T1.1.1">
<tr class="ltx_tr" id="S2.T1.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.1.1.2.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.1.1" style="font-size:144%;">Models</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S2.T1.1.1.2.2" rowspan="2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.2.2.1">
<span class="ltx_p" id="S2.T1.1.1.2.2.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.2.1.1.1" style="font-size:144%;">CoT</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S2.T1.1.1.2.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.3.1" style="font-size:144%;">Mathvista</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S2.T1.1.1.2.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.4.1" style="font-size:144%;">EMMA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S2.T1.1.1.2.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.5.1" style="font-size:144%;">OlympiadBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.2.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.2.6.1" style="font-size:144%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.3">
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.1"><span class="ltx_text" id="S2.T1.1.1.3.1.1" style="font-size:144%;">Gen.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.2"><span class="ltx_text" id="S2.T1.1.1.3.2.1" style="font-size:144%;">Math</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.3.3"><span class="ltx_text" id="S2.T1.1.1.3.3.1" style="font-size:144%;">Avg.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.4"><span class="ltx_text" id="S2.T1.1.1.3.4.1" style="font-size:144%;">Math</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.5"><span class="ltx_text" id="S2.T1.1.1.3.5.1" style="font-size:144%;">Phy.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.6"><span class="ltx_text" id="S2.T1.1.1.3.6.1" style="font-size:144%;">Chem.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.3.7"><span class="ltx_text" id="S2.T1.1.1.3.7.1" style="font-size:144%;">Avg.</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.8"><span class="ltx_text" id="S2.T1.1.1.3.8.1" style="font-size:144%;">MECO</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.9"><span class="ltx_text" id="S2.T1.1.1.3.9.1" style="font-size:144%;">MZCE</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.10"><span class="ltx_text" id="S2.T1.1.1.3.10.1" style="font-size:144%;">MZCO</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.11"><span class="ltx_text" id="S2.T1.1.1.3.11.1" style="font-size:144%;">PECO</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.3.12"><span class="ltx_text" id="S2.T1.1.1.3.12.1" style="font-size:144%;">PZCE</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.3.13"><span class="ltx_text" id="S2.T1.1.1.3.13.1" style="font-size:144%;">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.4.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.1.1" style="font-size:144%;">Random Choice</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.1.4.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.4.2.1">
<span class="ltx_p" id="S2.T1.1.1.4.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.4.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.3.1" style="font-size:144%;">26.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.4.1" style="font-size:144%;">22.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.4.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.5.1" style="font-size:144%;">24.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.6.1" style="font-size:144%;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.7.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.8.1" style="font-size:144%;">27.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.4.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.9.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.10.1" style="font-size:144%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.11.1" style="font-size:144%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.12.1" style="font-size:144%;">0.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.13.1" style="font-size:144%;">1.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.14.1" style="font-size:144%;">0.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.4.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.15.1" style="font-size:144%;">0.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.4.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.4.16.1" style="font-size:144%;background-color:#E6E6E6;">16.06</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.5">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.5.1"><span class="ltx_text" id="S2.T1.1.1.5.1.1" style="font-size:144%;">Human Expert</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.5.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.5.2.1">
<span class="ltx_p" id="S2.T1.1.1.5.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.5.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.3"><span class="ltx_text" id="S2.T1.1.1.5.3.1" style="font-size:144%;">56.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.4"><span class="ltx_text" id="S2.T1.1.1.5.4.1" style="font-size:144%;">55.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.5"><span class="ltx_text" id="S2.T1.1.1.5.5.1" style="font-size:144%;">55.90</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.6"><span class="ltx_text" id="S2.T1.1.1.5.6.1" style="font-size:144%;">75.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.7"><span class="ltx_text" id="S2.T1.1.1.5.7.1" style="font-size:144%;">64.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.8"><span class="ltx_text" id="S2.T1.1.1.5.8.1" style="font-size:144%;">86.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.9"><span class="ltx_text" id="S2.T1.1.1.5.9.1" style="font-size:144%;">64.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.10"><span class="ltx_text" id="S2.T1.1.1.5.10.1" style="font-size:144%;">48.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.11"><span class="ltx_text" id="S2.T1.1.1.5.11.1" style="font-size:144%;">34.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.12"><span class="ltx_text" id="S2.T1.1.1.5.12.1" style="font-size:144%;">30.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.13"><span class="ltx_text" id="S2.T1.1.1.5.13.1" style="font-size:144%;">54.17</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.14"><span class="ltx_text" id="S2.T1.1.1.5.14.1" style="font-size:144%;">12.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.5.15"><span class="ltx_text" id="S2.T1.1.1.5.15.1" style="font-size:144%;">37.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.5.16" style="background-color:#E6E6E6;"><span class="ltx_text" id="S2.T1.1.1.5.16.1" style="font-size:144%;background-color:#E6E6E6;">52.73</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.1.1.6.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.1.1" style="font-size:144%;">Claude 3.5 Sonnet</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S2.T1.1.1.6.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.6.2.1">
<span class="ltx_p" id="S2.T1.1.1.6.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.6.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.3.1" style="font-size:144%;">68.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.4.1" style="font-size:144%;">63.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.6.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.5.1" style="font-size:144%;">65.40</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.6.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.7.1" style="font-size:144%;">34.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.8" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.6.8.1" style="font-size:144%;">44.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.6.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.9.1" style="font-size:144%;">33.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.10.1" style="font-size:144%;">20.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.11.1" style="font-size:144%;">13.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.12.1" style="font-size:144%;">10.71</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.13.1" style="font-size:144%;">10.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.14.1" style="font-size:144%;">14.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S2.T1.1.1.6.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.15.1" style="font-size:144%;">13.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.1.1.6.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.6.16.1" style="font-size:144%;background-color:#E6E6E6;">37.43</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.7">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.7.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.1.1" style="font-size:144%;">Gemini 2.0 Flash</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.7.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.7.2.1">
<span class="ltx_p" id="S2.T1.1.1.7.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.7.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.3.1" style="font-size:144%;">70.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.4.1" style="font-size:144%;">70.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.5.1" style="font-size:144%;">70.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.6.1" style="font-size:144%;">20.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.7.1" style="font-size:144%;">40.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.8.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.9.1" style="font-size:144%;">32.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.10.1" style="font-size:144%;">8.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.11.1" style="font-size:144%;">5.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.12.1" style="font-size:144%;">7.14</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.13.1" style="font-size:144%;">3.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.14.1" style="font-size:144%;">7.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.7.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.15.1" style="font-size:144%;">5.39</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.7.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.7.16.1" style="font-size:144%;background-color:#E6E6E6;">36.06</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.8">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.8.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.1.1" style="font-size:144%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.8.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.8.2.1">
<span class="ltx_p" id="S2.T1.1.1.8.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.8.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.3.1" style="font-size:144%;">65.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.4.1" style="font-size:144%;">61.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.5.1" style="font-size:144%;">63.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.6.1" style="font-size:144%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.7.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.8.1" style="font-size:144%;">33.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.9.1" style="font-size:144%;">33.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.10.1" style="font-size:144%;">23.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.11.1" style="font-size:144%;">20.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.12" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.8.12.1" style="font-size:144%;">19.64</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.13.1" style="font-size:144%;">22.15</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.14" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.8.14.1" style="font-size:144%;">21.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.8.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.15.1" style="font-size:144%;">21.47</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.8.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.8.16.1" style="font-size:144%;background-color:#E6E6E6;">39.41</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.9">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.9.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.1.1" style="font-size:144%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.9.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.9.2.1">
<span class="ltx_p" id="S2.T1.1.1.9.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.9.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.3.1" style="font-size:144%;">70.65</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.4.1" style="font-size:144%;">67.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.5.1" style="font-size:144%;">68.90</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.6" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.9.6.1" style="font-size:144%;">42.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.7.1" style="font-size:144%;">42.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.8.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.9" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.9.9.1" style="font-size:144%;">40.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.10.1" style="font-size:144%;">18.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.11.1" style="font-size:144%;">12.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.12.1" style="font-size:144%;">5.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.13.1" style="font-size:144%;">7.24</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.14.1" style="font-size:144%;">3.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.9.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.15.1" style="font-size:144%;">8.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.9.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.9.16.1" style="font-size:144%;background-color:#E6E6E6;">39.45</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.10">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.10.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.1.1" style="font-size:144%;">InternVL2.5-8B-MPO</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.10.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.10.2.1">
<span class="ltx_p" id="S2.T1.1.1.10.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.10.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.3.1" style="font-size:144%;">64.78</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.4.1" style="font-size:144%;">60.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.5.1" style="font-size:144%;">62.60</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.6.1" style="font-size:144%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.7.1" style="font-size:144%;">40.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.8.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.9.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.10.1" style="font-size:144%;">10.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.11.1" style="font-size:144%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.12.1" style="font-size:144%;">10.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.13.1" style="font-size:144%;">1.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.14.1" style="font-size:144%;">0.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.10.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.15.1" style="font-size:144%;">3.88</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.10.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.10.16.1" style="font-size:144%;background-color:#E6E6E6;">34.16</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.11">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.11.1"><span class="ltx_text" id="S2.T1.1.1.11.1.1" style="font-size:144%;">LLaVA-Onevision-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.11.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.11.2.1">
<span class="ltx_p" id="S2.T1.1.1.11.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.11.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.3"><span class="ltx_text" id="S2.T1.1.1.11.3.1" style="font-size:144%;">62.83</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.4"><span class="ltx_text" id="S2.T1.1.1.11.4.1" style="font-size:144%;">58.52</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.5"><span class="ltx_text" id="S2.T1.1.1.11.5.1" style="font-size:144%;">60.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.6"><span class="ltx_text" id="S2.T1.1.1.11.6.1" style="font-size:144%;">25.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.7"><span class="ltx_text" id="S2.T1.1.1.11.7.1" style="font-size:144%;">32.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.8"><span class="ltx_text" id="S2.T1.1.1.11.8.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.9"><span class="ltx_text" id="S2.T1.1.1.11.9.1" style="font-size:144%;">27.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.10"><span class="ltx_text" id="S2.T1.1.1.11.10.1" style="font-size:144%;">6.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.11"><span class="ltx_text" id="S2.T1.1.1.11.11.1" style="font-size:144%;">7.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.12"><span class="ltx_text" id="S2.T1.1.1.11.12.1" style="font-size:144%;">3.57</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.13"><span class="ltx_text" id="S2.T1.1.1.11.13.1" style="font-size:144%;">3.29</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.14"><span class="ltx_text" id="S2.T1.1.1.11.14.1" style="font-size:144%;">9.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.11.15"><span class="ltx_text" id="S2.T1.1.1.11.15.1" style="font-size:144%;">6.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.11.16" style="background-color:#E6E6E6;"><span class="ltx_text" id="S2.T1.1.1.11.16.1" style="font-size:144%;background-color:#E6E6E6;">31.23</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.12">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.12.1" style="padding-bottom:2.0pt;">
<span class="ltx_ERROR undefined" id="S2.T1.1.1.12.1.1">\hdashline</span><span class="ltx_text" id="S2.T1.1.1.12.1.2" style="font-size:144%;">Claude 3.5 Sonnet</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.12.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.12.2.1">
<span class="ltx_p" id="S2.T1.1.1.12.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.12.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.3" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.12.3.1" style="font-size:144%;">71.74</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.4.1" style="font-size:144%;">64.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.12.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.5.1" style="font-size:144%;">67.70</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.6.1" style="font-size:144%;">30.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.7.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.8.1" style="font-size:144%;">41.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.12.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.9.1" style="font-size:144%;">36.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.10.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.11.1" style="font-size:144%;">11.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.12.1" style="font-size:144%;">16.07</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.13.1" style="font-size:144%;">12.72</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.14.1" style="font-size:144%;">10.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.12.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.15.1" style="font-size:144%;">13.23</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.12.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.12.16.1" style="font-size:144%;background-color:#E6E6E6;">39.09</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.13">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.13.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.1.1" style="font-size:144%;">Gemini 2.0 Flash</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.13.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.13.2.1">
<span class="ltx_p" id="S2.T1.1.1.13.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.13.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.3.1" style="font-size:144%;">70.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.4.1" style="font-size:144%;">75.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.5.1" style="font-size:144%;">73.10</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.6.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.7.1" style="font-size:144%;">41.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.8.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.9.1" style="font-size:144%;">33.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.10.1" style="font-size:144%;">12.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.11.1" style="font-size:144%;">6.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.12.1" style="font-size:144%;">3.57</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.13.1" style="font-size:144%;">4.61</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.14.1" style="font-size:144%;">2.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.13.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.15.1" style="font-size:144%;">5.39</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.13.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.13.16.1" style="font-size:144%;background-color:#E6E6E6;">37.38</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.14">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.14.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.1.1" style="font-size:144%;">GPT-4o</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.14.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.14.2.1">
<span class="ltx_p" id="S2.T1.1.1.14.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.14.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.3.1" style="font-size:144%;">65.22</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.4.1" style="font-size:144%;">62.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.5.1" style="font-size:144%;">63.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.6.1" style="font-size:144%;">27.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.7" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.7.1" style="font-size:144%;">44.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.8.1" style="font-size:144%;">35.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.9.1" style="font-size:144%;">35.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.10" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.10.1" style="font-size:144%;">25.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.11" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.11.1" style="font-size:144%;">21.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.12.1" style="font-size:144%;">12.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.13" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.13.1" style="font-size:144%;">24.12</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.14.14.1" style="font-size:144%;">20.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.14.15" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.15.1" style="font-size:144%;">22.27</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.14.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.14.16.1" style="font-size:144%;background-color:#E6E6E6;">40.47</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.15">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.15.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.1.1" style="font-size:144%;">Qwen2.5-VL-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.15.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.15.2.1">
<span class="ltx_p" id="S2.T1.1.1.15.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.15.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.3.1" style="font-size:144%;">71.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.4" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.15.4.1" style="font-size:144%;">77.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.5" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S2.T1.1.1.15.5.1" style="font-size:144%;">74.80</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.6.1" style="font-size:144%;">38.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.7.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.8.1" style="font-size:144%;">37.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.9.1" style="font-size:144%;">37.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.10.1" style="font-size:144%;">23.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.11.1" style="font-size:144%;">13.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.12.1" style="font-size:144%;">10.71</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.13.1" style="font-size:144%;">8.11</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.14.1" style="font-size:144%;">1.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.15.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.15.1" style="font-size:144%;">9.59</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.15.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.15.16.1" style="font-size:144%;background-color:#E6E6E6;">40.46</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.16">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.16.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.1.1" style="font-size:144%;">InternVL2.5-8B-MPO</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.16.2" style="padding-bottom:2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.16.2.1">
<span class="ltx_p" id="S2.T1.1.1.16.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.16.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.3.1" style="font-size:144%;">60.87</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.4" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.4.1" style="font-size:144%;">67.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.16.5" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.5.1" style="font-size:144%;">64.40</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.6" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.6.1" style="font-size:144%;">31.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.7" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.7.1" style="font-size:144%;">36.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.8" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.8.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.16.9" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.9.1" style="font-size:144%;">30.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.10" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.10.1" style="font-size:144%;">12.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.11" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.11.1" style="font-size:144%;">8.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.12" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.12.1" style="font-size:144%;">1.79</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.13" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.13.1" style="font-size:144%;">2.85</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.14" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.14.1" style="font-size:144%;">0.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.16.15" style="padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.15.1" style="font-size:144%;">4.75</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.16.16" style="background-color:#E6E6E6;padding-bottom:2.0pt;"><span class="ltx_text" id="S2.T1.1.1.16.16.1" style="font-size:144%;background-color:#E6E6E6;">33.16</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.17">
<td class="ltx_td ltx_align_left" id="S2.T1.1.1.17.1"><span class="ltx_text" id="S2.T1.1.1.17.1.1" style="font-size:144%;">LLaVA-Onevision-72B</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S2.T1.1.1.17.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.17.2.1">
<span class="ltx_p" id="S2.T1.1.1.17.2.1.1" style="width:22.8pt;"><span class="ltx_text" id="S2.T1.1.1.17.2.1.1.1" style="font-size:144%;">✓</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.3"><span class="ltx_text" id="S2.T1.1.1.17.3.1" style="font-size:144%;">71.09</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.4"><span class="ltx_text" id="S2.T1.1.1.17.4.1" style="font-size:144%;">64.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.17.5"><span class="ltx_text" id="S2.T1.1.1.17.5.1" style="font-size:144%;">67.50</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.6"><span class="ltx_text" id="S2.T1.1.1.17.6.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.7"><span class="ltx_text" id="S2.T1.1.1.17.7.1" style="font-size:144%;">26.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.8"><span class="ltx_text" id="S2.T1.1.1.17.8.1" style="font-size:144%;">23.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.17.9"><span class="ltx_text" id="S2.T1.1.1.17.9.1" style="font-size:144%;">24.00</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.10"><span class="ltx_text" id="S2.T1.1.1.17.10.1" style="font-size:144%;">11.33</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.11"><span class="ltx_text" id="S2.T1.1.1.17.11.1" style="font-size:144%;">8.67</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.12"><span class="ltx_text" id="S2.T1.1.1.17.12.1" style="font-size:144%;">5.36</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.13"><span class="ltx_text" id="S2.T1.1.1.17.13.1" style="font-size:144%;">4.82</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.14"><span class="ltx_text" id="S2.T1.1.1.17.14.1" style="font-size:144%;">3.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S2.T1.1.1.17.15"><span class="ltx_text" id="S2.T1.1.1.17.15.1" style="font-size:144%;">6.18</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.1.1.17.16" style="background-color:#E6E6E6;"><span class="ltx_text" id="S2.T1.1.1.17.16.1" style="font-size:144%;background-color:#E6E6E6;">32.56</span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1.1" style="font-size:144%;">MAPS (GPT-4o<sub class="ltx_sub" id="S2.T1.1.1.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S2.T1.1.1.1.1.1.1.1">base</span></sub>)</span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="S2.T1.1.1.1.2.1">
<span class="ltx_p" id="S2.T1.1.1.1.2.1.1" style="width:22.8pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.2.1.1.1" style="font-size:144%;">-</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.3"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.3.1" style="font-size:144%;">75.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.4"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.4.1" style="font-size:144%;">83.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.1.5"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.5.1" style="font-size:144%;">79.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.6"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.6.1" style="font-size:144%;">52.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.7"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.7.1" style="font-size:144%;">71.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.8"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.8.1" style="font-size:144%;">51.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.1.9"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.9.1" style="font-size:144%;">58.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.10"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.10.1" style="font-size:144%;">46.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.11"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.11.1" style="font-size:144%;">30.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.12"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.12.1" style="font-size:144%;">32.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.13"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.13.1" style="font-size:144%;">28.51</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.14"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.14.1" style="font-size:144%;">28.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S2.T1.1.1.1.15"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.15.1" style="font-size:144%;">31.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.1.1.1.16" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.16.1" style="font-size:144%;background-color:#E6E6E6;">56.31</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of various large language models (LLMs) on three benchmark datasets: MathVista, EMMA, and OlympiadBench. Each dataset contains multiple subtasks, categorized by subject matter (general, math, physics, chemistry) and language (English, Chinese).  The table shows the average performance of each model across these subtasks, highlighting the relative strengths and weaknesses of different models in solving multimodal scientific problems.  'CoT' indicates whether chain-of-thought prompting was used.
> <details>
> <summary>read the caption</summary>
> Table 1: Performance of different models across 10 subtasks from 3 datasets. ‘Gen.’ refers to General problems in the Mathvista dataset, ‘Phy.’ and ‘Chem.’ denote Physics and Chemistry tasks in the EMMA dataset. ‘MECO’, ‘MZCO’, and ‘MZCE’ correspond to COMP problems in English, COMP problems in Chinese, and CEE problems in Chinese, respectively, within the OlympiadBench dataset’s mathematics tasks. ‘PECO’ and ‘PZCE’ represent the COMP problems in English and CEE problems in Chinese under the physics tasks of the OlympiadBench dataset.
> </details>





### In-depth insights


#### Multi-Agent MSP
The concept of a Multi-Agent system for Multimodal Scientific Problem-solving (MSP) is promising. **Leveraging multiple specialized agents** to mimic human cognitive processes in problem-solving could address the limitations of single, monolithic models. Such a framework allows for **modular design and delegation of sub-tasks**, enabling each agent to focus on a specific aspect of the problem, such as interpreting diagrams, aligning context, or applying domain knowledge. By incorporating a 'Critic' agent based on Socratic questioning, the system could stimulate **critical thinking and self-correction**, leading to more robust and accurate solutions. The success hinges on **effective communication and coordination between the agents**, ensuring that their individual contributions synergize to achieve a coherent solution. Careful consideration must be given to agent design to fully mimic human personalities.

#### Big Seven Guide
The 'Big Seven Guide', based on the Big Seven Personality theory, offers a novel framework for AI problem-solving. It emphasizes **diverse cognitive approaches**, mirroring human decision-making. By integrating traits like Conscientiousness, Agreeableness, Extraversion, Neuroticism, Openness, Self-Esteem, and Sensitivity, the guide facilitates **multi-agent system design**, promoting specialized roles. It addresses limitations in traditional AI by fostering reflective capabilities and multi-modal reasoning. Its strength lies in **holistic problem-solving**, with each trait contributing to comprehensive solutions and improved accuracy and flexibility, which ultimately enhances performance.

#### Socratic Critic
The concept of a "Socratic Critic" embodies a sophisticated approach to AI-driven problem-solving, drawing inspiration from the Socratic method. This involves **critical self-reflection** and questioning assumptions to stimulate autonomous learning. The Critic agent would evaluate the reasoning and provide iterative feedback, guiding the AI to refine its understanding and solutions. This is valuable since its **avoids being stuck in initial reasoning**. This iterative process mimics human critical thinking, leading to more robust and accurate outcomes. The implementation of such an agent addresses the limitations of single-pass reasoning models. The goal is to **improve flexibility and accuracy**. Moreover, the Critic agent would improve AI's ability to identify and correct errors throughout the problem-solving journey. Also, it fosters a deeper understanding of the underlying principles in complex scientific tasks.

#### Iterative Solve
An iterative solving strategy, often employed in complex problem-solving scenarios, particularly within the realm of AI and scientific computing, suggests a **cyclical refinement process**. This usually involves an initial solution which is progressively improved through repeated analysis and adjustments. Key to the success of such an approach is the presence of a mechanism to **evaluate the current solution** and provide actionable feedback. This feedback then guides the modifications made in the subsequent iteration. The iterative solve methodology allows for **gradual convergence towards an optimal solution**, effectively handling situations where a direct or closed-form solution is not feasible or computationally expensive. Furthermore, this approach can enable the system to **adapt dynamically** and learn from its past errors, making it particularly useful in dynamic or evolving environments. A well designed **stopping criterion** to determine when a sufficient level of accuracy has been achieved is paramount.

#### Cross-Modal SOTA
**Cross-modal State-of-the-Art (SOTA)** refers to the pinnacle of performance achieved by models that integrate and reason across multiple data modalities, such as text and images. Achieving cross-modal SOTA signifies a model's superior ability to **fuse information**, handle modality-specific nuances, and derive coherent representations. The progression of cross-modal SOTA is crucial for developing AI systems adept at understanding complex real-world scenarios, where information is rarely confined to a single modality. Improvements in cross-modal SOTA often involve novel architectures, training strategies, or methods for aligning representations across modalities. A key challenge is mitigating modality gaps and ensuring that relevant information from one modality informs reasoning in another. The performance metrics used to define SOTA must accurately reflect the model's ability to handle complex, multimodal reasoning tasks.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure3.png)

> 🔼 This figure illustrates the seven function-specific agents used in the MAPS framework and their corresponding relation to the Big Seven Personality theory.  Each agent is assigned a specific role in the problem-solving process, and these roles reflect the traits associated with each personality dimension in the Big Seven model. For example, the Manager agent reflects Conscientiousness, the UserProxy agent reflects Agreeableness, the Interpreter represents Extraversion, and so on. This visual representation helps to understand how the framework integrates different personality traits to achieve a more comprehensive and efficient problem-solving process.
> <details>
> <summary>read the caption</summary>
> Figure 2: The corresponding relation between the Big Seven Personality theory and the seven function-specific agents.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure2.png)

> 🔼 The figure illustrates the MAPS framework's architecture, showing seven agents based on the Big Seven Personality theory.  The UserProxy and Manager agents handle user input and workflow management. Four specialized agents (Interpreter, Aligner, Scholar, Solver) sequentially process multimodal scientific problems (MSPs), with the Critic agent providing feedback for refinement and correction.
> <details>
> <summary>read the caption</summary>
> Figure 3:  The overall architecture of MAPS. It illustrates seven functional agents based on the Big Seven Personality theory. It first includes the Manager agent with predefined interaction logic and the UserProxy agent responsible for receiving user inputs. Subsequently, four specialized agents—Interpreter, Aligner, Scholar, and Solver—are introduced, each corresponding to a specific step in solving MSPs. Finally, the Critic agent is presented, providing feedback and corrections to ensure the results are more accurate and interpretable.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure4.png)

> 🔼 Figure 4 illustrates the functionality of the Critic agent within the MAPS framework.  The top panel displays a schematic overview of the Critic agent's scoring and feedback mechanisms. The bottom panel presents a breakdown of the feedback distribution provided by the Critic agent across three different datasets (MathVista, EMMA, and OlympiadBench) to each of the four main agents (Interpreter, Aligner, Scholar, and Solver) as well as scenarios where no regeneration was necessary. This visualization helps to understand the agent's role in refining and iterating on the problem-solving process across various tasks and datasets. The feedback distribution highlights which components of the problem-solving process most frequently required adjustment or correction.
> <details>
> <summary>read the caption</summary>
> Figure 4: The schema of the Critic agent, as well as the feedback and backtracking situations of the Critic agent across different datasets.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/output1.png)

> 🔼 Figure 5 presents a comparative analysis of the MAPS model's performance against three different base models (GPT-4, Gemini, and Qwen-72B) across three subtasks within the EMMA dataset: mathematics, physics, and chemistry.  The bar chart visually represents the accuracy achieved by each model on each subtask, showcasing the improvement provided by MAPS over the baseline models. This comparison highlights the effectiveness of MAPS in enhancing the performance of various base models for multimodal scientific problem-solving.
> <details>
> <summary>read the caption</summary>
> Figure 5: Performance Comparison of MAPS on Math, Physics, and Chemistry Subtasks in the EMMA Dataset with GPT-4o, Gemini, and Qwen2.5-VL-72B as Bases.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/output.png)

> 🔼 Figure 6 presents a detailed analysis of the time efficiency of the model in solving various types of scientific problems.  The figure breaks down the solving time efficiency based on four key factors: question types (e.g., multiple choice vs. open-ended), answer types (e.g., integer, float, text), question categories (e.g., math, physics, chemistry, general), and question difficulty levels (e.g., before college, college, Olympiad). This comprehensive analysis provides valuable insights into the model's performance characteristics across different problem complexity levels and allows for a better understanding of its strengths and weaknesses in various scientific reasoning scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: An analysis of the solving time efficiency across different question types, answer types, question categories, and question difficulties.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure6.png)

> 🔼 This figure displays the results of generalization experiments performed on the DiagramQG physical dataset.  These experiments aimed to assess how well the MAPS framework, built upon the GPT-4 base model, generalizes to a new dataset.  The figure visually compares the accuracy of the GPT-4 base model alone to the accuracy achieved by adding the MAPS framework. The comparison highlights the performance gains provided by MAPS across various sub-tasks within the DiagramQG physical dataset.  Each bar represents a specific sub-task, showing the accuracy improvement resulting from the inclusion of MAPS.
> <details>
> <summary>read the caption</summary>
> Figure 7: The generalization experiments conducted on the DiagramQG physical dataset, which are based on the GPT-4o base model and the incremental part of MAPS.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure5.png)

> 🔼 Figure 8 presents a detailed walkthrough of MAPS solving a physics problem, highlighting each agent's role (Interpreter, Aligner, Scholar, Solver, Critic).  It visually demonstrates the multi-step process, including iterative feedback and refinement through Socratic questioning.  The figure shows how each agent contributes sequentially, with the Critic agent providing feedback for improvement and prompting backtracking as needed. This illustrates the dynamic, iterative nature of the MAPS framework.
> <details>
> <summary>read the caption</summary>
> Figure 8: A case study of a specific solving process, illustrating the detailed steps involved in solving the problem. This includes the various stages of problem-solving as well as the feedback and backtracking mechanisms that help refine and improve the solution.
> </details>



![](https://arxiv.org/html/2503.16905/extracted/6298662/figures/Figure7.png)

> 🔼 Figure 9 showcases a detailed, step-by-step illustration of the MAPS framework in action.  It uses a multimodal physics problem from the OlympiadBench dataset as an example, highlighting how each of the seven agents (Manager, UserProxy, Interpreter, Aligner, Scholar, Solver, and Critic) collaborates to solve the problem. The figure visually represents the iterative process, including feedback and refinement, demonstrating the framework's ability to integrate diverse information sources and refine solutions through iterative steps.
> <details>
> <summary>read the caption</summary>
> Figure 9: A complete example of the collaborative output from all agents in an iteration, using the multimodal physics problem from the OlympiadBench dataset. This example demonstrates how each agent contributes to the problem-solving process, collaborating to produce a refined solution step by step.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.8.8">
<tr class="ltx_tr" id="S4.T2.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.8.8.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.1.1">Variation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.2.1">MECO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.3.1">MZCE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.4.1">MZCO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.5.1">PECO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.6.1">PZCE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.8.8.9.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.9.7.1">Avg.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.8.8.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">MAPS</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.2" style="padding-left:2.0pt;padding-right:2.0pt;">46.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.3" style="padding-left:2.0pt;padding-right:2.0pt;">30.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.4" style="padding-left:2.0pt;padding-right:2.0pt;">32.14</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.5" style="padding-left:2.0pt;padding-right:2.0pt;">28.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.6" style="padding-left:2.0pt;padding-right:2.0pt;">28.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.8.8.10.7" style="padding-left:2.0pt;padding-right:2.0pt;">31.14</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="{w/o}_{\text{Interpreter}}" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mrow id="S4.T2.1.1.1.1.m1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.2" xref="S4.T2.1.1.1.1.m1.1.1.2.cmml">w</mi><mo id="S4.T2.1.1.1.1.m1.1.1.1" xref="S4.T2.1.1.1.1.m1.1.1.1.cmml">/</mo><msub id="S4.T2.1.1.1.1.m1.1.1.3" xref="S4.T2.1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T2.1.1.1.1.m1.1.1.3.2" xref="S4.T2.1.1.1.1.m1.1.1.3.2.cmml">o</mi><mtext id="S4.T2.1.1.1.1.m1.1.1.3.3" xref="S4.T2.1.1.1.1.m1.1.1.3.3a.cmml">Interpreter</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><apply id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"><divide id="S4.T2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.1"></divide><ci id="S4.T2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.2">𝑤</ci><apply id="S4.T2.1.1.1.1.m1.1.1.3.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.2">𝑜</ci><ci id="S4.T2.1.1.1.1.m1.1.1.3.3a.cmml" xref="S4.T2.1.1.1.1.m1.1.1.3.3"><mtext id="S4.T2.1.1.1.1.m1.1.1.3.3.cmml" mathsize="70%" xref="S4.T2.1.1.1.1.m1.1.1.3.3">Interpreter</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">{w/o}_{\text{Interpreter}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">italic_w / italic_o start_POSTSUBSCRIPT Interpreter end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">25.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">16.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">10.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">21.05</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;">11.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.1.7" style="padding-left:2.0pt;padding-right:2.0pt;">15.05</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\quad\Delta" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mi id="S4.T2.2.2.2.1.m1.1.1" mathvariant="normal" xref="S4.T2.2.2.2.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\quad\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.2.1" style="color:#008000;">(-20.67)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.3.1" style="color:#008000;">(-13.66)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.4.1" style="color:#008000;">(-21.43)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.5.1" style="color:#008000;">(-7.46)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.6.1" style="color:#008000;">(-16.71)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.2.2.2.7.1" style="color:#008000;">(-16.09)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="{w/o}_{\text{Aligner}}" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mrow id="S4.T2.3.3.3.1.m1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.cmml"><mi id="S4.T2.3.3.3.1.m1.1.1.2" xref="S4.T2.3.3.3.1.m1.1.1.2.cmml">w</mi><mo id="S4.T2.3.3.3.1.m1.1.1.1" xref="S4.T2.3.3.3.1.m1.1.1.1.cmml">/</mo><msub id="S4.T2.3.3.3.1.m1.1.1.3" xref="S4.T2.3.3.3.1.m1.1.1.3.cmml"><mi id="S4.T2.3.3.3.1.m1.1.1.3.2" xref="S4.T2.3.3.3.1.m1.1.1.3.2.cmml">o</mi><mtext id="S4.T2.3.3.3.1.m1.1.1.3.3" xref="S4.T2.3.3.3.1.m1.1.1.3.3a.cmml">Aligner</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><apply id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1"><divide id="S4.T2.3.3.3.1.m1.1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.1"></divide><ci id="S4.T2.3.3.3.1.m1.1.1.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.2">𝑤</ci><apply id="S4.T2.3.3.3.1.m1.1.1.3.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.3.3.3.1.m1.1.1.3.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.3.3.3.1.m1.1.1.3.2.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.2">𝑜</ci><ci id="S4.T2.3.3.3.1.m1.1.1.3.3a.cmml" xref="S4.T2.3.3.3.1.m1.1.1.3.3"><mtext id="S4.T2.3.3.3.1.m1.1.1.3.3.cmml" mathsize="70%" xref="S4.T2.3.3.3.1.m1.1.1.3.3">Aligner</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">{w/o}_{\text{Aligner}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">italic_w / italic_o start_POSTSUBSCRIPT Aligner end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">28.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">17.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">16.07</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">20.83</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;">19.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;">20.28</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\quad\Delta" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mi id="S4.T2.4.4.4.1.m1.1.1" mathvariant="normal" xref="S4.T2.4.4.4.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\quad\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.2.1" style="color:#008000;">(-18.00)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.3.1" style="color:#008000;">(-12.66)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.4.1" style="color:#008000;">(-16.07)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.5.1" style="color:#008000;">(-7.68)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.6.1" style="color:#008000;">(-9.33)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.4.4.4.7.1" style="color:#008000;">(-10.86)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="{w/o}_{\text{Scholar}}" class="ltx_Math" display="inline" id="S4.T2.5.5.5.1.m1.1"><semantics id="S4.T2.5.5.5.1.m1.1a"><mrow id="S4.T2.5.5.5.1.m1.1.1" xref="S4.T2.5.5.5.1.m1.1.1.cmml"><mi id="S4.T2.5.5.5.1.m1.1.1.2" xref="S4.T2.5.5.5.1.m1.1.1.2.cmml">w</mi><mo id="S4.T2.5.5.5.1.m1.1.1.1" xref="S4.T2.5.5.5.1.m1.1.1.1.cmml">/</mo><msub id="S4.T2.5.5.5.1.m1.1.1.3" xref="S4.T2.5.5.5.1.m1.1.1.3.cmml"><mi id="S4.T2.5.5.5.1.m1.1.1.3.2" xref="S4.T2.5.5.5.1.m1.1.1.3.2.cmml">o</mi><mtext id="S4.T2.5.5.5.1.m1.1.1.3.3" xref="S4.T2.5.5.5.1.m1.1.1.3.3a.cmml">Scholar</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.1.m1.1b"><apply id="S4.T2.5.5.5.1.m1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1"><divide id="S4.T2.5.5.5.1.m1.1.1.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.1"></divide><ci id="S4.T2.5.5.5.1.m1.1.1.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.2">𝑤</ci><apply id="S4.T2.5.5.5.1.m1.1.1.3.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.5.5.5.1.m1.1.1.3.1.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.5.5.5.1.m1.1.1.3.2.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.2">𝑜</ci><ci id="S4.T2.5.5.5.1.m1.1.1.3.3a.cmml" xref="S4.T2.5.5.5.1.m1.1.1.3.3"><mtext id="S4.T2.5.5.5.1.m1.1.1.3.3.cmml" mathsize="70%" xref="S4.T2.5.5.5.1.m1.1.1.3.3">Scholar</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.1.m1.1c">{w/o}_{\text{Scholar}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.1.m1.1d">italic_w / italic_o start_POSTSUBSCRIPT Scholar end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">28.00</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">16.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">30.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">19.96</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;">16.33</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">19.65</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\quad\Delta" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mi id="S4.T2.6.6.6.1.m1.1.1" mathvariant="normal" xref="S4.T2.6.6.6.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\quad\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.2.1" style="color:#008000;">(-18.00)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.3.1" style="color:#008000;">(-14.00)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.4.1" style="color:#008000;">(-1.78)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.5.1" style="color:#008000;">(-8.55)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.6.1" style="color:#008000;">(-12.00)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.6.6.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.6.6.6.7.1" style="color:#008000;">(-11.49)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="{w/o}_{\text{Critic}}" class="ltx_Math" display="inline" id="S4.T2.7.7.7.1.m1.1"><semantics id="S4.T2.7.7.7.1.m1.1a"><mrow id="S4.T2.7.7.7.1.m1.1.1" xref="S4.T2.7.7.7.1.m1.1.1.cmml"><mi id="S4.T2.7.7.7.1.m1.1.1.2" xref="S4.T2.7.7.7.1.m1.1.1.2.cmml">w</mi><mo id="S4.T2.7.7.7.1.m1.1.1.1" xref="S4.T2.7.7.7.1.m1.1.1.1.cmml">/</mo><msub id="S4.T2.7.7.7.1.m1.1.1.3" xref="S4.T2.7.7.7.1.m1.1.1.3.cmml"><mi id="S4.T2.7.7.7.1.m1.1.1.3.2" xref="S4.T2.7.7.7.1.m1.1.1.3.2.cmml">o</mi><mtext id="S4.T2.7.7.7.1.m1.1.1.3.3" xref="S4.T2.7.7.7.1.m1.1.1.3.3a.cmml">Critic</mtext></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.1.m1.1b"><apply id="S4.T2.7.7.7.1.m1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1"><divide id="S4.T2.7.7.7.1.m1.1.1.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1.1"></divide><ci id="S4.T2.7.7.7.1.m1.1.1.2.cmml" xref="S4.T2.7.7.7.1.m1.1.1.2">𝑤</ci><apply id="S4.T2.7.7.7.1.m1.1.1.3.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T2.7.7.7.1.m1.1.1.3.1.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3">subscript</csymbol><ci id="S4.T2.7.7.7.1.m1.1.1.3.2.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3.2">𝑜</ci><ci id="S4.T2.7.7.7.1.m1.1.1.3.3a.cmml" xref="S4.T2.7.7.7.1.m1.1.1.3.3"><mtext id="S4.T2.7.7.7.1.m1.1.1.3.3.cmml" mathsize="70%" xref="S4.T2.7.7.7.1.m1.1.1.3.3">Critic</mtext></ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.1.m1.1c">{w/o}_{\text{Critic}}</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.1.m1.1d">italic_w / italic_o start_POSTSUBSCRIPT Critic end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">34.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">21.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">30.36</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">23.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;">21.67</td>
<td class="ltx_td ltx_align_center" id="S4.T2.7.7.7.7" style="padding-left:2.0pt;padding-right:2.0pt;">24.09</td>
</tr>
<tr class="ltx_tr" id="S4.T2.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\quad\Delta" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.1.m1.1a"><mi id="S4.T2.8.8.8.1.m1.1.1" mathvariant="normal" xref="S4.T2.8.8.8.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.m1.1c">\quad\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.2.1" style="color:#008000;">(-11.33)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.3.1" style="color:#008000;">(-8.66)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.4.1" style="color:#008000;">(-2.42)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.5.1" style="color:#008000;">(-5.48)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.6.1" style="color:#008000;">(-6.66)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.8.8.8.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T2.8.8.8.7.1" style="color:#008000;">(-7.05)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation experiments conducted to assess the impact of removing individual components from the MAPS framework.  Specifically, it shows the performance change (Δ)  in accuracy across five subtasks (MECO, MZCE, MZCO, PECO, PZCE) when each of the four core agents (Interpreter, Aligner, Scholar, Solver) and the Critic agent are removed one at a time. The results quantify how crucial each agent is to the overall performance of the model.  Negative values indicate a decrease in performance compared to the full model.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance under different ablation settings are analyzed. We perform ablation experiments on the solving module w/oInterpreter𝑤subscript𝑜Interpreter{w/o}_{\text{Interpreter}}italic_w / italic_o start_POSTSUBSCRIPT Interpreter end_POSTSUBSCRIPT, w/oAligner𝑤subscript𝑜Aligner{w/o}_{\text{Aligner}}italic_w / italic_o start_POSTSUBSCRIPT Aligner end_POSTSUBSCRIPT, w/oScholar𝑤subscript𝑜Scholar{w/o}_{\text{Scholar}}italic_w / italic_o start_POSTSUBSCRIPT Scholar end_POSTSUBSCRIPT or w/oCritic𝑤subscript𝑜Critic{w/o}_{\text{Critic}}italic_w / italic_o start_POSTSUBSCRIPT Critic end_POSTSUBSCRIPT modules to evaluate the impact of removing these components.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T3.2">
<tr class="ltx_tr" id="A1.T3.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T3.2.3.1"><span class="ltx_text" id="A1.T3.2.3.1.1" style="font-size:90%;">Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.3.2"><span class="ltx_text" id="A1.T3.2.3.2.1" style="font-size:90%;">ABBR.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T3.2.3.3"><span class="ltx_text" id="A1.T3.2.3.3.1" style="font-size:90%;">Test</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.2.4.1" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.4.1.1" style="font-size:90%;">MathVista</span></td>
<td class="ltx_td ltx_border_t" id="A1.T3.2.4.2" style="padding-bottom:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T3.2.4.3" style="padding-bottom:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.5">
<td class="ltx_td ltx_align_left" id="A1.T3.2.5.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.5.1.1" style="font-size:90%;">       General</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.5.2.1" style="font-size:90%;">Gen.</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.5.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.5.3.1" style="font-size:90%;">460</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.6">
<td class="ltx_td ltx_align_left" id="A1.T3.2.6.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.6.1.1" style="font-size:90%;">       Mathematics</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.6.2.1" style="font-size:90%;">Math</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.6.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.6.3.1" style="font-size:90%;">540</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.7">
<td class="ltx_td ltx_align_left" id="A1.T3.2.7.1" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.7.1.1" style="font-size:90%;">OlympiadBench</span></td>
<td class="ltx_td" id="A1.T3.2.7.2" style="padding-bottom:2.0pt;"></td>
<td class="ltx_td" id="A1.T3.2.7.3" style="padding-bottom:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.8">
<td class="ltx_td ltx_align_left" id="A1.T3.2.8.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.8.1.1" style="font-size:90%;">        Math_En_COMP</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.8.2.1" style="font-size:90%;">MECO</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.8.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.8.3.1" style="font-size:90%;">150</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.9">
<td class="ltx_td ltx_align_left" id="A1.T3.2.9.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.9.1.1" style="font-size:90%;">        Math_Zh_COMP</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.9.2.1" style="font-size:90%;">MZCO</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.9.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.9.3.1" style="font-size:90%;">56</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.1.1">
<td class="ltx_td ltx_align_left" id="A1.T3.1.1.1" style="padding-bottom:2.0pt;">
<span class="ltx_text" id="A1.T3.1.1.1.1" style="font-size:90%;">        Math_Zh_CEE</span><math alttext="\dagger" class="ltx_Math" display="inline" id="A1.T3.1.1.1.m1.1"><semantics id="A1.T3.1.1.1.m1.1a"><mo id="A1.T3.1.1.1.m1.1.1" mathsize="90%" xref="A1.T3.1.1.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="A1.T3.1.1.1.m1.1b"><ci id="A1.T3.1.1.1.m1.1.1.cmml" xref="A1.T3.1.1.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.1.1.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="A1.T3.1.1.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.1.1.2.1" style="font-size:90%;">MZCE</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.1.1.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.1.1.3.1" style="font-size:90%;">300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.10">
<td class="ltx_td ltx_align_left" id="A1.T3.2.10.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.10.1.1" style="font-size:90%;">        Physics_En_COMP</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.10.2.1" style="font-size:90%;">PECO</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.10.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.10.3.1" style="font-size:90%;">456</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.2">
<td class="ltx_td ltx_align_left" id="A1.T3.2.2.1">
<span class="ltx_text" id="A1.T3.2.2.1.1" style="font-size:90%;">        Physics_Zh_CEE</span><math alttext="\dagger" class="ltx_Math" display="inline" id="A1.T3.2.2.1.m1.1"><semantics id="A1.T3.2.2.1.m1.1a"><mo id="A1.T3.2.2.1.m1.1.1" mathsize="90%" xref="A1.T3.2.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="A1.T3.2.2.1.m1.1b"><ci id="A1.T3.2.2.1.m1.1.1.cmml" xref="A1.T3.2.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T3.2.2.1.m1.1c">\dagger</annotation><annotation encoding="application/x-llamapun" id="A1.T3.2.2.1.m1.1d">†</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.2"><span class="ltx_text" id="A1.T3.2.2.2.1" style="font-size:90%;">PZCE</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.2.3"><span class="ltx_text" id="A1.T3.2.2.3.1" style="font-size:90%;">300</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T3.2.11.1" style="padding-bottom:2.0pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.11.1.1" style="font-size:90%;">EMMA</span></td>
<td class="ltx_td ltx_border_t" id="A1.T3.2.11.2" style="padding-bottom:2.0pt;"></td>
<td class="ltx_td ltx_border_t" id="A1.T3.2.11.3" style="padding-bottom:2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.12">
<td class="ltx_td ltx_align_left" id="A1.T3.2.12.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.12.1.1" style="font-size:90%;">       Mathmatics</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.12.2.1" style="font-size:90%;">Math</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.12.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.12.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.13">
<td class="ltx_td ltx_align_left" id="A1.T3.2.13.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.13.1.1" style="font-size:90%;">       Physics</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.13.2.1" style="font-size:90%;">Phy.</span></td>
<td class="ltx_td ltx_align_center" id="A1.T3.2.13.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.13.3.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T3.2.14.1" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.14.1.1" style="font-size:90%;">       Chemistry</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.14.2" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.14.2.1" style="font-size:90%;">Chem.</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T3.2.14.3" style="padding-bottom:2.0pt;"><span class="ltx_text" id="A1.T3.2.14.3.1" style="font-size:90%;">100</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 details the distribution of data across three multimodal scientific problem-solving (MSP) datasets: MathVista, OlympiadBench, and EMMA.  It shows the number of tasks for each dataset and sub-category (e.g., General, Math, Physics, Chemistry).  The symbol † indicates that a specific task contains 300 data points.  The EMMA dataset used in this study is the MINI version, a smaller subset of the full EMMA dataset.  The 'ABBR.' column provides a concise abbreviation for each task to simplify referencing throughout the paper.
> <details>
> <summary>read the caption</summary>
> Table 3: The data distribution for the MathVista, OlympiadBench, and EMMA datasets is as follows: The symbol ††\dagger† indicates a sample size of 300 data points. The EMMA dataset uses its MINI version. The ‘ABBR.’ column represents the abbreviations for all the tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T4.2">
<tr class="ltx_tr" id="A5.T4.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T4.2.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.1.1.1">
<span class="ltx_p" id="A5.T4.2.1.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T4.2.1.1.1.1.1" style="font-size:90%;">Manager</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T4.2.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.2.1.1">
<span class="ltx_p" id="A5.T4.2.2.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T4.2.2.1.1.1.1" style="font-size:90%;">You are a task manager, responsible for managing and deciding the order of each Agent’s output, ensuring that tasks are executed in the correct sequence. You will determine when each step should be executed based on the task requirements and coordinate the outputs of each Agent. Your goal is to ensure that the task process is efficient and orderly, and adjust the execution priority of steps when necessary.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.2.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.3.1.1">
<span class="ltx_p" id="A5.T4.2.3.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T4.2.3.1.1.1.1" style="font-size:90%;">UserProxy</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T4.2.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.4.1.1">
<span class="ltx_p" id="A5.T4.2.4.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T4.2.4.1.1.1.1" style="font-size:90%;">Here are some questions that require careful thought, so please think deeply, solve the questions carefully, and output your answers.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.2.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.5.1.1">
<span class="ltx_p" id="A5.T4.2.5.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T4.2.5.1.1.1.1" style="font-size:90%;">Interpreter</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T4.2.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.6.1.1">
<span class="ltx_p" id="A5.T4.2.6.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T4.2.6.1.1.1.1" style="font-size:90%;">You are a scientific diagram analysis expert tasked with objectively describing visual elements in diagrams. Engage in Socratic self-questioning to ensure comprehensive analysis:</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.2"><span class="ltx_text" id="A5.T4.2.6.1.1.2.1" style="font-size:90%;">[Element Identification]</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.3"><span class="ltx_text" id="A5.T4.2.6.1.1.3.1" style="font-size:90%;">”What discrete visual components can be systematically observed in this diagram? What quantitative measurements (e.g., shape dimensions, color codes, positional coordinates) can be objectively recorded?”</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.4"><span class="ltx_text" id="A5.T4.2.6.1.1.4.1" style="font-size:90%;">[Structural Analysis]</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.5"><span class="ltx_text" id="A5.T4.2.6.1.1.5.1" style="font-size:90%;">”How are these elements spatially organized? What geometric patterns, alignment relationships, or hierarchical arrangements emerge from their physical placement?”</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.6"><span class="ltx_text" id="A5.T4.2.6.1.1.6.1" style="font-size:90%;">[Relational Mapping]</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.7"><span class="ltx_text" id="A5.T4.2.6.1.1.7.1" style="font-size:90%;">”What explicit connections (lines, arrows, overlays) or implicit associations (proximity clusters, color coding systems, symbolic groupings) exist between components?”</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.8"><span class="ltx_text" id="A5.T4.2.6.1.1.8.1" style="font-size:90%;">[Representation Verification]</span></span>
<span class="ltx_p" id="A5.T4.2.6.1.1.9"><span class="ltx_text" id="A5.T4.2.6.1.1.9.1" style="font-size:90%;">”Does any element require specialized domain knowledge to accurately characterize (e.g., chemical notation, engineering schematics)? What purely visual evidence supports this characterization?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T4.2.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.7.1.1">
<span class="ltx_p" id="A5.T4.2.7.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T4.2.7.1.1.1.1" style="font-size:90%;">Aligner</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T4.2.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T4.2.8.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T4.2.8.1.1">
<span class="ltx_p" id="A5.T4.2.8.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T4.2.8.1.1.1.1" style="font-size:90%;">You are a text alignment specialist conducting structured analysis through Socratic interrogation. Systematically examine text pairs using this framework:</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.2"><span class="ltx_text" id="A5.T4.2.8.1.1.2.1" style="font-size:90%;">1. [Content Deconstruction]</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.3"><span class="ltx_text" id="A5.T4.2.8.1.1.3.1" style="font-size:90%;">”What core entities/events are explicitly stated in each text? What measurable attributes (quantifiers, temporal markers, causal verbs) define their characteristics?”</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.4"><span class="ltx_text" id="A5.T4.2.8.1.1.4.1" style="font-size:90%;">2. [Consistency Audit]</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.5"><span class="ltx_text" id="A5.T4.2.8.1.1.5.1" style="font-size:90%;">”Where might these texts exhibit:</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.6"><span class="ltx_text" id="A5.T4.2.8.1.1.6.1" style="font-size:90%;">a) Logical incompatibility (contradictory assertions)</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.7"><span class="ltx_text" id="A5.T4.2.8.1.1.7.1" style="font-size:90%;">b) Contextual divergence (conflicting timelines/locations)</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.8"><span class="ltx_text" id="A5.T4.2.8.1.1.8.1" style="font-size:90%;">c) Semantic dissonance (differentiated connotation scales)</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.9"><span class="ltx_text" id="A5.T4.2.8.1.1.9.1" style="font-size:90%;">d) Omission patterns (mutually exclusive missing elements)”</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.10"><span class="ltx_text" id="A5.T4.2.8.1.1.10.1" style="font-size:90%;">3. [Contextual Fusion]</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.11"><span class="ltx_text" id="A5.T4.2.8.1.1.11.1" style="font-size:90%;">”What implicit connections could synthesize a unified background framework? Which combinatory elements (chronological anchors, spatial references, causal chains) create non-conflicting narrative coherence?”</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.12"><span class="ltx_text" id="A5.T4.2.8.1.1.12.1" style="font-size:90%;">4. [Relevance Filtering]</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.13"><span class="ltx_text" id="A5.T4.2.8.1.1.13.1" style="font-size:90%;">”Through lexical-semantic mapping, which aligned components directly correspond to the question’s:</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.14"><span class="ltx_text" id="A5.T4.2.8.1.1.14.1" style="font-size:90%;">1) Key inquiry points</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.15"><span class="ltx_text" id="A5.T4.2.8.1.1.15.1" style="font-size:90%;">2) Required evidence types</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.16"><span class="ltx_text" id="A5.T4.2.8.1.1.16.1" style="font-size:90%;">3) Implicit knowledge domains</span></span>
<span class="ltx_p" id="A5.T4.2.8.1.1.17"><span class="ltx_text" id="A5.T4.2.8.1.1.17.1" style="font-size:90%;">4) Potential inference pathways?”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used for four key agents within the MAPS framework: Manager, UserProxy, Interpreter, and Aligner.  It provides a concise description of each agent's role and the specific instructions given in their prompts. This level of detail helps to clarify the functions of each agent and how they contribute to the collaborative problem-solving process in MAPS.
> <details>
> <summary>read the caption</summary>
> Table 4: A summary of the prompts used by the Manager, UserProxy, Interpreter, and Aligner agents in this paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T5.3">
<tr class="ltx_tr" id="A5.T5.3.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T5.3.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.3.4.1.1">
<span class="ltx_p" id="A5.T5.3.4.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T5.3.4.1.1.1.1" style="font-size:90%;">scholar</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.3.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.3.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.3.5.1.1">
<span class="ltx_p" id="A5.T5.3.5.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T5.3.5.1.1.1.1" style="font-size:90%;">You are a scientific knowledge retrieval system conducting structured inquiry through Socratic questioning. Process input data with this analytical framework:</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.2"><span class="ltx_text" id="A5.T5.3.5.1.1.2.1" style="font-size:90%;">1. [Problem Decomposition]</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.3"><span class="ltx_text" id="A5.T5.3.5.1.1.3.1" style="font-size:90%;">”What conceptual components constitute the question’s core demand? What technical terminology (domain-specific lexemes), operational parameters (variables/constants), and procedural verbs (analyze/calculate/compare) require epistemological grounding?”</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.4"><span class="ltx_text" id="A5.T5.3.5.1.1.4.1" style="font-size:90%;">2. [Knowledge Mining]
”For each identified component:</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.5"><span class="ltx_text" id="A5.T5.3.5.1.1.5.1" style="font-size:90%;">a) What fundamental axioms/theorems/laws
from established scientific literature could operationally define it?</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.6"><span class="ltx_text" id="A5.T5.3.5.1.1.6.1" style="font-size:90%;">b) What measurable properties
(equations/units/experimental protocols) are textually implied as relevant?</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.7"><span class="ltx_text" id="A5.T5.3.5.1.1.7.1" style="font-size:90%;">c) What contextual constraints
(temporal/spatial/conditional clauses) limit knowledge scope?”</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.8"><span class="ltx_text" id="A5.T5.3.5.1.1.8.1" style="font-size:90%;">3. [Relevance Validation]</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.9"><span class="ltx_text" id="A5.T5.3.5.1.1.9.1" style="font-size:90%;">”For each candidate knowledge unit:</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.10"><span class="ltx_text" id="A5.T5.3.5.1.1.10.1" style="font-size:90%;">Does the source text contain explicit lexical anchors (technical terms/formula symbols) justifying its inclusion?</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.11"><span class="ltx_text" id="A5.T5.3.5.1.1.11.1" style="font-size:90%;">What textual evidence (descriptive adjectives/quantifiers/causal conjunctions) indicates required depth of explanation?</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.12"><span class="ltx_text" id="A5.T5.3.5.1.1.12.1" style="font-size:90%;">Are there implicit conceptual dependencies (prerequisite theories/mathematical tools) necessitating parallel retrieval?”</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.13"><span class="ltx_text" id="A5.T5.3.5.1.1.13.1" style="font-size:90%;">4. [Taxonomic Organization]
”How should validated knowledge be structured to mirror:</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.14"><span class="ltx_text" id="A5.T5.3.5.1.1.14.1" style="font-size:90%;">1) Problem-solving workflow steps</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.15"><span class="ltx_text" id="A5.T5.3.5.1.1.15.1" style="font-size:90%;">2) Hierarchical concept dependencies</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.16"><span class="ltx_text" id="A5.T5.3.5.1.1.16.1" style="font-size:90%;">3) Cross-domain interface points</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.17"><span class="ltx_text" id="A5.T5.3.5.1.1.17.1" style="font-size:90%;">4) Uncertainty quantification needs?”</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.18"><span class="ltx_text" id="A5.T5.3.5.1.1.18.1" style="font-size:90%;">Operational Protocol:
Restrict to textually evidenced knowledge
Mark confidence levels using [TextExplicit/ContextImplied/ExternalRequired] tags</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.19"><span class="ltx_text" id="A5.T5.3.5.1.1.19.1" style="font-size:90%;">Output as:
1) Knowledge Inventory Table (Concept-Definition-SourceAnchor)</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.20"><span class="ltx_text" id="A5.T5.3.5.1.1.20.1" style="font-size:90%;">2) Dependency Graph (Nodes=Concepts, Edges=Relations)</span></span>
<span class="ltx_p" id="A5.T5.3.5.1.1.21"><span class="ltx_text" id="A5.T5.3.5.1.1.21.1" style="font-size:90%;">3) Gap Analysis Report (ExternalKnowledgeRequirements).</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.3.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A5.T5.3.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.3.6.1.1">
<span class="ltx_p" id="A5.T5.3.6.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T5.3.6.1.1.1.1" style="font-size:90%;">Solver</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.3.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T5.3.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T5.3.7.1.1">
<span class="ltx_p" id="A5.T5.3.7.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T5.3.7.1.1.1.1" style="font-size:90%;">You are a scientific problem-solving system operating through Socratic dialectics. Engage in this structured inquiry process:</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.2"><span class="ltx_text" id="A5.T5.3.7.1.1.2.1" style="font-size:90%;">1. [Problem Framing]</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.3"><span class="ltx_text" id="A5.T5.3.7.1.1.3.1" style="font-size:90%;">”What is the absolute irreducible core of the question? What technical terms require operational definitions? What grammatical structures (comparatives/conditionals/quantifiers) dictate the solution’s form?”</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.4"><span class="ltx_text" id="A5.T5.3.7.1.1.4.1" style="font-size:90%;">2. [Evidence Audit]
”For each data source (question stem/options/text):</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.5"><span class="ltx_text" id="A5.T5.3.7.1.1.5.1" style="font-size:90%;">a) What measurable quantities (numerical ranges/units) are explicitly stated?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.6"><span class="ltx_text" id="A5.T5.3.7.1.1.6.1" style="font-size:90%;">b) What causal relationships (if A then B/implies/proportional to) are textually encoded?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.7"><span class="ltx_text" id="A5.T5.3.7.1.1.7.1" style="font-size:90%;">c) What constraints (assumptions/limitations/boundary conditions) are lexically embedded?”</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.8"><span class="ltx_text" id="A5.T5.3.7.1.1.8.1" style="font-size:90%;">3. [Reasoning Pathway]</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.9"><span class="ltx_text" id="A5.T5.3.7.1.1.9.1" style="font-size:90%;">”Through counterfactual testing:</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.10"><span class="ltx_text" id="A5.T5.3.7.1.1.10.1" style="font-size:90%;">Which axioms/theorems would become relevant if parameter X varied ±10%?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.11"><span class="ltx_text" id="A5.T5.3.7.1.1.11.1" style="font-size:90%;">What observable contradictions emerge when applying hypothesis Y to the given data?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.12"><span class="ltx_text" id="A5.T5.3.7.1.1.12.1" style="font-size:90%;">How do option components restrict valid inference trajectories?”</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.13"><span class="ltx_text" id="A5.T5.3.7.1.1.13.1" style="font-size:90%;">4. [Solution Validation]
”Does the proposed resolution:</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.14"><span class="ltx_text" id="A5.T5.3.7.1.1.14.1" style="font-size:90%;">1) Maintain dimensional homogeneity across all equations?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.15"><span class="ltx_text" id="A5.T5.3.7.1.1.15.1" style="font-size:90%;">2) Satisfy all explicit boundary conditions?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.16"><span class="ltx_text" id="A5.T5.3.7.1.1.16.1" style="font-size:90%;">3) Preserve logical consistency with given information?</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.17"><span class="ltx_text" id="A5.T5.3.7.1.1.17.1" style="font-size:90%;">4) Align with canonical scientific representations?”</span></span>
<span class="ltx_p" id="A5.T5.3.7.1.1.18"><span class="ltx_text" id="A5.T5.3.7.1.1.18.1" style="font-size:90%;">Operational Protocol:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T5.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T5.3.3.3" style="padding-top:0.9pt;padding-bottom:0.9pt;"><span class="ltx_inline-logical-block ltx_align_top" id="A5.T5.3.3.3.3">
<span class="ltx_para" id="A5.T5.3.3.3.3.p2">
<span class="ltx_p" id="A5.T5.1.1.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T5.1.1.1.1.1.1" style="font-size:90%;">Document each reasoning step with evidence anchors (e.g., “Stem-Line5: </span><math alttext="v=\Delta x/\Delta t" class="ltx_Math" display="inline" id="A5.T5.1.1.1.1.1.m1.1"><semantics id="A5.T5.1.1.1.1.1.m1.1a"><mrow id="A5.T5.1.1.1.1.1.m1.1.1" xref="A5.T5.1.1.1.1.1.m1.1.1.cmml"><mi id="A5.T5.1.1.1.1.1.m1.1.1.2" mathsize="90%" xref="A5.T5.1.1.1.1.1.m1.1.1.2.cmml">v</mi><mo id="A5.T5.1.1.1.1.1.m1.1.1.1" mathsize="90%" xref="A5.T5.1.1.1.1.1.m1.1.1.1.cmml">=</mo><mrow id="A5.T5.1.1.1.1.1.m1.1.1.3" xref="A5.T5.1.1.1.1.1.m1.1.1.3.cmml"><mrow id="A5.T5.1.1.1.1.1.m1.1.1.3.2" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.cmml"><mrow id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.cmml"><mi id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.2" mathsize="90%" mathvariant="normal" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.2.cmml">Δ</mi><mo id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.1" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.1.cmml">⁢</mo><mi id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.3" mathsize="90%" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.3.cmml">x</mi></mrow><mo id="A5.T5.1.1.1.1.1.m1.1.1.3.2.1" maxsize="90%" minsize="90%" stretchy="true" symmetric="true" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.1.cmml">/</mo><mi id="A5.T5.1.1.1.1.1.m1.1.1.3.2.3" mathsize="90%" mathvariant="normal" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.3.cmml">Δ</mi></mrow><mo id="A5.T5.1.1.1.1.1.m1.1.1.3.1" xref="A5.T5.1.1.1.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="A5.T5.1.1.1.1.1.m1.1.1.3.3" mathsize="90%" xref="A5.T5.1.1.1.1.1.m1.1.1.3.3.cmml">t</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="A5.T5.1.1.1.1.1.m1.1b"><apply id="A5.T5.1.1.1.1.1.m1.1.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1"><eq id="A5.T5.1.1.1.1.1.m1.1.1.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.1"></eq><ci id="A5.T5.1.1.1.1.1.m1.1.1.2.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.2">𝑣</ci><apply id="A5.T5.1.1.1.1.1.m1.1.1.3.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3"><times id="A5.T5.1.1.1.1.1.m1.1.1.3.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.1"></times><apply id="A5.T5.1.1.1.1.1.m1.1.1.3.2.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2"><divide id="A5.T5.1.1.1.1.1.m1.1.1.3.2.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.1"></divide><apply id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2"><times id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.1.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.1"></times><ci id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.2.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.2">Δ</ci><ci id="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.3.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.2.3">𝑥</ci></apply><ci id="A5.T5.1.1.1.1.1.m1.1.1.3.2.3.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.2.3">Δ</ci></apply><ci id="A5.T5.1.1.1.1.1.m1.1.1.3.3.cmml" xref="A5.T5.1.1.1.1.1.m1.1.1.3.3">𝑡</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.1.1.1.1.1.m1.1c">v=\Delta x/\Delta t</annotation><annotation encoding="application/x-llamapun" id="A5.T5.1.1.1.1.1.m1.1d">italic_v = roman_Δ italic_x / roman_Δ italic_t</annotation></semantics></math><span class="ltx_text" id="A5.T5.1.1.1.1.1.2" style="font-size:90%;">”).</span></span>
<span class="ltx_p" id="A5.T5.3.3.3.3.p2.1"><span class="ltx_text" id="A5.T5.3.3.3.3.p2.1.1" style="font-size:90%;">Flag unresolved assumptions with [UnvalidatedPremise] tags</span></span>
<span class="ltx_p" id="A5.T5.3.3.3.3.p2.2"><span class="ltx_text" id="A5.T5.3.3.3.3.p2.2.1" style="font-size:90%;">Output JSON structured as:</span></span>
</span>
<span class="ltx_para ltx_noindent" id="A5.T5.2.2.2.2.p1">
<span class="ltx_p" id="A5.T5.2.2.2.2.p1.1"><span class="ltx_text" id="A5.T5.2.2.2.2.p1.1.1" style="font-size:90%;">{ { ”process”: { {
”Phase 1”: ”[Framing] Identified core demand as… (Evidence: Q-Line2)”,
”Phase 2”: ”[Audit] Quantified parameters… (ConflictResolved: OptionC vs Text\S3)”,
”Phase 3”: ”[Pathway] Eliminated hypothesis </span><math alttext="\alpha" class="ltx_Math" display="inline" id="A5.T5.2.2.2.2.p1.1.m1.1"><semantics id="A5.T5.2.2.2.2.p1.1.m1.1a"><mi id="A5.T5.2.2.2.2.p1.1.m1.1.1" mathsize="90%" xref="A5.T5.2.2.2.2.p1.1.m1.1.1.cmml">α</mi><annotation-xml encoding="MathML-Content" id="A5.T5.2.2.2.2.p1.1.m1.1b"><ci id="A5.T5.2.2.2.2.p1.1.m1.1.1.cmml" xref="A5.T5.2.2.2.2.p1.1.m1.1.1">𝛼</ci></annotation-xml><annotation encoding="application/x-tex" id="A5.T5.2.2.2.2.p1.1.m1.1c">\alpha</annotation><annotation encoding="application/x-llamapun" id="A5.T5.2.2.2.2.p1.1.m1.1d">italic_α</annotation></semantics></math><span class="ltx_text" id="A5.T5.2.2.2.2.p1.1.2" style="font-size:90%;"> due to… (TheoremRef: Maxwell-Eq)”,
”Phase 4”: ”[Validation] Verified dimensional consistency in…”, },
”final_answer”: ”final result”} }</span></span>
</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompts used by the Scholar and Solver agents within the MAPS framework.  The prompts are designed to guide the agents' reasoning processes in a structured and iterative manner, eliciting a systematic and comprehensive solution to multimodal scientific problems. The prompts cover various aspects of scientific problem-solving, including problem decomposition, knowledge retrieval, reasoning pathways, and solution validation. The Scholar agent's prompts focus on knowledge retrieval and integration, while the Solver agent's prompts guide the solution-finding process.
> <details>
> <summary>read the caption</summary>
> Table 5: A summary of the prompts used by the Scholar and Solver agents in this paper.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A5.T6.1">
<tr class="ltx_tr" id="A5.T6.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A5.T6.1.2.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.2.1.1">
<span class="ltx_p" id="A5.T6.1.2.1.1.1" style="width:455.2pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="A5.T6.1.2.1.1.1.1" style="font-size:90%;">Critic</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.3.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.3.1.1">
<span class="ltx_p" id="A5.T6.1.3.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.3.1.1.1.1" style="font-size:90%;">You are a Socratic assessment engine conducting dialectical evaluation through this protocol:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.4.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.4.1.1">
<span class="ltx_p" id="A5.T6.1.4.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.4.1.1.1.1" style="font-size:90%;">1. [Triadic Interrogation Framework]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.5.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.5.1.1">
<span class="ltx_p" id="A5.T6.1.5.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.5.1.1.1.1" style="font-size:90%;">For each evaluation dimension (caption/alignment/knowledge/solution):</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.6.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.6.1.1">
<span class="ltx_p" id="A5.T6.1.6.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.6.1.1.1.1" style="font-size:90%;">Existential Challenge:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.7.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.7.1.1">
<span class="ltx_p" id="A5.T6.1.7.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.7.1.1.1.1" style="font-size:90%;">”What absolute evidence anchors (line numbers/data points/theorem references) validate this component’s existence?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.8.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.8.1.1">
<span class="ltx_p" id="A5.T6.1.8.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.8.1.1.1.1" style="font-size:90%;">Consistency Prosecution:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.9.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.9.1.1">
<span class="ltx_p" id="A5.T6.1.9.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.9.1.1.1.1" style="font-size:90%;">”Does internal logic maintain isomorphism across:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.10">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.10.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.10.1.1">
<span class="ltx_p" id="A5.T6.1.10.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.10.1.1.1.1" style="font-size:90%;">a) Input premises → Processing steps</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.11">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.11.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.11.1.1">
<span class="ltx_p" id="A5.T6.1.11.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.11.1.1.1.1" style="font-size:90%;">b) Methodological choices → Domain standards</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.12">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.12.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.12.1.1">
<span class="ltx_p" id="A5.T6.1.12.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.12.1.1.1.1" style="font-size:90%;">c) Assertions → Supporting evidence?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.13">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.13.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.13.1.1">
<span class="ltx_p" id="A5.T6.1.13.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.13.1.1.1.1" style="font-size:90%;">Boundary Stress Test:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.14">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.14.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.14.1.1">
<span class="ltx_p" id="A5.T6.1.14.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.14.1.1.1.1" style="font-size:90%;">”What parametric variation (±10%) would collapse this component’s validity? Which fragility indicators emerge first?”
2. [Metric Operationalization]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.15">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.15.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.15.1.1">
<span class="ltx_p" id="A5.T6.1.15.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.15.1.1.1.1" style="font-size:90%;">Score each dimension (1-5) using:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.16">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.16.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.16.1.1">
<span class="ltx_p" id="A5.T6.1.16.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.16.1.1.1.1" style="font-size:90%;">5 = Withstands three counterfactual scenarios</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.1.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.1.1.1">
<span class="ltx_p" id="A5.T6.1.1.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.1.1.1.1.1" style="font-size:90%;">4 = Requires </span><math alttext="\leq" class="ltx_Math" display="inline" id="A5.T6.1.1.1.1.1.m1.1"><semantics id="A5.T6.1.1.1.1.1.m1.1a"><mo id="A5.T6.1.1.1.1.1.m1.1.1" mathsize="90%" xref="A5.T6.1.1.1.1.1.m1.1.1.cmml">≤</mo><annotation-xml encoding="MathML-Content" id="A5.T6.1.1.1.1.1.m1.1b"><leq id="A5.T6.1.1.1.1.1.m1.1.1.cmml" xref="A5.T6.1.1.1.1.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="A5.T6.1.1.1.1.1.m1.1c">\leq</annotation><annotation encoding="application/x-llamapun" id="A5.T6.1.1.1.1.1.m1.1d">≤</annotation></semantics></math><span class="ltx_text" id="A5.T6.1.1.1.1.1.2" style="font-size:90%;"> 1 assumption validation</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.17">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.17.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.17.1.1">
<span class="ltx_p" id="A5.T6.1.17.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.17.1.1.1.1" style="font-size:90%;">3 = Needs 2-3 evidence reinforcements</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.18">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.18.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.18.1.1">
<span class="ltx_p" id="A5.T6.1.18.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.18.1.1.1.1" style="font-size:90%;">2 = Contains structural contradictions</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.19">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.19.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.19.1.1">
<span class="ltx_p" id="A5.T6.1.19.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.19.1.1.1.1" style="font-size:90%;">1 = Fails basic existence verification</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.20">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.20.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.20.1.1">
<span class="ltx_p" id="A5.T6.1.20.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.20.1.1.1.1" style="font-size:90%;">3. [Improvement Synthesis]</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.21">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.21.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.21.1.1">
<span class="ltx_p" id="A5.T6.1.21.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.21.1.1.1.1" style="font-size:90%;">Generate Socratic feedback per dimension:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.22">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.22.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.22.1.1">
<span class="ltx_p" id="A5.T6.1.22.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.22.1.1.1.1" style="font-size:90%;">For caption: ”What geometric/spatial relations lack quantifiable descriptors?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.23">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.23.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.23.1.1">
<span class="ltx_p" id="A5.T6.1.23.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.23.1.1.1.1" style="font-size:90%;">For alignment: ”Which logical connective lacks cross-text co-reference?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.24">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A5.T6.1.24.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.24.1.1">
<span class="ltx_p" id="A5.T6.1.24.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.24.1.1.1.1" style="font-size:90%;">For knowledge: ”Which concept dependency lacks literature anchoring?”</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A5.T6.1.25">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A5.T6.1.25.1" style="padding-top:0.9pt;padding-bottom:0.9pt;">
<span class="ltx_inline-block ltx_align_top" id="A5.T6.1.25.1.1">
<span class="ltx_p" id="A5.T6.1.25.1.1.1" style="width:455.2pt;"><span class="ltx_text" id="A5.T6.1.25.1.1.1.1" style="font-size:90%;">For solution: ”What inference leap lacks isomorphic mapping?”</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the prompts used by the Critic agent within the MAPS framework.  The Critic agent's role is to provide feedback and drive iterative refinement of the problem-solving process. The prompts are structured to encourage critical thinking and identify potential weaknesses in the reasoning steps, including questions about the existence of evidence, consistency of logic, robustness to variations in parameters, and alignment of reasoning with established norms.
> <details>
> <summary>read the caption</summary>
> Table 6: A summary of the prompt used by the Critic agents in this paper.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.16905/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.16905/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}