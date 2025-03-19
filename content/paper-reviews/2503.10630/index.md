---
title: "UniGoal: Towards Universal Zero-shot Goal-oriented Navigation"
summary: "UniGoal: A novel framework for universal zero-shot goal-oriented navigation, outperforming task-specific methods with a unified approach."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Embodied AI", "🏢 Tsinghua University",]
showSummary: true
date: 2025-03-13
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.10630 {{< /keyword >}}
{{< keyword icon="writer" >}} Hang Yin et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-14 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.10630" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.10630" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.10630/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Existing zero-shot methods for goal-oriented navigation are often task-specific, limiting their ability to generalize across different types of goals. These methods typically rely on large language models (LLMs) but differ significantly in their overall pipeline, resulting in a lack of versatility. To address this, the paper introduces a general framework for universal zero-shot goal-oriented navigation. 



The proposed **UniGoal** framework uses a uniform graph representation to unify different goals and converts agent observations into an online maintained scene graph. It leverages LLMs for explicit graph-based reasoning and employs a multi-stage scene exploration policy based on graph matching between the scene and goal graphs. Experiments demonstrate that UniGoal achieves state-of-the-art zero-shot performance on multiple navigation tasks with a single model.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} UniGoal achieves state-of-the-art zero-shot performance across various navigation tasks using a single model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework utilizes a uniform graph representation for goals and scenes, enabling explicit graph-based reasoning with LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} A multi-stage scene exploration policy is designed to generate long-term goals based on graph matching states. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it introduces a **universal zero-shot goal-oriented navigation framework**, addressing limitations of task-specific methods. It enables **greater flexibility and generalization** in robotic navigation, opening avenues for more versatile and adaptable AI agents in complex environments.

------
#### Visual Insights



![](https://arxiv.org/html/2503.10630/x1.png)

> 🔼 Existing zero-shot navigation methods are designed for specific goal types (object, image, text), limiting their generalizability.  Universal methods exist, but they require extensive training data and lack true zero-shot capabilities.  UniGoal addresses these limitations by using a unified framework for zero-shot inference across object, image, and text-based navigation goals, achieving state-of-the-art performance.
> <details>
> <summary>read the caption</summary>
> Figure 1: State-of-the-art zero-shot goal-oriented navigation methods are typically specialized for each goal type. Although recent work presents universal goal-oriented navigation method, it requires to train policy networks on large-scale data and lacks zero-shot generalization ability. We propose UniGoal, which enables zero-shot inference on three studied navigation tasks with a unified framework and achieves leading performance on multiple benchmarks.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.28.28">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.T1.28.28.29.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.28.28.29.1.1" rowspan="3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.28.28.29.1.2" rowspan="3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.2.1">Training-Free</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.28.28.29.1.3" rowspan="3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.3.1">Universal</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S3.T1.28.28.29.1.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.4.1">ObjNav</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.28.28.29.1.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.5.1">InsINav</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.28.28.29.1.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.6.1">TextNav</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.30.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.28.28.30.2.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.30.2.1.1">MP3D</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.28.28.30.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.30.2.2.1">HM3D</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.28.28.30.2.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.30.2.3.1">RoboTHOR</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.28.28.30.2.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.30.2.4.1">HM3D</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.28.28.30.2.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.30.2.5.1">HM3D</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.31.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.1" style="padding-left:7.0pt;padding-right:7.0pt;">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.2" style="padding-left:7.0pt;padding-right:7.0pt;">SPL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.3" style="padding-left:7.0pt;padding-right:7.0pt;">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.4" style="padding-left:7.0pt;padding-right:7.0pt;">SPL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.5" style="padding-left:7.0pt;padding-right:7.0pt;">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.6" style="padding-left:7.0pt;padding-right:7.0pt;">SPL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.7" style="padding-left:7.0pt;padding-right:7.0pt;">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.8" style="padding-left:7.0pt;padding-right:7.0pt;">SPL</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.9" style="padding-left:7.0pt;padding-right:7.0pt;">SR</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.28.28.31.3.10" style="padding-left:7.0pt;padding-right:7.0pt;">SPL</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.2.2.3" style="padding-left:7.0pt;padding-right:7.0pt;">SemEXP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><times id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.2.m1.1.1" xref="S3.T1.2.2.2.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.m1.1b"><times id="S3.T1.2.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.4" style="padding-left:7.0pt;padding-right:7.0pt;">36.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.5" style="padding-left:7.0pt;padding-right:7.0pt;">14.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.6" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.7" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4.4">
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.4.3" style="padding-left:7.0pt;padding-right:7.0pt;">ZSON <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.3.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.1.m1.1.1" xref="S3.T1.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.1.m1.1b"><times id="S3.T1.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.4.4.4.2.m1.1"><semantics id="S3.T1.4.4.4.2.m1.1a"><mo id="S3.T1.4.4.4.2.m1.1.1" xref="S3.T1.4.4.4.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.2.m1.1b"><times id="S3.T1.4.4.4.2.m1.1.1.cmml" xref="S3.T1.4.4.4.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">15.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.5" style="padding-left:7.0pt;padding-right:7.0pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.6" style="padding-left:7.0pt;padding-right:7.0pt;">25.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.7" style="padding-left:7.0pt;padding-right:7.0pt;">12.6</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_left" id="S3.T1.6.6.6.3" style="padding-left:7.0pt;padding-right:7.0pt;">OVRL-v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.5.5.1.m1.1"><semantics id="S3.T1.5.5.5.1.m1.1a"><mo id="S3.T1.5.5.5.1.m1.1.1" xref="S3.T1.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.1.m1.1b"><times id="S3.T1.5.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.6.6.6.2.m1.1"><semantics id="S3.T1.6.6.6.2.m1.1a"><mo id="S3.T1.6.6.6.2.m1.1.1" xref="S3.T1.6.6.6.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.2.m1.1b"><times id="S3.T1.6.6.6.2.m1.1.1.cmml" xref="S3.T1.6.6.6.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.4" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.5" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.6" style="padding-left:7.0pt;padding-right:7.0pt;">64.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.7" style="padding-left:7.0pt;padding-right:7.0pt;">28.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.3" style="padding-left:7.0pt;padding-right:7.0pt;">Krantz et al. <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.7.7.7.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><mo id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><times id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.8.8.2.m1.1"><semantics id="S3.T1.8.8.8.2.m1.1a"><mo id="S3.T1.8.8.8.2.m1.1.1" xref="S3.T1.8.8.8.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.2.m1.1b"><times id="S3.T1.8.8.8.2.m1.1.1.cmml" xref="S3.T1.8.8.8.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.4" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.5" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.6" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.7" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.10" style="padding-left:7.0pt;padding-right:7.0pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.11" style="padding-left:7.0pt;padding-right:7.0pt;">3.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.8.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.10.10.10.3" style="padding-left:7.0pt;padding-right:7.0pt;">OVRL-v2-IIN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.9.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><mo id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><times id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.10.10.2.m1.1"><semantics id="S3.T1.10.10.10.2.m1.1a"><mo id="S3.T1.10.10.10.2.m1.1.1" xref="S3.T1.10.10.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.2.m1.1b"><times id="S3.T1.10.10.10.2.m1.1.1.cmml" xref="S3.T1.10.10.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.4" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.5" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.6" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.7" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.10" style="padding-left:7.0pt;padding-right:7.0pt;">24.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.11" style="padding-left:7.0pt;padding-right:7.0pt;">11.8</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.10.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.12.3" style="padding-left:7.0pt;padding-right:7.0pt;">IEVE <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.11.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><mo id="S3.T1.11.11.11.1.m1.1.1" xref="S3.T1.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><times id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.12.12.12.2.m1.1"><semantics id="S3.T1.12.12.12.2.m1.1a"><mo id="S3.T1.12.12.12.2.m1.1.1" xref="S3.T1.12.12.12.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.2.m1.1b"><times id="S3.T1.12.12.12.2.m1.1.1.cmml" xref="S3.T1.12.12.12.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.4" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.5" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.6" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.7" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.10" style="padding-left:7.0pt;padding-right:7.0pt;">70.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.11" style="padding-left:7.0pt;padding-right:7.0pt;">25.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.12.12.12.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14" style="background-color:#D9D9D9;">
<td class="ltx_td ltx_align_left" id="S3.T1.14.14.14.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.3.1" style="background-color:#D9D9D9;">PSL <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.13.13.13.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.13.13.13.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.13.13.13.1.m1.1a"><mo id="S3.T1.13.13.13.1.m1.1.1" mathbackground="#D9D9D9" xref="S3.T1.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.1.m1.1b"><times id="S3.T1.13.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.14.14.14.2.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.14.14.14.2.m1.1a"><mi id="S3.T1.14.14.14.2.m1.1.1" mathbackground="#D9D9D9" mathvariant="normal" xref="S3.T1.14.14.14.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.2.m1.1b"><ci id="S3.T1.14.14.14.2.m1.1.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.4.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.5.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.6.1" style="background-color:#D9D9D9;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.7.1" style="background-color:#D9D9D9;">19.2</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.8.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.9.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.10.1" style="background-color:#D9D9D9;">23.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.11.1" style="background-color:#D9D9D9;">11.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.12.1" style="background-color:#D9D9D9;">16.5</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.14.14.14.13" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.14.14.14.13.1" style="background-color:#D9D9D9;">7.5</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16" style="background-color:#D9D9D9;">
<td class="ltx_td ltx_align_left" id="S3.T1.16.16.16.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.3.1" style="background-color:#D9D9D9;">GOAT <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.15.15.15.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.15.15.15.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.15.15.15.1.m1.1a"><mo id="S3.T1.15.15.15.1.m1.1.1" mathbackground="#D9D9D9" xref="S3.T1.15.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.1.m1.1b"><times id="S3.T1.15.15.15.1.m1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.1.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.16.16.16.2.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.16.16.16.2.m1.1a"><mi id="S3.T1.16.16.16.2.m1.1.1" mathbackground="#D9D9D9" mathvariant="normal" xref="S3.T1.16.16.16.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.2.m1.1b"><ci id="S3.T1.16.16.16.2.m1.1.1.cmml" xref="S3.T1.16.16.16.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.4.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.5.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.6.1" style="background-color:#D9D9D9;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.7.1" style="background-color:#D9D9D9;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.8.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.9.1" style="background-color:#D9D9D9;">–</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.10.1" style="background-color:#D9D9D9;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.11.1" style="background-color:#D9D9D9;">16.1</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.12.1" style="background-color:#D9D9D9;">17.0</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.16.16.16.13" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.16.16.16.13.1" style="background-color:#D9D9D9;">8.8</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.18.18.18.3" style="padding-left:7.0pt;padding-right:7.0pt;">ESC <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.17.17.17.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.17.17.17.1.m1.1"><semantics id="S3.T1.17.17.17.1.m1.1a"><mi id="S3.T1.17.17.17.1.m1.1.1" mathvariant="normal" xref="S3.T1.17.17.17.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.17.1.m1.1b"><ci id="S3.T1.17.17.17.1.m1.1.1.cmml" xref="S3.T1.17.17.17.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.17.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.17.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.18.18.18.2.m1.1"><semantics id="S3.T1.18.18.18.2.m1.1a"><mo id="S3.T1.18.18.18.2.m1.1.1" xref="S3.T1.18.18.18.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.18.2.m1.1b"><times id="S3.T1.18.18.18.2.m1.1.1.cmml" xref="S3.T1.18.18.18.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.18.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.18.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.4" style="padding-left:7.0pt;padding-right:7.0pt;">28.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.5" style="padding-left:7.0pt;padding-right:7.0pt;">14.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.6" style="padding-left:7.0pt;padding-right:7.0pt;">39.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.7" style="padding-left:7.0pt;padding-right:7.0pt;">22.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.8" style="padding-left:7.0pt;padding-right:7.0pt;">38.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.9" style="padding-left:7.0pt;padding-right:7.0pt;">22.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.18.18.18.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.20.20">
<td class="ltx_td ltx_align_left" id="S3.T1.20.20.20.3" style="padding-left:7.0pt;padding-right:7.0pt;">OpenFMNav <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.19.19.19.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.19.19.19.1.m1.1"><semantics id="S3.T1.19.19.19.1.m1.1a"><mi id="S3.T1.19.19.19.1.m1.1.1" mathvariant="normal" xref="S3.T1.19.19.19.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.19.19.19.1.m1.1b"><ci id="S3.T1.19.19.19.1.m1.1.1.cmml" xref="S3.T1.19.19.19.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.19.19.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.19.19.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.20.20.20.2.m1.1"><semantics id="S3.T1.20.20.20.2.m1.1a"><mo id="S3.T1.20.20.20.2.m1.1.1" xref="S3.T1.20.20.20.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.20.20.20.2.m1.1b"><times id="S3.T1.20.20.20.2.m1.1.1.cmml" xref="S3.T1.20.20.20.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.20.20.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.20.20.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.4" style="padding-left:7.0pt;padding-right:7.0pt;">37.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.5" style="padding-left:7.0pt;padding-right:7.0pt;">15.7</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.6" style="padding-left:7.0pt;padding-right:7.0pt;">52.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.7" style="padding-left:7.0pt;padding-right:7.0pt;">24.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.8" style="padding-left:7.0pt;padding-right:7.0pt;">44.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.9" style="padding-left:7.0pt;padding-right:7.0pt;">23.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.20.20.20.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.22.22">
<td class="ltx_td ltx_align_left" id="S3.T1.22.22.22.3" style="padding-left:7.0pt;padding-right:7.0pt;">VLFM <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.21.21.21.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.21.21.21.1.m1.1"><semantics id="S3.T1.21.21.21.1.m1.1a"><mi id="S3.T1.21.21.21.1.m1.1.1" mathvariant="normal" xref="S3.T1.21.21.21.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.21.21.21.1.m1.1b"><ci id="S3.T1.21.21.21.1.m1.1.1.cmml" xref="S3.T1.21.21.21.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.21.21.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.21.21.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.22.22.22.2.m1.1"><semantics id="S3.T1.22.22.22.2.m1.1a"><mo id="S3.T1.22.22.22.2.m1.1.1" xref="S3.T1.22.22.22.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.22.22.22.2.m1.1b"><times id="S3.T1.22.22.22.2.m1.1.1.cmml" xref="S3.T1.22.22.22.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.22.22.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.22.22.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.4" style="padding-left:7.0pt;padding-right:7.0pt;">36.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.5" style="padding-left:7.0pt;padding-right:7.0pt;">15.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.6" style="padding-left:7.0pt;padding-right:7.0pt;">52.4</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.22.22.22.7.1">30.3</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.8" style="padding-left:7.0pt;padding-right:7.0pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.9" style="padding-left:7.0pt;padding-right:7.0pt;">23.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.22.22.22.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.24">
<td class="ltx_td ltx_align_left" id="S3.T1.24.24.24.3" style="padding-left:7.0pt;padding-right:7.0pt;">SG-Nav <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.23.23.23.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.23.23.23.1.m1.1"><semantics id="S3.T1.23.23.23.1.m1.1a"><mi id="S3.T1.23.23.23.1.m1.1.1" mathvariant="normal" xref="S3.T1.23.23.23.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.23.23.23.1.m1.1b"><ci id="S3.T1.23.23.23.1.m1.1.1.cmml" xref="S3.T1.23.23.23.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.23.23.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.23.23.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.24.24.24.2.m1.1"><semantics id="S3.T1.24.24.24.2.m1.1a"><mo id="S3.T1.24.24.24.2.m1.1.1" xref="S3.T1.24.24.24.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.24.24.24.2.m1.1b"><times id="S3.T1.24.24.24.2.m1.1.1.cmml" xref="S3.T1.24.24.24.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.24.24.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.24.24.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.4" style="padding-left:7.0pt;padding-right:7.0pt;">40.2</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.5" style="padding-left:7.0pt;padding-right:7.0pt;">16.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.6" style="padding-left:7.0pt;padding-right:7.0pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.7" style="padding-left:7.0pt;padding-right:7.0pt;">24.9</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.8" style="padding-left:7.0pt;padding-right:7.0pt;">47.5</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.9" style="padding-left:7.0pt;padding-right:7.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.10" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.11" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.24.24.24.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.26.26.26">
<td class="ltx_td ltx_align_left" id="S3.T1.26.26.26.3" style="padding-left:7.0pt;padding-right:7.0pt;">Mod-IIN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.10630v1#bib.bib16" title=""><span class="ltx_text" style="font-size:90%;">16</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.25.25.25.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.25.25.25.1.m1.1"><semantics id="S3.T1.25.25.25.1.m1.1a"><mi id="S3.T1.25.25.25.1.m1.1.1" mathvariant="normal" xref="S3.T1.25.25.25.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.25.25.25.1.m1.1b"><ci id="S3.T1.25.25.25.1.m1.1.1.cmml" xref="S3.T1.25.25.25.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.25.25.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.25.25.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.26.26.26.2.m1.1"><semantics id="S3.T1.26.26.26.2.m1.1a"><mo id="S3.T1.26.26.26.2.m1.1.1" xref="S3.T1.26.26.26.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.26.26.26.2.m1.1b"><times id="S3.T1.26.26.26.2.m1.1.1.cmml" xref="S3.T1.26.26.26.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.26.26.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.26.26.2.m1.1d">×</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.4" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.5" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.6" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.7" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.8" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.9" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.10" style="padding-left:7.0pt;padding-right:7.0pt;">56.1</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.11" style="padding-left:7.0pt;padding-right:7.0pt;">23.3</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.12" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
<td class="ltx_td ltx_align_center" id="S3.T1.26.26.26.13" style="padding-left:7.0pt;padding-right:7.0pt;">–</td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.28" style="background-color:#D9D9D9;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.28.28.28.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.28.28.28.3.1" style="background-color:#D9D9D9;">UniGoal</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.27.27.27.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.27.27.27.1.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.27.27.27.1.m1.1a"><mi id="S3.T1.27.27.27.1.m1.1.1" mathbackground="#D9D9D9" mathvariant="normal" xref="S3.T1.27.27.27.1.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.27.27.27.1.m1.1b"><ci id="S3.T1.27.27.27.1.m1.1.1.cmml" xref="S3.T1.27.27.27.1.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.27.27.1.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.27.27.1.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="\checkmark" class="ltx_Math" display="inline" id="S3.T1.28.28.28.2.m1.1" style="background-color:#D9D9D9;"><semantics id="S3.T1.28.28.28.2.m1.1a"><mi id="S3.T1.28.28.28.2.m1.1.1" mathbackground="#D9D9D9" mathvariant="normal" xref="S3.T1.28.28.28.2.m1.1.1.cmml">✓</mi><annotation-xml encoding="MathML-Content" id="S3.T1.28.28.28.2.m1.1b"><ci id="S3.T1.28.28.28.2.m1.1.1.cmml" xref="S3.T1.28.28.28.2.m1.1.1">✓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.28.28.2.m1.1c">\checkmark</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.28.28.2.m1.1d">✓</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.4.1" style="background-color:#D9D9D9;">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.5.1" style="background-color:#D9D9D9;">16.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.6.1" style="background-color:#D9D9D9;">54.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T1.28.28.28.7.1" style="background-color:#D9D9D9;">25.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.8.1" style="background-color:#D9D9D9;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.9.1" style="background-color:#D9D9D9;">24.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.10" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.10.1" style="background-color:#D9D9D9;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.11" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.11.1" style="background-color:#D9D9D9;">23.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.12" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.12.1" style="background-color:#D9D9D9;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.28.28.28.13" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.28.13.1" style="background-color:#D9D9D9;">11.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive comparison of state-of-the-art methods for three distinct goal-oriented navigation tasks: object-goal navigation (ON), instance-image goal navigation (IIN), and text-goal navigation (TN).  The comparison is performed across three benchmark datasets: MP3D, HM3D, and RoboTHOR.  For each method and dataset, the table reports the success rate (SR) and success rate weighted by path length (SPL). Methods designed for universal goal-oriented navigation are highlighted in gray to emphasize their broader applicability.
> <details>
> <summary>read the caption</summary>
> Table 1: Results of Object-goal navigation, Instance-image-goal navigation and Text-goal navigation on MP3D, HM3D and RoboTHOR. We compare the SR and SPL of state-of-the-art methods in different settings. Universal goal-oriented navigation methods are colored in gray.
> </details>





### In-depth insights


#### UniGoal Design
While "UniGoal Design" isn't explicitly present, the paper details a unified framework for zero-shot goal-oriented navigation. A key aspect is the **uniform graph representation** for diverse goals (object category, instance image, text), facilitating explicit graph-based reasoning via LLMs. This contrasts with task-specific pipelines, offering greater generalization. Another vital design element involves the **online scene graph construction**, capturing the agent's evolving environment. **Graph matching** guides exploration, with a multi-stage policy adapting to different matching states, ranging from expanding the observed area, inferring goal location, to verifying the goal. A **blacklist mechanism** avoids repetitive exploration. This design aims to leverage LLMs for reasoning while maintaining structural information.

#### Graph Navigation
**Graph Navigation** techniques leverage structured representations to enable more informed and efficient exploration. **Instead of relying solely on raw sensor data**, these methods construct graphs that capture spatial relationships, object categories, and semantic information. This allows the agent to reason about potential paths, identify relevant landmarks, and plan actions based on high-level understanding of the environment. **By combining graph-based representations with LLMs**, agents can perform complex reasoning tasks such as navigating to a specific object, following natural language instructions, or searching for a scene matching a given description.

#### Multi-stage Policy
A multi-stage policy in goal-oriented navigation allows for a nuanced approach to exploration and decision-making. By breaking down the navigation task into stages, the agent can adapt its strategy based on the current state of knowledge and the degree of matching between the observed environment and the goal. **Early stages might focus on broad exploration to gather information**, while later stages could involve precise maneuvering towards the target once it's been identified. **The transition between stages is crucial** and should be based on well-defined criteria, like matching scores or confidence levels. This staged approach enables efficient use of computational resources and can lead to more robust performance compared to a single, monolithic policy.

#### Robust Blacklist
The 'Robust Blacklist' is a mechanism to prevent the agent from repeatedly attempting unsuccessful actions or matching to irrelevant scene elements. **Blacklisting nodes/edges that consistently fail to lead to the goal prevents the agent from getting stuck in unproductive loops.** This improves efficiency by focusing exploration on potentially fruitful areas. It stores world coordinates to align and infer location. By freezing unmatched parts, it encourages the agent to explore new regions. All anchor pairs will be appended to blacklist if they fail to enter into stage 3. Goal verification failure in stage 3 will move all matched pairs to blacklist, promoting more robust navigation.

#### Unified Model
A 'Unified Model' in the context of goal-oriented navigation suggests a **single framework** capable of handling diverse goal types (object, image, text) without task-specific modifications. This contrasts with specialized models, offering **generalization benefits**. Key aspects would involve a **shared representation** for scenes and goals, enabling consistent reasoning. The model might leverage **graph-based representations** to capture structural relationships and use **LLMs** for high-level reasoning and decision-making. A crucial element is a **multi-stage exploration strategy** adapting to the level of goal matching and enabling efficient navigation in unknown environments. The model would handle visual and language-based inputs and incorporate mechanisms for error correction and robust performance across different scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.10630/x2.png)

> 🔼 UniGoal uses a graph-based approach for universal zero-shot goal-oriented navigation.  Different goal types (object, image, text) are converted into a unified graph representation. The system maintains an online scene graph, and at each step, performs graph matching between the scene graph and the goal graph.  The matching score determines the exploration strategy.  If there's no match, the system expands the explored area. With a partial match, it infers the goal location using graph overlap.  A perfect match triggers goal verification.  A blacklist prevents revisiting unsuccessfully explored areas.
> <details>
> <summary>read the caption</summary>
> Figure 2: Framework of UniGoal. We convert different types of goals into a uniform graph representation and maintain an online scene graph. At each step, we perform graph matching between the scene graph and goal graph, where the matching score will be utilized to guide a multi-stage scene exploration policy. For different degree of matching, our exploration policy leverages LLM to exploit the graphs with different aims: first expand observed area, then infer goal location based on the overlap of graphs, and finally verify the goal. We also propose a blacklist that records unsuccessful matching to avoid repeated exploration.
> </details>



![](https://arxiv.org/html/2503.10630/x3.png)

> 🔼 Figure 3 illustrates the two main stages of the UniGoal approach. Part (a) shows Stage 2, where coordinate projection and anchor pair alignment are used to estimate the goal's location after partial matching between scene and goal graphs.  The scene graph is aligned with the goal graph using anchor pairs (matched nodes) to project the relative positions of other goal graph nodes into the scene graph's coordinate system. Part (b) depicts Stage 3, the scene graph correction stage, activated when the scene graph is almost perfectly matched to the goal graph. The agent has almost reached the goal, but there may be small discrepancies. This stage refines the scene graph by using visual observation and graph relationship propagation, and confirms the goal location.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of approach. (a) Stage 2: coordinate projection and anchor pair alignment. (b) Stage 3: scene graph correction.
> </details>



![](https://arxiv.org/html/2503.10630/x4.png)

> 🔼 This figure visualizes the multi-stage decision-making process within the UniGoal framework for goal-oriented navigation.  Each row represents a different stage of the navigation process: Stage 1 (Zero Matching), Stage 2 (Partial Matching), and Stage 3 (Perfect Matching). The 'Switch' points indicate transitions between stages based on the graph matching score. The 'S-Goal' represents the long-term exploration goal dynamically generated by UniGoal at each stage using a deterministic local policy. The figure shows how the agent progresses from exploring unknown regions (Stage 1) to identifying potential goal locations via coordinate projection and anchor pair alignment (Stage 2), and finally, verifying and reaching the goal (Stage 3).  The example clearly illustrates how the matching score evolves throughout the process and how the long-term goals adjust to reflect the changing understanding of the scene.
> <details>
> <summary>read the caption</summary>
> Figure 4: Demonstration of the decision process of UniGoal. Here ‘Switch’ means the point when stage is changing. ‘S-Goal’ means the long-term goal predicted in each stage.
> </details>



![](https://arxiv.org/html/2503.10630/x5.png)

> 🔼 Figure 5 presents a visualization of UniGoal's navigation paths across diverse environments and goal types.  Green lines represent Object-goal Navigation (ON) paths, orange lines depict Instance-Image Navigation (IIN) paths, and blue lines show Text Navigation (TN) paths.  The figure demonstrates UniGoal's ability to successfully navigate to target locations using a variety of goal specifications (object category, instance image, or text description) in complex and varied scenes.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of the navigation path. We visualize ON (Green), IIN (Orange) and TN (Blue) path for several scenes. UniGoal successfully navigates to the target given different types of goal and diverse environments.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.4.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.2">SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.4.1.1.3">SPL</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.4.2.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.4.2.1.1">Simplify graph matching</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.2.1.2">54.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.4.2.1.3">20.7</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.3.2">
<td class="ltx_td ltx_align_left" id="S4.T2.4.3.2.1">Remove blacklist mechanism</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.3.2.2">50.6</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.3.2.3">17.3</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.4.3">
<td class="ltx_td ltx_align_left" id="S4.T2.4.4.3.1">Simplify multi-stage exploration policy</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.3.2">59.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.3.3">23.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.4.5.4">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T2.4.5.4.1"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.1.1">Full Approach</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.2"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.2.1">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.4.5.4.3"><span class="ltx_text ltx_font_bold" id="S4.T2.4.5.4.3.1">23.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of different design choices within the UniGoal framework on the performance of Instance-Image goal Navigation (IIN) using the HM3D benchmark.  It shows the success rate (SR) and success rate weighted by path length (SPL) achieved by UniGoal under various experimental conditions. Specifically, it examines the effects of simplifying graph matching, removing the blacklist mechanism, and simplifying the multi-stage exploration policy on the overall performance, comparing each simplified version to the complete, fully implemented UniGoal.
> <details>
> <summary>read the caption</summary>
> Table 2: Effect of pipeline design in UniGoal on HM3D (IIN) benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.2.3.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.1">Method</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.2">Stage</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.3">SR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.3.1.4">SPL</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.2.4.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.4.1.1">Replace stage 1 with FBE</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.2">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.3">55.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.4.1.4">20.8</td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1">
<td class="ltx_td ltx_align_left" id="S4.T3.1.1.1">Remove <math alttext="\mathcal{G}_{g}" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><msub id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">𝒢</mi><mi id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">g</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">𝒢</ci><ci id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">𝑔</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\mathcal{G}_{g}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">caligraphic_G start_POSTSUBSCRIPT italic_g end_POSTSUBSCRIPT</annotation></semantics></math> decomposition</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.3">59.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.4">22.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.5.2">
<td class="ltx_td ltx_align_left" id="S4.T3.2.5.2.1">Remove frontier selection</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.2">1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.3">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.5.2.4">22.0</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.6.3">
<td class="ltx_td ltx_align_left" id="S4.T3.2.6.3.1">Simplify coordinate projection</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.3.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.3.3">59.1</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.6.3.4">22.7</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.7.4">
<td class="ltx_td ltx_align_left" id="S4.T3.2.7.4.1">Remove anchor pair alignment</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.4.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.4.3">58.9</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.7.4.4">22.6</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_left" id="S4.T3.2.2.1">Remove <math alttext="\mathcal{G}_{t}" class="ltx_Math" display="inline" id="S4.T3.2.2.1.m1.1"><semantics id="S4.T3.2.2.1.m1.1a"><msub id="S4.T3.2.2.1.m1.1.1" xref="S4.T3.2.2.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T3.2.2.1.m1.1.1.2" xref="S4.T3.2.2.1.m1.1.1.2.cmml">𝒢</mi><mi id="S4.T3.2.2.1.m1.1.1.3" xref="S4.T3.2.2.1.m1.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.1.m1.1b"><apply id="S4.T3.2.2.1.m1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.2.2.1.m1.1.1.1.cmml" xref="S4.T3.2.2.1.m1.1.1">subscript</csymbol><ci id="S4.T3.2.2.1.m1.1.1.2.cmml" xref="S4.T3.2.2.1.m1.1.1.2">𝒢</ci><ci id="S4.T3.2.2.1.m1.1.1.3.cmml" xref="S4.T3.2.2.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.1.m1.1c">\mathcal{G}_{t}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.1.m1.1d">caligraphic_G start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math> correction</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2">3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.3">59.5</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.4">23.5</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.8.5">
<td class="ltx_td ltx_align_left" id="S4.T3.2.8.5.1">Remove goal verification</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.5.2">3</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.5.3">58.2</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.8.5.4">22.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.9.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.9.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.9.6.1.1">Full Approach</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.9.6.2">–</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.9.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.9.6.3.1">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.9.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.9.6.4.1">23.7</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the impact of different submodules within each stage of the multi-stage scene exploration process used in the UniGoal model.  The experiment was conducted on the HM3D benchmark using the Instance-Image-goal Navigation (IIN) task. The table shows how the success rate (SR) and success rate weighted by path length (SPL) are affected when specific components of each stage (zero matching, partial matching, perfect matching) are removed.
> <details>
> <summary>read the caption</summary>
> Table 3: Effect of the submodules in each stage during multi-stage scene exploration on HM3D (IIN) benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A2.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="A2.T4.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="A2.T4.3.4.1.1"><span class="ltx_text" id="A2.T4.3.4.1.1.1" style="font-size:144%;">ON</span></th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.4.1.2" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.1.2.1">
<span class="ltx_p" id="A2.T4.3.4.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.4.1.2.1.1.1" style="font-size:144%;">Plant</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.4.1.3" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.1.3.1">
<span class="ltx_p" id="A2.T4.3.4.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.4.1.3.1.1.1" style="font-size:144%;">Chair</span></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_middle ltx_th ltx_th_column ltx_border_tt" id="A2.T4.3.4.1.4" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.4.1.4.1">
<span class="ltx_p" id="A2.T4.3.4.1.4.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.4.1.4.1.1.1" style="font-size:144%;">Toilet</span></span>
</span>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A2.T4.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="A2.T4.3.3.4" rowspan="2"><span class="ltx_text" id="A2.T4.3.3.4.1" style="font-size:144%;">IIN</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T4.1.1.1" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.1.1.1.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="598" id="A2.T4.1.1.1.1.g1" src="extracted/6278137/figures/chair.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T4.2.2.2" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.2.2.2.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="598" id="A2.T4.2.2.2.1.g1" src="extracted/6278137/figures/sofa.png" width="598"/>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="A2.T4.3.3.3" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.3.3.1"><img alt="[Uncaptioned image]" class="ltx_graphics ltx_img_square" height="598" id="A2.T4.3.3.3.1.g1" src="extracted/6278137/figures/bed.png" width="598"/>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.5.1">
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A2.T4.3.5.1.1" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.1.1.1">
<span class="ltx_p" id="A2.T4.3.5.1.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.5.1.1.1.1.1" style="font-size:144%;">Chair</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A2.T4.3.5.1.2" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.1.2.1">
<span class="ltx_p" id="A2.T4.3.5.1.2.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.5.1.2.1.1.1" style="font-size:144%;">Sofa</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="A2.T4.3.5.1.3" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.5.1.3.1">
<span class="ltx_p" id="A2.T4.3.5.1.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T4.3.5.1.3.1.1.1" style="font-size:144%;">Bed</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A2.T4.3.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r ltx_border_t" id="A2.T4.3.6.2.1"><span class="ltx_text" id="A2.T4.3.6.2.1.1" style="font-size:144%;">TN</span></th>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T4.3.6.2.2" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.2.2.1">
<span class="ltx_p" id="A2.T4.3.6.2.2.1.1"><span class="ltx_text" id="A2.T4.3.6.2.2.1.1.1" style="font-size:144%;">The </span><span class="ltx_text ltx_font_bold" id="A2.T4.3.6.2.2.1.1.2" style="font-size:144%;color:#FF0000;">toilet</span><span class="ltx_text" id="A2.T4.3.6.2.2.1.1.3" style="font-size:144%;"> in this image is white, surrounded by a white door, beige tiles on the walls and floor.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T4.3.6.2.3" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.2.3.1">
<span class="ltx_p" id="A2.T4.3.6.2.3.1.1"><span class="ltx_text" id="A2.T4.3.6.2.3.1.1.1" style="font-size:144%;">The </span><span class="ltx_text ltx_font_bold" id="A2.T4.3.6.2.3.1.1.2" style="font-size:144%;color:#FF0000;">bed</span><span class="ltx_text" id="A2.T4.3.6.2.3.1.1.3" style="font-size:144%;"> has white bedsheets. The bedroom has a double bed, two pillows and blankets, a chair and a table.</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="A2.T4.3.6.2.4" style="width:95.4pt;">
<span class="ltx_inline-block ltx_align_top" id="A2.T4.3.6.2.4.1">
<span class="ltx_p" id="A2.T4.3.6.2.4.1.1"><span class="ltx_text" id="A2.T4.3.6.2.4.1.1.1" style="font-size:144%;">The </span><span class="ltx_text ltx_font_bold" id="A2.T4.3.6.2.4.1.1.2" style="font-size:144%;color:#FF0000;">chair</span><span class="ltx_text" id="A2.T4.3.6.2.4.1.1.3" style="font-size:144%;"> is yellow and covered with red floral patterns. There is a wooden dining table in the upper left corner.</span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table illustrates the different types of goals used in three goal-oriented navigation tasks: Object-goal Navigation (ON), Instance-Image-goal Navigation (IIN), and Text-goal Navigation (TN). For each task, an example goal is shown, with the central object highlighted in red.  This visualization helps clarify the variations in goal representation across tasks, from simple object categories (ON) to more complex instance images (IIN) and detailed text descriptions (TN).
> <details>
> <summary>read the caption</summary>
> Table 4: Illustration of goal in each task, with central objects colored in red.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.10630/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.10630/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}