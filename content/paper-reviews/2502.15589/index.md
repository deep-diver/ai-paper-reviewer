---
title: "LightThinker: Thinking Step-by-Step Compression"
summary: "LightThinker: LLMs dynamically compress intermediate steps, reducing memory & boosting reasoning efficiency without sacrificing accuracy."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Zhejiang University - Ant Group Joint Laboratory of Knowledge Graph",]
showSummary: true
date: 2025-02-21
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.15589 {{< /keyword >}}
{{< keyword icon="writer" >}} Jintian Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.15589" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.15589" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.15589/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large Language Models (LLMs)** have demonstrated great reasoning, but the generation of long tokens has caused efficiency concerns. This paper draws inspiration from human thought processes and introduces **LightThinker**, a novel method that allows LLMs to compress thought process during reasoning. By compressing verbose thought steps into compact representations and discarding the original reasoning chains, the approach aims to reduce the number of tokens stored in the context window. It dynamically adapts during reasoning, so the subsequent generation can be based on the new compressed version. 



To enable this, the model is trained on how and when to perform the compression, in addition to creating specialized attention masks. A novel metric, called **Dependency (Dep)**, quantifies the compression by measuring the reliance on historical tokens during generation. In experiments on datasets and models, LightThinker was found to reduce memory use and inference time, and maintained competitive accuracy. This research can improve LLM efficiency in reasoning tasks without sacrificing the performance.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} LightThinker dynamically compresses thought chains in LLMs, reducing memory and inference time. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The Dependency metric quantifies compression ratio and information usage during reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} LightThinker achieves a good balance between reasoning efficiency and accuracy. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper presents a new direction for future LLM inference acceleration. It can potentially lead to **more efficient and cost-effective LLM usage**, benefiting both researchers and practitioners working with these powerful models. The Dependency metric can also serve as a tool for analyzing and understanding the compression achieved by different methods.

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.20.20">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.20.20.21.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T1.20.20.21.1.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.1.1">Method</span></th>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T1.20.20.21.1.2"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.2.1">GSM8K</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T1.20.20.21.1.3"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.3.1">MMLU</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T1.20.20.21.1.4"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.4.1">GPQA</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T1.20.20.21.1.5"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.5.1">BBH</span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="4" id="S4.T1.20.20.21.1.6"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.21.1.6.1">AVG.</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.20">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.1.1.1.1.1">
<span class="ltx_p" id="S4.T1.1.1.1.1.1.1" style="width:17.1pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.2.2.2.2.1">
<span class="ltx_p" id="S4.T1.2.2.2.2.1.1" style="width:17.1pt;">Time <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T1.2.2.2.2.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.1.m1.1b"><ci id="S4.T1.2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.3.3.3.3.1">
<span class="ltx_p" id="S4.T1.3.3.3.3.1.1" style="width:17.1pt;">Peak <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.1.m1.1a"><mo id="S4.T1.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T1.3.3.3.3.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.1.m1.1b"><ci id="S4.T1.3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.4.4.4.4.1">
<span class="ltx_p" id="S4.T1.4.4.4.4.1.1" style="width:17.1pt;">Dep <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.1.m1.1.1" stretchy="false" xref="S4.T1.4.4.4.4.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.1.m1.1b"><ci id="S4.T1.4.4.4.4.1.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.5.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.5.5.5.5.1">
<span class="ltx_p" id="S4.T1.5.5.5.5.1.1" style="width:17.1pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.1.1.m1.1"><semantics id="S4.T1.5.5.5.5.1.1.m1.1a"><mo id="S4.T1.5.5.5.5.1.1.m1.1.1" stretchy="false" xref="S4.T1.5.5.5.5.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.1.1.m1.1b"><ci id="S4.T1.5.5.5.5.1.1.m1.1.1.cmml" xref="S4.T1.5.5.5.5.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.6.6.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.6.6.6.6.1">
<span class="ltx_p" id="S4.T1.6.6.6.6.1.1" style="width:17.1pt;">Time <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.1.1.m1.1"><semantics id="S4.T1.6.6.6.6.1.1.m1.1a"><mo id="S4.T1.6.6.6.6.1.1.m1.1.1" stretchy="false" xref="S4.T1.6.6.6.6.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.1.1.m1.1b"><ci id="S4.T1.6.6.6.6.1.1.m1.1.1.cmml" xref="S4.T1.6.6.6.6.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.7.7.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.7.7.7.7.1">
<span class="ltx_p" id="S4.T1.7.7.7.7.1.1" style="width:17.1pt;">Peak <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.7.7.7.7.1.1.m1.1"><semantics id="S4.T1.7.7.7.7.1.1.m1.1a"><mo id="S4.T1.7.7.7.7.1.1.m1.1.1" stretchy="false" xref="S4.T1.7.7.7.7.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.7.1.1.m1.1b"><ci id="S4.T1.7.7.7.7.1.1.m1.1.1.cmml" xref="S4.T1.7.7.7.7.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.7.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.7.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.8.8.8.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.8.8.8.8.1">
<span class="ltx_p" id="S4.T1.8.8.8.8.1.1" style="width:17.1pt;">Dep <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.8.8.8.8.1.1.m1.1"><semantics id="S4.T1.8.8.8.8.1.1.m1.1a"><mo id="S4.T1.8.8.8.8.1.1.m1.1.1" stretchy="false" xref="S4.T1.8.8.8.8.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.8.1.1.m1.1b"><ci id="S4.T1.8.8.8.8.1.1.m1.1.1.cmml" xref="S4.T1.8.8.8.8.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.8.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.8.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.9.9.9.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.9.9.9.9.1">
<span class="ltx_p" id="S4.T1.9.9.9.9.1.1" style="width:17.1pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.9.9.9.9.1.1.m1.1"><semantics id="S4.T1.9.9.9.9.1.1.m1.1a"><mo id="S4.T1.9.9.9.9.1.1.m1.1.1" stretchy="false" xref="S4.T1.9.9.9.9.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.9.1.1.m1.1b"><ci id="S4.T1.9.9.9.9.1.1.m1.1.1.cmml" xref="S4.T1.9.9.9.9.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.9.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.9.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.10.10.10.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.10.10.10.10.1">
<span class="ltx_p" id="S4.T1.10.10.10.10.1.1" style="width:17.1pt;">Time <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.10.10.10.10.1.1.m1.1"><semantics id="S4.T1.10.10.10.10.1.1.m1.1a"><mo id="S4.T1.10.10.10.10.1.1.m1.1.1" stretchy="false" xref="S4.T1.10.10.10.10.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.10.1.1.m1.1b"><ci id="S4.T1.10.10.10.10.1.1.m1.1.1.cmml" xref="S4.T1.10.10.10.10.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.10.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.10.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.11.11.11.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.11.11.11.11.1">
<span class="ltx_p" id="S4.T1.11.11.11.11.1.1" style="width:17.1pt;">Peak <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.11.11.11.11.1.1.m1.1"><semantics id="S4.T1.11.11.11.11.1.1.m1.1a"><mo id="S4.T1.11.11.11.11.1.1.m1.1.1" stretchy="false" xref="S4.T1.11.11.11.11.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.11.1.1.m1.1b"><ci id="S4.T1.11.11.11.11.1.1.m1.1.1.cmml" xref="S4.T1.11.11.11.11.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.11.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.11.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.12.12.12.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.12.12.12.12.1">
<span class="ltx_p" id="S4.T1.12.12.12.12.1.1" style="width:17.1pt;">Dep <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.12.12.12.12.1.1.m1.1"><semantics id="S4.T1.12.12.12.12.1.1.m1.1a"><mo id="S4.T1.12.12.12.12.1.1.m1.1.1" stretchy="false" xref="S4.T1.12.12.12.12.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.12.1.1.m1.1b"><ci id="S4.T1.12.12.12.12.1.1.m1.1.1.cmml" xref="S4.T1.12.12.12.12.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.12.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.12.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.13.13.13.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.13.13.13.13.1">
<span class="ltx_p" id="S4.T1.13.13.13.13.1.1" style="width:17.1pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.13.13.13.13.1.1.m1.1"><semantics id="S4.T1.13.13.13.13.1.1.m1.1a"><mo id="S4.T1.13.13.13.13.1.1.m1.1.1" stretchy="false" xref="S4.T1.13.13.13.13.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.13.1.1.m1.1b"><ci id="S4.T1.13.13.13.13.1.1.m1.1.1.cmml" xref="S4.T1.13.13.13.13.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.13.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.13.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.14.14.14.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.14.14.14.14.1">
<span class="ltx_p" id="S4.T1.14.14.14.14.1.1" style="width:17.1pt;">Time <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.14.14.14.14.1.1.m1.1"><semantics id="S4.T1.14.14.14.14.1.1.m1.1a"><mo id="S4.T1.14.14.14.14.1.1.m1.1.1" stretchy="false" xref="S4.T1.14.14.14.14.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.14.1.1.m1.1b"><ci id="S4.T1.14.14.14.14.1.1.m1.1.1.cmml" xref="S4.T1.14.14.14.14.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.14.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.14.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.15.15.15.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.15.15.15.15.1">
<span class="ltx_p" id="S4.T1.15.15.15.15.1.1" style="width:17.1pt;">Peak <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.15.15.15.15.1.1.m1.1"><semantics id="S4.T1.15.15.15.15.1.1.m1.1a"><mo id="S4.T1.15.15.15.15.1.1.m1.1.1" stretchy="false" xref="S4.T1.15.15.15.15.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.15.1.1.m1.1b"><ci id="S4.T1.15.15.15.15.1.1.m1.1.1.cmml" xref="S4.T1.15.15.15.15.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.15.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.15.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.16.16.16.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.16.16.16.16.1">
<span class="ltx_p" id="S4.T1.16.16.16.16.1.1" style="width:17.1pt;">Dep <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.16.16.16.16.1.1.m1.1"><semantics id="S4.T1.16.16.16.16.1.1.m1.1a"><mo id="S4.T1.16.16.16.16.1.1.m1.1.1" stretchy="false" xref="S4.T1.16.16.16.16.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.16.1.1.m1.1b"><ci id="S4.T1.16.16.16.16.1.1.m1.1.1.cmml" xref="S4.T1.16.16.16.16.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.16.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.16.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.17.17.17.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.17.17.17.17.1">
<span class="ltx_p" id="S4.T1.17.17.17.17.1.1" style="width:17.1pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.17.17.17.17.1.1.m1.1"><semantics id="S4.T1.17.17.17.17.1.1.m1.1a"><mo id="S4.T1.17.17.17.17.1.1.m1.1.1" stretchy="false" xref="S4.T1.17.17.17.17.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.17.1.1.m1.1b"><ci id="S4.T1.17.17.17.17.1.1.m1.1.1.cmml" xref="S4.T1.17.17.17.17.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.17.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.17.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.18.18.18.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.18.18.18.18.1">
<span class="ltx_p" id="S4.T1.18.18.18.18.1.1" style="width:17.1pt;">Time <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.18.18.18.18.1.1.m1.1"><semantics id="S4.T1.18.18.18.18.1.1.m1.1a"><mo id="S4.T1.18.18.18.18.1.1.m1.1.1" stretchy="false" xref="S4.T1.18.18.18.18.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.18.1.1.m1.1b"><ci id="S4.T1.18.18.18.18.1.1.m1.1.1.cmml" xref="S4.T1.18.18.18.18.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.18.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.18.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.19.19.19.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.19.19.19.19.1">
<span class="ltx_p" id="S4.T1.19.19.19.19.1.1" style="width:17.1pt;">Peak <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.19.19.19.19.1.1.m1.1"><semantics id="S4.T1.19.19.19.19.1.1.m1.1a"><mo id="S4.T1.19.19.19.19.1.1.m1.1.1" stretchy="false" xref="S4.T1.19.19.19.19.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.19.1.1.m1.1b"><ci id="S4.T1.19.19.19.19.1.1.m1.1.1.cmml" xref="S4.T1.19.19.19.19.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.19.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.19.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.20.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.20.20.1">
<span class="ltx_p" id="S4.T1.20.20.20.20.1.1" style="width:17.1pt;">Dep <math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T1.20.20.20.20.1.1.m1.1"><semantics id="S4.T1.20.20.20.20.1.1.m1.1a"><mo id="S4.T1.20.20.20.20.1.1.m1.1.1" stretchy="false" xref="S4.T1.20.20.20.20.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.20.1.1.m1.1b"><ci id="S4.T1.20.20.20.20.1.1.m1.1.1.cmml" xref="S4.T1.20.20.20.20.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.20.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.20.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.22.2" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="21" id="S4.T1.20.20.22.2.1"><span class="ltx_text ltx_font_italic" id="S4.T1.20.20.22.2.1.1" style="background-color:#E6E6E6;">Qwen2.5-7B Series</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.23.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.23.3.1">CoT</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.2.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.2.1.1" style="width:17.1pt;">27.75</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.3.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.3.1.1" style="width:17.1pt;">1.66</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.4.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.4.1.1" style="width:17.1pt;">513</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.23.3.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.5.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.5.1.1" style="width:17.1pt;">0.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.6.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.6.1.1" style="width:17.1pt;">66.50</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.7.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.7.1.1" style="width:17.1pt;">1.77</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.8.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.8.1.1" style="width:17.1pt;">649</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.23.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.9.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.9.1.1" style="width:17.1pt;">0.2M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.10.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.10.1.1" style="width:17.1pt;">26.76</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.11.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.11.1.1" style="width:17.1pt;">0.60</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.12.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.12.1.1" style="width:17.1pt;">968</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.23.3.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.13.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.13.1.1" style="width:17.1pt;">0.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.14.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.14.1.1" style="width:17.1pt;">65.45</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.15.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.15.1.1" style="width:17.1pt;">0.68</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.16.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.16.1.1" style="width:17.1pt;">570</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.23.3.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.17.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.17.1.1" style="width:17.1pt;">0.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.18.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.18.1.1" style="width:17.1pt;">46.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.19.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.19.1.1" style="width:17.1pt;">1.18</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.20.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.20.1.1" style="width:17.1pt;">675</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.23.3.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.23.3.21.1">
<span class="ltx_p" id="S4.T1.20.20.23.3.21.1.1" style="width:17.1pt;">0.2M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.24.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.24.4.1">Distill-R1</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.2.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.2.1.1" style="width:17.1pt;">81.88</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.3.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.3.1.1" style="width:17.1pt;">5.60</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.4.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.4.1.1" style="width:17.1pt;">844</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.24.4.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.5.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.5.1.1" style="width:17.1pt;">1.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.6.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.6.1.1" style="width:17.1pt;">28.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.7.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.7.1.1" style="width:17.1pt;">14.31</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.8.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.8.1.1" style="width:17.1pt;">2483</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.24.4.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.9.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.9.1.1" style="width:17.1pt;">7.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.10.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.10.1.1" style="width:17.1pt;">10.10</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.11.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.11.1.1" style="width:17.1pt;">8.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.12.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.12.1.1" style="width:17.1pt;">6718</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.24.4.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.13.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.13.1.1" style="width:17.1pt;">31M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.14.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.14.1.1" style="width:17.1pt;">57.78</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.15.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.15.1.1" style="width:17.1pt;">5.53</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.16.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.16.1.1" style="width:17.1pt;">1967</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.24.4.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.17.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.17.1.1" style="width:17.1pt;">6.0M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.18.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.18.1.1" style="width:17.1pt;">44.50</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.19.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.19.1.1" style="width:17.1pt;">8.36</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.20.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.20.1.1" style="width:17.1pt;">3003</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.24.4.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.24.4.21.1">
<span class="ltx_p" id="S4.T1.20.20.24.4.21.1.1" style="width:17.1pt;">11.3M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.25.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.25.5.1">Vanilla</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.2.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.2.1.1" style="width:17.1pt;">90.90</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.3.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.3.1.1" style="width:17.1pt;">11.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.4.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.4.1.1" style="width:17.1pt;">2086</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.25.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.5.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.5.1.1" style="width:17.1pt;">3.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.6.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.6.1.1" style="width:17.1pt;">59.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.7.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.7.1.1" style="width:17.1pt;">20.61</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.8.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.8.1.1" style="width:17.1pt;">3417</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.25.5.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.9.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.9.1.1" style="width:17.1pt;">10M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.10.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.10.1.1" style="width:17.1pt;">30.81</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.11.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.11.1.1" style="width:17.1pt;">10.76</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.12.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.12.1.1" style="width:17.1pt;">8055</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.25.5.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.13.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.13.1.1" style="width:17.1pt;">39M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.14.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.14.1.1" style="width:17.1pt;">69.90</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.15.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.15.1.1" style="width:17.1pt;">11.50</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.16.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.16.1.1" style="width:17.1pt;">3786</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.25.5.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.17.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.17.1.1" style="width:17.1pt;">13M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.18.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.18.1.1" style="width:17.1pt;">62.90</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.19.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.19.1.1" style="width:17.1pt;">13.68</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.20.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.20.1.1" style="width:17.1pt;">4336</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.25.5.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.25.5.21.1">
<span class="ltx_p" id="S4.T1.20.20.25.5.21.1.1" style="width:17.1pt;">16.6M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.26.6" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.26.6.1"><span class="ltx_text" id="S4.T1.20.20.26.6.1.1" style="background-color:#F0FFFF;">+ H2O</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.2.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.2.1.1.1">89.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.3.1.1" style="width:17.1pt;">22.19</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.4.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.26.6.4.1.1.1">640</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.26.6.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.5.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.5.1.1.1">1.2M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.6.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.6.1.1.1">59.69</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.7.1.1" style="width:17.1pt;">29.02</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.8.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.26.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.9.1.1" style="width:17.1pt;">3.2M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.10.1.1" style="width:17.1pt;">24.75</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.11.1.1" style="width:17.1pt;">15.61</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.12.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.12.1.1.1">1200</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.26.6.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.13.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.13.1.1.1">9.8M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.14.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.14.1.1.1">70.10</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.15.1.1" style="width:17.1pt;">15.61</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.16.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.26.6.16.1.1.1">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.26.6.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.17.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.17.1.1.1">3.5M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.18.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.18.1.1.1">61.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.19.1.1" style="width:17.1pt;">20.61</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.20.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.26.6.20.1.1.1">972</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.26.6.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.26.6.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.26.6.21.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.26.6.21.1.1.1">4.4M</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.27.7" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.27.7.1"><span class="ltx_text" id="S4.T1.20.20.27.7.1.1" style="background-color:#F0FFFF;">+ SepLLM</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.2.1.1" style="width:17.1pt;">30.40</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.3.1.1" style="width:17.1pt;">53.52</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.4.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.27.7.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.5.1.1" style="width:17.1pt;">6.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.6.1.1" style="width:17.1pt;">10.81</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.7.1.1" style="width:17.1pt;">53.45</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.8.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.27.7.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.9.1.1" style="width:17.1pt;">9.0M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.10.1.1" style="width:17.1pt;">0.00</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.11.1.1" style="width:17.1pt;">11.65</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.12.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.27.7.12.1.1.1">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.27.7.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.13.1.1" style="width:17.1pt;">10M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.14.1.1" style="width:17.1pt;">8.08</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.15.1.1" style="width:17.1pt;">26.64</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.16.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.27.7.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.17.1.1" style="width:17.1pt;">9.4M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.18.1.1" style="width:17.1pt;">12.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.19.1.1" style="width:17.1pt;">36.32</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.20.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.27.7.20.1.1.1">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.27.7.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.27.7.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.27.7.21.1.1" style="width:17.1pt;">8.9M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.28.8" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.28.8.1"><span class="ltx_text" id="S4.T1.20.20.28.8.1.1" style="background-color:#F0FFFF;">AnLLM</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.2.1.1" style="width:17.1pt;">78.39</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.3.1.1" style="width:17.1pt;">15.26</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.4.1.1" style="width:17.1pt;">789</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.28.8.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.5.1.1" style="width:17.1pt;">1.6M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.6.1.1" style="width:17.1pt;">54.63</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.7.1.1" style="width:17.1pt;">14.13</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.8.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.28.8.8.1.1.1">875</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.28.8.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.9.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.28.8.9.1.1.1">2.0M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.10.1.1" style="width:17.1pt;">19.70</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.11.1.1" style="width:17.1pt;">9.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.12.1.1" style="width:17.1pt;">3401</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.28.8.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.13.1.1" style="width:17.1pt;">11M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.14.1.1" style="width:17.1pt;">54.95</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.15.1.1" style="width:17.1pt;">10.04</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.16.1.1" style="width:17.1pt;">1303</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.28.8.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.17.1.1" style="width:17.1pt;">3.8M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.18.1.1" style="width:17.1pt;">51.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.19.1.1" style="width:17.1pt;">12.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.20.1.1" style="width:17.1pt;">1592</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.28.8.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.28.8.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.28.8.21.1.1" style="width:17.1pt;">4.6M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.29.9" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.29.9.1"><span class="ltx_text" id="S4.T1.20.20.29.9.1.1" style="background-color:#F0FFFF;">Ours (<span class="ltx_text ltx_font_italic" id="S4.T1.20.20.29.9.1.1.1">tho.</span>)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.2.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.2.1.1.1">90.14</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.3.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.3.1.1.1">11.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.4.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.29.9.4.1.1.1">676</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.29.9.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.5.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.5.1.1.1">1.0M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.6.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.6.1.1.1">60.47</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.7.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.7.1.1.1">13.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.8.1.1" style="width:17.1pt;">944</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.29.9.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.9.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.9.1.1.1">1.9M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.10.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.10.1.1.1">30.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.11.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.29.9.11.1.1.1">8.41</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.12.1.1" style="width:17.1pt;">2385</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.29.9.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.13.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.13.1.1.1">9.3M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.14.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.14.1.1.1">70.30</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.15.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.15.1.1.1">7.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.16.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.29.9.16.1.1.1">1151</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.29.9.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.17.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.17.1.1.1">2.7M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.18.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.18.1.1.1">62.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.19.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.19.1.1.1">10.17</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.20.1.1" style="width:17.1pt;">1289</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.29.9.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.29.9.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.29.9.21.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.29.9.21.1.1.1">3.7M</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.30.10" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.30.10.1"><span class="ltx_text" id="S4.T1.20.20.30.10.1.1" style="background-color:#F0FFFF;">Ours (<span class="ltx_text ltx_font_italic" id="S4.T1.20.20.30.10.1.1.1">token</span>)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.2.1.1" style="width:17.1pt;">87.11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.3.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.30.10.3.1.1.1">11.48</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.4.1.1" style="width:17.1pt;">1038</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.30.10.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.5.1.1" style="width:17.1pt;">1.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.6.1.1" style="width:17.1pt;">57.35</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.7.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.30.10.7.1.1.1">13.80</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.8.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.30.10.8.1.1.1">489</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.30.10.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.9.1.1" style="width:17.1pt;">3.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.10.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.30.10.10.1.1.1">28.28</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.11.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.30.10.11.1.1.1">8.26</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.12.1.1" style="width:17.1pt;">3940</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.30.10.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.13.1.1" style="width:17.1pt;">18M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.14.1.1" style="width:17.1pt;">62.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.15.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.30.10.15.1.1.1">8.95</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.16.1.1" style="width:17.1pt;">1884</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.30.10.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.17.1.1" style="width:17.1pt;">5.6M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.18.1.1" style="width:17.1pt;">58.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.19.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.30.10.19.1.1.1">10.62</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.20.1.1" style="width:17.1pt;">1838</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.30.10.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.30.10.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.30.10.21.1.1" style="width:17.1pt;">7.2M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.31.11" style="background-color:#E6E6E6;">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" colspan="21" id="S4.T1.20.20.31.11.1"><span class="ltx_text ltx_font_italic" id="S4.T1.20.20.31.11.1.1" style="background-color:#E6E6E6;">Llama3.1-8B Series</span></th>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.32.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.32.12.1">CoT</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.2.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.2.1.1" style="width:17.1pt;">85.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.3.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.3.1.1" style="width:17.1pt;">2.15</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.4.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.4.1.1" style="width:17.1pt;">550</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.32.12.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.5.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.5.1.1" style="width:17.1pt;">0.2M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.6.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.6.1.1" style="width:17.1pt;">65.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.7.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.7.1.1" style="width:17.1pt;">2.39</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.8.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.8.1.1" style="width:17.1pt;">736</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.32.12.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.9.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.9.1.1" style="width:17.1pt;">0.3M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.10.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.10.1.1" style="width:17.1pt;">24.75</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.11.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.11.1.1" style="width:17.1pt;">0.96</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.12.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.12.1.1" style="width:17.1pt;">1231</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.32.12.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.13.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.13.1.1" style="width:17.1pt;">0.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.14.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.14.1.1" style="width:17.1pt;">66.46</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.15.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.15.1.1" style="width:17.1pt;">0.93</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.16.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.16.1.1" style="width:17.1pt;">642</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.32.12.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.17.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.17.1.1" style="width:17.1pt;">0.2M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.18.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.18.1.1" style="width:17.1pt;">60.54</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.19.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.19.1.1" style="width:17.1pt;">1.61</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.20.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.20.1.1" style="width:17.1pt;">790</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.32.12.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.32.12.21.1">
<span class="ltx_p" id="S4.T1.20.20.32.12.21.1.1" style="width:17.1pt;">0.4M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.33.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.33.13.1">Distill-R1</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.2.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.2.1.1" style="width:17.1pt;">73.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.3.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.3.1.1" style="width:17.1pt;">2.58</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.4.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.4.1.1" style="width:17.1pt;">395</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.33.13.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.5.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.5.1.1" style="width:17.1pt;">0.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.6.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.6.1.1" style="width:17.1pt;">22.01</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.7.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.7.1.1" style="width:17.1pt;">2.97</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.8.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.8.1.1" style="width:17.1pt;">582</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.33.13.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.9.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.9.1.1" style="width:17.1pt;">0.8M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.10.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.10.1.1" style="width:17.1pt;">20.20</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.11.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.11.1.1" style="width:17.1pt;">5.24</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.12.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.12.1.1" style="width:17.1pt;">3972</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.33.13.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.13.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.13.1.1" style="width:17.1pt;">16M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.14.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.14.1.1" style="width:17.1pt;">37.58</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.15.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.15.1.1" style="width:17.1pt;">0.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.16.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.16.1.1" style="width:17.1pt;">380</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.33.13.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.17.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.17.1.1" style="width:17.1pt;">0.2M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.18.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.18.1.1" style="width:17.1pt;">38.35</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.19.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.19.1.1" style="width:17.1pt;">2.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.20.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.20.1.1" style="width:17.1pt;">1332</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.33.13.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.33.13.21.1">
<span class="ltx_p" id="S4.T1.20.20.33.13.21.1.1" style="width:17.1pt;">4.4M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.34.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.34.14.1">Vanilla</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.2.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.2.1.1" style="width:17.1pt;">91.43</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.3.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.3.1.1" style="width:17.1pt;">12.06</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.4.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.4.1.1" style="width:17.1pt;">1986</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.34.14.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.5.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.5.1.1" style="width:17.1pt;">3.0M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.6.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.6.1.1" style="width:17.1pt;">69.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.7.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.7.1.1" style="width:17.1pt;">14.82</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.8.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.8.1.1" style="width:17.1pt;">2883</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.34.14.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.9.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.9.1.1" style="width:17.1pt;">6.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.10.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.10.1.1" style="width:17.1pt;">40.91</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.11.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.11.1.1" style="width:17.1pt;">7.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.12.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.12.1.1" style="width:17.1pt;">6622</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.34.14.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.13.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.13.1.1" style="width:17.1pt;">26M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.14.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.14.1.1" style="width:17.1pt;">83.03</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.15.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.15.1.1" style="width:17.1pt;">6.80</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.16.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.16.1.1" style="width:17.1pt;">2793</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.34.14.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.17.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.17.1.1" style="width:17.1pt;">5.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.18.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.18.1.1" style="width:17.1pt;">71.25</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.19.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.19.1.1" style="width:17.1pt;">10.42</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.20.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.20.1.1" style="width:17.1pt;">3571</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.34.14.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.34.14.21.1">
<span class="ltx_p" id="S4.T1.20.20.34.14.21.1.1" style="width:17.1pt;">10.5M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.35.15" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.35.15.1"><span class="ltx_text" id="S4.T1.20.20.35.15.1.1" style="background-color:#F0FFFF;">+ H2O</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.2.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.35.15.2.1.1.1">90.45</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.3.1.1" style="width:17.1pt;">20.23</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.4.1.1" style="width:17.1pt;">640</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.35.15.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.5.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.35.15.5.1.1.1">1.0M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.6.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.35.15.6.1.1.1">65.92</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.7.1.1" style="width:17.1pt;">27.11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.8.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.35.15.8.1.1.1">736</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.35.15.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.9.1.1" style="width:17.1pt;">1.8M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.10.1.1" style="width:17.1pt;">31.81</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.11.1.1" style="width:17.1pt;">12.55</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.12.1.1" style="width:17.1pt;">1536</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.35.15.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.13.1.1" style="width:17.1pt;">7.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.14.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.35.15.14.1.1.1">78.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.15.1.1" style="width:17.1pt;">11.43</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.16.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.35.15.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.17.1.1" style="width:17.1pt;">2.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.18.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.35.15.18.1.1.1">66.79</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.19.1.1" style="width:17.1pt;">17.83</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.20.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.35.15.20.1.1.1">984</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.35.15.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.35.15.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.35.15.21.1.1" style="width:17.1pt;">3.2M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.36.16" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.36.16.1"><span class="ltx_text" id="S4.T1.20.20.36.16.1.1" style="background-color:#F0FFFF;">+ SepLLM</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.2.1.1" style="width:17.1pt;">26.25</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.3.1.1" style="width:17.1pt;">50.05</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.4.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.36.16.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.5.1.1" style="width:17.1pt;">5.8M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.6.1.1" style="width:17.1pt;">25.12</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.7.1.1" style="width:17.1pt;">50.11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.8.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.36.16.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.9.1.1" style="width:17.1pt;">7.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.10.1.1" style="width:17.1pt;">2.53</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.11.1.1" style="width:17.1pt;">12.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.12.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.36.16.12.1.1.1">1024</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.36.16.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.13.1.1" style="width:17.1pt;">10M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.14.1.1" style="width:17.1pt;">14.55</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.15.1.1" style="width:17.1pt;">27.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.16.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.36.16.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.17.1.1" style="width:17.1pt;">8.5M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.18.1.1" style="width:17.1pt;">17.11</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.19.1.1" style="width:17.1pt;">34.98</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.20.1.1" style="width:17.1pt;">1024</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.36.16.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.36.16.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.36.16.21.1.1" style="width:17.1pt;">8.0M</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.37.17" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.20.20.37.17.1"><span class="ltx_text" id="S4.T1.20.20.37.17.1.1" style="background-color:#F0FFFF;">AnLLM</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.2.1.1" style="width:17.1pt;">77.33</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.3.1.1" style="width:17.1pt;">17.92</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.4.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.4.1.1.1">589</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.37.17.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.5.1.1" style="width:17.1pt;">1.1M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.6.1.1" style="width:17.1pt;">58.62</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.7.1.1" style="width:17.1pt;">16.53</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.8.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.8.1.1.1">589</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.37.17.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.9.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.9.1.1.1">1.2M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.10.1.1" style="width:17.1pt;">31.31</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.11.1.1" style="width:17.1pt;">7.19</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.12.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.12.1.1.1">838</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.37.17.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.13.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.13.1.1.1">3.7M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.14.1.1" style="width:17.1pt;">68.89</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.15.1.1" style="width:17.1pt;">9.79</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.16.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.16.1.1.1">621</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T1.20.20.37.17.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.17.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.17.1.1.1">1.6M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.18.1.1" style="width:17.1pt;">59.04</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.19.1.1" style="width:17.1pt;">12.86</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.20.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.20.1.1.1">659</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T1.20.20.37.17.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.37.17.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.37.17.21.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.37.17.21.1.1.1">1.9M</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.38.18" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.20.20.38.18.1"><span class="ltx_text" id="S4.T1.20.20.38.18.1.1" style="background-color:#F0FFFF;">Ours (<span class="ltx_text ltx_font_italic" id="S4.T1.20.20.38.18.1.1.1">tho.</span>)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.2.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.2.1.1.1">88.25</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.3.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.3.1.1.1">12.65</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.4.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.4.1.1.1">629</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.38.18.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.5.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.5.1.1.1">0.9M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.6.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.6.1.1.1">63.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.7.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.7.1.1.1">14.88</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.8.1.1" style="width:17.1pt;">882</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.38.18.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.9.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.9.1.1.1">1.8M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.10.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.10.1.1.1">36.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.11.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.11.1.1.1">6.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.12.1.1" style="width:17.1pt;">1796</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.38.18.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.13.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.13.1.1.1">6.4M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.14.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.14.1.1.1">79.39</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.15.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.15.1.1.1">7.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.16.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.16.1.1.1">911</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T1.20.20.38.18.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.17.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.17.1.1.1">1.9M</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.18.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.18.1.1.1">66.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.19.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.38.18.19.1.1.1">10.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.20.1.1" style="width:17.1pt;">1055</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T1.20.20.38.18.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.38.18.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.38.18.21.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.38.18.21.1.1.1">2.7M</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.39.19" style="background-color:#F0FFFF;">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.20.20.39.19.1"><span class="ltx_text" id="S4.T1.20.20.39.19.1.1" style="background-color:#F0FFFF;">Ours (<span class="ltx_text ltx_font_italic" id="S4.T1.20.20.39.19.1.1.1">token</span>)</span></th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.2.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.2.1.1" style="width:17.1pt;">85.52</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.3.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.3.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.39.19.3.1.1.1">13.87</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.4.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.4.1.1" style="width:17.1pt;">1104</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.20.20.39.19.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.5.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.5.1.1" style="width:17.1pt;">1.7M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.6.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.6.1.1" style="width:17.1pt;">61.05</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.7.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.7.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.39.19.7.1.1.1">15.85</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.8.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.8.1.1" style="width:17.1pt;">1538</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.20.20.39.19.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.9.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.9.1.1" style="width:17.1pt;">3.3M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.10.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.10.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.39.19.10.1.1.1">31.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.11">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.11.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.11.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.39.19.11.1.1.1">6.94</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.12">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.12.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.12.1.1" style="width:17.1pt;">3150</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.20.20.39.19.13">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.13.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.13.1.1" style="width:17.1pt;">12M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.14">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.14.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.14.1.1" style="width:17.1pt;">74.14</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.15">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.15.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.15.1.1" style="width:17.1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.20.20.39.19.15.1.1.1">7.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.16">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.16.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.16.1.1" style="width:17.1pt;">1512</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r" id="S4.T1.20.20.39.19.17">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.17.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.17.1.1" style="width:17.1pt;">2.9M</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.18">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.18.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.18.1.1" style="width:17.1pt;">63.13</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.19">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.19.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.19.1.1" style="width:17.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.20.20.39.19.19.1.1.1">11.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.20">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.20.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.20.1.1" style="width:17.1pt;">1826</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S4.T1.20.20.39.19.21">
<span class="ltx_inline-block ltx_align_top" id="S4.T1.20.20.39.19.21.1" style="background-color:#F0FFFF;">
<span class="ltx_p" id="S4.T1.20.20.39.19.21.1.1" style="width:17.1pt;">4.8M</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents the main results of the experiments, comparing the performance of different methods for accelerating large language models (LLMs) in complex reasoning tasks.  The methods include Chain-of-Thought (CoT), two training-free acceleration methods (H2O and SepLLM), one training-based method (AnLLM), and the proposed method, LightThinker.  The evaluation is performed on four datasets using two different LLM models (Qwen and Llama).  Metrics include accuracy (Acc), inference time (Time), peak token usage (Peak), and a novel dependency metric (Dep) which measures the amount of information used during reasoning.  Light blue highlighting indicates acceleration methods, with the best performing methods shown in bold and the second-best underlined. Vanilla serves as the baseline, establishing the upper accuracy bound for comparison. Dep is expressed in millions, Time in hours, and Peak in counts.  A rough estimate of the compression ratio for each method is determined by comparing the Dep values against that of Vanilla. More details on the dependency metric are available in Appendix A.
> <details>
> <summary>read the caption</summary>
> Table 1:  Main results. The CoT is based on the instruction model, while Vanilla, AnLLM, and LightThinker are based on Distill-R1. The light blue background indicates acceleration methods, with bold representing the best and underline the second best among them. The Acc of Vanilla serves as the upper bound for Acc of acceleration methods. Dep is measured in million, Time in hours, and Peak in counts. The compression ratio can be roughly estimated by the ratio of Dep between acceleration methods and Vanilla. See Appendix A for more details.
> </details>





### In-depth insights


#### CoT Compression
While the paper focuses on **compressing intermediate reasoning steps** in LLMs, the concept of "CoT Compression" could refer to techniques that specifically aim to reduce the token length of Chain-of-Thought (CoT) prompts or generated reasoning chains. This could involve **distilling knowledge** from verbose CoT examples into shorter, more efficient prompts. Another approach might involve **training models to generate more concise and relevant reasoning steps**, avoiding unnecessary or redundant information. The LightThinker architecture could be adapted where gist tokens are used to compress CoT examples. Furthermore, exploring methods to **identify and retain only the most crucial reasoning steps** while discarding less informative ones. Finally, using summarization techniques to condense lengthy CoT explanations into more compact representations. It's essential to **balance compression with maintaining the accuracy and coherence** of the reasoning process. This is the core target in compressing CoT.

#### LLM Efficiency
**LLM efficiency** is a critical area, given the resource demands of large models. Research focuses on reducing computational and memory footprints. Techniques include **quantization**, which reduces the precision of model weights, and **pruning**, which removes less important connections. **Knowledge distillation** transfers knowledge from a large model to a smaller one, retaining performance while improving efficiency. Innovative architectures and training strategies also play a role, aiming to optimize resource utilization during both training and inference, thus leading to smaller model sizes and **faster processing**.

#### Dynamic Thinking
**Dynamic Thinking** in LLMs involves adapting internal processes during reasoning, mirroring human cognition. **LightThinker** embodies this by compressing thoughts, reducing token load, and saving memory. Such models learn **when and how** to compress, optimizing resource use without sacrificing accuracy. This shift enables LLMs to handle complex tasks more efficiently, balancing performance with computational cost. This idea promotes further study in adaptive AI systems for better resource management and scalable reasoning.

#### Data Dependency
Data dependency, especially within the realm of language models, highlights the crucial relationships between generated tokens and the preceding context. **Analyzing these dependencies is vital for understanding how effectively a model uses prior information for reasoning and generation.** A lower data dependency indicates the model relies less on the original context, signifying more efficient compression or abstraction. This concept is useful for assessing the quality of information retention during reasoning. **Metrics quantifying this dependency are essential for fairly comparing different memory optimization techniques**, especially in scenarios with dynamically changing context lengths and complex interactions between input prompts and generated outputs. Analyzing data dependency is essential to optimize model architectures and training methodologies for efficient information processing.

#### Inference Speed
**Inference speed is critical for deploying LLMs**, especially in real-time applications. **Reducing the computational cost per token accelerates inference**, making models more responsive. Techniques that **compress intermediate steps or selectively attend to key information enhance speed**. However, maintaining accuracy while optimizing for speed is a key challenge. Methods like quantization and pruning can accelerate inference but may reduce performance if not done carefully. **Striking a balance between efficiency and accuracy is paramount**. It is important to **consider trade-offs, since aggressively optimizing speed will impact accuracy**. Furthermore, **it is also important to maintain a good compression ratio to accelerate speed effectively**. **A well-engineered approach will deliver the best user experience**. The goal is to **accelerate the inference speed with minimal losses**.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T2.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T2.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.2">GSM8K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.3">MMLU</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.4">GPQA</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1.1.5">BBH</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.1.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T2.1.1.2.1.1">Qwen</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.2">20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.3">37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.4">115</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.1.5">48</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S4.T2.1.1.3.2.1">Llama</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.2">26</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.3">47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.4">139</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.1.1.3.2.5">55</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the average number of times the LightThinker model performed compression during inference on four different datasets (GSM8K, MMLU, GPQA, and BBH). It shows how frequently the model utilized its compression mechanism across various reasoning tasks and dataset complexities.
> <details>
> <summary>read the caption</summary>
> Table 2:  Statistics of the average number of compressions per dataset for LightThinker.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T3.1.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.1.1.1.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T3.1.1.1.1.1"></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.2">GSM8K</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.3">MMLU</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.4">GPQA</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.5">BBH</th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1.1.6">AVG</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.1.1.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T3.1.1.2.1.1">AnLLM</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.2.1.2.1">78.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.3">54.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.4">19.70</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.5">54.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.1.1.2.1.6">51.92</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.3.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.1.1.3.2.1">Ours (|C|=1, T)</th>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.2">78.32</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.3.2.3.1">58.23</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.3.2.4.1">20.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.3.2.5.1">55.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.1.1.3.2.6.1">53.15</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T3.1.1.4.3.1">Ours (|C|=1, F)</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.2.1">80.21</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.3.1">58.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.4.1">22.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.5"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.5.1">62.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.1.1.4.3.6"><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.4.3.6.1">55.67</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study on the Qwen model investigates the impact of two key design choices in LightThinker: the decoupled token design and the attention mask mechanism.  It compares LightThinker's performance against AnLLM, using AnLLM's attention mask ('T') and LightThinker's attention mask ('F').  Accuracy results across four datasets (GSM8K, MMLU, GPQA, BBH) are reported to demonstrate the individual and combined effects of these design choices on model accuracy.
> <details>
> <summary>read the caption</summary>
> Table 3:  Ablation results on the Qwen, reporting accuracy on four datasets. “T” denotes the use of AnLLM’s attention mask mechanism, while “F” indicates the use of LightThinker’s attention mask mechanism.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.15589/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.15589/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}