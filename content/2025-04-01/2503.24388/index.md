---
title: "RIG: Synergizing Reasoning and Imagination in End-to-End Generalist Policy"
summary: "RIG: Synergizes reasoning and imagination in an end-to-end generalist policy for embodied agents, improving sample efficiency and generalization."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Zhejiang University",]
showSummary: true
date: 2025-03-31
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.24388 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhonghan Zhao et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-01 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.24388" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.24388" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.24388/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Operating in complex, open-world environments requires embodied agents to possess reasoning and imagination. Previous methods either incorporate one of these abilities or combine specialized models, which limits learning efficiency and generalization. To address this, this paper introduces **RIG, an end-to-end generalist policy that synergizes reasoning and imagination**. 



To enable end-to-end training, the authors developed a data pipeline that integrates imagination and reasoning into trajectories collected from existing agents. **RIG learns the correlation between reasoning, action, and environment dynamics**, generating actions, simulating outcomes, and reviewing them before execution. This approach achieved significantly improved sample efficiency and generalization compared to previous works.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} RIG, a novel end-to-end generalist policy, integrates reasoning and imagination for embodied agents. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A progressive data collection strategy enhances learning efficiency in RIG. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} RIG supports test-time scaling, improving robustness and reducing trial-and-error. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **novel end-to-end generalist policy, RIG**, synergizing reasoning and imagination, offering a scalable approach to enhance embodied agent performance and reduce reliance on extensive training data. RIG opens new research directions for integrating cognitive abilities in AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.24388/x1.png)

> 🔼 Figure 1 illustrates the architectural differences between conventional embodied agents and the proposed RIG (Reasoning and Imagination Generalist) agent.  Panel (a) shows a Vision-Language Model (VLM)-based agent that uses visual input to generate textual actions, lacking an explicit world model or future prediction capability.  Panel (b) depicts an agent that uses a world model (VLM) to predict future states, but is separated from the reasoning/action generation process. Panel (c) presents a hybrid system that combines a VLM for reasoning and a Visual Generative Model (VGM) for imagining outcomes, but still as separate modules.  In contrast, panel (d) showcases the RIG architecture. This integrates reasoning, action selection, and image generation within a unified Transformer network, synergistically combining reasoning and imagination for more robust and efficient decision-making. RIG directly outputs a low-level action.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between conventional agents and RIG. RIG produces reasoning, actions, and imagination within a single Transformer.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.2.2.3.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T1.2.2.3.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.2.2.3.1.1.1">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T1.2.2.3.1.2">Capabilities</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="5" id="S4.T1.2.2.3.1.3">Number of Samples</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="5" id="S4.T1.2.2.3.1.4">Accuracy (%)</td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.3">Action</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.4">Gen.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.5">Reason</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.2.6">Lookahead</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.7">wood</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.8">grass</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.9">dirt</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.10">avg.</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.1.1.1.1"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mi id="S4.T1.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T1.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.11">Dig</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.12">Explore</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.13">Tower</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.14">avg.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2.2"><math alttext="\Delta" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mi id="S4.T1.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T1.2.2.2.2.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">roman_Δ</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.4.2" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="15" id="S4.T1.2.2.4.2.1"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.4.2.1.1" style="background-color:#E6E6E6;">Manual (ID 0–4)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.5.3">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.2.5.3.1">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.2">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.5.3.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.5.3.4"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T1.2.2.5.3.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.6">7.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.7">6.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.8">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.9">7.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.5.3.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.5.3.10.1" style="font-size:90%;color:#00FF00;">+0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.11">9.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.12">11.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.13">4.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.14">8.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.5.3.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.5.3.15.1" style="font-size:90%;color:#00FF00;">+0.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.6.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.6.4.1">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.3">✓</td>
<td class="ltx_td" id="S4.T1.2.2.6.4.4"></td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.6.4.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.6">11.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.7">16.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.8">12.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.9">13.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.6.4.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.6.4.10.1" style="font-size:90%;color:#00FF00;">+5.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.11">12.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.12">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.13">41.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.14">30.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6.4.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.6.4.15.1" style="font-size:90%;color:#00FF00;">+21.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.7.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.7.5.1">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.2">✓</td>
<td class="ltx_td" id="S4.T1.2.2.7.5.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.4">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.7.5.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.6">17.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.7">24.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.8">22.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.9">21.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.7.5.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.5.10.1" style="font-size:90%;color:#00FF00;">+13.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.11">34.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.12">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.13">37.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.14">34.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7.5.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.7.5.15.1" style="font-size:90%;color:#00FF00;">+26.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.8.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.8.6.1">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.4">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.8.6.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.6">22.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.7">45.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.8">38.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.9">35.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.8.6.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.8.6.10.1" style="font-size:90%;color:#00FF00;">+27.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.8.6.11.1">29.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.12">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.13">37.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.14">44.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8.6.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.8.6.15.1" style="font-size:90%;color:#00FF00;">+35.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.9.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.9.7.1">4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.7.5">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.6.1">28.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.7.1">137.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.8.1">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.9.1">80.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.9.7.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.10.1" style="font-size:90%;color:#00FF00;">+72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.11">65.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.12"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.12.1">84.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.13"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.13.1">88.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.14"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.14.1">79.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9.7.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.9.7.15.1" style="font-size:90%;color:#00FF00;">+71.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.10.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="15" id="S4.T1.2.2.10.8.1"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.10.8.1.1" style="background-color:#E6E6E6;">Tool (ID 0–4)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.11.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T1.2.2.11.9.1">0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.2">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.11.9.3"></td>
<td class="ltx_td ltx_border_t" id="S4.T1.2.2.11.9.4"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T1.2.2.11.9.5"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.6">24.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.7">33.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.8">42.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.9">33.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.2.2.11.9.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.11.9.10.1" style="font-size:90%;color:#00FF00;">+0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.11">17.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.12">11.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.13">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.14">12.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.11.9.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.11.9.15.1" style="font-size:90%;color:#00FF00;">+0.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.12.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.12.10.1">1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.3">✓</td>
<td class="ltx_td" id="S4.T1.2.2.12.10.4"></td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.12.10.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.6">25.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.7">29.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.8">48.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.9">34.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.12.10.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.12.10.10.1" style="font-size:90%;color:#00FF00;">+1.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.11">27.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.12">36.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.13">41.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.14">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.12.10.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.12.10.15.1" style="font-size:90%;color:#00FF00;">+22.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.13.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.13.11.1">2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.2">✓</td>
<td class="ltx_td" id="S4.T1.2.2.13.11.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.4">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.13.11.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.6">26.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.7">49.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.8">51.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.9">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.13.11.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.13.11.10.1" style="font-size:90%;color:#00FF00;">+9.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.11">24.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.12">31.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.13">29.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.14">28.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.13.11.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.13.11.15.1" style="font-size:90%;color:#00FF00;">+16.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.14.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.2.2.14.12.1">3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.4">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T1.2.2.14.12.5"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.6">79.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.7">115.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.8">108.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.9">101.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.14.12.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.12.10.1" style="font-size:90%;color:#00FF00;">+67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.11">85.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.12">100.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.13">94.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.14">93.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.14.12.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.14.12.15.1" style="font-size:90%;color:#00FF00;">+80.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.15.13">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T1.2.2.15.13.1">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.2.15.13.5">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.6"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.6.1">128.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.7"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.7.1">295.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.8"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.8.1">315.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.9"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.9.1">246.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.2.2.15.13.10"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.10.1" style="font-size:90%;color:#00FF00;">+213.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.11"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.11.1">95.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.12"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.12.1">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.13"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.13.1">102.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.14"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.14.1">94.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.2.2.15.13.15"><span class="ltx_text ltx_font_bold" id="S4.T1.2.2.15.13.15.1" style="font-size:90%;color:#00FF00;">+81.5</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This ablation study analyzes the impact of different model components (Action, Generation, Reasoning, Lookahead) on embodied task performance in a Minecraft environment.  The study is divided into two sections: Manual (where the agent only uses hands for actions) and Tool (where the agent can use tools).  For each capability setting (combinations of the components), the table presents the number of successful resource collection tasks ('Num.') and the accuracy of exploration tasks ('Acc.').  'Num.' measures the number of successful tasks in collecting wood, grass, and dirt, reflecting task completion efficiency, while 'Acc.' reflects the success rate of exploration tasks, measuring the agent's ability to navigate and explore the environment effectively.  The average performance ('avg.') for both metrics is shown, along with the improvement over the baseline (no additional capabilities, ID 0 for both Manual and Tool sections).
> <details>
> <summary>read the caption</summary>
> Table 1: Ablation study on embodied tasks under different capability settings. We compare different combinations of Action, Generation (Gen.), Reasoning (Reason), and Reviewing (Review). The table is divided into two groups: Manual (ID 0–4) and Tool (ID 0-4). The “Num.” column represents the number of completed collecting tasks (wood, grass, dirt), while “Acc.” denotes the success rate of exploration tasks. The columns “avg.” is the average performance. For both metrics, we report the absolute values, along with the improvement (+x𝑥xitalic_x) over the baseline (ID 0 for Manual and Tool).
> </details>





### In-depth insights


#### RIG: Synergy
**RIG (Reasoning and Imagination Generalist policy) synergizes reasoning and imagination in embodied agents for enhanced policy learning and generalization.** Traditional approaches often isolate these abilities, hindering efficiency. RIG integrates them end-to-end, progressively enriching trajectories with imagination and reasoning. This joint learning explicitly correlates reasoning, action, and environment dynamics, leading to sample efficiency gains and improved generalization. **RIG first reasons about actions, imagines outcomes, enabling review and self-correction before execution.** Experiments demonstrate robustness, generalization, interoperability, and test-time scaling, highlighting the potential of synergizing reasoning and imagination in embodied agents for complex open-world environments. RIG advances beyond prior methods by unifying reasoning, imagination, and action within a single Transformer model, trained through a progressive data collection strategy. **The framework supports dynamic lookahead reasoning at test time, boosting action robustness and reducing trial-and-error.**

#### Data Efficiency
The research paper emphasizes **RIG's superior data efficiency**. The results show that RIG achieves superior performance with only **111 hours of training data**, significantly less than previous approaches (VPT: 1962h, MineDreamer: 2101h, STEVE-1/Jarvis-1: ~2000h). RIG attains SOTA results across several benchmarks using only a small dataset. This demonstrates that **explicitly modelling the logic and reasoning** behind actions significantly improves learning efficiency, enabling the model to generalize effectively from limited data, which may also implies better design choices and model architecture.

#### Lookahead Review
The concept of 'Lookahead Review' presents a compelling strategy for enhancing agent decision-making. By enabling agents to **simulate future states and reason about potential outcomes**, this approach allows for more informed and robust action selection. This approach allows the agent to internally review and correct errors before interacting with the environment. The 'review' mechanism facilitates a deeper understanding of action consequences, **reducing trial-and-error**. This concept of **self-correction** based on imagined scenarios is crucial for agents operating in complex and uncertain environments, where immediate rewards may not accurately reflect long-term success or safety. By integrating this mechanism agents can learn more effective and adaptable policies.

#### Ablation Synergies
In essence, **ablation studies meticulously dissect the contributions of individual components within a larger system**, enabling a nuanced understanding of their respective impacts and interdependencies. Through systematic removal or modification of specific elements, researchers can discern the extent to which each contributes to overall performance, thereby illuminating potential redundancies, bottlenecks, and synergistic relationships. The synergizing effects of different components (Action, Generation, Basic Reasoning and Lookahead Reasoning) is leading to a **robust performance** (helps structured learning and improves short-term decisions and long-horizon task completion). Such comprehensive analyses are **indispensable for refining designs, optimizing resource allocation, and gaining fundamental insights into underlying mechanisms**. This is crucial for enhancing performance in research.

#### Multi-Modal RIG
**RIG (Reasoning and Imagination Generalist)**  is explored in the paper with a strong emphasis on its multi-modal capabilities. RIG is an end-to-end policy that integrates understanding and generation of visual, actions, and language in a single autoregressive Transformer. The model leverages explicit reasoning and visual imagination to enable robust performance. It uses a combination of diverse modalities that are not separated but explicitly correlated, which yields performance gains across tasks and generalization capabilities. The paper stresses that synergistic, multi-modal approach offers an effective design pattern for tackling complexity in embodied environments.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.24388/x2.png)

> 🔼 Figure 2 illustrates the process of creating the training dataset for the RIG model.  It begins with existing datasets: S0 uses refined data from MineRL-V0, while S1 collects vision-action pairs from STEVE-1.  In S2, reasoning is added to the data using GPT-40.  Crucially, S3 involves a comparative analysis.  The trained RIG-basic and STEVE-1 are run in parallel, and only instances where RIG-basic underperforms STEVE-1 are retained for the dataset. This ensures that the model learns from its mistakes and improves its performance.  Finally, S4 aligns the trajectories temporally, ensuring consistency.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Illustration of the data collection pipeline (S0–S4). Note that at S3 (Vision-Reviewing), we run the trained RIG-basic and policy model (STEVE-1 [20]) in parallel, keeping instances where RIG-basic performs poorly compared to STEVE-1.
> </details>



![](https://arxiv.org/html/2503.24388/x3.png)

> 🔼 Figure 3 illustrates the multi-step reasoning process within RIG, the proposed model.  RIG doesn't just react to immediate observations; instead, it engages in a structured conversation with itself. This is represented by a series of interconnected steps. The key element is the use of the token '<Imagine:>' to explicitly distinguish between real-world observations and internally generated scenarios. By employing this distinction, RIG maintains coherence in its reasoning, action prediction, and visual imagination processes. This methodology allows for a more thorough evaluation of prospective actions before taking real-world action.
> <details>
> <summary>read the caption</summary>
> Figure 3: Inference process in RIG. RIG follows a structured conversation flow through multi-turn interactions. It consistently uses the fixed word Imagine: to clearly separate internally imagined scenarios from real observations, thereby guiding coherent reasoning, action prediction, and visual imagination.
> </details>



![](https://arxiv.org/html/2503.24388/x4.png)

> 🔼 Figure 4 presents a comparison of RIG-basic's performance against other state-of-the-art methods in terms of both sample efficiency and overall performance on embodied tasks.  RIG-basic demonstrates significantly better performance using only 111 hours of training data, significantly less than the others. The figure shows that RIG-basic requires far fewer training iterations to achieve comparable or superior performance compared to models like VPT, STEVE-1, Jarvis-1, and MineDreamer.  The reduced training time is particularly noteworthy considering the superior performance obtained by RIG-basic.  Note that MineDreamer is a hybrid system, requiring separate training for a visual generation model in addition to utilizing the VPT policy model, thereby increasing its total training data requirements.
> <details>
> <summary>read the caption</summary>
> Figure 4: Performance and data-efficiency comparison. RIG-basic significantly outperforms other baselines with higher sample efficiency and achieves superior performance using only 111 hours of training data (42h S0 MineRL-V0 and 69h S1-S4). MineDreamer [48], a hybrid-system model, separately trains a visual generation model (139 hours) but also relies on VPT for the policy model, increasing total data requirements. Duration of VPT [2] reflects only the IDM data used, measured as video frames, while STEVE-1 [20] and Jarvis-1 [35] also leverage the VPT dataset.
> </details>



![](https://arxiv.org/html/2503.24388/extracted/6315860/figs/exp_main.png)

> 🔼 Figure 5 presents a comparative analysis of RIG (Reasoning and Imagination Generalist) against several baseline models across four key aspects: embodied tasks, image generation, understanding, and reasoning.  The results showcase RIG's superior performance.  RIG-basic, the simpler model using reasoning alone, already demonstrates improvements over the baselines. However, RIG-lookahead, incorporating both reasoning and a review mechanism, achieves the best results across all four evaluation categories. This visualization highlights the substantial improvements in performance achieved by synergizing reasoning and imagination.
> <details>
> <summary>read the caption</summary>
> Figure 5: Comparison with various baselines across embodied tasks, generation, understanding, and reasoning. RIG-basic incorporates reasoning without reviewing, while RIG-lookahead integrates both reasoning and reviewing capabilities.
> </details>



![](https://arxiv.org/html/2503.24388/x5.png)

> 🔼 Figure 6 shows the scalability of the RIG model across training data, iterations, and inference steps.  The top row displays the number of samples collected during material-gathering tasks for different scalability settings (e.g., varying training data, iterations, or lookahead steps), while the bottom row shows the success rate in exploration-based tasks under the same settings. Shaded areas indicate variance. The figure excludes the initial 42 hours of MineRL-V0 pretraining from the total 111 training hours. The training ratio only considers data before lookahead reasoning is applied.
> <details>
> <summary>read the caption</summary>
> Figure 6: Scalability Evaluation Across Training, Iteration, and Inference. We evaluate the scalability of RIG by testing its performance across three different aspects: training scalability, iteration scalability, and inference scalability. Each column corresponds to a different scalability setting. The top row presents the number of collected samples in material-gathering tasks, while the bottom row reports the success rate in exploration-based tasks. Shaded regions represent variance. We exclude 42h MineRL-V0 pretraining from the total 111h in Figure. The training ratio is only counted before the lookahead reasoning.
> </details>



![](https://arxiv.org/html/2503.24388/x6.png)

> 🔼 The figure illustrates RIG's inference process, which involves generating imagined visual states and corresponding reasoning to simulate multiple action trajectories. This allows the agent to conduct self-review and make corrective predictions before executing real-world actions.  The process begins with an instruction, current visual observation, and the history of previous actions.  RIG uses this to produce textual reasoning steps.  Importantly, to separate imagined scenarios from real observations, RIG uses the token `<Imagine:>` before generating predicted future visual states (frames) and associated reasoning. These imagined scenarios are then used to refine the decision-making process. Finally, the next action and a prediction of the resulting frame are output.
> <details>
> <summary>read the caption</summary>
> Figure A1: Detailed inference pipeline. RIG generates imagined visual states and corresponding reasoning to simulate multiple action trajectories, enabling self-review and corrective prediction.
> </details>



![](https://arxiv.org/html/2503.24388/x7.png)

> 🔼 This figure details the training pipeline of the RIG model, showing how it progressively incorporates reasoning and imagination.  S0 and S1 stages pretrain the model using real and imagined trajectories.  S2 and S3 further improve the model by adding reasoning and reviewing capabilities via GPT-40 relabeling. Finally, S4 aligns the model's imagined future trajectories (dream flow) with actual environmental observations (environment-grounded traces), allowing the model to refine its predictions based on reality.
> <details>
> <summary>read the caption</summary>
> Figure A2: Training pipeline of RIG. S0/S1 pretrain the model by aligning real and imagined flows. S2/S3 enhance reasoning and reviewing via GPT-4o relabeling. S4 aligns temporally predicted trajectories (dream flow) with environment-grounded traces.
> </details>



![](https://arxiv.org/html/2503.24388/x8.png)

> 🔼 Figure A3 illustrates the decision-making process of RIG, highlighting the benefits of lookahead reasoning and internal review.  The agent first perceives and interprets the environment (steps 1 and 2). Then, it simulates potential future states (step 3) by using its imagination of how actions may affect the world. By leveraging its internal predictive model, it can anticipate a hidden hazard or undesirable outcome. After reviewing the simulated future (step 3), the agent refines its planned action and modifies the decision to avoid the anticipated hazard before acting (step 4). This mechanism enhances the robustness and reliability of the agent's actions.
> <details>
> <summary>read the caption</summary>
> Figure A3: Qualitative example of lookahead and review. The agent understands the environment (1–2), simulates future states (3), and refines its decision through internal review before acting (4), successfully avoiding a hidden hazard.
> </details>



![](https://arxiv.org/html/2503.24388/x9.png)

> 🔼 Figure A4 is a visualization showing the distribution of different types of embodied tasks present in the datasets used to train the RIG model.  The tasks are categorized by complexity, ranging from simpler tasks like collecting resources to more complex tasks requiring strategic planning and higher-level reasoning. The diversity in task complexity is highlighted to emphasize the model's ability to generalize well across a wide range of challenging scenarios in the Minecraft environment.
> <details>
> <summary>read the caption</summary>
> Figure A4: Task distribution. Our datasets include various embodied tasks with varying complexity, ensuring strong generalization across downstream goals.
> </details>



![](https://arxiv.org/html/2503.24388/x10.png)

> 🔼 This figure compares the performance of RIG and GPT-4 in a Minecraft tree-chopping task.  Both models receive the same visual input (the game screen) and the same instruction: 'chop a tree.'  RIG demonstrates a more robust approach.  It first reasons about the scene, identifies a suitable tree, and plans actions to reach and chop it, adjusting its camera position as needed. Then, it simulates the result of its plan (through visual imagination). GPT-4, while producing visually appealing output, makes a critical error in distance judgment, selecting an unreachable tree and attempting an invalid action. Because GPT-4 doesn't use visual imagination, it fails to correct its plan after executing the incorrect action. The comparison highlights RIG's ability to combine reasoning, visual imagination, and planning for reliable decision-making in dynamic environments.
> <details>
> <summary>read the caption</summary>
> Figure A5: Case study comparison with GPT-4o. Given the same input and prompt (chop a tree), RIG reasons and imagines future states to choose a reachable tree and adjust position before acting. GPT-4o, despite high visual quality, misjudges the distance, executes an invalid action, and fails to revise its plan.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.5.5.6.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.5.5.6.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.5.5.6.1.1.1">ID</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="4" id="S4.T2.5.5.6.1.2">Capabilities</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.5.5.6.1.3">Generation</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_r ltx_border_tt" colspan="2" id="S4.T2.5.5.6.1.4">Understanding</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S4.T2.5.5.6.1.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.6.1.5.1">
<span class="ltx_p" id="S4.T2.5.5.6.1.5.1.1" style="width:51.2pt;">Reasoning</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.6">Action</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.7">Gen.</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.5.8">Reason</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T2.5.5.5.9">Lookahead</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.1.1.1.1.1">
<span class="ltx_p" id="S4.T2.1.1.1.1.1.1" style="width:45.5pt;">FID <math alttext="\downarrow" class="ltx_centering" display="inline" id="S4.T2.1.1.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.2.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.2.2.2.2.1">
<span class="ltx_p" id="S4.T2.2.2.2.2.1.1" style="width:45.5pt;">PSNR <math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T2.2.2.2.2.1.1.m1.1"><semantics id="S4.T2.2.2.2.2.1.1.m1.1a"><mo id="S4.T2.2.2.2.2.1.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.2.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.2.1.1.m1.1b"><ci id="S4.T2.2.2.2.2.1.1.m1.1.1.cmml" xref="S4.T2.2.2.2.2.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.2.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.2.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.3.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.3.3.3.3.1">
<span class="ltx_p" id="S4.T2.3.3.3.3.1.1" style="width:51.2pt;">Score-Stc.<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T2.3.3.3.3.1.1.m1.1"><semantics id="S4.T2.3.3.3.3.1.1.m1.1a"><mo id="S4.T2.3.3.3.3.1.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.3.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.3.1.1.m1.1b"><ci id="S4.T2.3.3.3.3.1.1.m1.1.1.cmml" xref="S4.T2.3.3.3.3.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.3.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.3.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.4.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.4.4.4.4.1">
<span class="ltx_p" id="S4.T2.4.4.4.4.1.1" style="width:51.2pt;">Score-Env.<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T2.4.4.4.4.1.1.m1.1"><semantics id="S4.T2.4.4.4.4.1.1.m1.1a"><mo id="S4.T2.4.4.4.4.1.1.m1.1.1" stretchy="false" xref="S4.T2.4.4.4.4.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.4.1.1.m1.1b"><ci id="S4.T2.4.4.4.4.1.1.m1.1.1.cmml" xref="S4.T2.4.4.4.4.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.4.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.4.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.5.5.1">
<span class="ltx_p" id="S4.T2.5.5.5.5.1.1" style="width:51.2pt;">Score-Env.<math alttext="\uparrow" class="ltx_centering" display="inline" id="S4.T2.5.5.5.5.1.1.m1.1"><semantics id="S4.T2.5.5.5.5.1.1.m1.1a"><mo id="S4.T2.5.5.5.5.1.1.m1.1.1" stretchy="false" xref="S4.T2.5.5.5.5.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.5.1.1.m1.1b"><ci id="S4.T2.5.5.5.5.1.1.m1.1.1.cmml" xref="S4.T2.5.5.5.5.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.5.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.5.1.1.m1.1d">↑</annotation></semantics></math></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.5.7.2.1">0</td>
<td class="ltx_td ltx_border_t" id="S4.T2.5.5.7.2.2"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.7.2.3">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T2.5.5.7.2.4"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.5.5.7.2.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.7.2.6" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.2.6.1">
<span class="ltx_p" id="S4.T2.5.5.7.2.6.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.5.5.7.2.6.1.1.1" style="background-color:#E6E6E6;">214.5</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.5.5.7.2.7" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.2.7.1">
<span class="ltx_p" id="S4.T2.5.5.7.2.7.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.5.5.7.2.7.1.1.1" style="background-color:#E6E6E6;">16.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.7.2.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.2.8.1">
<span class="ltx_p" id="S4.T2.5.5.7.2.8.1.1" style="width:51.2pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.5.5.7.2.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.2.9.1">
<span class="ltx_p" id="S4.T2.5.5.7.2.9.1.1" style="width:51.2pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.7.2.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.7.2.10.1">
<span class="ltx_p" id="S4.T2.5.5.7.2.10.1.1" style="width:51.2pt;">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.8.3.1">1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.3.3">✓</td>
<td class="ltx_td" id="S4.T2.5.5.8.3.4"></td>
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.8.3.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.8.3.6" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.3.6.1">
<span class="ltx_p" id="S4.T2.5.5.8.3.6.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.5.5.8.3.6.1.1.1" style="background-color:#E6E6E6;">225.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.8.3.7" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.3.7.1">
<span class="ltx_p" id="S4.T2.5.5.8.3.7.1.1" style="width:45.5pt;"><span class="ltx_text" id="S4.T2.5.5.8.3.7.1.1.1" style="background-color:#E6E6E6;">16.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.8.3.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.3.8.1">
<span class="ltx_p" id="S4.T2.5.5.8.3.8.1.1" style="width:51.2pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.8.3.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.3.9.1">
<span class="ltx_p" id="S4.T2.5.5.8.3.9.1.1" style="width:51.2pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.8.3.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.8.3.10.1">
<span class="ltx_p" id="S4.T2.5.5.8.3.10.1.1" style="width:51.2pt;">-</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.5.9.4.1">2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.9.4.2">✓</td>
<td class="ltx_td ltx_border_t" id="S4.T2.5.5.9.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.9.4.4">✓</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T2.5.5.9.4.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.9.4.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.4.6.1">
<span class="ltx_p" id="S4.T2.5.5.9.4.6.1.1" style="width:45.5pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.5.5.9.4.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.4.7.1">
<span class="ltx_p" id="S4.T2.5.5.9.4.7.1.1" style="width:45.5pt;">-</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.9.4.8" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.4.8.1">
<span class="ltx_p" id="S4.T2.5.5.9.4.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S4.T2.5.5.9.4.8.1.1.1" style="background-color:#E6E6E6;">9.0</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="S4.T2.5.5.9.4.9" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.4.9.1">
<span class="ltx_p" id="S4.T2.5.5.9.4.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.4.9.1.1.1" style="background-color:#E6E6E6;">7.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S4.T2.5.5.9.4.10" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.9.4.10.1">
<span class="ltx_p" id="S4.T2.5.5.9.4.10.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.4.10.1.1.1" style="background-color:#E6E6E6;">6.1</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.5.5.10.5.1">3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.2">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.3">✓</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5.4">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.10.5.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.10.5.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.5.6.1">
<span class="ltx_p" id="S4.T2.5.5.10.5.6.1.1" style="width:45.5pt;">156.5</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.10.5.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.5.7.1">
<span class="ltx_p" id="S4.T2.5.5.10.5.7.1.1" style="width:45.5pt;">17.9</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.10.5.8" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.5.8.1">
<span class="ltx_p" id="S4.T2.5.5.10.5.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S4.T2.5.5.10.5.8.1.1.1" style="background-color:#E6E6E6;">9.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r" id="S4.T2.5.5.10.5.9" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.5.9.1">
<span class="ltx_p" id="S4.T2.5.5.10.5.9.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.10.5.9.1.1.1" style="background-color:#E6E6E6;">8.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S4.T2.5.5.10.5.10" style="background-color:#E6E6E6;">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.10.5.10.1">
<span class="ltx_p" id="S4.T2.5.5.10.5.10.1.1" style="width:51.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.5.10.1.1.1" style="background-color:#E6E6E6;">7.3</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.5.5.11.6.1">4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.2">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.3">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.4">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.5.5.11.6.5">✓</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.6">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.6.6.1">
<span class="ltx_p" id="S4.T2.5.5.11.6.6.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.11.6.6.1.1.1">77.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.5.5.11.6.7">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.6.7.1">
<span class="ltx_p" id="S4.T2.5.5.11.6.7.1.1" style="width:45.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.11.6.7.1.1.1">18.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.8">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.6.8.1">
<span class="ltx_p" id="S4.T2.5.5.11.6.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold ltx_align_center" id="S4.T2.5.5.11.6.8.1.1.1">9.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="S4.T2.5.5.11.6.9">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.6.9.1">
<span class="ltx_p" id="S4.T2.5.5.11.6.9.1.1" style="width:51.2pt;">8.1</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="S4.T2.5.5.11.6.10">
<span class="ltx_inline-block ltx_align_top" id="S4.T2.5.5.11.6.10.1">
<span class="ltx_p" id="S4.T2.5.5.11.6.10.1.1" style="width:51.2pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.11.6.10.1.1.1">8.5</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different model components on the performance of the RIG model across various aspects.  Specifically, it examines the effects of incorporating action prediction, image generation, explicit reasoning, and lookahead reasoning capabilities.  Performance is evaluated using metrics such as FID and PSNR for image generation, Score-Stc. for static understanding on the STEVE-21K dataset, and Score-Env. for environment-specific and reasoning-specific understanding.  The table allows for a systematic comparison of how each component contributes to the overall performance of the model.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study on Generation, Understanding, and Reasoning performance. We compare different combinations of Action, Generation (Gen.), Reasoning (Reason), and Lookahead capabilities. “Score-Env.” represents the environment-specific evaluation score from online understanding testing, while “Score-Env.” denotes reasoning-specific evaluation. “Score-Stc.” is computed on the static dataset STEVE-21K [43], and “FID” / “PSNR” measure image generation quality.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T1.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T1.2.1.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="A1.T1.2.1.1.1.1">Method</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.2.1.1.1.2">Vision Encoder</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.2.1.1.1.3">Parameters</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.2.1.1.1.4">Vision Quality (Gen.)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.2.1.1.1.5">MM Quality (Und.)</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T1.2.1.1.1.6">Evaluations</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="A1.T1.2.1.2.2.1"><span class="ltx_text ltx_font_bold" id="A1.T1.2.1.2.2.1.1">Autoregressive (AR)</span></th>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.3.3.1">Emu3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.3.3.2">VQ (D)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.3.3.3">8B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.3.3.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.3.3.5">-0.1</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.3.3.6">POPE, SEEDBench-Img, VQAv2 (85.2, 68.2, 75.1)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.4.4.1">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.4.4.2">VQ (D)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.4.4.3">111M, 343M, 775M, 1.4B, 3B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.4.4.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.4.4.5">-0.34</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.4.4.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.5.5.1">Chameleon <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib22" title=""><span class="ltx_text" style="font-size:90%;">22</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.5.5.2">VQ (D)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.5.5.3">7B, 34B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.5.5.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.5.5.5">-0.29</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.5.5.6">VQAv2 (69.6)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.6.6.1">Anole <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.6.6.2">VQ (D)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.6.6.3">7B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.6.6.4">-</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.6.6.5">-</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.6.6.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.7.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.7.7.1">Janus <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.7.7.2">VQ (D)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.7.7.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.7.7.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.7.7.5">-0.07</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.7.7.6">POPE, VQAv2 (87, 77.3)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" colspan="6" id="A1.T1.2.1.8.8.1"><span class="ltx_text ltx_font_bold" id="A1.T1.2.1.8.8.1.1">AR + Diffusion</span></th>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.9.9.1">Show-o <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.9.9.2">Magvitv2 (D/C), Clip-ViT (C)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.9.9.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.9.9.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.9.9.5">-0.15</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.9.9.6">POPE, VQAv2 (84.5, 74.7)</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="A1.T1.2.1.10.10.1">Transfusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.10.10.2">VAE (C)</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.10.10.3">0.16B, 0.37B, 0.76B, 1.4B, 7B</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.10.10.4">0.68</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.10.10.5">-0.01</td>
<td class="ltx_td ltx_align_center" id="A1.T1.2.1.10.10.6">-</td>
</tr>
<tr class="ltx_tr" id="A1.T1.2.1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="A1.T1.2.1.11.11.1">Fluid <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a>]</cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.2.1.11.11.2">VQ (D), VAE (C)</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.2.1.11.11.3">369M, 665M, 1.1B, 3.1B, 10.5B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.2.1.11.11.4">0.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.2.1.11.11.5">0.02</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T1.2.1.11.11.6">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A1 compares different unified multimodal models, categorized by whether they use an autoregressive approach or a combination of autoregressive and diffusion methods.  The table details key characteristics of each model, including the type of vision encoder used (e.g., VQGAN, VAE), the model's parameter size (in billions), vision generation quality as measured by GenEval SD3 8B, the quality of multimodal understanding, and the evaluation benchmarks used to assess the model's performance. This provides a comprehensive overview of the capabilities and performance of various state-of-the-art multimodal models.
> <details>
> <summary>read the caption</summary>
> Table A1: Comparison of various unified multimodal methods, categorized by their training approach (Autoregressive and AR + Diffusion), detailing vision encoder type, parameter scale, vision generation quality (GenEval SD3 8B), multimodal understanding quality, and evaluation benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A1.T2.19.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A1.T2.19.19.20.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T2.19.19.20.1.1" rowspan="2"><span class="ltx_text" id="A1.T2.19.19.20.1.1.1">Tokenizer</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="A1.T2.19.19.20.1.2" rowspan="2"><span class="ltx_text" id="A1.T2.19.19.20.1.2.1">Compression Ratio</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" id="A1.T2.19.19.20.1.3" rowspan="2"><span class="ltx_text" id="A1.T2.19.19.20.1.3.1">Quantization</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="4" id="A1.T2.19.19.20.1.4">MS-COCO</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.19.19.20.1.5">ImageNet-1K</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_tt" colspan="3" id="A1.T2.19.19.20.1.6">FFHQ</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A1.T2.19.19.20.1.7">CelebA-HQ</th>
</tr>
<tr class="ltx_tr" id="A1.T2.13.13.13">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.1.1.1.1">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.1.1.1.1.m1.1"><semantics id="A1.T2.1.1.1.1.m1.1a"><mo id="A1.T2.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.1.1.1.1.m1.1b"><ci id="A1.T2.1.1.1.1.m1.1.1.cmml" xref="A1.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.2.2.2.2">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.2.2.2.2.m1.1"><semantics id="A1.T2.2.2.2.2.m1.1a"><mo id="A1.T2.2.2.2.2.m1.1.1" stretchy="false" xref="A1.T2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.2.2.2.2.m1.1b"><ci id="A1.T2.2.2.2.2.m1.1.1.cmml" xref="A1.T2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.3.3.3.3">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T2.3.3.3.3.m1.1"><semantics id="A1.T2.3.3.3.3.m1.1a"><mo id="A1.T2.3.3.3.3.m1.1.1" stretchy="false" xref="A1.T2.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T2.3.3.3.3.m1.1b"><ci id="A1.T2.3.3.3.3.m1.1.1.cmml" xref="A1.T2.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T2.4.4.4.4">PSNR (Minecraft)<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.4.4.4.4.m1.1"><semantics id="A1.T2.4.4.4.4.m1.1a"><mo id="A1.T2.4.4.4.4.m1.1.1" stretchy="false" xref="A1.T2.4.4.4.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.4.4.4.4.m1.1b"><ci id="A1.T2.4.4.4.4.m1.1.1.cmml" xref="A1.T2.4.4.4.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.4.4.4.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.4.4.4.4.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.5.5.5.5">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.5.5.5.5.m1.1"><semantics id="A1.T2.5.5.5.5.m1.1a"><mo id="A1.T2.5.5.5.5.m1.1.1" stretchy="false" xref="A1.T2.5.5.5.5.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.5.5.5.5.m1.1b"><ci id="A1.T2.5.5.5.5.m1.1.1.cmml" xref="A1.T2.5.5.5.5.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.5.5.5.5.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.5.5.5.5.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.6.6.6.6">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.6.6.6.6.m1.1"><semantics id="A1.T2.6.6.6.6.m1.1a"><mo id="A1.T2.6.6.6.6.m1.1.1" stretchy="false" xref="A1.T2.6.6.6.6.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.6.6.6.6.m1.1b"><ci id="A1.T2.6.6.6.6.m1.1.1.cmml" xref="A1.T2.6.6.6.6.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.6.6.6.6.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.6.6.6.6.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T2.7.7.7.7">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T2.7.7.7.7.m1.1"><semantics id="A1.T2.7.7.7.7.m1.1a"><mo id="A1.T2.7.7.7.7.m1.1.1" stretchy="false" xref="A1.T2.7.7.7.7.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T2.7.7.7.7.m1.1b"><ci id="A1.T2.7.7.7.7.m1.1.1.cmml" xref="A1.T2.7.7.7.7.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.7.7.7.7.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.7.7.7.7.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.8.8.8.8">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.8.8.8.8.m1.1"><semantics id="A1.T2.8.8.8.8.m1.1a"><mo id="A1.T2.8.8.8.8.m1.1.1" stretchy="false" xref="A1.T2.8.8.8.8.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.8.8.8.8.m1.1b"><ci id="A1.T2.8.8.8.8.m1.1.1.cmml" xref="A1.T2.8.8.8.8.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.8.8.8.8.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.8.8.8.8.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.9.9.9.9">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.9.9.9.9.m1.1"><semantics id="A1.T2.9.9.9.9.m1.1a"><mo id="A1.T2.9.9.9.9.m1.1.1" stretchy="false" xref="A1.T2.9.9.9.9.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.9.9.9.9.m1.1b"><ci id="A1.T2.9.9.9.9.m1.1.1.cmml" xref="A1.T2.9.9.9.9.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.9.9.9.9.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.9.9.9.9.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_r ltx_border_t" id="A1.T2.10.10.10.10">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T2.10.10.10.10.m1.1"><semantics id="A1.T2.10.10.10.10.m1.1a"><mo id="A1.T2.10.10.10.10.m1.1.1" stretchy="false" xref="A1.T2.10.10.10.10.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T2.10.10.10.10.m1.1b"><ci id="A1.T2.10.10.10.10.m1.1.1.cmml" xref="A1.T2.10.10.10.10.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.10.10.10.10.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.10.10.10.10.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.11.11.11.11">PSNR<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.11.11.11.11.m1.1"><semantics id="A1.T2.11.11.11.11.m1.1a"><mo id="A1.T2.11.11.11.11.m1.1.1" stretchy="false" xref="A1.T2.11.11.11.11.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.11.11.11.11.m1.1b"><ci id="A1.T2.11.11.11.11.m1.1.1.cmml" xref="A1.T2.11.11.11.11.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.11.11.11.11.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.11.11.11.11.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.12.12.12.12">SSIM<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T2.12.12.12.12.m1.1"><semantics id="A1.T2.12.12.12.12.m1.1a"><mo id="A1.T2.12.12.12.12.m1.1.1" stretchy="false" xref="A1.T2.12.12.12.12.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T2.12.12.12.12.m1.1b"><ci id="A1.T2.12.12.12.12.m1.1.1.cmml" xref="A1.T2.12.12.12.12.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.12.12.12.12.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.12.12.12.12.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A1.T2.13.13.13.13">rFID<math alttext="\downarrow" class="ltx_Math" display="inline" id="A1.T2.13.13.13.13.m1.1"><semantics id="A1.T2.13.13.13.13.m1.1a"><mo id="A1.T2.13.13.13.13.m1.1.1" stretchy="false" xref="A1.T2.13.13.13.13.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A1.T2.13.13.13.13.m1.1b"><ci id="A1.T2.13.13.13.13.m1.1.1.cmml" xref="A1.T2.13.13.13.13.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.13.13.13.13.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A1.T2.13.13.13.13.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T2.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="A1.T2.14.14.14.2">Open-MAGVIT2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.1"><math alttext="16\times 16" class="ltx_Math" display="inline" id="A1.T2.14.14.14.1.m1.1"><semantics id="A1.T2.14.14.14.1.m1.1a"><mrow id="A1.T2.14.14.14.1.m1.1.1" xref="A1.T2.14.14.14.1.m1.1.1.cmml"><mn id="A1.T2.14.14.14.1.m1.1.1.2" xref="A1.T2.14.14.14.1.m1.1.1.2.cmml">16</mn><mo id="A1.T2.14.14.14.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.14.14.14.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.14.14.14.1.m1.1.1.3" xref="A1.T2.14.14.14.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.14.14.14.1.m1.1b"><apply id="A1.T2.14.14.14.1.m1.1.1.cmml" xref="A1.T2.14.14.14.1.m1.1.1"><times id="A1.T2.14.14.14.1.m1.1.1.1.cmml" xref="A1.T2.14.14.14.1.m1.1.1.1"></times><cn id="A1.T2.14.14.14.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.14.14.14.1.m1.1.1.2">16</cn><cn id="A1.T2.14.14.14.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.14.14.14.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.14.14.14.1.m1.1c">16\times 16</annotation><annotation encoding="application/x-llamapun" id="A1.T2.14.14.14.1.m1.1d">16 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.14.14.14.3">LFQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.4">30.06</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.5">0.502</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.6">6.649</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.14.14.14.7">27.21</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.8">29.62</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.9">0.398</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.14.14.14.10">2.701</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.11">31.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.12">0.774</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T2.14.14.14.13">1.994</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.14">32.36</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.15">0.844</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T2.14.14.14.16">2.865</td>
</tr>
<tr class="ltx_tr" id="A1.T2.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.15.15.15.2">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.1"><math alttext="8\times 8" class="ltx_Math" display="inline" id="A1.T2.15.15.15.1.m1.1"><semantics id="A1.T2.15.15.15.1.m1.1a"><mrow id="A1.T2.15.15.15.1.m1.1.1" xref="A1.T2.15.15.15.1.m1.1.1.cmml"><mn id="A1.T2.15.15.15.1.m1.1.1.2" xref="A1.T2.15.15.15.1.m1.1.1.2.cmml">8</mn><mo id="A1.T2.15.15.15.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.15.15.15.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.15.15.15.1.m1.1.1.3" xref="A1.T2.15.15.15.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.15.15.15.1.m1.1b"><apply id="A1.T2.15.15.15.1.m1.1.1.cmml" xref="A1.T2.15.15.15.1.m1.1.1"><times id="A1.T2.15.15.15.1.m1.1.1.1.cmml" xref="A1.T2.15.15.15.1.m1.1.1.1"></times><cn id="A1.T2.15.15.15.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.15.15.15.1.m1.1.1.2">8</cn><cn id="A1.T2.15.15.15.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.15.15.15.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.15.15.15.1.m1.1c">8\times 8</annotation><annotation encoding="application/x-llamapun" id="A1.T2.15.15.15.1.m1.1d">8 × 8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.15.15.15.3">VQ</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.4">30.71</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.5">0.616</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.6">4.123</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.15.15.15.7">28.93</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.8">30.28</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.9">0.498</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.15.15.15.10">1.403</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.11">33.39</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.12">0.868</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.15.15.15.13">0.701</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.14">34.82</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.15">0.937</td>
<td class="ltx_td ltx_align_center" id="A1.T2.15.15.15.16">0.502</td>
</tr>
<tr class="ltx_tr" id="A1.T2.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.16.16.16.2">LlamaGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.1"><math alttext="16\times 16" class="ltx_Math" display="inline" id="A1.T2.16.16.16.1.m1.1"><semantics id="A1.T2.16.16.16.1.m1.1a"><mrow id="A1.T2.16.16.16.1.m1.1.1" xref="A1.T2.16.16.16.1.m1.1.1.cmml"><mn id="A1.T2.16.16.16.1.m1.1.1.2" xref="A1.T2.16.16.16.1.m1.1.1.2.cmml">16</mn><mo id="A1.T2.16.16.16.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.16.16.16.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.16.16.16.1.m1.1.1.3" xref="A1.T2.16.16.16.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.16.16.16.1.m1.1b"><apply id="A1.T2.16.16.16.1.m1.1.1.cmml" xref="A1.T2.16.16.16.1.m1.1.1"><times id="A1.T2.16.16.16.1.m1.1.1.1.cmml" xref="A1.T2.16.16.16.1.m1.1.1.1"></times><cn id="A1.T2.16.16.16.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.16.16.16.1.m1.1.1.2">16</cn><cn id="A1.T2.16.16.16.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.16.16.16.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.16.16.16.1.m1.1c">16\times 16</annotation><annotation encoding="application/x-llamapun" id="A1.T2.16.16.16.1.m1.1d">16 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.16.16.16.3">VQ</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.4">29.93</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.5">0.491</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.6">6.077</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.16.16.16.7">27.06</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.8">29.81</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.9">0.448</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.16.16.16.10">1.657</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.11">31.58</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.12">0.772</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.16.16.16.13">1.366</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.14">32.18</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.15">0.837</td>
<td class="ltx_td ltx_align_center" id="A1.T2.16.16.16.16">1.113</td>
</tr>
<tr class="ltx_tr" id="A1.T2.17.17.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.17.17.17.2">Cosmos-Tokenizer-DI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.1"><math alttext="8\times 8" class="ltx_Math" display="inline" id="A1.T2.17.17.17.1.m1.1"><semantics id="A1.T2.17.17.17.1.m1.1a"><mrow id="A1.T2.17.17.17.1.m1.1.1" xref="A1.T2.17.17.17.1.m1.1.1.cmml"><mn id="A1.T2.17.17.17.1.m1.1.1.2" xref="A1.T2.17.17.17.1.m1.1.1.2.cmml">8</mn><mo id="A1.T2.17.17.17.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.17.17.17.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.17.17.17.1.m1.1.1.3" xref="A1.T2.17.17.17.1.m1.1.1.3.cmml">8</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.17.17.17.1.m1.1b"><apply id="A1.T2.17.17.17.1.m1.1.1.cmml" xref="A1.T2.17.17.17.1.m1.1.1"><times id="A1.T2.17.17.17.1.m1.1.1.1.cmml" xref="A1.T2.17.17.17.1.m1.1.1.1"></times><cn id="A1.T2.17.17.17.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.17.17.17.1.m1.1.1.2">8</cn><cn id="A1.T2.17.17.17.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.17.17.17.1.m1.1.1.3">8</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.17.17.17.1.m1.1c">8\times 8</annotation><annotation encoding="application/x-llamapun" id="A1.T2.17.17.17.1.m1.1d">8 × 8</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.17.17.17.3">FSQ</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.4">31.74</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.5">0.730</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.6">4.564</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.17.17.17.7">30.84</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.8">31.73</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.9">0.725</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.17.17.17.10">1.841</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.11">35.35</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.12">0.892</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.17.17.17.13">0.555</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.14">37.77</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.15">0.948</td>
<td class="ltx_td ltx_align_center" id="A1.T2.17.17.17.16">0.261</td>
</tr>
<tr class="ltx_tr" id="A1.T2.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T2.18.18.18.2">Cosmos-Tokenizer-DI <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib1" title=""><span class="ltx_text" style="font-size:90%;">1</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.1"><math alttext="16\times 16" class="ltx_Math" display="inline" id="A1.T2.18.18.18.1.m1.1"><semantics id="A1.T2.18.18.18.1.m1.1a"><mrow id="A1.T2.18.18.18.1.m1.1.1" xref="A1.T2.18.18.18.1.m1.1.1.cmml"><mn id="A1.T2.18.18.18.1.m1.1.1.2" xref="A1.T2.18.18.18.1.m1.1.1.2.cmml">16</mn><mo id="A1.T2.18.18.18.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.18.18.18.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.18.18.18.1.m1.1.1.3" xref="A1.T2.18.18.18.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.18.18.18.1.m1.1b"><apply id="A1.T2.18.18.18.1.m1.1.1.cmml" xref="A1.T2.18.18.18.1.m1.1.1"><times id="A1.T2.18.18.18.1.m1.1.1.1.cmml" xref="A1.T2.18.18.18.1.m1.1.1.1"></times><cn id="A1.T2.18.18.18.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.18.18.18.1.m1.1.1.2">16</cn><cn id="A1.T2.18.18.18.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.18.18.18.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.18.18.18.1.m1.1c">16\times 16</annotation><annotation encoding="application/x-llamapun" id="A1.T2.18.18.18.1.m1.1d">16 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.18.18.18.3">FSQ</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.4">30.74</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.5">0.591</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.6">12.252</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.18.18.18.7">29.91</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.8">30.69</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.9">0.582</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.18.18.18.10">6.529</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.11">33.17</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.12">0.808</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T2.18.18.18.13">7.663</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.14">33.86</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.15">0.854</td>
<td class="ltx_td ltx_align_center" id="A1.T2.18.18.18.16">5.953</td>
</tr>
<tr class="ltx_tr" id="A1.T2.19.19.19">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="A1.T2.19.19.19.2">Emu-3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.1"><math alttext="16\times 16" class="ltx_Math" display="inline" id="A1.T2.19.19.19.1.m1.1"><semantics id="A1.T2.19.19.19.1.m1.1a"><mrow id="A1.T2.19.19.19.1.m1.1.1" xref="A1.T2.19.19.19.1.m1.1.1.cmml"><mn id="A1.T2.19.19.19.1.m1.1.1.2" xref="A1.T2.19.19.19.1.m1.1.1.2.cmml">16</mn><mo id="A1.T2.19.19.19.1.m1.1.1.1" lspace="0.222em" rspace="0.222em" xref="A1.T2.19.19.19.1.m1.1.1.1.cmml">×</mo><mn id="A1.T2.19.19.19.1.m1.1.1.3" xref="A1.T2.19.19.19.1.m1.1.1.3.cmml">16</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T2.19.19.19.1.m1.1b"><apply id="A1.T2.19.19.19.1.m1.1.1.cmml" xref="A1.T2.19.19.19.1.m1.1.1"><times id="A1.T2.19.19.19.1.m1.1.1.1.cmml" xref="A1.T2.19.19.19.1.m1.1.1.1"></times><cn id="A1.T2.19.19.19.1.m1.1.1.2.cmml" type="integer" xref="A1.T2.19.19.19.1.m1.1.1.2">16</cn><cn id="A1.T2.19.19.19.1.m1.1.1.3.cmml" type="integer" xref="A1.T2.19.19.19.1.m1.1.1.3">16</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T2.19.19.19.1.m1.1c">16\times 16</annotation><annotation encoding="application/x-llamapun" id="A1.T2.19.19.19.1.m1.1d">16 × 16</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T2.19.19.19.3">VQ</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.4">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.5">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.6">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T2.19.19.19.7">24.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.8">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.9">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T2.19.19.19.10">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.11">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.12">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="A1.T2.19.19.19.13">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.14">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.15">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T2.19.19.19.16">-</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A2 presents a comparison of various tokenizers' performance across multiple image benchmark datasets.  It shows the Peak Signal-to-Noise Ratio (PSNR), Structural Similarity Index (SSIM), and Fréchet Inception Distance (FID) scores for each tokenizer on the MS-COCO, ImageNet-1K, FFHQ, and CelebA-HQ datasets.  A separate PSNR score is also provided for Minecraft images.  This allows for a comprehensive evaluation of the tokenizers' ability to reconstruct and represent images effectively, highlighting their relative strengths and weaknesses for various image types and visual fidelity.
> <details>
> <summary>read the caption</summary>
> Table A2: Comparison of Tokenizers across different benchmarks. PSNR, SSIM, and rFID are measured on MS-COCO, ImageNet-1K, FFHQ, and CelebA-HQ datasets. PSNR for Minecraft images is provided separately.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T3.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A1.T3.2.1.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.1.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.1.1.1.1.1.1">Method</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.2.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.2.1.1" style="width:62.6pt;">VPT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.3.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.3.1.1" style="width:62.6pt;">DreamerV3 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.4.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.4.1.1" style="width:62.6pt;">DECKARD <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.5.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.5.1.1" style="width:62.6pt;">DEPS <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.6.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.6.1.1" style="width:62.6pt;">Plan4MC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.7.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.7.1.1" style="width:62.6pt;">Voyager <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_tt" id="A1.T3.2.1.1.1.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.8.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.8.1.1" style="width:62.6pt;">STEVE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.24388v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="A1.T3.2.1.1.1.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.1.1.9.1">
<span class="ltx_p" id="A1.T3.2.1.1.1.9.1.1" style="width:62.6pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.1.1.9.1.1.1">RIG (Ours)</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.2.2">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.1.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.2.2.1.1.1.1">Demos</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.2.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.2.1.1" style="width:62.6pt;">Videos</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.3.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.3.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.4.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.4.1.1" style="width:62.6pt;">Videos</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.5.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.5.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.6.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.6.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.7.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.7.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.2.2.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.8.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.8.1.1" style="width:62.6pt;">Videos</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.2.2.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.2.2.9.1">
<span class="ltx_p" id="A1.T3.2.1.2.2.9.1.1" style="width:62.6pt;">Videos</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.3.3">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.1.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.3.3.1.1.1.1">Rewards</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.2.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.2.1.1" style="width:62.6pt;">Sparse</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.3.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.3.1.1" style="width:62.6pt;">Dense</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.4.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.4.1.1" style="width:62.6pt;">Sparse</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.5.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.5.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.6.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.6.1.1" style="width:62.6pt;">Dense</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.7.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.7.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.3.3.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.8.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.8.1.1" style="width:62.6pt;">None</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.3.3.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.3.3.9.1">
<span class="ltx_p" id="A1.T3.2.1.3.3.9.1.1" style="width:62.6pt;">None</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.4.4">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.1.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.4.4.1.1.1.1">Observations</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.2.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.2.1.1" style="width:62.6pt;">Pixels Only</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.3.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.3.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.3.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.3.1.1.1.1">Pixels</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.3.1.1.1.2">&amp; Meta</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.4.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.4.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.4.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.4.1.1.1.1">Pixels</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.4.1.1.1.2">&amp; Inventory</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.5.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.5.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.5.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.5.1.1.1.1">Feedback</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.5.1.1.1.2">&amp; Inventory</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.6.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.6.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.6.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.6.1.1.1.1">Pixels</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.6.1.1.1.2">&amp; Meta</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.7.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.7.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.7.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.7.1.1.1.1">Feedback</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.7.1.1.1.2">&amp; Meta</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.7.1.1.1.3">&amp; Inventory</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.4.4.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.8.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.8.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.4.4.8.1.1.1" style="width:62.6pt;">
<span class="ltx_p" id="A1.T3.2.1.4.4.8.1.1.1.1">Pixels</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.8.1.1.1.2">&amp; Feedback</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.8.1.1.1.3">&amp; Meta</span>
<span class="ltx_p" id="A1.T3.2.1.4.4.8.1.1.1.4">&amp; Inventory</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.4.4.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.4.4.9.1">
<span class="ltx_p" id="A1.T3.2.1.4.4.9.1.1" style="width:62.6pt;">Pixels Only</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.1.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.5.5.1.1.1.1">Actions</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.2">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.2.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.2.1.1" style="width:62.6pt;">Keyboard &amp; Mouse</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.3">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.3.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.3.1.1" style="width:62.6pt;">Discrete</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.4">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.4.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.4.1.1" style="width:62.6pt;">Keyboard &amp; Mouse</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.5.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.5.1.1" style="width:62.6pt;">Keyboard &amp; Mouse</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.6.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.6.1.1" style="width:62.6pt;">Discrete</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.7.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.7.1.1" style="width:62.6pt;">Code</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.5.5.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.8.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.8.1.1" style="width:62.6pt;">Code</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.5.5.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.5.5.9.1">
<span class="ltx_p" id="A1.T3.2.1.5.5.9.1.1" style="width:62.6pt;">Keyboard &amp; Mouse</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.6.6">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.6.6.1.1">
<span class="ltx_p" id="A1.T3.2.1.6.6.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.6.6.1.1.1.1">Reasoning</span></span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.2"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.3"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.4"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.5">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.6.6.5.1">
<span class="ltx_p" id="A1.T3.2.1.6.6.5.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.6"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.6.6.7.1">
<span class="ltx_p" id="A1.T3.2.1.6.6.7.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.6.6.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.6.6.8.1">
<span class="ltx_p" id="A1.T3.2.1.6.6.8.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.6.6.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.6.6.9.1">
<span class="ltx_p" id="A1.T3.2.1.6.6.9.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.7.7">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.7.7.1.1">
<span class="ltx_p" id="A1.T3.2.1.7.7.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.7.7.1.1.1.1">Generation</span></span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.2"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.3"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.4"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.5"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.6"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.7"></td>
<td class="ltx_td ltx_align_top ltx_border_r ltx_border_t" id="A1.T3.2.1.7.7.8"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="A1.T3.2.1.7.7.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.7.7.9.1">
<span class="ltx_p" id="A1.T3.2.1.7.7.9.1.1" style="width:62.6pt;">✓</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T3.2.1.8.8">
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.1">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.8.8.1.1">
<span class="ltx_p" id="A1.T3.2.1.8.8.1.1.1" style="width:68.3pt;"><span class="ltx_text ltx_font_bold" id="A1.T3.2.1.8.8.1.1.1.1">Extra Database</span></span>
</span>
</td>
<td class="ltx_td ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.2"></td>
<td class="ltx_td ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.3"></td>
<td class="ltx_td ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.4"></td>
<td class="ltx_td ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.5"></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.6">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.8.8.6.1">
<span class="ltx_p" id="A1.T3.2.1.8.8.6.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.8.8.6.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.8.8.6.1.1.1.1">9</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.7">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.8.8.7.1">
<span class="ltx_p" id="A1.T3.2.1.8.8.7.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.8.8.7.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.8.8.7.1.1.1.1">172</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_r ltx_border_t" id="A1.T3.2.1.8.8.8">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.8.8.8.1">
<span class="ltx_p" id="A1.T3.2.1.8.8.8.1.1" style="width:62.6pt;">
<span class="ltx_inline-block ltx_parbox ltx_align_top" id="A1.T3.2.1.8.8.8.1.1.1" style="width:56.9pt;">
<span class="ltx_p" id="A1.T3.2.1.8.8.8.1.1.1.1">210</span>
</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb ltx_border_t" id="A1.T3.2.1.8.8.9">
<span class="ltx_inline-block ltx_align_top" id="A1.T3.2.1.8.8.9.1">
<span class="ltx_p" id="A1.T3.2.1.8.8.9.1.1" style="width:62.6pt;">-</span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table A3 provides a detailed comparison of RIG against existing methods for embodied AI, focusing on key architectural differences.  It contrasts data sources used for training (e.g., videos, simulated experience), reward structures (sparse vs. dense), the type of observations provided to the agent (raw pixels, additional metadata), how actions are represented (discrete actions, keyboard inputs), the presence of planning mechanisms (iterative vs. non-iterative), and whether the agent uses a skill database for pre-trained actions. This comparison highlights RIG's unique features and relative strengths among similar approaches.
> <details>
> <summary>read the caption</summary>
> Table A3: Comparison between RIG (Ours), and existing works. This system-level comparison of LLM-based and RL-based methods focuses on data sources, reward setup, observation type, action representation, iterative planning, and skill database usage.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.24388/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.24388/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}