---
title: "VistaDPO: Video Hierarchical Spatial-Temporal Direct Preference Optimization for Large Video Models"
summary: "VistaDPO enhances LVMs via hierarchical spatiotemporal preference alignment, effectively mitigating video-language misalignment and hallucination."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Hong Kong",]
showSummary: true
date: 2025-04-17
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.13122 {{< /keyword >}}
{{< keyword icon="writer" >}} Haojian Huang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-18 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.13122" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.13122" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.13122/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Video Models (LVMs) have shown promise in video understanding, but often face misalignment and hallucination issues. To tackle these issues, the paper introduces a Video Hierarchical Spatial-Temporal Direct Preference Optimization framework. This novel approach improves text-video alignment across three hierarchical levels: aligning video content with responses, aligning video temporal semantics with event descriptions, and aligning spatial objects with language tokens.



Addressing the lack of datasets for fine-grained video-language alignment, the paper constructs a dataset of 7.2K QA pairs, VistaDPO-7k, annotated with chosen and rejected responses and spatial-temporal grounding. The extensive experiments on benchmarks demonstrate that the proposed VistaDPO enhances the performance of existing LVMs, effectively mitigating video-language misalignment and hallucination issues. The code and dataset will be released to the community.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VistaDPO, enhances text-video preference alignment across three hierarchical levels: Instance Level, Temporal Level, and Perceptive Level. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VistaDPO-7k, a dataset of 7.2K QA pairs annotated with chosen and rejected responses, along with spatial-temporal grounding information is constructed. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} VistaDPO significantly improves the performance of existing LVMs and effectively mitigates video-language misalignment and hallucination. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it **addresses critical limitations of existing LVMs by proposing a novel framework, VistaDPO, that enhances video-language preference alignment.** VistaDPO offers a fine-grained approach to preference optimization. This **opens new avenues for research to achieve more robust and human-aligned video understanding.**

------
#### Visual Insights



![](https://arxiv.org/html/2504.13122/x1.png)

> 🔼 Figure 1 illustrates the limitations of previous direct preference optimization (DPO) methods and introduces the proposed VistaDPO framework. (a) shows traditional textual DPO ignoring visual information, resulting in limited performance on video-language tasks. (b) depicts existing multimodal DPO approaches with coarse alignment that overlook rich temporal and perceptual video details. In contrast, (c) and (d) present VistaDPO, which uses a hierarchical spatiotemporal preference optimization framework that enables fine-grained video-language alignment by considering temporal information and perceptual details. In (d), yw is shown as a preferred response over yl, with vw being the visual input more likely to produce yw than vl. 
> <details>
> <summary>read the caption</summary>
> Figure 1: (a) Traditional textual DPO overlooks multimodal information, limiting video-language tasks. (b) Existing multimodal DPO methods rely on coarse alignment, missing rich temporal and perceptual details. (c&d) VistaDPO overcomes these limitations with a hierarchical spatiotemporal preference optimization framework, enabling fine-grained video-language alignment and precise reasoning over video dynamics. Here, ywsubscript𝑦𝑤y_{w}italic_y start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT is the preferred response over ylsubscript𝑦𝑙y_{l}italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT, and vwsubscript𝑣𝑤v_{w}italic_v start_POSTSUBSCRIPT italic_w end_POSTSUBSCRIPT the visual input more likely to produce it than vlsubscript𝑣𝑙v_{l}italic_v start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T1.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T1.20.17.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T1.20.17.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_ERROR undefined" id="S6.T1.20.17.1.1.1">\multirow</span>3*<span class="ltx_text ltx_font_bold" id="S6.T1.20.17.1.1.2">Models</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S6.T1.20.17.1.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.20.17.1.2.1">VideoHallucer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="7" id="S6.T1.20.17.1.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.20.17.1.3.1">EventHallusion</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.7.3">
<th class="ltx_td ltx_th ltx_th_row" id="S6.T1.7.3.4" style="padding-left:2.3pt;padding-right:2.3pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.5.1.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_ERROR undefined" id="S6.T1.5.1.1.2">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="S6.T1.5.1.1.1">Basic<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.5.1.1.1.m1.1"><semantics id="S6.T1.5.1.1.1.m1.1a"><mo id="S6.T1.5.1.1.1.m1.1.1" stretchy="false" xref="S6.T1.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.5.1.1.1.m1.1b"><ci id="S6.T1.5.1.1.1.m1.1.1.cmml" xref="S6.T1.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.5.1.1.1.m1.1d">↑</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.6.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_ERROR undefined" id="S6.T1.6.2.2.2">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="S6.T1.6.2.2.1">Hallucinated<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.6.2.2.1.m1.1"><semantics id="S6.T1.6.2.2.1.m1.1a"><mo id="S6.T1.6.2.2.1.m1.1.1" stretchy="false" xref="S6.T1.6.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.6.2.2.1.m1.1b"><ci id="S6.T1.6.2.2.1.m1.1.1.cmml" xref="S6.T1.6.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.6.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.6.2.2.1.m1.1d">↑</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.7.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">
<span class="ltx_ERROR undefined" id="S6.T1.7.3.3.2">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="S6.T1.7.3.3.1">Overall<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.7.3.3.1.m1.1"><semantics id="S6.T1.7.3.3.1.m1.1a"><mo id="S6.T1.7.3.3.1.m1.1.1" stretchy="false" xref="S6.T1.7.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.7.3.3.1.m1.1b"><ci id="S6.T1.7.3.3.1.m1.1.1.cmml" xref="S6.T1.7.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.7.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.7.3.3.1.m1.1d">↑</annotation></semantics></math></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T1.7.3.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.7.3.5.1">Entire</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T1.7.3.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.7.3.6.1">Mix</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.7.3.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.7.3.7.1">Misleading</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S6.T1.7.3.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.7.3.8.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.14.10">
<th class="ltx_td ltx_th ltx_th_row" id="S6.T1.14.10.8" style="padding-left:2.3pt;padding-right:2.3pt;"></th>
<td class="ltx_td" id="S6.T1.14.10.9" style="padding-left:2.3pt;padding-right:2.3pt;"></td>
<td class="ltx_td" id="S6.T1.14.10.10" style="padding-left:2.3pt;padding-right:2.3pt;"></td>
<td class="ltx_td" id="S6.T1.14.10.11" style="padding-left:2.3pt;padding-right:2.3pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.8.4.1" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.8.4.1.1">Binary<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.8.4.1.1.m1.1"><semantics id="S6.T1.8.4.1.1.m1.1a"><mo id="S6.T1.8.4.1.1.m1.1.1" stretchy="false" xref="S6.T1.8.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.8.4.1.1.m1.1b"><ci id="S6.T1.8.4.1.1.m1.1.1.cmml" xref="S6.T1.8.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.8.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.8.4.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.9.5.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.9.5.2.1">Desc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.9.5.2.1.m1.1"><semantics id="S6.T1.9.5.2.1.m1.1a"><mo id="S6.T1.9.5.2.1.m1.1.1" stretchy="false" xref="S6.T1.9.5.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.9.5.2.1.m1.1b"><ci id="S6.T1.9.5.2.1.m1.1.1.cmml" xref="S6.T1.9.5.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.9.5.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.9.5.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.10.6.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.10.6.3.1">Binary<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.10.6.3.1.m1.1"><semantics id="S6.T1.10.6.3.1.m1.1a"><mo id="S6.T1.10.6.3.1.m1.1.1" stretchy="false" xref="S6.T1.10.6.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.10.6.3.1.m1.1b"><ci id="S6.T1.10.6.3.1.m1.1.1.cmml" xref="S6.T1.10.6.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.10.6.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.10.6.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.11.7.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.11.7.4.1">Desc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.11.7.4.1.m1.1"><semantics id="S6.T1.11.7.4.1.m1.1a"><mo id="S6.T1.11.7.4.1.m1.1.1" stretchy="false" xref="S6.T1.11.7.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.11.7.4.1.m1.1b"><ci id="S6.T1.11.7.4.1.m1.1.1.cmml" xref="S6.T1.11.7.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.11.7.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.11.7.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.12.8.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.12.8.5.1">Binary<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.12.8.5.1.m1.1"><semantics id="S6.T1.12.8.5.1.m1.1a"><mo id="S6.T1.12.8.5.1.m1.1.1" stretchy="false" xref="S6.T1.12.8.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.12.8.5.1.m1.1b"><ci id="S6.T1.12.8.5.1.m1.1.1.cmml" xref="S6.T1.12.8.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.12.8.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.12.8.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.13.9.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.13.9.6.1">Binary<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.13.9.6.1.m1.1"><semantics id="S6.T1.13.9.6.1.m1.1a"><mo id="S6.T1.13.9.6.1.m1.1.1" stretchy="false" xref="S6.T1.13.9.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.13.9.6.1.m1.1b"><ci id="S6.T1.13.9.6.1.m1.1.1.cmml" xref="S6.T1.13.9.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.13.9.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.13.9.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.14.10.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.14.10.7.1">Desc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T1.14.10.7.1.m1.1"><semantics id="S6.T1.14.10.7.1.m1.1a"><mo id="S6.T1.14.10.7.1.m1.1.1" stretchy="false" xref="S6.T1.14.10.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T1.14.10.7.1.m1.1b"><ci id="S6.T1.14.10.7.1.m1.1.1.cmml" xref="S6.T1.14.10.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.14.10.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T1.14.10.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.18.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T1.20.18.2.1" style="padding-left:2.3pt;padding-right:2.3pt;">VideoChatGPT <cite class="ltx_cite ltx_citemacro_citep">(Maaz et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib52" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.2" style="padding-left:2.3pt;padding-right:2.3pt;">92.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.3" style="padding-left:2.3pt;padding-right:2.3pt;">10.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.4" style="padding-left:2.3pt;padding-right:2.3pt;">6.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.5" style="padding-left:2.3pt;padding-right:2.3pt;">14.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.6" style="padding-left:2.3pt;padding-right:2.3pt;">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.7" style="padding-left:2.3pt;padding-right:2.3pt;">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.9" style="padding-left:2.3pt;padding-right:2.3pt;">21.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.10" style="padding-left:2.3pt;padding-right:2.3pt;">36.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.18.2.11" style="padding-left:2.3pt;padding-right:2.3pt;">4.3</td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.19.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.20.19.3.1" style="padding-left:2.3pt;padding-right:2.3pt;">VideoChat2 <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib38" title="">2024d</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.2" style="padding-left:2.3pt;padding-right:2.3pt;">29.7</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.3" style="padding-left:2.3pt;padding-right:2.3pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.4" style="padding-left:2.3pt;padding-right:2.3pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.5" style="padding-left:2.3pt;padding-right:2.3pt;">16.7</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.6" style="padding-left:2.3pt;padding-right:2.3pt;">4.6</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.7" style="padding-left:2.3pt;padding-right:2.3pt;">12.4</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.8" style="padding-left:2.3pt;padding-right:2.3pt;">1.6</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.9" style="padding-left:2.3pt;padding-right:2.3pt;">22.6</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.10" style="padding-left:2.3pt;padding-right:2.3pt;">16.1</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.19.3.11" style="padding-left:2.3pt;padding-right:2.3pt;">2.6</td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.20.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.20.20.4.1" style="padding-left:2.3pt;padding-right:2.3pt;">LLaMA-VID <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib39" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.2" style="padding-left:2.3pt;padding-right:2.3pt;">89.9</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.3" style="padding-left:2.3pt;padding-right:2.3pt;">26.6</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.4" style="padding-left:2.3pt;padding-right:2.3pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.5" style="padding-left:2.3pt;padding-right:2.3pt;">30.7</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.6" style="padding-left:2.3pt;padding-right:2.3pt;">16.5</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.7" style="padding-left:2.3pt;padding-right:2.3pt;">73.6</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.8" style="padding-left:2.3pt;padding-right:2.3pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.9" style="padding-left:2.3pt;padding-right:2.3pt;">43.1</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.10" style="padding-left:2.3pt;padding-right:2.3pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="S6.T1.20.20.4.11" style="padding-left:2.3pt;padding-right:2.3pt;">10.9</td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.21.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T1.20.21.5.1" style="padding-left:2.3pt;padding-right:2.3pt;">PLLaVA <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib76" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.2" style="padding-left:2.3pt;padding-right:2.3pt;">75.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.3" style="padding-left:2.3pt;padding-right:2.3pt;">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.4" style="padding-left:2.3pt;padding-right:2.3pt;">38.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.5" style="padding-left:2.3pt;padding-right:2.3pt;">45.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.6" style="padding-left:2.3pt;padding-right:2.3pt;">16.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.7" style="padding-left:2.3pt;padding-right:2.3pt;">58.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.8" style="padding-left:2.3pt;padding-right:2.3pt;">3.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.9" style="padding-left:2.3pt;padding-right:2.3pt;">81.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.10" style="padding-left:2.3pt;padding-right:2.3pt;">60.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.21.5.11" style="padding-left:2.3pt;padding-right:2.3pt;">6.1</td>
</tr>
<tr class="ltx_tr" id="S6.T1.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.15.11.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T1.15.11.1.m1.1"><semantics id="S6.T1.15.11.1.m1.1a"><mo id="S6.T1.15.11.1.m1.1.1" xref="S6.T1.15.11.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T1.15.11.1.m1.1b"><plus id="S6.T1.15.11.1.m1.1.1.cmml" xref="S6.T1.15.11.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.15.11.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T1.15.11.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.2" style="padding-left:2.3pt;padding-right:2.3pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.3" style="padding-left:2.3pt;padding-right:2.3pt;">58.1</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.4" style="padding-left:2.3pt;padding-right:2.3pt;">36.2</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.5" style="padding-left:2.3pt;padding-right:2.3pt;">47.4</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.6" style="padding-left:2.3pt;padding-right:2.3pt;">19.3</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.7" style="padding-left:2.3pt;padding-right:2.3pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.8" style="padding-left:2.3pt;padding-right:2.3pt;">4.1</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.9" style="padding-left:2.3pt;padding-right:2.3pt;">83.3</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.10" style="padding-left:2.3pt;padding-right:2.3pt;">45.7</td>
<td class="ltx_td ltx_align_center" id="S6.T1.15.11.11" style="padding-left:2.3pt;padding-right:2.3pt;">9.8</td>
</tr>
<tr class="ltx_tr" id="S6.T1.16.12" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.16.12.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T1.16.12.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T1.16.12.1.m1.1a"><mo id="S6.T1.16.12.1.m1.1.1" mathbackground="#E6FFFF" xref="S6.T1.16.12.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T1.16.12.1.m1.1b"><plus id="S6.T1.16.12.1.m1.1.1.cmml" xref="S6.T1.16.12.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.16.12.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T1.16.12.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S6.T1.16.12.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="S6.T1.16.12.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.2.1" style="background-color:#E6FFFF;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.3.1" style="background-color:#E6FFFF;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.4.1" style="background-color:#E6FFFF;">57.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.5.1" style="background-color:#E6FFFF;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.6.1" style="background-color:#E6FFFF;">23.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.7.1" style="background-color:#E6FFFF;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.8.1" style="background-color:#E6FFFF;">6.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.9.1" style="background-color:#E6FFFF;">97.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.10" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.10.1" style="background-color:#E6FFFF;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.16.12.11" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.16.12.11.1" style="background-color:#E6FFFF;">12.7</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.17.13" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.17.13.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="\Delta\%" class="ltx_Math" display="inline" id="S6.T1.17.13.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T1.17.13.1.m1.1a"><mrow id="S6.T1.17.13.1.m1.1.1" xref="S6.T1.17.13.1.m1.1.1.cmml"><mi id="S6.T1.17.13.1.m1.1.1.2" mathbackground="#E6FFFF" mathvariant="normal" xref="S6.T1.17.13.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T1.17.13.1.m1.1.1.1" mathbackground="#E6FFFF" xref="S6.T1.17.13.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T1.17.13.1.m1.1b"><apply id="S6.T1.17.13.1.m1.1.1.cmml" xref="S6.T1.17.13.1.m1.1.1"><csymbol cd="latexml" id="S6.T1.17.13.1.m1.1.1.1.cmml" xref="S6.T1.17.13.1.m1.1.1.1">percent</csymbol><ci id="S6.T1.17.13.1.m1.1.1.2.cmml" xref="S6.T1.17.13.1.m1.1.1.2">Δ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.17.13.1.m1.1c">\Delta\%</annotation><annotation encoding="application/x-llamapun" id="S6.T1.17.13.1.m1.1d">roman_Δ %</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.2.1" style="background-color:#E6FFFF;">9.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.3.1" style="background-color:#E6FFFF;">29.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.4.1" style="background-color:#E6FFFF;">51.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.5.1" style="background-color:#E6FFFF;">21.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.6.1" style="background-color:#E6FFFF;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.7.1" style="background-color:#E6FFFF;">6.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.8.1" style="background-color:#E6FFFF;">100.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.9.1" style="background-color:#E6FFFF;">19.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.10" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.10.1" style="background-color:#E6FFFF;">13.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.17.13.11" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.17.13.11.1" style="background-color:#E6FFFF;">108.2</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.22.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T1.20.22.6.1" style="padding-left:2.3pt;padding-right:2.3pt;">Video-LLaVA <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib40" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.2" style="padding-left:2.3pt;padding-right:2.3pt;">95.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.3" style="padding-left:2.3pt;padding-right:2.3pt;">20.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.4" style="padding-left:2.3pt;padding-right:2.3pt;">17.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.5" style="padding-left:2.3pt;padding-right:2.3pt;">30.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.6" style="padding-left:2.3pt;padding-right:2.3pt;">8.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.7" style="padding-left:2.3pt;padding-right:2.3pt;">57.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.8" style="padding-left:2.3pt;padding-right:2.3pt;">7.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.9" style="padding-left:2.3pt;padding-right:2.3pt;">41.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.10" style="padding-left:2.3pt;padding-right:2.3pt;">45.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T1.20.22.6.11" style="padding-left:2.3pt;padding-right:2.3pt;">7.6</td>
</tr>
<tr class="ltx_tr" id="S6.T1.18.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.18.14.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T1.18.14.1.m1.1"><semantics id="S6.T1.18.14.1.m1.1a"><mo id="S6.T1.18.14.1.m1.1.1" xref="S6.T1.18.14.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T1.18.14.1.m1.1b"><plus id="S6.T1.18.14.1.m1.1.1.cmml" xref="S6.T1.18.14.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.18.14.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T1.18.14.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.2" style="padding-left:2.3pt;padding-right:2.3pt;">83.4</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.3" style="padding-left:2.3pt;padding-right:2.3pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.4" style="padding-left:2.3pt;padding-right:2.3pt;">29.5</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.5" style="padding-left:2.3pt;padding-right:2.3pt;">35.9</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.6" style="padding-left:2.3pt;padding-right:2.3pt;">9.8</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.7" style="padding-left:2.3pt;padding-right:2.3pt;">15.5</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.8" style="padding-left:2.3pt;padding-right:2.3pt;">9.3</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.9" style="padding-left:2.3pt;padding-right:2.3pt;">63.7</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.10" style="padding-left:2.3pt;padding-right:2.3pt;">33.3</td>
<td class="ltx_td ltx_align_center" id="S6.T1.18.14.11" style="padding-left:2.3pt;padding-right:2.3pt;">9.5</td>
</tr>
<tr class="ltx_tr" id="S6.T1.19.15" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T1.19.15.1" style="padding-left:2.3pt;padding-right:2.3pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T1.19.15.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T1.19.15.1.m1.1a"><mo id="S6.T1.19.15.1.m1.1.1" mathbackground="#E6FFFF" xref="S6.T1.19.15.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T1.19.15.1.m1.1b"><plus id="S6.T1.19.15.1.m1.1.1.cmml" xref="S6.T1.19.15.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.19.15.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T1.19.15.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S6.T1.19.15.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="S6.T1.19.15.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.2.1" style="background-color:#E6FFFF;">98.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.3.1" style="background-color:#E6FFFF;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.4.1" style="background-color:#E6FFFF;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.5.1" style="background-color:#E6FFFF;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.6.1" style="background-color:#E6FFFF;">14.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.7.1" style="background-color:#E6FFFF;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.8.1" style="background-color:#E6FFFF;">10.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.9.1" style="background-color:#E6FFFF;">95.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.10" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.10.1" style="background-color:#E6FFFF;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T1.19.15.11" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T1.19.15.11.1" style="background-color:#E6FFFF;">12.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T1.20.16" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T1.20.16.1" style="padding-left:2.3pt;padding-right:2.3pt;"><math alttext="\Delta\%" class="ltx_Math" display="inline" id="S6.T1.20.16.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T1.20.16.1.m1.1a"><mrow id="S6.T1.20.16.1.m1.1.1" xref="S6.T1.20.16.1.m1.1.1.cmml"><mi id="S6.T1.20.16.1.m1.1.1.2" mathbackground="#E6FFFF" mathvariant="normal" xref="S6.T1.20.16.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T1.20.16.1.m1.1.1.1" mathbackground="#E6FFFF" xref="S6.T1.20.16.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T1.20.16.1.m1.1b"><apply id="S6.T1.20.16.1.m1.1.1.cmml" xref="S6.T1.20.16.1.m1.1.1"><csymbol cd="latexml" id="S6.T1.20.16.1.m1.1.1.1.cmml" xref="S6.T1.20.16.1.m1.1.1.1">percent</csymbol><ci id="S6.T1.20.16.1.m1.1.1.2.cmml" xref="S6.T1.20.16.1.m1.1.1.2">Δ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T1.20.16.1.m1.1c">\Delta\%</annotation><annotation encoding="application/x-llamapun" id="S6.T1.20.16.1.m1.1d">roman_Δ %</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.2" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.2.1" style="background-color:#E6FFFF;">3.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.3" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.3.1" style="background-color:#E6FFFF;">217.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.4" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.4.1" style="background-color:#E6FFFF;">205.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.5" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.5.1" style="background-color:#E6FFFF;">65.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.6" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.6.1" style="background-color:#E6FFFF;">79.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.7" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.7.1" style="background-color:#E6FFFF;">8.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.8" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.8.1" style="background-color:#E6FFFF;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.9" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.9.1" style="background-color:#E6FFFF;">130.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.10" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.10.1" style="background-color:#E6FFFF;">46.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T1.20.16.11" style="padding-left:2.3pt;padding-right:2.3pt;"><span class="ltx_text" id="S6.T1.20.16.11.1" style="background-color:#E6FFFF;">59.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents the performance comparison of different Large Video Models (LVMs) on video hallucination benchmarks.  The models are evaluated on two main aspects: the overall hallucination rate and the rate of misleading hallucinations.  The table shows the performance of several existing LVMs (VideoChatGPT, VideoChat2, LLaMA-VID, PLLaVA), followed by the same models enhanced by two different methods (Hound-DPO and VistaDPO).  For each model and benchmark, the results are broken down into the overall hallucination rate, and binary and descriptive scores.  Bold values highlight the best-performing model for each metric, while Δ denotes the percentage improvement over the baselines (PLLaVA and Video-LLaVA).  The '↑↑' symbol indicates that higher scores are better.
> <details>
> <summary>read the caption</summary>
> Table 1: Main results on video hallucination benchmarks. Bold values indicate the best performance and ΔΔ\Deltaroman_Δ denotes the corresponding improvement percentages over the baselines (i.e. PLLaVA and Video-LLaVA). “↑↑\uparrow↑” denotes higher is better.
> </details>





### In-depth insights


#### Video DPO Tuning
**Video DPO Tuning**, as envisioned, likely focuses on directly optimizing video understanding by leveraging Direct Preference Optimization (DPO). Given the inherent challenges of video data – **temporal dynamics and spatial complexities** – such a tuning strategy is crucial. Unlike image-based DPO, video DPO must account for motion, event sequences, and object interactions. This involves creating paired datasets of preferred and rejected video interpretations, guiding models toward human-aligned understanding. The tuning process addresses issues like **hallucination and misalignment** more effectively than standard fine-tuning. It also potentially incorporates elements that handle **hierarchical video understanding** by enabling better long-term dependence.

#### Multi-level Align
**Multi-level alignment** is crucial for robust AI systems, ensuring different layers of understanding (**instance, temporal, spatial**) are consistent. This approach is vital in tasks needing nuanced perception and reasoning, like video analysis. Aligning at multiple levels combats hallucination and improves accuracy, as errors in one layer can be corrected by others. This enhances the overall system's reliability.

#### VistaDPO-7k Data
**VistaDPO-7k** addresses a key limitation in video understanding: **the lack of fine-grained, spatiotemporally aligned datasets for preference optimization**. Existing datasets often lack the detail needed for models to learn nuanced relationships between video content and language. VistaDPO-7k aims to fill this gap by providing **7.2K QA pairs annotated with rich information**, including chosen and rejected responses, timestamps, keyframes, and bounding boxes. This detailed annotation allows VistaDPO to train more effectively by aligning text and video. By providing spatiotemporal grounding information, the dataset facilitates a more precise video-language alignment. By using **diverse existing datasets**, the dataset design is robust, providing a valuable resource for video DPO research.

#### Mitigate Halluc
Mitigating hallucinations in large video models (LVMs) is critical for their reliable deployment. **Hallucinations** arise from the **misalignment** between textual knowledge and visual perception, often leading to inaccurate content generation. Effective strategies involve enhancing cross-modal alignment through methods like **Direct Preference Optimization (DPO)**, using spatial-temporal grounding, **high-quality datasets**, and **fine-grained preference modeling**. These techniques aim to reduce instances where LVMs generate outputs inconsistent with the video content, ensuring greater fidelity and trustworthiness in video understanding and generation tasks. Addressing the issues effectively ensures **better performance** in tasks such as video question answering and improves reliability in more complex scenarios.

#### Temporal Robust
Temporal robustness in video understanding models is crucial, ensuring consistent performance despite variations in video speed, frame rate, and temporal distortions. A model exhibiting temporal robustness can accurately interpret events even when the sequence is altered, such as through frame skipping or reversal. Achieving this requires the model to learn salient features that are invariant to temporal transformations, enabling it to reason about actions and relationships across different time scales. Training strategies that involve data augmentation techniques, such as temporal jittering and reversing video segments, can enhance the model's ability to generalize across diverse temporal contexts. Additionally, incorporating mechanisms like attention-based modules can help the model focus on relevant temporal cues while disregarding irrelevant variations. Finally, evaluation metrics should assess the model's performance under various temporal perturbations to provide a comprehensive understanding of its robustness.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.13122/x2.png)

> 🔼 Figure 2 illustrates two key aspects of the VistaDPO framework.  (a) shows the breakdown of the VistaDPO-7k dataset, highlighting its focus on fine-grained video-language tasks by emphasizing both the temporal (44%) and perceptual (56%) aspects of video understanding.  It defines irrelevant (𝑦𝑖𝑟) and relevant (𝑦𝑟𝑒) non-preferred responses. (b) provides a visual representation of the VistaDPO's hierarchical spatiotemporal optimization framework. This framework operates across three levels: Instance (𝑣𝑣), aligning overall video content; Perceptive (𝑣𝑓), aligning spatial objects with language tokens; and Temporal (𝑣𝑐), aligning video temporal semantics with event descriptions.  The figure shows how these levels interact to enable precise reasoning across spatial and temporal dimensions.
> <details>
> <summary>read the caption</summary>
> Figure 2: (a) The metadata of VistaDPO-7k highlights its focus on fine-grained video-language tasks, emphasizing temporal (44%percent4444\%44 %) and perceptual (56%percent5656\%56 %) reasoning. yli⁢rsuperscriptsubscript𝑦𝑙𝑖𝑟y_{l}^{ir}italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_i italic_r end_POSTSUPERSCRIPT and ylr⁢esuperscriptsubscript𝑦𝑙𝑟𝑒y_{l}^{re}italic_y start_POSTSUBSCRIPT italic_l end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_r italic_e end_POSTSUPERSCRIPT denote the irrelevant and relevant non-preferred responses respectively. (b) VistaDPO introduces a hierarchical spatiotemporal preference optimization framework. Instance (vvsuperscript𝑣𝑣v^{v}italic_v start_POSTSUPERSCRIPT italic_v end_POSTSUPERSCRIPT) and perceptive (vfsuperscript𝑣𝑓v^{f}italic_v start_POSTSUPERSCRIPT italic_f end_POSTSUPERSCRIPT) levels align global-to-local semantics with spatial visual features, leveraging both text-relevant and irrelevant rejected responses for robust cross-modal interaction. Temporal (vcsuperscript𝑣𝑐v^{c}italic_v start_POSTSUPERSCRIPT italic_c end_POSTSUPERSCRIPT) level aligns clip-level semantics with temporal dynamics, enabling precise reasoning across spatial and temporal dimensions.
> </details>



![](https://arxiv.org/html/2504.13122/x3.png)

> 🔼 This ablation study investigates the impact of different hyperparameter values on the EventHallusion benchmark.  The figure displays the effect of varying four hyperparameters on binary accuracy: λ (lambda), μ (mu), β (beta), and the ratio between relevant and irrelevant non-preferred responses (Bre/Bir). Each subplot shows the performance across a range of values for a single hyperparameter, illustrating how these values influence the model's ability to distinguish between preferred and non-preferred responses. The results help to determine the optimal hyperparameter settings for enhancing the model's performance on EventHallusion.
> <details>
> <summary>read the caption</summary>
> Figure 3: Ablation study of hyperparameters on EventHallusion.
> </details>



![](https://arxiv.org/html/2504.13122/x4.png)

> 🔼 This figure visualizes the results of t-distributed stochastic neighbor embedding (t-SNE) dimensionality reduction applied to video representations generated by three different models: (a) Video-LLaVA, (b) Video-LLaVA enhanced with Hound-DPO, and (c) Video-LLaVA enhanced with VistaDPO.  The visualizations reveal the model's ability to distinguish between hallucinated and non-hallucinated video representations.  Video-LLaVA shows significant overlap between the two types of representations. Hound-DPO offers little to no improvement in separating hallucinated from non-hallucinated representations. However, VistaDPO demonstrates a superior capability to clearly separate the representations, indicating its improved ability to discriminate between these two categories.
> <details>
> <summary>read the caption</summary>
> Figure 4: T-SNE visualization of representation.  (a) Video-LLaVA shows substantial overlap between hallucinated (orange) and non-hallucinated (green) representations. (b) With Hound-DPO, there is no distinct improvement in the separation of the two clusters. (c) With VistaDPO, the representations achieve clear clustering, highlighting its superior discriminative capability.
> </details>



![](https://arxiv.org/html/2504.13122/x5.png)

> 🔼 This ablation study investigates the impact of different types of negative visual samples on the performance of video hallucination benchmarks.  The study uses four different types of negative samples: randomness, blackness, reverse, and random mask.  The results show how these various negative samples affect the accuracy of video hallucination models on two specific benchmarks: VideoHallucer and EventHallusion.  The x-axis represents the type of negative sample and the y-axis represents the accuracy achieved. The figure helps to understand which type of negative samples contribute most to improving the performance of video hallucination models.
> <details>
> <summary>read the caption</summary>
> Figure 5: Ablation study of visual non-preferred samples on two video hallucination benchmarks.
> </details>



![](https://arxiv.org/html/2504.13122/x6.png)

> 🔼 This figure shows the results of an adversarial temporal test conducted on the VideoHallucencer benchmark.  Four different methods were compared: Video-LLaVA (baseline), Video-LLaVA with Hound-DPO, Video-LLaVA with only the Instance-level component of VistaDPO, and Video-LLaVA with the full VistaDPO model.  The x-axis represents different levels of adversarial modification applied to the videos, while the y-axis indicates the accuracy of the model's predictions.  The gray shaded areas highlight the performance drop experienced by each method under adversarial conditions. This experiment aims to evaluate the models' robustness to temporal inconsistencies and their ability to accurately predict video events despite such perturbations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Adversarial temporal testing on VideoHallucer. The gray regions indicate the performance drop under adversarial scenarios for each method.
> </details>



![](https://arxiv.org/html/2504.13122/x7.png)

> 🔼 Figure 7 presents Kernel Density Estimation (KDE) plots illustrating the log-likelihood difference between original and adversarial video samples.  These plots demonstrate the robustness of different models against adversarial attacks.  The log-likelihood difference quantifies the separability of the original and perturbed data distributions, where a larger difference (shift) indicates improved model robustness to adversarial examples. The figure visually compares the distributions and their shifts for four different model scenarios:  the baseline Video-LLaVA model, the model with Hound-DPO applied, the model with only the Instance-level component of VistaDPO removed, and the full VistaDPO model. This allows for a direct visual assessment of how each model handles adversarial modifications and demonstrates VistaDPO's superior robustness.
> <details>
> <summary>read the caption</summary>
> Figure 7: Kernel Density Estimation (KDE) of log-likelihood differences in adversarial masking experiments. The log-likelihood difference measures the separation between original and adversarial distributions, with the shift representing the mean difference. Larger shifts indicate greater model robustness.
> </details>



![](https://arxiv.org/html/2504.13122/x8.png)

> 🔼 Figure 8 presents a comparative analysis of VistaDPO's robustness against adversarial attacks on video understanding. Three types of adversarial tests are conducted: temporal, spatial, and token-level.  Temporal adversarial testing reverses the video's temporal order to assess the model's ability to understand event sequences. Spatial adversarial testing masks parts of the video to evaluate the model's understanding of subject-object interactions.  Token-level adversarial testing introduces subtle linguistic variations (e.g., replacing 'run' with 'walk') to assess the model's sensitivity to fine-grained language differences. The results for VistaDPO are compared against two baseline models (Video-LLaVA and Hound-DPO) and their ablated versions to highlight the contribution of key components in VistaDPO.
> <details>
> <summary>read the caption</summary>
> Figure 8: Case Studies of Adversarial Testing for VistaDPO: We conduct case studies from three perspectives: (a) Temporal adversarial testing, which examines whether the model can infer the correct sequence of events by introducing reversed temporal order through video playback. (b) Spatial adversarial testing, which evaluates the model’s ability to understand subject-object interactions by masking frames or pixels related to the target object. (c) Token adversarial testing, which tests the model’s sensitivity to subtle linguistic differences by introducing similar action descriptions (e.g., contrasting “run” with “stand” and “walk”). Each test compares VistaDPO with baselines (i.e., Video-LLaVA and Hound-DPO) and corresponding ablated versions to assess the impact of key components.
> </details>



![](https://arxiv.org/html/2504.13122/x9.png)

> 🔼 This figure illustrates the process of creating a dataset for training a video-language model using direct preference optimization.  It starts with extracting original question-answer pairs from existing video datasets. These pairs are then augmented by adding 'chosen' and 'rejected' answers, with the rejected answers categorized as either irrelevant or relevant but incorrect to the actual video content. Finally, manual annotations are added to enhance the spatiotemporal information. These annotations provide precise details about the objects present in the video, their location (bounding boxes), and their temporal dynamics (appearance and disappearance timestamps). The resulting dataset allows for a more nuanced and hierarchical optimization of the video-language alignment within the model.
> <details>
> <summary>read the caption</summary>
> Figure 9: Illustration of dataset pipeline for constructing augmented video-language QA pairs. (a) Original QA pairs are extracted from existing prevalent datasets, providing basic QA pairs. (b) These pairs are augmented by introducing chosen and rejected answers, where rejected answers include both irrelevant responses (e.g., ”shopping cart”) and relevant but incorrect ones (e.g., ”table”). (c) To enhance spatiotemporal understanding, manual annotations are added, specifying object appearances, spatial coordinates (e.g., bounding boxes), and temporal dynamics (e.g., appearance and disappearance timestamps). This pipeline ensures richer, more nuanced data for hierarchical preference optimization in video-language tasks.
> </details>



![](https://arxiv.org/html/2504.13122/x10.png)

> 🔼 Figure 10 details a prompt template designed to generate hallucinated responses for training multimodal models.  It transforms existing video question-answer (QA) pairs into three parts: a 'chosen response' (a correctly rephrased answer), and two 'rejected responses' (one plausible yet incorrect, and one entirely unrelated to the video content).  This design is crucial for preference optimization, as it provides the model with examples of both good and bad responses, allowing it to learn to prefer human-preferred answers. The example in the figure clarifies this process, showcasing the creation of both coherent and incoherent hallucinated responses.
> <details>
> <summary>read the caption</summary>
> Figure 10: A prompt template designed for generating hallucinated responses in multimodal models is presented. The template transforms original video QA pairs into a ”chosen response” (a rephrased correct answer) and two ”rejected responses” (one contextually relevant but incorrect, and one entirely unrelated). This framework supports preference optimization by providing plausible yet inaccurate alternatives for training and evaluation. An example illustrates the process, highlighting the generation of both coherent and unrelated hallucinated responses.
> </details>



![](https://arxiv.org/html/2504.13122/x11.png)

> 🔼 Figure 11 presents three example video questions and their answers generated by VistaDPO, Hound-DPO, and a variant of VistaDPO without the Temporal level optimization (only w/o LDPOt).  Each example demonstrates how the different models handle various aspects of video understanding, highlighting their strengths and weaknesses.  The questions probe different aspects of video content such as motion (car moving forward, person touching hair), object interactions (person riding a bicycle), and events (accidents). The answers show how accurately each model identifies the video content and how sensitive they are to subtleties in the question or video data. By comparing the responses, the figure demonstrates the impact of VistaDPO's hierarchical spatio-temporal approach in improving the accuracy and robustness of video understanding.
> <details>
> <summary>read the caption</summary>
> Figure 11: Cases of VistaDPO in video understanding.
> </details>



![](https://arxiv.org/html/2504.13122/x12.png)

> 🔼 This figure showcases examples from the VistaDPO-7K dataset, illustrating how temporal information is annotated. Each example includes a question, the chosen and rejected answers along with their 'is_in_video' labels, and detailed spatial-temporal grounding information. The grounding includes object bounding boxes (x, y, w, h) coordinates and timestamps (t) indicating the presence of objects at specific moments in the videos.
> <details>
> <summary>read the caption</summary>
> Figure 12: Temporal data samples of VistaDPO-7K.
> </details>



![](https://arxiv.org/html/2504.13122/x13.png)

> 🔼 Figure 13 presents example data points from the VistaDPO-7k dataset, highlighting the annotation details for the perceptive level. Each example shows a question about an object in a video, the chosen correct answer, two rejected answers (one relevant but incorrect and another completely irrelevant), and the associated spatio-temporal grounding information. The spatio-temporal grounding information provides precise location (bounding boxes) and time stamps for each object mentioned in the question and answers.  This illustrates the fine-grained level of annotation in VistaDPO-7k, crucial for training the model to accurately perceive and understand spatial relationships in videos.
> <details>
> <summary>read the caption</summary>
> Figure 13: Perception data samples of VistaDPO-7K.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T2.15">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T2.15.16.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T2.15.16.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<span class="ltx_ERROR undefined" id="S6.T2.15.16.1.1.1">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="S6.T2.15.16.1.1.2">Models</span>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S6.T2.15.16.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.15.16.1.2.1">Question-Answer</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S6.T2.15.16.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.15.16.1.3.1">Captioning</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.9.9">
<th class="ltx_td ltx_th ltx_th_row" id="S6.T2.9.9.10" style="padding-left:2.8pt;padding-right:2.8pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.1.1.1.1">MSVD<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.1.1.1.1.m1.1"><semantics id="S6.T2.1.1.1.1.m1.1a"><mo id="S6.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.1.1.1.1.m1.1b"><ci id="S6.T2.1.1.1.1.m1.1.1.cmml" xref="S6.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.2.2.2.1">MSR-VTT<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.2.2.2.1.m1.1"><semantics id="S6.T2.2.2.2.1.m1.1a"><mo id="S6.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S6.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.2.2.2.1.m1.1b"><ci id="S6.T2.2.2.2.1.m1.1.1.cmml" xref="S6.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.3.3.3.1">TGIF<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.3.3.3.1.m1.1"><semantics id="S6.T2.3.3.3.1.m1.1a"><mo id="S6.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S6.T2.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.3.3.3.1.m1.1b"><ci id="S6.T2.3.3.3.1.m1.1.1.cmml" xref="S6.T2.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.4.4.4.1">Act.Net<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.4.4.4.1.m1.1"><semantics id="S6.T2.4.4.4.1.m1.1a"><mo id="S6.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S6.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.4.4.4.1.m1.1b"><ci id="S6.T2.4.4.4.1.m1.1.1.cmml" xref="S6.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.5.5.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.5.5.5.1">Correct<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.5.5.5.1.m1.1"><semantics id="S6.T2.5.5.5.1.m1.1a"><mo id="S6.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S6.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.5.5.5.1.m1.1b"><ci id="S6.T2.5.5.5.1.m1.1.1.cmml" xref="S6.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.6.6.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.6.6.6.1">Detail<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.6.6.6.1.m1.1"><semantics id="S6.T2.6.6.6.1.m1.1a"><mo id="S6.T2.6.6.6.1.m1.1.1" stretchy="false" xref="S6.T2.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.6.6.6.1.m1.1b"><ci id="S6.T2.6.6.6.1.m1.1.1.cmml" xref="S6.T2.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.7.7.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.7.7.7.1">Context<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.7.7.7.1.m1.1"><semantics id="S6.T2.7.7.7.1.m1.1a"><mo id="S6.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S6.T2.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.7.7.7.1.m1.1b"><ci id="S6.T2.7.7.7.1.m1.1.1.cmml" xref="S6.T2.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.8.8.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.8.8.8.1">Temporal<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.8.8.8.1.m1.1"><semantics id="S6.T2.8.8.8.1.m1.1a"><mo id="S6.T2.8.8.8.1.m1.1.1" stretchy="false" xref="S6.T2.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.8.8.8.1.m1.1b"><ci id="S6.T2.8.8.8.1.m1.1.1.cmml" xref="S6.T2.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.9.9.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.9.9.9.1">Consist<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T2.9.9.9.1.m1.1"><semantics id="S6.T2.9.9.9.1.m1.1a"><mo id="S6.T2.9.9.9.1.m1.1.1" stretchy="false" xref="S6.T2.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T2.9.9.9.1.m1.1b"><ci id="S6.T2.9.9.9.1.m1.1.1.cmml" xref="S6.T2.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T2.9.9.9.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.17.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.15.17.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">VideoChatGPT <cite class="ltx_cite ltx_citemacro_citep">(Maaz et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib52" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">64.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">49.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">51.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">35.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">2.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.8" style="padding-left:2.8pt;padding-right:2.8pt;">2.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.17.2.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.4</td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.18.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.15.18.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">LLaMA-Adapter <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib87" title="">2023b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.2" style="padding-left:2.8pt;padding-right:2.8pt;">54.9</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">43.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.5" style="padding-left:2.8pt;padding-right:2.8pt;">34.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.6" style="padding-left:2.8pt;padding-right:2.8pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.8" style="padding-left:2.8pt;padding-right:2.8pt;">2.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.18.3.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.2</td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.19.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.15.19.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">Video-LLaMA <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib85" title="">2023a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">51.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">29.6</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">12.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.8" style="padding-left:2.8pt;padding-right:2.8pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.9" style="padding-left:2.8pt;padding-right:2.8pt;">1.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.15.19.4.10" style="padding-left:2.8pt;padding-right:2.8pt;">1.8</td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.20.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.15.20.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">PLLaVA <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib76" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.2" style="padding-left:2.8pt;padding-right:2.8pt;">76.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.3" style="padding-left:2.8pt;padding-right:2.8pt;">62.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.4" style="padding-left:2.8pt;padding-right:2.8pt;">77.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.5" style="padding-left:2.8pt;padding-right:2.8pt;">56.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.6" style="padding-left:2.8pt;padding-right:2.8pt;">3.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.8" style="padding-left:2.8pt;padding-right:2.8pt;">3.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.20.5.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.9</td>
</tr>
<tr class="ltx_tr" id="S6.T2.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.10.10.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T2.10.10.1.m1.1"><semantics id="S6.T2.10.10.1.m1.1a"><mo id="S6.T2.10.10.1.m1.1.1" xref="S6.T2.10.10.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T2.10.10.1.m1.1b"><plus id="S6.T2.10.10.1.m1.1.1.cmml" xref="S6.T2.10.10.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.10.10.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T2.10.10.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.2" style="padding-left:2.8pt;padding-right:2.8pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.3" style="padding-left:2.8pt;padding-right:2.8pt;">73.1</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.4" style="padding-left:2.8pt;padding-right:2.8pt;">79.9</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.5" style="padding-left:2.8pt;padding-right:2.8pt;">54.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.6" style="padding-left:2.8pt;padding-right:2.8pt;">3.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.8</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.8" style="padding-left:2.8pt;padding-right:2.8pt;">3.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.10.10.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.7</td>
</tr>
<tr class="ltx_tr" id="S6.T2.11.11" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.11.11.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T2.11.11.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T2.11.11.1.m1.1a"><mo id="S6.T2.11.11.1.m1.1.1" mathbackground="#E6FFFF" xref="S6.T2.11.11.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T2.11.11.1.m1.1b"><plus id="S6.T2.11.11.1.m1.1.1.cmml" xref="S6.T2.11.11.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.11.11.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T2.11.11.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S6.T2.11.11.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="S6.T2.11.11.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.2.1" style="background-color:#E6FFFF;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.3.1" style="background-color:#E6FFFF;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.4.1" style="background-color:#E6FFFF;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.5.1" style="background-color:#E6FFFF;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.6.1" style="background-color:#E6FFFF;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.7.1" style="background-color:#E6FFFF;">3.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.8.1" style="background-color:#E6FFFF;">3.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.9.1" style="background-color:#E6FFFF;">2.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.11.11.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.11.11.10.1" style="background-color:#E6FFFF;">2.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.12.12" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.12.12.1" style="padding-left:2.8pt;padding-right:2.8pt;"><math alttext="\Delta\%" class="ltx_Math" display="inline" id="S6.T2.12.12.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T2.12.12.1.m1.1a"><mrow id="S6.T2.12.12.1.m1.1.1" xref="S6.T2.12.12.1.m1.1.1.cmml"><mi id="S6.T2.12.12.1.m1.1.1.2" mathbackground="#E6FFFF" mathvariant="normal" xref="S6.T2.12.12.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T2.12.12.1.m1.1.1.1" mathbackground="#E6FFFF" xref="S6.T2.12.12.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.12.12.1.m1.1b"><apply id="S6.T2.12.12.1.m1.1.1.cmml" xref="S6.T2.12.12.1.m1.1.1"><csymbol cd="latexml" id="S6.T2.12.12.1.m1.1.1.1.cmml" xref="S6.T2.12.12.1.m1.1.1.1">percent</csymbol><ci id="S6.T2.12.12.1.m1.1.1.2.cmml" xref="S6.T2.12.12.1.m1.1.1.2">Δ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.12.12.1.m1.1c">\Delta\%</annotation><annotation encoding="application/x-llamapun" id="S6.T2.12.12.1.m1.1d">roman_Δ %</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.2.1" style="background-color:#E6FFFF;">12.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.3.1" style="background-color:#E6FFFF;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.4.1" style="background-color:#E6FFFF;">8.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.5.1" style="background-color:#E6FFFF;">5.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.6.1" style="background-color:#E6FFFF;">9.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.7.1" style="background-color:#E6FFFF;">3.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.8.1" style="background-color:#E6FFFF;">8.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.9.1" style="background-color:#E6FFFF;">21.7</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.12.12.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.12.12.10.1" style="background-color:#E6FFFF;">0.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.21.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T2.15.21.6.1" style="padding-left:2.8pt;padding-right:2.8pt;">Video-LLaVA <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib40" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.2" style="padding-left:2.8pt;padding-right:2.8pt;">71.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.3" style="padding-left:2.8pt;padding-right:2.8pt;">59.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.4" style="padding-left:2.8pt;padding-right:2.8pt;">48.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.5" style="padding-left:2.8pt;padding-right:2.8pt;">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.6" style="padding-left:2.8pt;padding-right:2.8pt;">2.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.8" style="padding-left:2.8pt;padding-right:2.8pt;">3.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T2.15.21.6.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.13.13.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T2.13.13.1.m1.1"><semantics id="S6.T2.13.13.1.m1.1a"><mo id="S6.T2.13.13.1.m1.1.1" xref="S6.T2.13.13.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T2.13.13.1.m1.1b"><plus id="S6.T2.13.13.1.m1.1.1.cmml" xref="S6.T2.13.13.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.13.13.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T2.13.13.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.2" style="padding-left:2.8pt;padding-right:2.8pt;">80.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.3" style="padding-left:2.8pt;padding-right:2.8pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.4" style="padding-left:2.8pt;padding-right:2.8pt;">61.4</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.5" style="padding-left:2.8pt;padding-right:2.8pt;">40.9</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.6" style="padding-left:2.8pt;padding-right:2.8pt;">3.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.7" style="padding-left:2.8pt;padding-right:2.8pt;">2.7</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.8" style="padding-left:2.8pt;padding-right:2.8pt;">3.3</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.9" style="padding-left:2.8pt;padding-right:2.8pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="S6.T2.13.13.10" style="padding-left:2.8pt;padding-right:2.8pt;">2.6</td>
</tr>
<tr class="ltx_tr" id="S6.T2.14.14" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T2.14.14.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="S6.T2.14.14.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T2.14.14.1.m1.1a"><mo id="S6.T2.14.14.1.m1.1.1" mathbackground="#E6FFFF" xref="S6.T2.14.14.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S6.T2.14.14.1.m1.1b"><plus id="S6.T2.14.14.1.m1.1.1.cmml" xref="S6.T2.14.14.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.14.14.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S6.T2.14.14.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="S6.T2.14.14.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="S6.T2.14.14.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.2.1" style="background-color:#E6FFFF;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.3.1" style="background-color:#E6FFFF;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.4.1" style="background-color:#E6FFFF;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.5.1" style="background-color:#E6FFFF;">55.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.6.1" style="background-color:#E6FFFF;">3.4</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.7.1" style="background-color:#E6FFFF;">2.9</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.8.1" style="background-color:#E6FFFF;">3.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.9.1" style="background-color:#E6FFFF;">2.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T2.14.14.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="S6.T2.14.14.10.1" style="background-color:#E6FFFF;">2.9</span></td>
</tr>
<tr class="ltx_tr" id="S6.T2.15.15" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b" id="S6.T2.15.15.1" style="padding-left:2.8pt;padding-right:2.8pt;"><math alttext="\Delta\%" class="ltx_Math" display="inline" id="S6.T2.15.15.1.m1.1" style="background-color:#E6FFFF;"><semantics id="S6.T2.15.15.1.m1.1a"><mrow id="S6.T2.15.15.1.m1.1.1" xref="S6.T2.15.15.1.m1.1.1.cmml"><mi id="S6.T2.15.15.1.m1.1.1.2" mathbackground="#E6FFFF" mathvariant="normal" xref="S6.T2.15.15.1.m1.1.1.2.cmml">Δ</mi><mo id="S6.T2.15.15.1.m1.1.1.1" mathbackground="#E6FFFF" xref="S6.T2.15.15.1.m1.1.1.1.cmml">%</mo></mrow><annotation-xml encoding="MathML-Content" id="S6.T2.15.15.1.m1.1b"><apply id="S6.T2.15.15.1.m1.1.1.cmml" xref="S6.T2.15.15.1.m1.1.1"><csymbol cd="latexml" id="S6.T2.15.15.1.m1.1.1.1.cmml" xref="S6.T2.15.15.1.m1.1.1.1">percent</csymbol><ci id="S6.T2.15.15.1.m1.1.1.2.cmml" xref="S6.T2.15.15.1.m1.1.1.2">Δ</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T2.15.15.1.m1.1c">\Delta\%</annotation><annotation encoding="application/x-llamapun" id="S6.T2.15.15.1.m1.1d">roman_Δ %</annotation></semantics></math></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.2.1" style="background-color:#E6FFFF;">18.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.3.1" style="background-color:#E6FFFF;">30.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.4.1" style="background-color:#E6FFFF;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.5.1" style="background-color:#E6FFFF;">21.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.6.1" style="background-color:#E6FFFF;">21.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.7.1" style="background-color:#E6FFFF;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.8.1" style="background-color:#E6FFFF;">5.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.9.1" style="background-color:#E6FFFF;">4.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S6.T2.15.15.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="S6.T2.15.15.10.1" style="background-color:#E6FFFF;">11.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of the proposed VistaDPO framework on video question answering (VQA) and video captioning tasks.  It compares the performance of several large video models (LVMs), including baselines (PLLaVA and Video-LLaVA) and those enhanced with Hound-DPO and VistaDPO. The metrics evaluated include overall accuracy, along with a breakdown of performance into more specific aspects, such as correctness, detail, context, temporal reasoning, and consistency.  The performance is evaluated on multiple datasets, providing a comprehensive comparison of the different methods in different scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: Main results on video QA and captioning benchmarks. Symbols follow the definitions in Table 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S6.T3.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S6.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S6.T3.3.3.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.4.1">Methods</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.1.1.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.1.1.1.1">Basic<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.1.1.1.1.m1.1"><semantics id="S6.T3.1.1.1.1.m1.1a"><mo id="S6.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S6.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.1.1.1.1.m1.1b"><ci id="S6.T3.1.1.1.1.m1.1.1.cmml" xref="S6.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.2.2.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.2.2.2.1">Hallu.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.2.2.2.1.m1.1"><semantics id="S6.T3.2.2.2.1.m1.1a"><mo id="S6.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S6.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.2.2.2.1.m1.1b"><ci id="S6.T3.2.2.2.1.m1.1.1.cmml" xref="S6.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S6.T3.3.3.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.3.3.3.1">Over.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S6.T3.3.3.3.1.m1.1"><semantics id="S6.T3.3.3.3.1.m1.1a"><mo id="S6.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S6.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S6.T3.3.3.3.1.m1.1b"><ci id="S6.T3.3.3.3.1.m1.1.1.cmml" xref="S6.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S6.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.8.9.1" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.8.9.1.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.9.1.1.1" style="background-color:#E6FFFF;">VistaDPO</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.9.1.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.8.9.1.2.1" style="background-color:#E6FFFF;">98.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.9.1.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.8.9.1.3.1" style="background-color:#E6FFFF;">64.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.9.1.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text ltx_font_bold" id="S6.T3.8.9.1.4.1" style="background-color:#E6FFFF;">54.3</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.4.4" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.4.4.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.4.4.1.1" style="background-color:#FFFFE6;">w/o <math alttext="\mathcal{L}_{DPO_{c}}" class="ltx_Math" display="inline" id="S6.T3.4.4.1.1.m1.1" style="background-color:#FFFFE6;"><semantics id="S6.T3.4.4.1.1.m1.1a"><msub id="S6.T3.4.4.1.1.m1.1.1" xref="S6.T3.4.4.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.4.4.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S6.T3.4.4.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S6.T3.4.4.1.1.m1.1.1.3" xref="S6.T3.4.4.1.1.m1.1.1.3.cmml"><mi id="S6.T3.4.4.1.1.m1.1.1.3.2" mathbackground="#FFFFE6" xref="S6.T3.4.4.1.1.m1.1.1.3.2.cmml">D</mi><mo id="S6.T3.4.4.1.1.m1.1.1.3.1" xref="S6.T3.4.4.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.4.4.1.1.m1.1.1.3.3" mathbackground="#FFFFE6" xref="S6.T3.4.4.1.1.m1.1.1.3.3.cmml">P</mi><mo id="S6.T3.4.4.1.1.m1.1.1.3.1a" xref="S6.T3.4.4.1.1.m1.1.1.3.1.cmml">⁢</mo><msub id="S6.T3.4.4.1.1.m1.1.1.3.4" xref="S6.T3.4.4.1.1.m1.1.1.3.4.cmml"><mi id="S6.T3.4.4.1.1.m1.1.1.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.4.4.1.1.m1.1.1.3.4.2.cmml">O</mi><mi id="S6.T3.4.4.1.1.m1.1.1.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.4.4.1.1.m1.1.1.3.4.3.cmml">c</mi></msub></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.4.4.1.1.m1.1b"><apply id="S6.T3.4.4.1.1.m1.1.1.cmml" xref="S6.T3.4.4.1.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.4.4.1.1.m1.1.1.1.cmml" xref="S6.T3.4.4.1.1.m1.1.1">subscript</csymbol><ci id="S6.T3.4.4.1.1.m1.1.1.2.cmml" xref="S6.T3.4.4.1.1.m1.1.1.2">ℒ</ci><apply id="S6.T3.4.4.1.1.m1.1.1.3.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3"><times id="S6.T3.4.4.1.1.m1.1.1.3.1.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.1"></times><ci id="S6.T3.4.4.1.1.m1.1.1.3.2.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.2">𝐷</ci><ci id="S6.T3.4.4.1.1.m1.1.1.3.3.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.3">𝑃</ci><apply id="S6.T3.4.4.1.1.m1.1.1.3.4.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.4"><csymbol cd="ambiguous" id="S6.T3.4.4.1.1.m1.1.1.3.4.1.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.4">subscript</csymbol><ci id="S6.T3.4.4.1.1.m1.1.1.3.4.2.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.4.2">𝑂</ci><ci id="S6.T3.4.4.1.1.m1.1.1.3.4.3.cmml" xref="S6.T3.4.4.1.1.m1.1.1.3.4.3">𝑐</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.4.4.1.1.m1.1c">\mathcal{L}_{DPO_{c}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.4.4.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.4.4.2.1" style="background-color:#FFFFE6;">97.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.4.4.3.1" style="background-color:#FFFFE6;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.4.4.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.4.4.4.1" style="background-color:#FFFFE6;">53.0</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.5.5" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.5.5.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.5.5.1.1" style="background-color:#FFFFE6;">w/o <math alttext="\mathcal{L}_{DPO_{o}}" class="ltx_Math" display="inline" id="S6.T3.5.5.1.1.m1.1" style="background-color:#FFFFE6;"><semantics id="S6.T3.5.5.1.1.m1.1a"><msub id="S6.T3.5.5.1.1.m1.1.1" xref="S6.T3.5.5.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.5.5.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S6.T3.5.5.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S6.T3.5.5.1.1.m1.1.1.3" xref="S6.T3.5.5.1.1.m1.1.1.3.cmml"><mi id="S6.T3.5.5.1.1.m1.1.1.3.2" mathbackground="#FFFFE6" xref="S6.T3.5.5.1.1.m1.1.1.3.2.cmml">D</mi><mo id="S6.T3.5.5.1.1.m1.1.1.3.1" xref="S6.T3.5.5.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.5.5.1.1.m1.1.1.3.3" mathbackground="#FFFFE6" xref="S6.T3.5.5.1.1.m1.1.1.3.3.cmml">P</mi><mo id="S6.T3.5.5.1.1.m1.1.1.3.1a" xref="S6.T3.5.5.1.1.m1.1.1.3.1.cmml">⁢</mo><msub id="S6.T3.5.5.1.1.m1.1.1.3.4" xref="S6.T3.5.5.1.1.m1.1.1.3.4.cmml"><mi id="S6.T3.5.5.1.1.m1.1.1.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.5.5.1.1.m1.1.1.3.4.2.cmml">O</mi><mi id="S6.T3.5.5.1.1.m1.1.1.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.5.5.1.1.m1.1.1.3.4.3.cmml">o</mi></msub></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.5.5.1.1.m1.1b"><apply id="S6.T3.5.5.1.1.m1.1.1.cmml" xref="S6.T3.5.5.1.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.5.5.1.1.m1.1.1.1.cmml" xref="S6.T3.5.5.1.1.m1.1.1">subscript</csymbol><ci id="S6.T3.5.5.1.1.m1.1.1.2.cmml" xref="S6.T3.5.5.1.1.m1.1.1.2">ℒ</ci><apply id="S6.T3.5.5.1.1.m1.1.1.3.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3"><times id="S6.T3.5.5.1.1.m1.1.1.3.1.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.1"></times><ci id="S6.T3.5.5.1.1.m1.1.1.3.2.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.2">𝐷</ci><ci id="S6.T3.5.5.1.1.m1.1.1.3.3.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.3">𝑃</ci><apply id="S6.T3.5.5.1.1.m1.1.1.3.4.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.4"><csymbol cd="ambiguous" id="S6.T3.5.5.1.1.m1.1.1.3.4.1.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.4">subscript</csymbol><ci id="S6.T3.5.5.1.1.m1.1.1.3.4.2.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.4.2">𝑂</ci><ci id="S6.T3.5.5.1.1.m1.1.1.3.4.3.cmml" xref="S6.T3.5.5.1.1.m1.1.1.3.4.3">𝑜</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.5.5.1.1.m1.1c">\mathcal{L}_{DPO_{o}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.5.5.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.5.5.2.1" style="background-color:#FFFFE6;">98.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.5.5.3.1" style="background-color:#FFFFE6;">62.0</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.5.5.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.5.5.4.1" style="background-color:#FFFFE6;">52.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.6.6" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.6.6.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.6.6.1.1" style="background-color:#FFFFE6;">w/o <math alttext="\mathcal{L}_{DPO_{o}},\;\mathcal{L}_{DPO_{t}}" class="ltx_Math" display="inline" id="S6.T3.6.6.1.1.m1.2" style="background-color:#FFFFE6;"><semantics id="S6.T3.6.6.1.1.m1.2a"><mrow id="S6.T3.6.6.1.1.m1.2.2.2" xref="S6.T3.6.6.1.1.m1.2.2.3.cmml"><msub id="S6.T3.6.6.1.1.m1.1.1.1.1" xref="S6.T3.6.6.1.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.6.6.1.1.m1.1.1.1.1.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.1.1.1.1.2.cmml">ℒ</mi><mrow id="S6.T3.6.6.1.1.m1.1.1.1.1.3" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.cmml"><mi id="S6.T3.6.6.1.1.m1.1.1.1.1.3.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.2.cmml">D</mi><mo id="S6.T3.6.6.1.1.m1.1.1.1.1.3.1" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.6.6.1.1.m1.1.1.1.1.3.3" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.3.cmml">P</mi><mo id="S6.T3.6.6.1.1.m1.1.1.1.1.3.1a" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><msub id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.cmml"><mi id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.2.cmml">O</mi><mi id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.3.cmml">o</mi></msub></mrow></msub><mo id="S6.T3.6.6.1.1.m1.2.2.2.3" mathbackground="#FFFFE6" rspace="0.447em" xref="S6.T3.6.6.1.1.m1.2.2.3.cmml">,</mo><msub id="S6.T3.6.6.1.1.m1.2.2.2.2" xref="S6.T3.6.6.1.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.6.6.1.1.m1.2.2.2.2.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.2.2.2.2.2.cmml">ℒ</mi><mrow id="S6.T3.6.6.1.1.m1.2.2.2.2.3" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.cmml"><mi id="S6.T3.6.6.1.1.m1.2.2.2.2.3.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.2.cmml">D</mi><mo id="S6.T3.6.6.1.1.m1.2.2.2.2.3.1" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><mi id="S6.T3.6.6.1.1.m1.2.2.2.2.3.3" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.3.cmml">P</mi><mo id="S6.T3.6.6.1.1.m1.2.2.2.2.3.1a" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><msub id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.cmml"><mi id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.2.cmml">O</mi><mi id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.3.cmml">t</mi></msub></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.6.6.1.1.m1.2b"><list id="S6.T3.6.6.1.1.m1.2.2.3.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2"><apply id="S6.T3.6.6.1.1.m1.1.1.1.1.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T3.6.6.1.1.m1.1.1.1.1.1.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S6.T3.6.6.1.1.m1.1.1.1.1.2.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.2">ℒ</ci><apply id="S6.T3.6.6.1.1.m1.1.1.1.1.3.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3"><times id="S6.T3.6.6.1.1.m1.1.1.1.1.3.1.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.1"></times><ci id="S6.T3.6.6.1.1.m1.1.1.1.1.3.2.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.2">𝐷</ci><ci id="S6.T3.6.6.1.1.m1.1.1.1.1.3.3.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.3">𝑃</ci><apply id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4"><csymbol cd="ambiguous" id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.1.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4">subscript</csymbol><ci id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.2.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.2">𝑂</ci><ci id="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.3.cmml" xref="S6.T3.6.6.1.1.m1.1.1.1.1.3.4.3">𝑜</ci></apply></apply></apply><apply id="S6.T3.6.6.1.1.m1.2.2.2.2.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S6.T3.6.6.1.1.m1.2.2.2.2.1.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S6.T3.6.6.1.1.m1.2.2.2.2.2.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.2">ℒ</ci><apply id="S6.T3.6.6.1.1.m1.2.2.2.2.3.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3"><times id="S6.T3.6.6.1.1.m1.2.2.2.2.3.1.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.1"></times><ci id="S6.T3.6.6.1.1.m1.2.2.2.2.3.2.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.2">𝐷</ci><ci id="S6.T3.6.6.1.1.m1.2.2.2.2.3.3.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.3">𝑃</ci><apply id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4"><csymbol cd="ambiguous" id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.1.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4">subscript</csymbol><ci id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.2.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.2">𝑂</ci><ci id="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.3.cmml" xref="S6.T3.6.6.1.1.m1.2.2.2.2.3.4.3">𝑡</ci></apply></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.6.6.1.1.m1.2c">\mathcal{L}_{DPO_{o}},\;\mathcal{L}_{DPO_{t}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.6.6.1.1.m1.2d">caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT end_POSTSUBSCRIPT , caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.6.6.2.1" style="background-color:#FFFFE6;">97.6</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.6.6.3.1" style="background-color:#FFFFE6;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.6.6.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.6.6.4.1" style="background-color:#FFFFE6;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.7.7" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.7.7.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.7.7.1.1" style="background-color:#FFFFE6;">w/o <math alttext="\mathcal{L}_{DPO_{o}},\;\mathcal{L}_{DPO_{t}},\;\mathcal{L}_{DPO_{c}}" class="ltx_Math" display="inline" id="S6.T3.7.7.1.1.m1.3" style="background-color:#FFFFE6;"><semantics id="S6.T3.7.7.1.1.m1.3a"><mrow id="S6.T3.7.7.1.1.m1.3.3.3" xref="S6.T3.7.7.1.1.m1.3.3.4.cmml"><msub id="S6.T3.7.7.1.1.m1.1.1.1.1" xref="S6.T3.7.7.1.1.m1.1.1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.7.7.1.1.m1.1.1.1.1.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.1.1.1.1.2.cmml">ℒ</mi><mrow id="S6.T3.7.7.1.1.m1.1.1.1.1.3" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.cmml"><mi id="S6.T3.7.7.1.1.m1.1.1.1.1.3.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.2.cmml">D</mi><mo id="S6.T3.7.7.1.1.m1.1.1.1.1.3.1" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.7.7.1.1.m1.1.1.1.1.3.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.3.cmml">P</mi><mo id="S6.T3.7.7.1.1.m1.1.1.1.1.3.1a" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.1.cmml">⁢</mo><msub id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.cmml"><mi id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.2.cmml">O</mi><mi id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.3.cmml">o</mi></msub></mrow></msub><mo id="S6.T3.7.7.1.1.m1.3.3.3.4" mathbackground="#FFFFE6" rspace="0.447em" xref="S6.T3.7.7.1.1.m1.3.3.4.cmml">,</mo><msub id="S6.T3.7.7.1.1.m1.2.2.2.2" xref="S6.T3.7.7.1.1.m1.2.2.2.2.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.7.7.1.1.m1.2.2.2.2.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.2.2.2.2.2.cmml">ℒ</mi><mrow id="S6.T3.7.7.1.1.m1.2.2.2.2.3" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.cmml"><mi id="S6.T3.7.7.1.1.m1.2.2.2.2.3.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.2.cmml">D</mi><mo id="S6.T3.7.7.1.1.m1.2.2.2.2.3.1" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><mi id="S6.T3.7.7.1.1.m1.2.2.2.2.3.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.3.cmml">P</mi><mo id="S6.T3.7.7.1.1.m1.2.2.2.2.3.1a" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.1.cmml">⁢</mo><msub id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.cmml"><mi id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.2.cmml">O</mi><mi id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.3.cmml">t</mi></msub></mrow></msub><mo id="S6.T3.7.7.1.1.m1.3.3.3.5" mathbackground="#FFFFE6" rspace="0.447em" xref="S6.T3.7.7.1.1.m1.3.3.4.cmml">,</mo><msub id="S6.T3.7.7.1.1.m1.3.3.3.3" xref="S6.T3.7.7.1.1.m1.3.3.3.3.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.7.7.1.1.m1.3.3.3.3.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.3.3.3.3.2.cmml">ℒ</mi><mrow id="S6.T3.7.7.1.1.m1.3.3.3.3.3" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.cmml"><mi id="S6.T3.7.7.1.1.m1.3.3.3.3.3.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.2.cmml">D</mi><mo id="S6.T3.7.7.1.1.m1.3.3.3.3.3.1" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.1.cmml">⁢</mo><mi id="S6.T3.7.7.1.1.m1.3.3.3.3.3.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.3.cmml">P</mi><mo id="S6.T3.7.7.1.1.m1.3.3.3.3.3.1a" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.1.cmml">⁢</mo><msub id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.cmml"><mi id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.2.cmml">O</mi><mi id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.3.cmml">c</mi></msub></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S6.T3.7.7.1.1.m1.3b"><list id="S6.T3.7.7.1.1.m1.3.3.4.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3"><apply id="S6.T3.7.7.1.1.m1.1.1.1.1.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.1.1.1.1.1.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.1.1.1.1.2.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.2">ℒ</ci><apply id="S6.T3.7.7.1.1.m1.1.1.1.1.3.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3"><times id="S6.T3.7.7.1.1.m1.1.1.1.1.3.1.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.1"></times><ci id="S6.T3.7.7.1.1.m1.1.1.1.1.3.2.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.2">𝐷</ci><ci id="S6.T3.7.7.1.1.m1.1.1.1.1.3.3.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.3">𝑃</ci><apply id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.1.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.2.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.2">𝑂</ci><ci id="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.3.cmml" xref="S6.T3.7.7.1.1.m1.1.1.1.1.3.4.3">𝑜</ci></apply></apply></apply><apply id="S6.T3.7.7.1.1.m1.2.2.2.2.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.2.2.2.2.1.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.2.2.2.2.2.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.2">ℒ</ci><apply id="S6.T3.7.7.1.1.m1.2.2.2.2.3.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3"><times id="S6.T3.7.7.1.1.m1.2.2.2.2.3.1.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.1"></times><ci id="S6.T3.7.7.1.1.m1.2.2.2.2.3.2.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.2">𝐷</ci><ci id="S6.T3.7.7.1.1.m1.2.2.2.2.3.3.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.3">𝑃</ci><apply id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.1.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.2.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.2">𝑂</ci><ci id="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.3.cmml" xref="S6.T3.7.7.1.1.m1.2.2.2.2.3.4.3">𝑡</ci></apply></apply></apply><apply id="S6.T3.7.7.1.1.m1.3.3.3.3.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.3.3.3.3.1.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.3.3.3.3.2.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.2">ℒ</ci><apply id="S6.T3.7.7.1.1.m1.3.3.3.3.3.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3"><times id="S6.T3.7.7.1.1.m1.3.3.3.3.3.1.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.1"></times><ci id="S6.T3.7.7.1.1.m1.3.3.3.3.3.2.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.2">𝐷</ci><ci id="S6.T3.7.7.1.1.m1.3.3.3.3.3.3.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.3">𝑃</ci><apply id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4"><csymbol cd="ambiguous" id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.1.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4">subscript</csymbol><ci id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.2.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.2">𝑂</ci><ci id="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.3.cmml" xref="S6.T3.7.7.1.1.m1.3.3.3.3.3.4.3">𝑐</ci></apply></apply></apply></list></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.7.7.1.1.m1.3c">\mathcal{L}_{DPO_{o}},\;\mathcal{L}_{DPO_{t}},\;\mathcal{L}_{DPO_{c}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.7.7.1.1.m1.3d">caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_o end_POSTSUBSCRIPT end_POSTSUBSCRIPT , caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT end_POSTSUBSCRIPT , caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_c end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.7.7.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.7.7.2.1" style="background-color:#FFFFE6;">97.2</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.7.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.7.7.3.1" style="background-color:#FFFFE6;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.7.7.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.7.7.4.1" style="background-color:#FFFFE6;">46.6</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.8.8" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S6.T3.8.8.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.8.1.1" style="background-color:#FFFFE6;">only w/ <math alttext="\mathcal{L}_{DPO_{r}}" class="ltx_Math" display="inline" id="S6.T3.8.8.1.1.m1.1" style="background-color:#FFFFE6;"><semantics id="S6.T3.8.8.1.1.m1.1a"><msub id="S6.T3.8.8.1.1.m1.1.1" xref="S6.T3.8.8.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S6.T3.8.8.1.1.m1.1.1.2" mathbackground="#FFFFE6" xref="S6.T3.8.8.1.1.m1.1.1.2.cmml">ℒ</mi><mrow id="S6.T3.8.8.1.1.m1.1.1.3" xref="S6.T3.8.8.1.1.m1.1.1.3.cmml"><mi id="S6.T3.8.8.1.1.m1.1.1.3.2" mathbackground="#FFFFE6" xref="S6.T3.8.8.1.1.m1.1.1.3.2.cmml">D</mi><mo id="S6.T3.8.8.1.1.m1.1.1.3.1" xref="S6.T3.8.8.1.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S6.T3.8.8.1.1.m1.1.1.3.3" mathbackground="#FFFFE6" xref="S6.T3.8.8.1.1.m1.1.1.3.3.cmml">P</mi><mo id="S6.T3.8.8.1.1.m1.1.1.3.1a" xref="S6.T3.8.8.1.1.m1.1.1.3.1.cmml">⁢</mo><msub id="S6.T3.8.8.1.1.m1.1.1.3.4" xref="S6.T3.8.8.1.1.m1.1.1.3.4.cmml"><mi id="S6.T3.8.8.1.1.m1.1.1.3.4.2" mathbackground="#FFFFE6" xref="S6.T3.8.8.1.1.m1.1.1.3.4.2.cmml">O</mi><mi id="S6.T3.8.8.1.1.m1.1.1.3.4.3" mathbackground="#FFFFE6" xref="S6.T3.8.8.1.1.m1.1.1.3.4.3.cmml">r</mi></msub></mrow></msub><annotation-xml encoding="MathML-Content" id="S6.T3.8.8.1.1.m1.1b"><apply id="S6.T3.8.8.1.1.m1.1.1.cmml" xref="S6.T3.8.8.1.1.m1.1.1"><csymbol cd="ambiguous" id="S6.T3.8.8.1.1.m1.1.1.1.cmml" xref="S6.T3.8.8.1.1.m1.1.1">subscript</csymbol><ci id="S6.T3.8.8.1.1.m1.1.1.2.cmml" xref="S6.T3.8.8.1.1.m1.1.1.2">ℒ</ci><apply id="S6.T3.8.8.1.1.m1.1.1.3.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3"><times id="S6.T3.8.8.1.1.m1.1.1.3.1.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.1"></times><ci id="S6.T3.8.8.1.1.m1.1.1.3.2.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.2">𝐷</ci><ci id="S6.T3.8.8.1.1.m1.1.1.3.3.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.3">𝑃</ci><apply id="S6.T3.8.8.1.1.m1.1.1.3.4.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.4"><csymbol cd="ambiguous" id="S6.T3.8.8.1.1.m1.1.1.3.4.1.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.4">subscript</csymbol><ci id="S6.T3.8.8.1.1.m1.1.1.3.4.2.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.4.2">𝑂</ci><ci id="S6.T3.8.8.1.1.m1.1.1.3.4.3.cmml" xref="S6.T3.8.8.1.1.m1.1.1.3.4.3">𝑟</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S6.T3.8.8.1.1.m1.1c">\mathcal{L}_{DPO_{r}}</annotation><annotation encoding="application/x-llamapun" id="S6.T3.8.8.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT italic_D italic_P italic_O start_POSTSUBSCRIPT italic_r end_POSTSUBSCRIPT end_POSTSUBSCRIPT</annotation></semantics></math></span></th>
<td class="ltx_td ltx_align_center" id="S6.T3.8.8.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.8.2.1" style="background-color:#FFFFE6;">95.8</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.8.8.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.8.3.1" style="background-color:#FFFFE6;">52.3</span></td>
<td class="ltx_td ltx_align_center" id="S6.T3.8.8.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.8.4.1" style="background-color:#FFFFE6;">39.8</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.8.10.2" style="background-color:#FFFFE6;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S6.T3.8.10.2.1" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.10.2.1.1" style="background-color:#FFFFE6;">Vanilla DPO w/ VistaDPO-7K</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.10.2.2" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.10.2.2.1" style="background-color:#FFFFE6;">95.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.10.2.3" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.10.2.3.1" style="background-color:#FFFFE6;">50.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S6.T3.8.10.2.4" style="padding-left:6.3pt;padding-right:6.3pt;"><span class="ltx_text" id="S6.T3.8.10.2.4.1" style="background-color:#FFFFE6;">38.1</span></td>
</tr>
<tr class="ltx_tr" id="S6.T3.8.11.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S6.T3.8.11.3.1" style="padding-left:6.3pt;padding-right:6.3pt;">Hound-DPO</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.8.11.3.2" style="padding-left:6.3pt;padding-right:6.3pt;">83.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.8.11.3.3" style="padding-left:6.3pt;padding-right:6.3pt;">43.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S6.T3.8.11.3.4" style="padding-left:6.3pt;padding-right:6.3pt;">29.5</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different components of the VistaDPO model on the VideoHallucination benchmark.  It shows the performance of the full VistaDPO model and several variants where one or more hierarchical levels (Instance, Temporal, Perceptual) are removed.  The results are compared against the baseline performance of Hound-DPO, a previous model that uses a similar overall approach but without the hierarchical structure. This allows for a quantitative assessment of the contribution of each level to the overall model performance in reducing video hallucinations.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study of level losses on VideoHallucer. Hound-DPO (Zhang et al., 2024b) employs the same strategy as DPO (Rafailov et al., 2024), but based on its own constructed dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A2.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.3.1.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.1.1.1.1">
<span class="ltx_p" id="A2.T4.3.1.1.1.1.1" style="width:128.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.3.1.1.1.1.1.1" style="font-size:90%;">Hallucination Type</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.1.1.2.1">
<span class="ltx_p" id="A2.T4.3.1.1.2.1.1" style="width:71.1pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.3.1.1.2.1.1.1" style="font-size:90%;">Sample Count</span></span>
</span>
</th>
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.1.1.3.1">
<span class="ltx_p" id="A2.T4.3.1.1.3.1.1" style="width:256.1pt;"><span class="ltx_text ltx_font_bold" id="A2.T4.3.1.1.3.1.1.1" style="font-size:90%;">Data Source</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.3.2.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T4.3.2.1.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.2.1.1.1">
<span class="ltx_p" id="A2.T4.3.2.1.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.2.1.1.1.1.1" style="font-size:90%;">Object</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A2.T4.3.2.1.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.2.1.2.1">
<span class="ltx_p" id="A2.T4.3.2.1.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.2.1.2.1.1.1" style="font-size:90%;">1,200</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_t" id="A2.T4.3.2.1.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.2.1.3.1">
<span class="ltx_p" id="A2.T4.3.2.1.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.2.1.3.1.1.1" style="font-size:90%;">MSR-VTT, STAR, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.3.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.3.2.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.3.2.1.1">
<span class="ltx_p" id="A2.T4.3.3.2.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.3.2.1.1.1.1" style="font-size:90%;">Number</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.3.2.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.3.2.2.1">
<span class="ltx_p" id="A2.T4.3.3.2.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.3.2.2.1.1.1" style="font-size:90%;">500</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.3.2.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.3.2.3.1">
<span class="ltx_p" id="A2.T4.3.3.2.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.3.2.3.1.1.1" style="font-size:90%;">ActivityNet-QA, MSR-VTT, NExT-QA, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.4.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.4.3.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.3.1.1">
<span class="ltx_p" id="A2.T4.3.4.3.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.4.3.1.1.1.1" style="font-size:90%;">Location</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.4.3.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.3.2.1">
<span class="ltx_p" id="A2.T4.3.4.3.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.4.3.2.1.1.1" style="font-size:90%;">500</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.4.3.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.3.3.1">
<span class="ltx_p" id="A2.T4.3.4.3.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.4.3.3.1.1.1" style="font-size:90%;">MSR-VTT, NExT-QA, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.5.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.5.4.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.4.1.1">
<span class="ltx_p" id="A2.T4.3.5.4.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.5.4.1.1.1.1" style="font-size:90%;">Color</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.5.4.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.4.2.1">
<span class="ltx_p" id="A2.T4.3.5.4.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.5.4.2.1.1.1" style="font-size:90%;">500</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.5.4.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.4.3.1">
<span class="ltx_p" id="A2.T4.3.5.4.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.5.4.3.1.1.1" style="font-size:90%;">ActivityNet-QA, CLEVRER, MSR-VTT, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.6.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.6.5.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.5.1.1">
<span class="ltx_p" id="A2.T4.3.6.5.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.6.5.1.1.1.1" style="font-size:90%;">Static Relation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.6.5.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.5.2.1">
<span class="ltx_p" id="A2.T4.3.6.5.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.6.5.2.1.1.1" style="font-size:90%;">800</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.6.5.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.5.3.1">
<span class="ltx_p" id="A2.T4.3.6.5.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.6.5.3.1.1.1" style="font-size:90%;">ActivityNet-QA, MSR-VTT, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.7.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.7.6.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.7.6.1.1">
<span class="ltx_p" id="A2.T4.3.7.6.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.7.6.1.1.1.1" style="font-size:90%;">OCR</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.7.6.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.7.6.2.1">
<span class="ltx_p" id="A2.T4.3.7.6.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.7.6.2.1.1.1" style="font-size:90%;">500</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.7.6.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.7.6.3.1">
<span class="ltx_p" id="A2.T4.3.7.6.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.7.6.3.1.1.1" style="font-size:90%;">RoadTextVQA, ViteVQA</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.8.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.8.7.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.8.7.1.1">
<span class="ltx_p" id="A2.T4.3.8.7.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.8.7.1.1.1.1" style="font-size:90%;">Action</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.8.7.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.8.7.2.1">
<span class="ltx_p" id="A2.T4.3.8.7.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.8.7.2.1.1.1" style="font-size:90%;">1,200</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.8.7.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.8.7.3.1">
<span class="ltx_p" id="A2.T4.3.8.7.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.8.7.3.1.1.1" style="font-size:90%;">MSR-VTT, MSVD, STAR, VATEX</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.9.8">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.9.8.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.9.8.1.1">
<span class="ltx_p" id="A2.T4.3.9.8.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.9.8.1.1.1.1" style="font-size:90%;">Dynamic Attribute</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.9.8.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.9.8.2.1">
<span class="ltx_p" id="A2.T4.3.9.8.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.9.8.2.1.1.1" style="font-size:90%;">300</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.9.8.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.9.8.3.1">
<span class="ltx_p" id="A2.T4.3.9.8.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.9.8.3.1.1.1" style="font-size:90%;">TempCompass, Tomato</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.10.9">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.10.9.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.10.9.1.1">
<span class="ltx_p" id="A2.T4.3.10.9.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.10.9.1.1.1.1" style="font-size:90%;">Dynamic Relation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="A2.T4.3.10.9.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.10.9.2.1">
<span class="ltx_p" id="A2.T4.3.10.9.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.10.9.2.1.1.1" style="font-size:90%;">1,500</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top" id="A2.T4.3.10.9.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.10.9.3.1">
<span class="ltx_p" id="A2.T4.3.10.9.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.10.9.3.1.1.1" style="font-size:90%;">MSR-VTT, NExT-QA, STAR, VATEX, VCGBench-Diverse</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.11.10">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.3.11.10.1">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.11.10.1.1">
<span class="ltx_p" id="A2.T4.3.11.10.1.1.1" style="width:128.0pt;"><span class="ltx_text" id="A2.T4.3.11.10.1.1.1.1" style="font-size:90%;">Sequence</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.3.11.10.2">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.11.10.2.1">
<span class="ltx_p" id="A2.T4.3.11.10.2.1.1" style="width:71.1pt;"><span class="ltx_text" id="A2.T4.3.11.10.2.1.1.1" style="font-size:90%;">200</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_border_bb" id="A2.T4.3.11.10.3">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.11.10.3.1">
<span class="ltx_p" id="A2.T4.3.11.10.3.1.1" style="width:256.1pt;"><span class="ltx_text" id="A2.T4.3.11.10.3.1.1.1" style="font-size:90%;">Video-MME, YouCook2</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table details the hallucination types found in the VistaDPO-7k dataset, providing a count of each type and listing the data sources used for each type.  Hallucination is categorized into Perception and Temporal dimensions. Perception includes Object, Number, Location, Color, Static Relation, and OCR, while Temporal includes Action, Dynamic Attribute, Dynamic Relation, and Sequence. Each category lists the number of samples and the source datasets (MSR-VTT, STAR, VATEX, ActivityNet-QA, CLEVRER, RoadTextVQA, etc.). This table helps illustrate the comprehensive nature of the VistaDPO-7k dataset in addressing various types of video hallucinations.
> <details>
> <summary>read the caption</summary>
> Table 4: Summary of Hallucination Types, Sample Counts, and Data Sources.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="A3.T5.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A3.T5.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_t" id="A3.T5.1.1.1.1" style="padding-left:3.4pt;padding-right:3.4pt;">
<span class="ltx_ERROR undefined" id="A3.T5.1.1.1.1.1">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.1.2">Method</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.1.1.2" style="padding-left:3.4pt;padding-right:3.4pt;">
<span class="ltx_ERROR undefined" id="A3.T5.1.1.1.2.1">\multirow</span>2*<span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.2.2">LLM</span>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.1.1.3" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.3.1">Base Model</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" colspan="3" id="A3.T5.1.1.1.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.4.1">DPO</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.1.1.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.5.1">Textual</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.1.1.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.1.1.6.1">Visual</span></th>
</tr>
<tr class="ltx_tr" id="A3.T5.1.2.2">
<th class="ltx_td ltx_th ltx_th_row" id="A3.T5.1.2.2.1" style="padding-left:3.4pt;padding-right:3.4pt;"></th>
<th class="ltx_td ltx_th ltx_th_column" id="A3.T5.1.2.2.2" style="padding-left:3.4pt;padding-right:3.4pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T5.1.2.2.3" style="padding-left:3.4pt;padding-right:3.4pt;">(7B, if not specified)</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.2.2.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.4.1">Text</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.2.2.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.5.1">Image</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T5.1.2.2.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.6.1">Video</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T5.1.2.2.7" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.7.1">Granularity</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column" id="A3.T5.1.2.2.8" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.2.2.8.1">Dimension</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T5.1.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A3.T5.1.3.1.1" style="padding-left:3.4pt;padding-right:3.4pt;">DPO <cite class="ltx_cite ltx_citemacro_citep">(Rafailov et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib60" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.3" style="padding-left:3.4pt;padding-right:3.4pt;">Pythia-2.8B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.3.1.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.3.1.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.3.1.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T5.1.3.1.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td ltx_border_t" id="A3.T5.1.3.1.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.4.2.1" style="padding-left:3.4pt;padding-right:3.4pt;">IPO <cite class="ltx_cite ltx_citemacro_citep">(Azar et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib2" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.3" style="padding-left:3.4pt;padding-right:3.4pt;">Pythia-2.8B</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.4.2.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.4.2.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.4.2.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.4.2.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.4.2.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.5.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.5.3.1" style="padding-left:3.4pt;padding-right:3.4pt;">KTO <cite class="ltx_cite ltx_citemacro_citep">(Ethayarajh et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib16" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.3" style="padding-left:3.4pt;padding-right:3.4pt;">Llama-3-8B &amp; Qwen-3B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.5.3.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.5.3.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.5.3.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.5.3.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.5.3.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.6.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.6.4.1" style="padding-left:3.4pt;padding-right:3.4pt;">R-DPO <cite class="ltx_cite ltx_citemacro_citep">(Park et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib55" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.3" style="padding-left:3.4pt;padding-right:3.4pt;">Pythia-2.8B</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.6.4.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.6.4.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.6.4.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.6.4.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.6.4.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.7.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.7.5.1" style="padding-left:3.4pt;padding-right:3.4pt;">SamPO <cite class="ltx_cite ltx_citemacro_citep">(Lu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib48" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.3" style="padding-left:3.4pt;padding-right:3.4pt;">Tulu2-13B-SFT &amp; Llama3-8B-Instruct</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.7.5.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.7.5.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.7.5.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.7.5.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.7.5.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.8.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.8.6.1" style="padding-left:3.4pt;padding-right:3.4pt;">SePO <cite class="ltx_cite ltx_citemacro_citep">(Yang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib79" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaMA2-Chat &amp; Pythia-SFT-6.9B</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.8.6.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.8.6.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.8.6.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.8.6.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence &amp; Token</td>
<td class="ltx_td" id="A3.T5.1.8.6.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.9.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.9.7.1" style="padding-left:3.4pt;padding-right:3.4pt;">TDPO <cite class="ltx_cite ltx_citemacro_citep">(Zeng et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib84" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.2" style="padding-left:3.4pt;padding-right:3.4pt;">Text</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.3" style="padding-left:3.4pt;padding-right:3.4pt;">GPT-2-Large</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.9.7.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.9.7.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.9.7.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.9.7.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence &amp; Token</td>
<td class="ltx_td" id="A3.T5.1.9.7.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.10.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.10.8.1" style="padding-left:3.4pt;padding-right:3.4pt;">
<span class="ltx_ERROR undefined" id="A3.T5.1.10.8.1.1">\cdashline</span>1-8
HA-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhao et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib90" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5 &amp; MiniGPT-4</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.10.8.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.10.8.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.10.8.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.10.8.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.10.8.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.11.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.11.9.1" style="padding-left:3.4pt;padding-right:3.4pt;">BPO <cite class="ltx_cite ltx_citemacro_citep">(Pi et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib57" title="">2025</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.11.9.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.11.9.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.11.9.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.11.9.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.11.9.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.12.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.12.10.1" style="padding-left:3.4pt;padding-right:3.4pt;">FDPO <cite class="ltx_cite ltx_citemacro_citep">(Gunjal et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib23" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.3" style="padding-left:3.4pt;padding-right:3.4pt;">InstructBLIP-13B</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.12.10.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.12.10.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.12.10.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.12.10.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.12.10.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.13.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.13.11.1" style="padding-left:3.4pt;padding-right:3.4pt;">HALVA <cite class="ltx_cite ltx_citemacro_citep">(Sarkar et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib61" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.13.11.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.13.11.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.13.11.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.13.11.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence &amp; Token</td>
<td class="ltx_td" id="A3.T5.1.13.11.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.14.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.14.12.1" style="padding-left:3.4pt;padding-right:3.4pt;">POVID <cite class="ltx_cite ltx_citemacro_citep">(Zhou et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib93" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.14.12.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.14.12.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.14.12.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.14.12.8" style="padding-left:3.4pt;padding-right:3.4pt;">Spatial</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.15.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.15.13.1" style="padding-left:3.4pt;padding-right:3.4pt;">MIA-DPO <cite class="ltx_cite ltx_citemacro_citep">(Liu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib46" title="">2024f</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5 &amp; InternLM-XC2.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.15.13.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.15.13.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.15.13.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.15.13.8" style="padding-left:3.4pt;padding-right:3.4pt;">Spatial</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.16.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.16.14.1" style="padding-left:3.4pt;padding-right:3.4pt;">V-DPO <cite class="ltx_cite ltx_citemacro_citep">(Xie et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib73" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.2" style="padding-left:3.4pt;padding-right:3.4pt;">Image</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-v1.5</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.16.14.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.16.14.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.16.14.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.16.14.8" style="padding-left:3.4pt;padding-right:3.4pt;">Spatial</td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.17.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.17.15.1" style="padding-left:3.4pt;padding-right:3.4pt;">
<span class="ltx_ERROR undefined" id="A3.T5.1.17.15.1.1">\cdashline</span>1-8
Next-DPO <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib35" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.2" style="padding-left:3.4pt;padding-right:3.4pt;">Video</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.3" style="padding-left:3.4pt;padding-right:3.4pt;">LLaVA-Next</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.17.15.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.17.15.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.17.15.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.17.15.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.17.15.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.18.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A3.T5.1.18.16.1" style="padding-left:3.4pt;padding-right:3.4pt;">Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.2" style="padding-left:3.4pt;padding-right:3.4pt;">Video</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.3" style="padding-left:3.4pt;padding-right:3.4pt;">Video-LLaVA</td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.18.16.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.18.16.5.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.18.16.6.1" style="color:#FF0000;">✗</span></td>
<td class="ltx_td ltx_align_center" id="A3.T5.1.18.16.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence</td>
<td class="ltx_td" id="A3.T5.1.18.16.8" style="padding-left:3.4pt;padding-right:3.4pt;"></td>
</tr>
<tr class="ltx_tr" id="A3.T5.1.19.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_b ltx_border_t" id="A3.T5.1.19.17.1" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text ltx_font_bold" id="A3.T5.1.19.17.1.1">VistaDPO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.2" style="padding-left:3.4pt;padding-right:3.4pt;">Video</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.3" style="padding-left:3.4pt;padding-right:3.4pt;">Video-LLaVA &amp; PLLaVA</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.4" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.19.17.4.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.5" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.19.17.5.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.6" style="padding-left:3.4pt;padding-right:3.4pt;"><span class="ltx_text" id="A3.T5.1.19.17.6.1" style="color:#00FF00;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.7" style="padding-left:3.4pt;padding-right:3.4pt;">Sentence &amp; Token</td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="A3.T5.1.19.17.8" style="padding-left:3.4pt;padding-right:3.4pt;">Spatial &amp; Temporal</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table compares various direct preference optimization (DPO) strategies, highlighting their differences in terms of the underlying language model (LLM), the types of modalities involved (text, image, or video), the granularity of the optimization (sentence or token level), and the inclusion of spatial and temporal considerations.  It provides a concise overview of the key differences in approach and scope of different DPO methods discussed in the paper.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison among different DPO strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_figure_panel ltx_guessed_headers ltx_align_middle" id="A4.T6.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T6.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A4.T6.4.5.1.1" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.1.1">Models</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.2.1">Avg.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.3.1">AS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.4.1">AP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.5.1">AA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.6.1">FA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.7.1">UA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.8.1">OE</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.9.1">OI</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.10.1">OS</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.11.1">MD</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.12.1">AL</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.13.1">ST</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.14.1">AC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.15.1">MC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.16.1">MA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.17.1">SC</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.18" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.18.1">FP</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.19" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.19.1">CO</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.20" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.20.1">EN</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.21" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.21.1">ER</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A4.T6.4.5.1.22" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.5.1.22.1">CI</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T6.4.6.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">VideoChat <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib37" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.2" style="padding-left:2.8pt;padding-right:2.8pt;">35.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.3" style="padding-left:2.8pt;padding-right:2.8pt;">33.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.4" style="padding-left:2.8pt;padding-right:2.8pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.5" style="padding-left:2.8pt;padding-right:2.8pt;">56.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.6" style="padding-left:2.8pt;padding-right:2.8pt;">33.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.7" style="padding-left:2.8pt;padding-right:2.8pt;">40.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.8" style="padding-left:2.8pt;padding-right:2.8pt;">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.9" style="padding-left:2.8pt;padding-right:2.8pt;">40.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.10" style="padding-left:2.8pt;padding-right:2.8pt;">30.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.11" style="padding-left:2.8pt;padding-right:2.8pt;">25.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.12" style="padding-left:2.8pt;padding-right:2.8pt;">27.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.13" style="padding-left:2.8pt;padding-right:2.8pt;">48.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.14" style="padding-left:2.8pt;padding-right:2.8pt;">35.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.15" style="padding-left:2.8pt;padding-right:2.8pt;">20.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.16" style="padding-left:2.8pt;padding-right:2.8pt;">42.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.17" style="padding-left:2.8pt;padding-right:2.8pt;">46.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.18" style="padding-left:2.8pt;padding-right:2.8pt;">26.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.19" style="padding-left:2.8pt;padding-right:2.8pt;">41.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.20" style="padding-left:2.8pt;padding-right:2.8pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.21" style="padding-left:2.8pt;padding-right:2.8pt;">23.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.6.2.22" style="padding-left:2.8pt;padding-right:2.8pt;">36.0</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.7.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">VideoChatGPT <cite class="ltx_cite ltx_citemacro_citep">(Maaz et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib52" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.2" style="padding-left:2.8pt;padding-right:2.8pt;">32.7</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">23.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.5" style="padding-left:2.8pt;padding-right:2.8pt;">62.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.6" style="padding-left:2.8pt;padding-right:2.8pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.7" style="padding-left:2.8pt;padding-right:2.8pt;">26.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.8" style="padding-left:2.8pt;padding-right:2.8pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.9" style="padding-left:2.8pt;padding-right:2.8pt;">28.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.10" style="padding-left:2.8pt;padding-right:2.8pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.11" style="padding-left:2.8pt;padding-right:2.8pt;">23.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.12" style="padding-left:2.8pt;padding-right:2.8pt;">20.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.13" style="padding-left:2.8pt;padding-right:2.8pt;">31.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.14" style="padding-left:2.8pt;padding-right:2.8pt;">30.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.15" style="padding-left:2.8pt;padding-right:2.8pt;">25.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.16" style="padding-left:2.8pt;padding-right:2.8pt;">39.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.17" style="padding-left:2.8pt;padding-right:2.8pt;">48.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.18" style="padding-left:2.8pt;padding-right:2.8pt;">29.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.19" style="padding-left:2.8pt;padding-right:2.8pt;">33.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.20" style="padding-left:2.8pt;padding-right:2.8pt;">29.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.21" style="padding-left:2.8pt;padding-right:2.8pt;">26.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.7.3.22" style="padding-left:2.8pt;padding-right:2.8pt;">35.5</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.8.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">Video-LLaMA <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib85" title="">2023a</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.2" style="padding-left:2.8pt;padding-right:2.8pt;">34.1</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.3" style="padding-left:2.8pt;padding-right:2.8pt;">27.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.4" style="padding-left:2.8pt;padding-right:2.8pt;">25.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.5" style="padding-left:2.8pt;padding-right:2.8pt;">51.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.6" style="padding-left:2.8pt;padding-right:2.8pt;">29.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.7" style="padding-left:2.8pt;padding-right:2.8pt;">39.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.8" style="padding-left:2.8pt;padding-right:2.8pt;">48.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.9" style="padding-left:2.8pt;padding-right:2.8pt;">40.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.10" style="padding-left:2.8pt;padding-right:2.8pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.11" style="padding-left:2.8pt;padding-right:2.8pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.12" style="padding-left:2.8pt;padding-right:2.8pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.13" style="padding-left:2.8pt;padding-right:2.8pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.14" style="padding-left:2.8pt;padding-right:2.8pt;">34.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.15" style="padding-left:2.8pt;padding-right:2.8pt;">22.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.16" style="padding-left:2.8pt;padding-right:2.8pt;">32.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.17" style="padding-left:2.8pt;padding-right:2.8pt;">45.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.18" style="padding-left:2.8pt;padding-right:2.8pt;">32.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.19" style="padding-left:2.8pt;padding-right:2.8pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.20" style="padding-left:2.8pt;padding-right:2.8pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.21" style="padding-left:2.8pt;padding-right:2.8pt;">21.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.8.4.22" style="padding-left:2.8pt;padding-right:2.8pt;">37.0</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.4.9.5.1" style="padding-left:2.8pt;padding-right:2.8pt;">VideoChat2 <cite class="ltx_cite ltx_citemacro_citep">(Li et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib38" title="">2024d</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.2" style="padding-left:2.8pt;padding-right:2.8pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.3" style="padding-left:2.8pt;padding-right:2.8pt;">66.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.4" style="padding-left:2.8pt;padding-right:2.8pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.5" style="padding-left:2.8pt;padding-right:2.8pt;">83.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.6" style="padding-left:2.8pt;padding-right:2.8pt;">49.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.7" style="padding-left:2.8pt;padding-right:2.8pt;">60.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.8" style="padding-left:2.8pt;padding-right:2.8pt;">58.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.9" style="padding-left:2.8pt;padding-right:2.8pt;">71.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.10" style="padding-left:2.8pt;padding-right:2.8pt;">42.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.11" style="padding-left:2.8pt;padding-right:2.8pt;">23.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.12" style="padding-left:2.8pt;padding-right:2.8pt;">23.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.13" style="padding-left:2.8pt;padding-right:2.8pt;">88.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.14" style="padding-left:2.8pt;padding-right:2.8pt;">39.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.15" style="padding-left:2.8pt;padding-right:2.8pt;">42.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.16" style="padding-left:2.8pt;padding-right:2.8pt;">58.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.17" style="padding-left:2.8pt;padding-right:2.8pt;">44.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.18" style="padding-left:2.8pt;padding-right:2.8pt;">49.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.19" style="padding-left:2.8pt;padding-right:2.8pt;">36.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.20" style="padding-left:2.8pt;padding-right:2.8pt;">35.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.21" style="padding-left:2.8pt;padding-right:2.8pt;">40.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.4.9.5.22" style="padding-left:2.8pt;padding-right:2.8pt;">65.5</td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T6.4.10.6.1" style="padding-left:2.8pt;padding-right:2.8pt;">PLLaVA <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib76" title="">2024</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.2.1">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.3.1">58.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.4.1">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.5" style="padding-left:2.8pt;padding-right:2.8pt;">55.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.6.1">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.10.6.7.1">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.8.1">56.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.9" style="padding-left:2.8pt;padding-right:2.8pt;">61.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.10.6.10.1">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.11.1">23.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.12" style="padding-left:2.8pt;padding-right:2.8pt;">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.13" style="padding-left:2.8pt;padding-right:2.8pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.14.1">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.15.1">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.10.6.16.1">52.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.17.1">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.18" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.18.1">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.19" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.19.1">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.20" style="padding-left:2.8pt;padding-right:2.8pt;">30.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.21" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.10.6.21.1">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.10.6.22" style="padding-left:2.8pt;padding-right:2.8pt;">31.0</td>
</tr>
<tr class="ltx_tr" id="A4.T6.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.1.1.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A4.T6.1.1.1.m1.1"><semantics id="A4.T6.1.1.1.m1.1a"><mo id="A4.T6.1.1.1.m1.1.1" xref="A4.T6.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A4.T6.1.1.1.m1.1b"><plus id="A4.T6.1.1.1.m1.1.1.cmml" xref="A4.T6.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A4.T6.1.1.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.2" style="padding-left:2.8pt;padding-right:2.8pt;">45.3</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.3" style="padding-left:2.8pt;padding-right:2.8pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.4" style="padding-left:2.8pt;padding-right:2.8pt;">46.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.5.1">57.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.6" style="padding-left:2.8pt;padding-right:2.8pt;">37.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.7.1">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.8" style="padding-left:2.8pt;padding-right:2.8pt;">54.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.9.1">62.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.10" style="padding-left:2.8pt;padding-right:2.8pt;">31.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.11.1">23.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.12.1">26.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.13.1">83.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.14" style="padding-left:2.8pt;padding-right:2.8pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.15" style="padding-left:2.8pt;padding-right:2.8pt;">41.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.16" style="padding-left:2.8pt;padding-right:2.8pt;">50.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.17" style="padding-left:2.8pt;padding-right:2.8pt;">41.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.18" style="padding-left:2.8pt;padding-right:2.8pt;">39.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.19" style="padding-left:2.8pt;padding-right:2.8pt;">50.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.20" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.1.1.20.1">32.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.21" style="padding-left:2.8pt;padding-right:2.8pt;">46.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.1.1.22" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.1.1.22.1">32.5</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.2.2" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.2.2.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A4.T6.2.2.1.m1.1" style="background-color:#E6FFFF;"><semantics id="A4.T6.2.2.1.m1.1a"><mo id="A4.T6.2.2.1.m1.1.1" mathbackground="#E6FFFF" xref="A4.T6.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A4.T6.2.2.1.m1.1b"><plus id="A4.T6.2.2.1.m1.1.1.cmml" xref="A4.T6.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A4.T6.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A4.T6.2.2.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="A4.T6.2.2.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.2.1" style="background-color:#E6FFFF;">49.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.3.1" style="background-color:#E6FFFF;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.4.1" style="background-color:#E6FFFF;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.5.1" style="background-color:#E6FFFF;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.6.1" style="background-color:#E6FFFF;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A4.T6.2.2.7.1" style="background-color:#E6FFFF;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.8.1" style="background-color:#E6FFFF;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.9.1" style="background-color:#E6FFFF;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.2.2.10.1" style="background-color:#E6FFFF;">35.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.11.1" style="background-color:#E6FFFF;">27.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.12.1" style="background-color:#E6FFFF;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.2.2.13.1" style="background-color:#E6FFFF;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.14.1" style="background-color:#E6FFFF;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.15.1" style="background-color:#E6FFFF;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.2.2.16.1" style="background-color:#E6FFFF;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.17.1" style="background-color:#E6FFFF;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.18" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.18.1" style="background-color:#E6FFFF;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.19" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.19.1" style="background-color:#E6FFFF;">54.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.20" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.2.2.20.1" style="background-color:#E6FFFF;">31.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.21" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.21.1" style="background-color:#E6FFFF;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.2.2.22" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.2.2.22.1" style="background-color:#E6FFFF;">35.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="A4.T6.4.11.7.1" style="padding-left:2.8pt;padding-right:2.8pt;">Video-LLaVA <cite class="ltx_cite ltx_citemacro_citep">(Lin et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib40" title="">2023</a>)</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.2" style="padding-left:2.8pt;padding-right:2.8pt;">43.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.3.1">46.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.4.1">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.5" style="padding-left:2.8pt;padding-right:2.8pt;">56.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.6.1">39.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.11.7.7.1">53.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.8" style="padding-left:2.8pt;padding-right:2.8pt;">53.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.9" style="padding-left:2.8pt;padding-right:2.8pt;">48.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.11.7.10.1">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.11" style="padding-left:2.8pt;padding-right:2.8pt;">29.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.12" style="padding-left:2.8pt;padding-right:2.8pt;">31.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.11.7.13.1">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.14.1">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.15" style="padding-left:2.8pt;padding-right:2.8pt;">26.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.16.1">53.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.17" style="padding-left:2.8pt;padding-right:2.8pt;">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.18" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.11.7.18.1">33.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.19" style="padding-left:2.8pt;padding-right:2.8pt;">41.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.20" style="padding-left:2.8pt;padding-right:2.8pt;">27.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.21" style="padding-left:2.8pt;padding-right:2.8pt;">38.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T6.4.11.7.22" style="padding-left:2.8pt;padding-right:2.8pt;">31.5</td>
</tr>
<tr class="ltx_tr" id="A4.T6.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A4.T6.3.3.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A4.T6.3.3.1.m1.1"><semantics id="A4.T6.3.3.1.m1.1a"><mo id="A4.T6.3.3.1.m1.1.1" xref="A4.T6.3.3.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A4.T6.3.3.1.m1.1b"><plus id="A4.T6.3.3.1.m1.1.1.cmml" xref="A4.T6.3.3.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.3.3.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A4.T6.3.3.1.m1.1d">+</annotation></semantics></math> Hound-DPO <cite class="ltx_cite ltx_citemacro_citep">(Zhang et al., <a class="ltx_ref" href="https://arxiv.org/html/2504.13122v1#bib.bib88" title="">2024b</a>)</cite>
</th>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.2.1">43.3</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.3" style="padding-left:2.8pt;padding-right:2.8pt;">44.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.4" style="padding-left:2.8pt;padding-right:2.8pt;">40.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.3.3.5.1">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.6.1">39.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.7.1">52.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.8.1">53.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.9.1">49.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.10" style="padding-left:2.8pt;padding-right:2.8pt;">36.5</td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.11.1">32.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.12.1">33.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.13.1">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.14" style="padding-left:2.8pt;padding-right:2.8pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.15.1">28.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.3.3.16.1">55.5</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.17.1">42.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.18" style="padding-left:2.8pt;padding-right:2.8pt;">30.0</td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.19" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.19.1">43.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.20" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.3.3.20.1">31.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.21" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.21.1">39.0</span></td>
<td class="ltx_td ltx_align_center" id="A4.T6.3.3.22" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.3.3.22.1">35.0</span></td>
</tr>
<tr class="ltx_tr" id="A4.T6.4.4" style="background-color:#E6FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A4.T6.4.4.1" style="padding-left:2.8pt;padding-right:2.8pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A4.T6.4.4.1.m1.1" style="background-color:#E6FFFF;"><semantics id="A4.T6.4.4.1.m1.1a"><mo id="A4.T6.4.4.1.m1.1.1" mathbackground="#E6FFFF" xref="A4.T6.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A4.T6.4.4.1.m1.1b"><plus id="A4.T6.4.4.1.m1.1.1.cmml" xref="A4.T6.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A4.T6.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A4.T6.4.4.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A4.T6.4.4.1.1" style="background-color:#E6FFFF;"> <span class="ltx_text ltx_font_bold" id="A4.T6.4.4.1.1.1">VistaDPO (Ours)</span></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.2" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.2.1" style="background-color:#E6FFFF;">46.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.3" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.3.1" style="background-color:#E6FFFF;">47.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.4" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.4.1" style="background-color:#E6FFFF;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.5" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.4.5.1" style="background-color:#E6FFFF;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.6" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.6.1" style="background-color:#E6FFFF;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.7" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A4.T6.4.4.7.1" style="background-color:#E6FFFF;">51.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.8" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.8.1" style="background-color:#E6FFFF;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.9" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.9.1" style="background-color:#E6FFFF;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.10" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.4.10.1" style="background-color:#E6FFFF;">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.11" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.11.1" style="background-color:#E6FFFF;">36.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.12" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.12.1" style="background-color:#E6FFFF;">37.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.13" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.13.1" style="background-color:#E6FFFF;">82.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.14" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.14.1" style="background-color:#E6FFFF;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.15" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.15.1" style="background-color:#E6FFFF;">28.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.16" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text" id="A4.T6.4.4.16.1" style="background-color:#E6FFFF;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.17" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.17.1" style="background-color:#E6FFFF;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.18" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.18.1" style="background-color:#E6FFFF;">39.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.19" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.19.1" style="background-color:#E6FFFF;">44.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.20" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A4.T6.4.4.20.1" style="background-color:#E6FFFF;">29.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.21" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.21.1" style="background-color:#E6FFFF;">42.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T6.4.4.22" style="padding-left:2.8pt;padding-right:2.8pt;"><span class="ltx_text ltx_font_bold" id="A4.T6.4.4.22.1" style="background-color:#E6FFFF;">38.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comprehensive comparison of various large video models (LVMs) on the MVBench benchmark.  The table showcases the performance of several models, including VideoChat, VideoChatGPT, Video-LLaMA, and VideoChat2 (for reference), as well as the models enhanced with Hound-DPO and VistaDPO. The performance is broken down by several sub-tasks categorized into Action, Object, Position, Scene, Count, Attribute, and Pose, each with several metrics. Bold values highlight the best performance achieved by each model for a given sub-task, while underlined values indicate the second-best performance.  This detailed breakdown allows for a granular comparison of the models' strengths and weaknesses across different aspects of video understanding.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparisons on MVBench. Bold values indicate the best performance achieved on the corresponding base model, while underlined values represent the second-best performance. The results of VideoChat, VideoChatGPT, Video-LLaMA, and VideoChat2 are included as references, but they are not directly related to the contributions of this paper.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.13122/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.13122/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}