---
title: "ChartQAPro: A More Diverse and Challenging Benchmark for Chart Question Answering"
summary: "CHARTQAPRO: A new, diverse, and challenging benchmark for chart question answering, exposing limitations in current LVLMs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 York University, Canada",]
showSummary: true
date: 2025-04-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.05506 {{< /keyword >}}
{{< keyword icon="writer" >}} Ahmed Masry et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.05506" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.05506" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.05506/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Charts are everywhere, but understanding them is hard, even for advanced AI. Existing benchmarks for **Chart Question Answering (CQA) don't capture real-world chart diversity** and complexity, and large vision-language models (LVLMs) are doing too well on them, creating a false sense of progress. To address this gap, a new benchmark is needed for models to improve. 



This paper introduces **CHARTQAPRO**, a challenging benchmark, having **1,341 charts from 157 sources** and **1,948 complex questions**, multiple-choice, hypothetical, and unanswerable queries. Evaluations with 21 models show big performance drops compared to existing benchmarks. Detailed analysis pinpoints key challenges, offering insights for advancing LVLMs in chart understanding.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CHARTQAPRO is a new benchmark with diverse real-world charts and complex question types. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Current LVLMs show a significant performance drop on CHARTQAPRO compared to existing benchmarks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The study identifies key challenges for LVLMs in chart understanding, highlighting areas for future research. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers by **introducing a new benchmark that is more challenging than previous benchmark.** It can be a valuable tool to evaluate and advance LVLMs in chart understanding and reasoning, potentially leading to improved performance on real-world tasks and innovative new approaches.

------
#### Visual Insights



![](https://arxiv.org/html/2504.05506/extracted/6351499/emnlp2020-templates/imgs/chartqapro/performance_drop_comparison.png)

> 🔼 This figure compares the performance of various Large Vision-Language Models (LVLMs) on two chart question answering (CQA) benchmarks: ChartQA and the newly proposed ChartQAPro.  It highlights the significant performance drop observed when transitioning from ChartQA to the more challenging ChartQAPro benchmark for each of the listed LVLMs. This illustrates the increased complexity and diversity of ChartQAPro compared to ChartQA.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance gap between ChartQA Masry et al. (2022) and ChartQAPro for various LVLMs.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1">
<tr class="ltx_tr" id="S1.T1.3.1.2">
<td class="ltx_td ltx_border_r ltx_border_tt" id="S1.T1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S1.T1.3.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.2.2.1" style="background-color:#DFDFDF;">Chart Images</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S1.T1.3.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.2.3.1" style="background-color:#DFDFDF;">Question Types</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.3.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.1.1">Dataset</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.2.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.2.1.1.1.1">Real vs.</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.2.1.2.1.1">Synthetic</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.3.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.3.1.1.1.1"># Chart</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.3.1.2.1.1">Sources</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.4.1">Topic Diversity</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.5.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.5.1.1.1.1">Infographics</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.5.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.5.1.2.1.1">&amp; Dashboards</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.6.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.6.1.1.1.1">Accompanying</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.6.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.6.1.2.1.1">Paragraph</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.3.1.3.7" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.7.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.7.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.7.1.1.1.1">Multi</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.7.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.7.1.2.1.1">Chart</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.8.1">MCQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.9.1">Conversational</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.10.1">Hypothetical</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.3.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.11.1">Unanswerable</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.3.1.3.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.12.1">Fact Checking</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.4" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S1.T1.3.1.4.1" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.4.1.1" style="background-color:#F2F2F2;">PlotQA<span class="ltx_text ltx_font_medium" id="S1.T1.3.1.4.1.1.1"> <cite class="ltx_cite ltx_citemacro_cite">Methani et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.05506v2#bib.bib28" title="">2020</a>)</cite></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.2" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.2.1" style="background-color:#F2F2F2;">Synthetic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.3" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.3.1" style="background-color:#F2F2F2;">1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.4" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.4.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.5" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.5.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.6" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.6.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S1.T1.3.1.4.7" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.7.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.8" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.8.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.9" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.9.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.10" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.10.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S1.T1.3.1.4.11" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.11.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S1.T1.3.1.4.12" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.4.12.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.3.1.1.2" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_bold" id="S1.T1.3.1.1.2.1">ChartQA</span> <cite class="ltx_cite ltx_citemacro_cite">Masry et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.05506v2#bib.bib22" title="">2022</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.3" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;">Real</td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.4" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;">4</td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.1" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\sim" class="ltx_Math" display="inline" id="S1.T1.3.1.1.1.m1.1"><semantics id="S1.T1.3.1.1.1.m1.1a"><mo id="S1.T1.3.1.1.1.m1.1.1" mathcolor="#FF8000" xref="S1.T1.3.1.1.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S1.T1.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S1.T1.3.1.1.1.m1.1.1.cmml" xref="S1.T1.3.1.1.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S1.T1.3.1.1.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S1.T1.3.1.1.1.m1.1d">∼</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.5" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.5.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.6" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.6.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.1.7" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.7.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.8" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.8.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.9" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.9.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.10" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.10.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.1.11" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.11.1" style="color:#990000;">✗</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.1.12" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.1.12.1" style="color:#990000;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.5" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S1.T1.3.1.5.1" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.5.1.1" style="background-color:#F2F2F2;">CharXiv<span class="ltx_text ltx_font_medium" id="S1.T1.3.1.5.1.1.1"> <cite class="ltx_cite ltx_citemacro_cite">Wang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2504.05506v2#bib.bib42" title="">2024b</a>)</cite></span></span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.2" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.2.1" style="background-color:#F2F2F2;">Real</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.3" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.3.1" style="background-color:#F2F2F2;">1</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.4" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.4.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.5" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.5.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.6" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.6.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S1.T1.3.1.5.7" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.7.1" style="color:#009900;background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.8" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.8.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.9" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.9.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.10" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.10.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S1.T1.3.1.5.11" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.11.1" style="color:#009900;background-color:#F2F2F2;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.5.12" style="padding-bottom:4.30554pt;padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.5.12.1" style="color:#990000;background-color:#F2F2F2;">✗</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.6" style="background-color:#EBFFEB;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S1.T1.3.1.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold ltx_font_smallcaps" id="S1.T1.3.1.6.1.1" style="color:#1EA0DC;background-color:#EBFFEB;">ChartQA<span class="ltx_text" id="S1.T1.3.1.6.1.1.1" style="color:#32C864;">Pro<span class="ltx_text ltx_font_upright" id="S1.T1.3.1.6.1.1.1.1" style="color:#000000;"> (<span class="ltx_text" id="S1.T1.3.1.6.1.1.1.1.1" style="color:#0000FF;">Ours</span>)</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.2.1" style="background-color:#EBFFEB;">Real</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.3.1" style="background-color:#EBFFEB;">157</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.4.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.5.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.6.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S1.T1.3.1.6.7" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.7.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.8" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.8.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.9" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.9.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.10" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.10.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.11" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.11.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S1.T1.3.1.6.12" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S1.T1.3.1.6.12.1" style="color:#009900;background-color:#EBFFEB;">✓</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a detailed comparison of the CHARTQAPRO benchmark with other existing chart-based question answering (QA) datasets.  It categorizes features into two main groups: Chart Image characteristics (e.g., whether the data is real or synthetic, the number of data sources, the diversity of topics covered, the inclusion of infographics and dashboards, whether accompanying text paragraphs are included, and support for multi-chart questions) and Question Type variety (e.g., multiple choice, conversational, hypothetical, and unanswerable questions).  The table uses a visual key to indicate whether each dataset includes ('✓') or excludes ('✗') or partially includes ('∼') each feature.
> <details>
> <summary>read the caption</summary>
> Table 1:  Comparison of ChartQAPro with existing chart-based QA benchmarks. Features are grouped into Chart Images (real vs. synthetic data, number of sources, topic diversity, infographics/dashboards, accompanying paragraph, multi-chart support) and Questions Types (MCQ, conversational, hypothetical, unanswerable). ✓= Supported, ✗= Not Supported, ∼similar-to\sim∼= Partially Supported.
> </details>





### In-depth insights


#### CQA Benchmark
Chart Question Answering (CQA) benchmarks are key for assessing vision-language models' ability to interpret and reason with data visualizations. Current benchmarks often lack real-world diversity and complexity, leading to performance saturation. **Existing datasets are limited in chart types, sources, and question types, failing to capture the challenges of real-world chart understanding**. Recent models achieve high scores on existing datasets, but this doesn't translate to true chart understanding proficiency. A more comprehensive benchmark is needed to evaluate models' ability to handle diverse charts, complex layouts, and various question formats like multiple-choice and hypothetical questions. **A good CQA benchmark should cover diverse topics, multi-chart layouts, and include unanswerable questions to reflect real-world scenarios**.

#### Real-World Charts
**Real-world charts** introduce significant complexity due to diverse formats, domains, and question types, moving beyond simple data extraction. They encompass infographics, dashboards, and multi-chart layouts, requiring advanced visual reasoning and analytical skills. Unlike synthetic data, real-world charts feature varied visual styles, informal language, and potential typographical errors, posing challenges for model robustness. These charts are often accompanied by contextual information, enhancing the complexity of reasoning and necessitating a deeper understanding of the relationships between visual and textual elements. Consequently, benchmarks based on real-world charts provide a more rigorous evaluation of chart understanding abilities, uncovering limitations in models trained primarily on simpler datasets and highlighting areas for future research.

#### Visual Diversity
The research addresses the crucial aspect of visual diversity in chart datasets.  Unlike ChartQA, which relies on limited sources, the new benchmark incorporates a diverse range. **Web charts constitute the majority, supplemented by Tableau, Pew Research, PPIC, and OWID data**. Beyond standard chart types, the corpus encompasses various visualizations: bars, lines, pies, scatter plots, dashboards, infographics, and maps. To further analyze visual diversity, they encoded the images using CLIP and calculated pairwise cosine distances.  **The new benchmark demonstrates a higher average distance (0.53) than ChartQA (0.26) and CharXiv (0.27)**, empirically confirming its superior visual variety. Most pairwise distances exceed those in other benchmarks, showing a richer set of visual representations. Thus, **the study highlights the benchmark's commitment to a broader spectrum of visual data**.

#### LVLM Reasoning
Large Vision-Language Models (LVLMs) significantly impact chart understanding. **Closed-source models** lead on benchmarks, yet **open-source models** are rapidly improving. LVLMs enhance tasks like question answering, summarization, and fact-checking. Chart-specific models demonstrate strong performance but may lack generalization. The **performance gap** reveals opportunities to improve visual perception, reasoning, and instruction following. Future research should focus on real-world chart comprehension abilities, reducing the reliance on simplistic evaluations. **Focusing on comprehensive benchmarks** to make substantial progress is key.

#### Future CQA Tasks
Future Chart Question Answering (CQA) tasks should prioritize **dynamic and interactive charts**, as static screenshots limit real-world applicability. Research could explore **chart-to-summary generation or chart-to-code translation**, broadening the scope beyond question answering. Improving evaluation with **advanced prompt engineering** could also reveal insights into model performance. These directions could enhance the practicality and depth of CQA research, making models more versatile and insightful. The lack of **interactivity is also a significant limitation**. Real-world dashboards allow hovering, filtering, and data manipulation, impacting insight extraction, suggesting future research should focus on dynamic, interactive charts and address the challenge.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.05506/x1.png)

> 🔼 Figure 2 showcases the enhanced diversity of CHARTQAPRO compared to existing chart question answering datasets.  It visually demonstrates the wider variety of question types included in CHARTQAPRO, such as mathematical reasoning, visual reasoning, conversational questions, hypothetical questions, fact-checking, and unanswerable questions, highlighting its improved ability to comprehensively assess chart understanding capabilities. Each question type is exemplified by a sample chart and associated question, revealing CHARTQAPRO's broader scope and complexity.
> <details>
> <summary>read the caption</summary>
> Figure 2:  ChartQAPro covers a more diverse range of questions compared to existing chart question answering datasets (Table 1), providing an extensive evaluation of chart understanding abilities.
> </details>



![](https://arxiv.org/html/2504.05506/x2.png)

> 🔼 The figure illustrates the three main stages of the CHARTQAPRO dataset creation process.  Stage 1 involves collecting chart images from diverse online sources such as Pew Research, Tableau, and others, as well as through web crawling. This collection prioritizes visual and topical diversity. Stage 2 focuses on generating question-answer pairs using a human-VLM collaboration approach. Seed questions are initially created by human annotators, and then expanded upon using several large language models (VLMs), followed by human refinement to ensure accuracy and clarity. Finally, Stage 3 involves a comprehensive review of the generated question-answer pairs to ensure high-quality annotations, employing several annotators for this purpose. This iterative process helps ensure the dataset covers a broad range of chart types, question styles, and complexities.
> <details>
> <summary>read the caption</summary>
> Figure 3:  ChartQAPro Dataset Construction Process
> </details>



![](https://arxiv.org/html/2504.05506/x3.png)

> 🔼 Figure 4 is a donut chart visualizing the sources of chart images within the CHARTQAPRO dataset and the topic distribution for each source. The inner ring displays the proportion of charts from different sources (WebCharts, Tableau, Pew, OWID, PPIC), while the outer ring shows the percentage of charts pertaining to various topics (Economy, Health, Politics, Technology, Environment, etc.) within each source. This double-ring structure allows for a clear comparison of both the origins of the charts and the subject matter they represent, highlighting the diversity of the CHARTQAPRO dataset.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distribution of topics per source in ChartQAPro. The inner ring represents online sources, while the outer ring shows topic distribution for each source.
> </details>



![](https://arxiv.org/html/2504.05506/x4.png)

> 🔼 Figure 5 shows examples of common errors made by large language models (LLMs) when answering questions about charts.  These examples are categorized into three types of errors: visual perception errors, instruction-following errors, and math reasoning errors. Each example displays the original chart image, the question asked, the model's response, and the ground truth (correct) answer. Visual perception errors illustrate the difficulty LLMs have in accurately interpreting visual elements of the chart, such as data labels or values. Instruction-following errors highlight the models' struggle with complex reasoning processes, particularly when asked to perform multiple steps or apply chain-of-thought reasoning. Math reasoning errors demonstrate the difficulties models encounter when executing mathematical calculations based on chart data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Sample errors across three categories: Visual Perception, Instruction Following, and Math Reasoning.
> </details>



![](https://arxiv.org/html/2504.05506/x5.png)

> 🔼 This figure displays examples of chart images sourced from various online platforms and integrated into the ChartQAPro dataset. Each chart image is paired with corresponding question-answer pairs, showcasing the diversity of data visualizations and question types within the benchmark. The sources include Pew Research, Our World in Data (OWID), Public Policy Institute of California (PPIC), Tableau Public, and web-crawled charts, representing a broad spectrum of data visualizations and real-world scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 6: Example of chart images collected from different sources and their corresponding QA pairs in  ChartQAPro.
> </details>



![](https://arxiv.org/html/2504.05506/x6.png)

> 🔼 Figure 7 presents a diverse set of chart question-answering examples from the CHARTQAPRO benchmark.  Each example showcases a different question type, including mathematical reasoning, visual reasoning, fact-checking, hypothetical questions, conversational questions, and multi-chart questions. The visual diversity of the charts and the range of cognitive skills needed to answer the questions highlight the complexity of the CHARTQAPRO benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 7: More examples of different question types in  ChartQAPro.
> </details>



![](https://arxiv.org/html/2504.05506/x7.png)

> 🔼 Figure 8 showcases examples of diverse chart types from ChartQAPro, categorized by major themes (Politics, Environment, Economy, Health, Technology, and International Affairs).  Each chart visual represents a real-world data visualization style and complexity, demonstrating the varied data representations and question types found within the CHARTQAPRO benchmark.  The figure highlights the breadth of visual and topical diversity incorporated into the dataset.
> <details>
> <summary>read the caption</summary>
> Figure 8: Examples of different charts related to major topics, i.e., ‘Politics’, ‘Environment’, ‘Economy’, ‘Health’, ‘Technology’, ‘International Affairs’ etc. in  ChartQAPro.
> </details>



![](https://arxiv.org/html/2504.05506/x8.png)

> 🔼 Figure 9 showcases two instances of VLM-generated question-answer pairs. In (a), the VLM successfully generates a question and provides the correct answer, highlighted in green.  Conversely, in (b), the VLM generates a question with an incorrect answer, indicated in red. This figure illustrates the VLM's capability to produce questions but also highlights its susceptibility to errors in answer generation.
> <details>
> <summary>read the caption</summary>
> Figure 9: Examples of VLM-assisted question-and-answer pairs, where: (a) the VLM generates a question along with a correct answer, marked in Green text, (b) the VLM generates a question, but the answer is incorrect, marked in Red text.
> </details>



![](https://arxiv.org/html/2504.05506/extracted/6351499/emnlp2020-templates/imgs/chartqapro/boxplot_distance.png)

> 🔼 This box plot visualizes the pairwise cosine distances calculated between the chart images in three different datasets: ChartQA, CharXiv, and ChartQAPro.  The y-axis represents the cosine distance, a measure of similarity; a higher distance indicates greater dissimilarity or visual diversity between images. The plot shows that ChartQAPro has a significantly higher median cosine distance compared to the other two datasets, with a larger spread of distances.  This demonstrates that ChartQAPro's chart images are visually more diverse than those found in ChartQA and CharXiv.
> <details>
> <summary>read the caption</summary>
> Figure 10: Box plot of pairwise cosine distances among chart images. ChartQAPro exhibits a higher median and consistently larger distances, indicating significantly greater visual diversity.
> </details>



![](https://arxiv.org/html/2504.05506/extracted/6351499/emnlp2020-templates/imgs/chartqapro/linguistic_diversity_comparison_1.png)

> 🔼 Figure 11 presents a comparison of lexical and semantic diversity across three chart question answering datasets: ChartQA, ChartXiv, and ChartQAPro. Lexical diversity, measured by the Type-Token Ratio (TTR), reflects the richness of vocabulary. Semantic diversity, calculated using average pairwise cosine distances between word embeddings, indicates the breadth of semantic coverage. The bar chart visually represents the TTR for each dataset, showing ChartQAPro having the highest value, signifying a richer vocabulary. The second bar chart displays the semantic diversity (cosine distance), again demonstrating that ChartQAPro has the highest value, indicating broader semantic coverage than the other two datasets.
> <details>
> <summary>read the caption</summary>
> Figure 11: Linguistic Diversity Comparison Across Datasets. The figure shows lexical diversity (TTR) and semantic diversity (cosine distance) for ChartQA, Chartxiv, and ChartQAPro. Higher TTR and semantic diversity indicate richer vocabulary and broader semantic coverage. ChartQAPro exhibits the highest diversity.
> </details>



![](https://arxiv.org/html/2504.05506/x9.png)

> 🔼 Figure 12 showcases examples of typical errors made by various large language models (LLMs) when processing chart data. The errors are categorized into three groups: visual perception issues (where the model fails to correctly interpret the visual elements of the chart), instruction-following errors (where the model fails to understand and execute the given instructions, regardless of whether the instructions are provided directly or as chain-of-thought or program-of-thought prompts), and mathematical reasoning errors (where the model fails to perform calculations and other mathematical operations correctly based on the chart data). Each example includes a brief description of the error, the model that made the error, the prompt style used, the ground truth (correct) answer, and the model's incorrect response. The figure is designed to illustrate common challenges and weaknesses of current LLMs in chart question answering tasks, highlighting areas where improvement is needed.
> <details>
> <summary>read the caption</summary>
> Figure 12: Sample errors across three categories: Visual Perception, Instruction Following (CoT, PoT, Direct), and Mathematical Reasoning.
> </details>



![](https://arxiv.org/html/2504.05506/x10.png)

> 🔼 Figure 13 showcases instances where open-source large vision-language models (LVLMs) encountered difficulties across various question types within the CHARTQAPRO benchmark.  These examples highlight common errors, such as misinterpreting visual information (visual perception), failing to follow instructions correctly (instruction following), and struggling with mathematical calculations (math reasoning). The figure is divided into sub-sections by question category and error type.  Each sub-section displays a representative chart image, the associated question, the model's response, and the correct answer.  The visualizations demonstrate the challenges open-source LVLMs face when dealing with complex chart data and diverse question styles.
> <details>
> <summary>read the caption</summary>
> Figure 13: Sample errors from open-source models across different categories in  ChartQAPro.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.2.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.2.1.1.1.1">Real vs.</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.2.1.2.1.1">Synthetic</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the distribution of various chart types and question types included in the CHARTQAPRO benchmark dataset.  It provides a quantitative overview of the dataset's diversity in terms of the visual representations used (bar charts, line charts, pie charts, area charts, scatter plots, bubble charts, dashboards, infographics, and other chart types) and the kinds of questions asked (factoid, multiple-choice, conversational, hypothetical, unanswerable, and fact-checking questions). This information is crucial for understanding the scope and complexity of the CHARTQAPRO benchmark and its ability to comprehensively evaluate large vision-language models (LVLMs).
> <details>
> <summary>read the caption</summary>
> Table 2: Distribution of chart and question types in ChartQAPro.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.3.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.3.1.1.1.1"># Chart</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.3.1.2.1.1">Sources</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various large language models (LLMs) on the CHARTQAPRO benchmark dataset.  It breaks down the accuracy of each model across different question types (Factoid, Multiple Choice, Conversational, Hypothetical, Fact Checking) and prompting strategies (Direct, Chain-of-Thought, Program-of-Thought).  Models are categorized and color-coded for easy comparison: human baseline, closed-source LLMs, open-source LLMs with less than 7B parameters, open-source LLMs with 7-12B parameters, and chart-specific LLMs.  The highest accuracy within each model category is bolded.
> <details>
> <summary>read the caption</summary>
> Table 3: Accuracy (%) on ChartQAPro by Prompt Type (main headers) and Question Type (sub-headers). Each Prompt Type block has five question types plus an Overall sub-column. Color coding for comparison: human baseline, closed-source models, open-source models below 7B parameters, open-source models between 7-12B parameters, chart-specific models. We bold the best score within each model category.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.5.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.5.1.1.1.1">Infographics</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.5.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.5.1.2.1.1">&amp; Dashboards</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the ChartQAPro benchmark dataset. It explores the impact of three independent factors on model performance: (A) Chart type (variations in chart visual complexity, such as bar, line, pie charts, infographics, dashboards, etc.), (B) Answer type (factoid, multiple-choice, hypothetical, fact-checking, conversational, and unanswerable), and (C) Paragraph presence (whether additional contextual text is available along with the chart). The results show the accuracy of different models under various combinations of these factors.
> <details>
> <summary>read the caption</summary>
> Table 4:  Ablation results on ChartQAPro across three independent dimensions. (A) Chart Type, (B) Answer Type, (C) Paragraph Presence.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.6.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.6.1.1.1.1">Accompanying</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.6.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.6.1.2.1.1">Paragraph</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table showcases various examples of chart visualizations, highlighting the differences in their structure and purpose. It includes multi-chart images combining multiple charts to compare related data, infographics integrating text, images, and charts for enhanced explanation, and dashboards organizing charts and key metrics for quick interpretation and decision-making. Each example is visually distinct for easier comprehension.
> <details>
> <summary>read the caption</summary>
> Table 5: Examples of Multi-Chart Images, Infographics, and Dashboards, with distinct background colors for clarity.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S1.T1.3.1.3.7.1">
<tr class="ltx_tr" id="S1.T1.3.1.3.7.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.7.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.7.1.1.1.1">Multi</span></td>
</tr>
<tr class="ltx_tr" id="S1.T1.3.1.3.7.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S1.T1.3.1.3.7.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S1.T1.3.1.3.7.1.2.1.1">Chart</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the different prompt templates used for each question type in the 'Direct' setup of the CHARTQAPRO benchmark.  Each prompt template provides instructions to a large language model (LLM) on how to generate an answer given a chart image and a question.  The instructions are tailored to the specific characteristics of each question type (factoid, multiple-choice, hypothetical, fact-checking, and conversational), ensuring that the LLMs respond appropriately.
> <details>
> <summary>read the caption</summary>
> Table 6: Prompt Templates for Each Question Category in the Direct setup.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1">
<tr class="ltx_tr" id="S3.T2.3.1.1">
<td class="ltx_td" id="S3.T2.3.1.1.1"></td>
<td class="ltx_td ltx_align_center" colspan="9" id="S3.T2.3.1.1.2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.1.2.1" style="background-color:#DFDFDF;">Chart Types</span></td>
<td class="ltx_td ltx_align_center" colspan="5" id="S3.T2.3.1.1.3"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.1.3.1" style="background-color:#DFDFDF;">Question Types</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2">
<td class="ltx_td ltx_border_t" id="S3.T2.3.1.2.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.2.1">Bar</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.3.1">Line</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.4.1">Pie</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.5"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.5.1">Area</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.6.1">Scatter</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.7"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.7.1">Bubble</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.8"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.8.1">Dashboard</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.9"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.9.1">Infographic</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.2.10"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.10.1">Other</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.11">
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.11.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.11.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.1">Math</span> <span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.2">&amp;</span> <span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.3">Visual</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.11.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.2.1.1">Reasoning</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.12"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.12.1">Conversational</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.13">
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.13.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.13.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.13.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.13.1.1.1.1">Fact</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.13.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.13.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.13.1.2.1.1">Checking</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.14">
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.14.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.14.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.14.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.14.1.1.1.1">Multiple</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.14.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.14.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.14.1.2.1.1">Choice</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.2.15"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.15.1">Hypothetical</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.3" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.3.1.3.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.3.1.1" style="background-color:#F2F2F2;">Count</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.2"><span class="ltx_text" id="S3.T2.3.1.3.2.1" style="background-color:#F2F2F2;">427</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.3"><span class="ltx_text" id="S3.T2.3.1.3.3.1" style="background-color:#F2F2F2;">355</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.4"><span class="ltx_text" id="S3.T2.3.1.3.4.1" style="background-color:#F2F2F2;">29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.5"><span class="ltx_text" id="S3.T2.3.1.3.5.1" style="background-color:#F2F2F2;">30</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.6"><span class="ltx_text" id="S3.T2.3.1.3.6.1" style="background-color:#F2F2F2;">8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.7"><span class="ltx_text" id="S3.T2.3.1.3.7.1" style="background-color:#F2F2F2;">7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.8"><span class="ltx_text" id="S3.T2.3.1.3.8.1" style="background-color:#F2F2F2;">258</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.9"><span class="ltx_text" id="S3.T2.3.1.3.9.1" style="background-color:#F2F2F2;">190</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.3.1.3.10"><span class="ltx_text" id="S3.T2.3.1.3.10.1" style="background-color:#F2F2F2;">37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.11"><span class="ltx_text" id="S3.T2.3.1.3.11.1" style="background-color:#F2F2F2;">1081</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.12"><span class="ltx_text" id="S3.T2.3.1.3.12.1" style="background-color:#F2F2F2;">311</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.13"><span class="ltx_text" id="S3.T2.3.1.3.13.1" style="background-color:#F2F2F2;">244</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.14"><span class="ltx_text" id="S3.T2.3.1.3.14.1" style="background-color:#F2F2F2;">214</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.3.1.3.15"><span class="ltx_text" id="S3.T2.3.1.3.15.1" style="background-color:#F2F2F2;">98</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.4">
<td class="ltx_td ltx_align_left" id="S3.T2.3.1.4.1"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T2.3.1.4.2"></td>
<td class="ltx_td" id="S3.T2.3.1.4.3"></td>
<td class="ltx_td" id="S3.T2.3.1.4.4"></td>
<td class="ltx_td" id="S3.T2.3.1.4.5"></td>
<td class="ltx_td" id="S3.T2.3.1.4.6"></td>
<td class="ltx_td" id="S3.T2.3.1.4.7"></td>
<td class="ltx_td" id="S3.T2.3.1.4.8"></td>
<td class="ltx_td" id="S3.T2.3.1.4.9"></td>
<td class="ltx_td" id="S3.T2.3.1.4.10"></td>
<td class="ltx_td" id="S3.T2.3.1.4.11"></td>
<td class="ltx_td" id="S3.T2.3.1.4.12"></td>
<td class="ltx_td" id="S3.T2.3.1.4.13"></td>
<td class="ltx_td" id="S3.T2.3.1.4.14"></td>
<td class="ltx_td" id="S3.T2.3.1.4.15"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the prompt templates used for each question category within the Chain of Thought (CoT) experimental setup of the CHARTQAPRO benchmark.  For each category (Factoid, Multi-Choice, Hypothetical, Fact-Checking, Conversational), it provides a detailed description of how the prompts instruct the large language models (LLMs) to reason through the questions step-by-step, generating a final answer.  It emphasizes the instruction to consider the image data and to provide only the final answer, formatted appropriately, avoiding extra text.
> <details>
> <summary>read the caption</summary>
> Table 7: Prompt Templates for Each Question Category under the Chain of Thought Setup
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.11.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.11.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.11.1.1.1">
<span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.1">Math</span> <span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.2">&amp;</span> <span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.1.1.3">Visual</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.11.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.11.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.11.1.2.1.1">Reasoning</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the various prompt templates utilized for each question category within the Program-of-Thought setup of the CHARTQAPRO benchmark.  These prompts instruct the language models on how to formulate their responses, ensuring consistency across different question types.  For each category (Factoid, Multi-Choice, Hypothetical, Fact-Checking, and Conversational), a specific template is provided, guiding the model on the expected response format and content.
> <details>
> <summary>read the caption</summary>
> Table 8: Prompt Templates for Each Question Category in the Program-of-Thought setup.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.13.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.13.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.13.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.13.1.1.1.1">Fact</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.13.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.13.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.13.1.2.1.1">Checking</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the different prompt templates used for generating questions using large vision-language models (VLMs) for each question category in the CHARTQAPRO benchmark.  The prompts are designed to elicit diverse types of questions, including those requiring reasoning, fact-checking, and conversational abilities. The templates specify the expected answer format and provide guidelines for handling unanswerable questions.
> <details>
> <summary>read the caption</summary>
> Table 9: Prompt Templates for generating questions using VLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.3.1.2.14.1">
<tr class="ltx_tr" id="S3.T2.3.1.2.14.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.14.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.14.1.1.1.1">Multiple</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.3.1.2.14.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.3.1.2.14.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.3.1.2.14.1.2.1.1">Choice</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of the Claude Sonnet 3.5 language model on three different chart question answering (CQA) benchmarks: ChartQA, CharXiv, and ChartQAPro.  The results demonstrate the accuracy achieved by Claude Sonnet 3.5 on each benchmark.  ChartQAPro shows a significantly lower accuracy than ChartQA, highlighting the increased complexity and challenges of real-world chart understanding tasks. The decreased performance on ChartQAPro emphasizes the need for more advanced chart understanding capabilities in language models. 
> <details>
> <summary>read the caption</summary>
> Table 10:  Performance of Claude Sonnet 3.5 across three chart-reasoning benchmarks. The lower accuracy on  ChartQAPro (55.81%) illustrates its increased difficulty compared to ChartQA (90.50%), highlighting the need for more robust chart understanding capabilities.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.05506/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.05506/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}