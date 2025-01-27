---
title: "Mobile-Agent-E: Self-Evolving Mobile Assistant for Complex Tasks"
summary: "Mobile-Agent-E: A self-evolving mobile assistant conquering complex tasks with hierarchical agents and a novel self-evolution module, significantly outperforming prior approaches."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Illinois Urbana-Champaign",]
showSummary: true
date: 2025-01-20
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.11733 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhenhailong Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-22 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.11733" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.11733" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.11733/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current mobile assistants struggle with complex, multi-step tasks and lack the ability to learn from past experiences.  They often fall short in addressing real-world human needs and are not efficient in handling long-horizon tasks. This necessitates the development of more sophisticated mobile agents capable of handling these challenges.

Mobile-Agent-E tackles these issues with a hierarchical framework that separates high-level planning from low-level actions and includes a self-evolution module. This module learns from past experiences, improving performance and efficiency over time.  Experiments using the new Mobile-Eval-E benchmark demonstrate significant improvements over previous state-of-the-art methods.  The self-evolution module shows promising results in improving both efficiency and accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mobile-Agent-E, a hierarchical multi-agent framework, significantly outperforms existing mobile assistants on complex tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The self-evolution module in Mobile-Agent-E enables continuous learning and improvement from past experiences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Mobile-Eval-E, a new benchmark with complex real-world tasks, provides a more challenging and realistic evaluation for mobile agents. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **addresses the limitations of existing mobile agents** by introducing a novel hierarchical multi-agent framework, **Mobile-Agent-E**, capable of self-evolution.  It also **introduces a new benchmark, Mobile-Eval-E**, which better reflects real-world mobile task complexities. The **self-evolution module** is a significant contribution, enabling continuous improvement in task performance and efficiency.  This work **opens new avenues for research in mobile agent design, self-learning algorithms, and benchmark development**.

------
#### Visual Insights



![](https://arxiv.org/html/2501.11733/x2.png)

> 🔼 Mobile-Agent-E is a novel hierarchical multi-agent mobile assistant.  It surpasses previous state-of-the-art models on complex real-world tasks by separating high-level planning from low-level actions.  A key feature is its self-evolution module, which learns from past experiences to generate reusable 'Shortcuts' (efficient action sequences) and general 'Tips' (advice) that improve performance and efficiency. The figure illustrates the Mobile-Agent-E architecture and provides example task outputs.
> <details>
> <summary>read the caption</summary>
> Figure 1: We propose Mobile-Agent-E, a novel hierarchical multi-agent mobile assistant that outperforms previous state-of-the-art approaches (Zhang et al., 2023; Wang et al., 2024b, a) on complex real-world tasks. Mobile-Agent-E disentangles high-level planning and low-level action decision with dedicated agents. Equipped with a newly introduced self-evolution module that learns general Tips and reusable Shortcuts from past experiences, Mobile-Agent-E demonstrates further improvements in both performance and efficiency.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.28.28">
<tr class="ltx_tr" id="S3.T1.28.28.29">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.28.28.29.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.1.1" style="font-size:90%;">Notation</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.28.28.29.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.28.28.29.2.1" style="font-size:90%;">Description</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.30">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T1.28.28.30.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.28.28.30.1.1" style="font-size:90%;">Environment</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="I" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.m1.1a"><mi id="S3.T1.1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T1.1.1.1.1.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.m1.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.m1.1c">I</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.m1.1d">italic_I</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.1.1.1.2.1" style="font-size:90%;">Input task query</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="a^{t}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.1.m1.1a"><msup id="S3.T1.2.2.2.1.m1.1.1" xref="S3.T1.2.2.2.1.m1.1.1.cmml"><mi id="S3.T1.2.2.2.1.m1.1.1.2" mathsize="90%" xref="S3.T1.2.2.2.1.m1.1.1.2.cmml">a</mi><mi id="S3.T1.2.2.2.1.m1.1.1.3" mathsize="90%" xref="S3.T1.2.2.2.1.m1.1.1.3.cmml">t</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.m1.1b"><apply id="S3.T1.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.2.1.m1.1.1.1.cmml" xref="S3.T1.2.2.2.1.m1.1.1">superscript</csymbol><ci id="S3.T1.2.2.2.1.m1.1.1.2.cmml" xref="S3.T1.2.2.2.1.m1.1.1.2">𝑎</ci><ci id="S3.T1.2.2.2.1.m1.1.1.3.cmml" xref="S3.T1.2.2.2.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.m1.1c">a^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.m1.1d">italic_a start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.3.3.3.2.1" style="font-size:90%;">Action</span><span class="ltx_note ltx_role_footnote" id="footnote2"><sup class="ltx_note_mark">†</sup><span class="ltx_note_outer"><span class="ltx_note_content"><sup class="ltx_note_mark">†</sup><span class="ltx_tag ltx_tag_note">†</span><math alttext="a_{t}" class="ltx_Math" display="inline" id="footnotex1.m1a.1"><semantics id="footnotex1.m1a.1b"><msub id="footnotex1.m1a.1.1" xref="footnotex1.m1a.1.1.cmml"><mi id="footnotex1.m1a.1.1.2" xref="footnotex1.m1a.1.1.2.cmml">a</mi><mi id="footnotex1.m1a.1.1.3" xref="footnotex1.m1a.1.1.3.cmml">t</mi></msub><annotation-xml encoding="MathML-Content" id="footnotex1.m1a.1c"><apply id="footnotex1.m1a.1.1.cmml" xref="footnotex1.m1a.1.1"><csymbol cd="ambiguous" id="footnotex1.m1a.1.1.1.cmml" xref="footnotex1.m1a.1.1">subscript</csymbol><ci id="footnotex1.m1a.1.1.2.cmml" xref="footnotex1.m1a.1.1.2">𝑎</ci><ci id="footnotex1.m1a.1.1.3.cmml" xref="footnotex1.m1a.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="footnotex1.m1a.1d">a_{t}</annotation><annotation encoding="application/x-llamapun" id="footnotex1.m1a.1e">italic_a start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT</annotation></semantics></math><span class="ltx_text" id="footnote2.1" style="font-size:90%;"> can represent either a single atomic operation or a sequence of atomic operations if performing a Shortcut.</span></span></span></span><span class="ltx_text" id="S3.T1.3.3.3.2.2" style="font-size:90%;"> at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.3.3.3.2.m1.1"><semantics id="S3.T1.3.3.3.2.m1.1a"><mi id="S3.T1.3.3.3.2.m1.1.1" mathsize="90%" xref="S3.T1.3.3.3.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.2.m1.1b"><ci id="S3.T1.3.3.3.2.m1.1.1.cmml" xref="S3.T1.3.3.3.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="s^{t}" class="ltx_Math" display="inline" id="S3.T1.4.4.4.1.m1.1"><semantics id="S3.T1.4.4.4.1.m1.1a"><msup id="S3.T1.4.4.4.1.m1.1.1" xref="S3.T1.4.4.4.1.m1.1.1.cmml"><mi id="S3.T1.4.4.4.1.m1.1.1.2" mathsize="90%" xref="S3.T1.4.4.4.1.m1.1.1.2.cmml">s</mi><mi id="S3.T1.4.4.4.1.m1.1.1.3" mathsize="90%" xref="S3.T1.4.4.4.1.m1.1.1.3.cmml">t</mi></msup><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.1.m1.1b"><apply id="S3.T1.4.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.4.4.4.1.m1.1.1.1.cmml" xref="S3.T1.4.4.4.1.m1.1.1">superscript</csymbol><ci id="S3.T1.4.4.4.1.m1.1.1.2.cmml" xref="S3.T1.4.4.4.1.m1.1.1.2">𝑠</ci><ci id="S3.T1.4.4.4.1.m1.1.1.3.cmml" xref="S3.T1.4.4.4.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.1.m1.1c">s^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.1.m1.1d">italic_s start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.5.5.5.2.1" style="font-size:90%;">Phone state (screenshot) at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.5.5.5.2.m1.1"><semantics id="S3.T1.5.5.5.2.m1.1a"><mi id="S3.T1.5.5.5.2.m1.1.1" mathsize="90%" xref="S3.T1.5.5.5.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.2.m1.1b"><ci id="S3.T1.5.5.5.2.m1.1.1.cmml" xref="S3.T1.5.5.5.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.31">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T1.28.28.31.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.28.28.31.1.1" style="font-size:90%;">Agents</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.6.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{P}" class="ltx_Math" display="inline" id="S3.T1.6.6.6.1.m1.1"><semantics id="S3.T1.6.6.6.1.m1.1a"><msub id="S3.T1.6.6.6.1.m1.1.1" xref="S3.T1.6.6.6.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.6.6.6.1.m1.1.1.2" mathsize="90%" xref="S3.T1.6.6.6.1.m1.1.1.2.cmml">𝒜</mi><mi id="S3.T1.6.6.6.1.m1.1.1.3" mathsize="90%" xref="S3.T1.6.6.6.1.m1.1.1.3.cmml">P</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.6.1.m1.1b"><apply id="S3.T1.6.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.6.6.6.1.m1.1.1.1.cmml" xref="S3.T1.6.6.6.1.m1.1.1">subscript</csymbol><ci id="S3.T1.6.6.6.1.m1.1.1.2.cmml" xref="S3.T1.6.6.6.1.m1.1.1.2">𝒜</ci><ci id="S3.T1.6.6.6.1.m1.1.1.3.cmml" xref="S3.T1.6.6.6.1.m1.1.1.3">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.6.1.m1.1c">\mathcal{A}_{P}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.6.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_P end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.6.6.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.6.6.6.2.1" style="font-size:90%;">Perceptor</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7.7">
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.7.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{M}" class="ltx_Math" display="inline" id="S3.T1.7.7.7.1.m1.1"><semantics id="S3.T1.7.7.7.1.m1.1a"><msub id="S3.T1.7.7.7.1.m1.1.1" xref="S3.T1.7.7.7.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.7.7.7.1.m1.1.1.2" mathsize="90%" xref="S3.T1.7.7.7.1.m1.1.1.2.cmml">𝒜</mi><mi id="S3.T1.7.7.7.1.m1.1.1.3" mathsize="90%" xref="S3.T1.7.7.7.1.m1.1.1.3.cmml">M</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.7.1.m1.1b"><apply id="S3.T1.7.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.7.7.7.1.m1.1.1.1.cmml" xref="S3.T1.7.7.7.1.m1.1.1">subscript</csymbol><ci id="S3.T1.7.7.7.1.m1.1.1.2.cmml" xref="S3.T1.7.7.7.1.m1.1.1.2">𝒜</ci><ci id="S3.T1.7.7.7.1.m1.1.1.3.cmml" xref="S3.T1.7.7.7.1.m1.1.1.3">𝑀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.7.1.m1.1c">\mathcal{A}_{M}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.7.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_M end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.7.7.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.7.7.7.2.1" style="font-size:90%;">Manager</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8.8">
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{O}" class="ltx_Math" display="inline" id="S3.T1.8.8.8.1.m1.1"><semantics id="S3.T1.8.8.8.1.m1.1a"><msub id="S3.T1.8.8.8.1.m1.1.1" xref="S3.T1.8.8.8.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.8.8.8.1.m1.1.1.2" mathsize="90%" xref="S3.T1.8.8.8.1.m1.1.1.2.cmml">𝒜</mi><mi id="S3.T1.8.8.8.1.m1.1.1.3" mathsize="90%" xref="S3.T1.8.8.8.1.m1.1.1.3.cmml">O</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.8.1.m1.1b"><apply id="S3.T1.8.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.8.8.8.1.m1.1.1.1.cmml" xref="S3.T1.8.8.8.1.m1.1.1">subscript</csymbol><ci id="S3.T1.8.8.8.1.m1.1.1.2.cmml" xref="S3.T1.8.8.8.1.m1.1.1.2">𝒜</ci><ci id="S3.T1.8.8.8.1.m1.1.1.3.cmml" xref="S3.T1.8.8.8.1.m1.1.1.3">𝑂</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.8.1.m1.1c">\mathcal{A}_{O}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.8.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_O end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.8.8.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.8.8.8.2.1" style="font-size:90%;">Operator</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9.9">
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{R}" class="ltx_Math" display="inline" id="S3.T1.9.9.9.1.m1.1"><semantics id="S3.T1.9.9.9.1.m1.1a"><msub id="S3.T1.9.9.9.1.m1.1.1" xref="S3.T1.9.9.9.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.9.9.9.1.m1.1.1.2" mathsize="90%" xref="S3.T1.9.9.9.1.m1.1.1.2.cmml">𝒜</mi><mi id="S3.T1.9.9.9.1.m1.1.1.3" mathsize="90%" xref="S3.T1.9.9.9.1.m1.1.1.3.cmml">R</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.9.1.m1.1b"><apply id="S3.T1.9.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.9.9.9.1.m1.1.1.1.cmml" xref="S3.T1.9.9.9.1.m1.1.1">subscript</csymbol><ci id="S3.T1.9.9.9.1.m1.1.1.2.cmml" xref="S3.T1.9.9.9.1.m1.1.1.2">𝒜</ci><ci id="S3.T1.9.9.9.1.m1.1.1.3.cmml" xref="S3.T1.9.9.9.1.m1.1.1.3">𝑅</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.9.1.m1.1c">\mathcal{A}_{R}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.9.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_R end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.9.9.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.9.9.9.2.1" style="font-size:90%;">Action Reflector</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S3.T1.10.10.10.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{N}" class="ltx_Math" display="inline" id="S3.T1.10.10.10.1.m1.1"><semantics id="S3.T1.10.10.10.1.m1.1a"><msub id="S3.T1.10.10.10.1.m1.1.1" xref="S3.T1.10.10.10.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.10.10.10.1.m1.1.1.2" mathsize="90%" xref="S3.T1.10.10.10.1.m1.1.1.2.cmml">𝒜</mi><mi id="S3.T1.10.10.10.1.m1.1.1.3" mathsize="90%" xref="S3.T1.10.10.10.1.m1.1.1.3.cmml">N</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.10.1.m1.1b"><apply id="S3.T1.10.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.10.10.10.1.m1.1.1.1.cmml" xref="S3.T1.10.10.10.1.m1.1.1">subscript</csymbol><ci id="S3.T1.10.10.10.1.m1.1.1.2.cmml" xref="S3.T1.10.10.10.1.m1.1.1.2">𝒜</ci><ci id="S3.T1.10.10.10.1.m1.1.1.3.cmml" xref="S3.T1.10.10.10.1.m1.1.1.3">𝑁</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.10.1.m1.1c">\mathcal{A}_{N}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.10.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_N end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.10.10.10.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.10.10.10.2.1" style="font-size:90%;">Notetaker</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11.11">
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.11.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{ES}" class="ltx_Math" display="inline" id="S3.T1.11.11.11.1.m1.1"><semantics id="S3.T1.11.11.11.1.m1.1a"><msub id="S3.T1.11.11.11.1.m1.1.1" xref="S3.T1.11.11.11.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.11.11.11.1.m1.1.1.2" mathsize="90%" xref="S3.T1.11.11.11.1.m1.1.1.2.cmml">𝒜</mi><mrow id="S3.T1.11.11.11.1.m1.1.1.3" xref="S3.T1.11.11.11.1.m1.1.1.3.cmml"><mi id="S3.T1.11.11.11.1.m1.1.1.3.2" mathsize="90%" xref="S3.T1.11.11.11.1.m1.1.1.3.2.cmml">E</mi><mo id="S3.T1.11.11.11.1.m1.1.1.3.1" xref="S3.T1.11.11.11.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.11.11.11.1.m1.1.1.3.3" mathsize="90%" xref="S3.T1.11.11.11.1.m1.1.1.3.3.cmml">S</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.11.1.m1.1b"><apply id="S3.T1.11.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.11.11.11.1.m1.1.1.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1">subscript</csymbol><ci id="S3.T1.11.11.11.1.m1.1.1.2.cmml" xref="S3.T1.11.11.11.1.m1.1.1.2">𝒜</ci><apply id="S3.T1.11.11.11.1.m1.1.1.3.cmml" xref="S3.T1.11.11.11.1.m1.1.1.3"><times id="S3.T1.11.11.11.1.m1.1.1.3.1.cmml" xref="S3.T1.11.11.11.1.m1.1.1.3.1"></times><ci id="S3.T1.11.11.11.1.m1.1.1.3.2.cmml" xref="S3.T1.11.11.11.1.m1.1.1.3.2">𝐸</ci><ci id="S3.T1.11.11.11.1.m1.1.1.3.3.cmml" xref="S3.T1.11.11.11.1.m1.1.1.3.3">𝑆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.11.1.m1.1c">\mathcal{A}_{ES}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.11.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_E italic_S end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.11.11.11.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.11.11.11.2.1" style="font-size:90%;">Experience Reflector for Shortcuts</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12.12">
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.12.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathcal{A}_{ET}" class="ltx_Math" display="inline" id="S3.T1.12.12.12.1.m1.1"><semantics id="S3.T1.12.12.12.1.m1.1a"><msub id="S3.T1.12.12.12.1.m1.1.1" xref="S3.T1.12.12.12.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.12.12.12.1.m1.1.1.2" mathsize="90%" xref="S3.T1.12.12.12.1.m1.1.1.2.cmml">𝒜</mi><mrow id="S3.T1.12.12.12.1.m1.1.1.3" xref="S3.T1.12.12.12.1.m1.1.1.3.cmml"><mi id="S3.T1.12.12.12.1.m1.1.1.3.2" mathsize="90%" xref="S3.T1.12.12.12.1.m1.1.1.3.2.cmml">E</mi><mo id="S3.T1.12.12.12.1.m1.1.1.3.1" xref="S3.T1.12.12.12.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S3.T1.12.12.12.1.m1.1.1.3.3" mathsize="90%" xref="S3.T1.12.12.12.1.m1.1.1.3.3.cmml">T</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.12.1.m1.1b"><apply id="S3.T1.12.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.12.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.12.12.12.1.m1.1.1.1.cmml" xref="S3.T1.12.12.12.1.m1.1.1">subscript</csymbol><ci id="S3.T1.12.12.12.1.m1.1.1.2.cmml" xref="S3.T1.12.12.12.1.m1.1.1.2">𝒜</ci><apply id="S3.T1.12.12.12.1.m1.1.1.3.cmml" xref="S3.T1.12.12.12.1.m1.1.1.3"><times id="S3.T1.12.12.12.1.m1.1.1.3.1.cmml" xref="S3.T1.12.12.12.1.m1.1.1.3.1"></times><ci id="S3.T1.12.12.12.1.m1.1.1.3.2.cmml" xref="S3.T1.12.12.12.1.m1.1.1.3.2">𝐸</ci><ci id="S3.T1.12.12.12.1.m1.1.1.3.3.cmml" xref="S3.T1.12.12.12.1.m1.1.1.3.3">𝑇</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.12.1.m1.1c">\mathcal{A}_{ET}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.12.1.m1.1d">caligraphic_A start_POSTSUBSCRIPT italic_E italic_T end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.12.12.12.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.12.12.12.2.1" style="font-size:90%;">Experience Reflector for Tips</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.32">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T1.28.28.32.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.28.28.32.1.1" style="font-size:90%;">Working Memory</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.13.13.13.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{V}^{t}" class="ltx_Math" display="inline" id="S3.T1.13.13.13.1.m1.1"><semantics id="S3.T1.13.13.13.1.m1.1a"><msubsup id="S3.T1.13.13.13.1.m1.1.1" xref="S3.T1.13.13.13.1.m1.1.1.cmml"><mi id="S3.T1.13.13.13.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.13.13.13.1.m1.1.1.2.2.cmml">W</mi><mi id="S3.T1.13.13.13.1.m1.1.1.2.3" mathsize="90%" xref="S3.T1.13.13.13.1.m1.1.1.2.3.cmml">V</mi><mi id="S3.T1.13.13.13.1.m1.1.1.3" mathsize="90%" xref="S3.T1.13.13.13.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.13.13.13.1.m1.1b"><apply id="S3.T1.13.13.13.1.m1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.13.13.13.1.m1.1.1.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1">superscript</csymbol><apply id="S3.T1.13.13.13.1.m1.1.1.2.cmml" xref="S3.T1.13.13.13.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.13.13.13.1.m1.1.1.2.1.cmml" xref="S3.T1.13.13.13.1.m1.1.1">subscript</csymbol><ci id="S3.T1.13.13.13.1.m1.1.1.2.2.cmml" xref="S3.T1.13.13.13.1.m1.1.1.2.2">𝑊</ci><ci id="S3.T1.13.13.13.1.m1.1.1.2.3.cmml" xref="S3.T1.13.13.13.1.m1.1.1.2.3">𝑉</ci></apply><ci id="S3.T1.13.13.13.1.m1.1.1.3.cmml" xref="S3.T1.13.13.13.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.13.13.1.m1.1c">W_{V}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.13.13.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_V end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.14.14.14.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.14.14.14.2.1" style="font-size:90%;">Visual perception result at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.14.14.14.2.m1.1"><semantics id="S3.T1.14.14.14.2.m1.1a"><mi id="S3.T1.14.14.14.2.m1.1.1" mathsize="90%" xref="S3.T1.14.14.14.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.14.14.14.2.m1.1b"><ci id="S3.T1.14.14.14.2.m1.1.1.cmml" xref="S3.T1.14.14.14.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.14.14.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.14.14.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.16.16">
<td class="ltx_td ltx_align_left" id="S3.T1.15.15.15.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{P}^{t}" class="ltx_Math" display="inline" id="S3.T1.15.15.15.1.m1.1"><semantics id="S3.T1.15.15.15.1.m1.1a"><msubsup id="S3.T1.15.15.15.1.m1.1.1" xref="S3.T1.15.15.15.1.m1.1.1.cmml"><mi id="S3.T1.15.15.15.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.15.15.15.1.m1.1.1.2.2.cmml">W</mi><mi id="S3.T1.15.15.15.1.m1.1.1.2.3" mathsize="90%" xref="S3.T1.15.15.15.1.m1.1.1.2.3.cmml">P</mi><mi id="S3.T1.15.15.15.1.m1.1.1.3" mathsize="90%" xref="S3.T1.15.15.15.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.15.15.15.1.m1.1b"><apply id="S3.T1.15.15.15.1.m1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.15.15.15.1.m1.1.1.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1">superscript</csymbol><apply id="S3.T1.15.15.15.1.m1.1.1.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.15.15.15.1.m1.1.1.2.1.cmml" xref="S3.T1.15.15.15.1.m1.1.1">subscript</csymbol><ci id="S3.T1.15.15.15.1.m1.1.1.2.2.cmml" xref="S3.T1.15.15.15.1.m1.1.1.2.2">𝑊</ci><ci id="S3.T1.15.15.15.1.m1.1.1.2.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.2.3">𝑃</ci></apply><ci id="S3.T1.15.15.15.1.m1.1.1.3.cmml" xref="S3.T1.15.15.15.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.15.15.1.m1.1c">W_{P}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.15.15.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_P end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.16.16.16.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.16.16.16.2.1" style="font-size:90%;">Overall plan (decomposed subgoals) at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.16.16.16.2.m1.1"><semantics id="S3.T1.16.16.16.2.m1.1a"><mi id="S3.T1.16.16.16.2.m1.1.1" mathsize="90%" xref="S3.T1.16.16.16.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.16.16.16.2.m1.1b"><ci id="S3.T1.16.16.16.2.m1.1.1.cmml" xref="S3.T1.16.16.16.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.16.16.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.16.16.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.18.18">
<td class="ltx_td ltx_align_left" id="S3.T1.17.17.17.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{S}^{t}" class="ltx_Math" display="inline" id="S3.T1.17.17.17.1.m1.1"><semantics id="S3.T1.17.17.17.1.m1.1a"><msubsup id="S3.T1.17.17.17.1.m1.1.1" xref="S3.T1.17.17.17.1.m1.1.1.cmml"><mi id="S3.T1.17.17.17.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.17.17.17.1.m1.1.1.2.2.cmml">W</mi><mi id="S3.T1.17.17.17.1.m1.1.1.2.3" mathsize="90%" xref="S3.T1.17.17.17.1.m1.1.1.2.3.cmml">S</mi><mi id="S3.T1.17.17.17.1.m1.1.1.3" mathsize="90%" xref="S3.T1.17.17.17.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.17.17.17.1.m1.1b"><apply id="S3.T1.17.17.17.1.m1.1.1.cmml" xref="S3.T1.17.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.17.17.17.1.m1.1.1.1.cmml" xref="S3.T1.17.17.17.1.m1.1.1">superscript</csymbol><apply id="S3.T1.17.17.17.1.m1.1.1.2.cmml" xref="S3.T1.17.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.17.17.17.1.m1.1.1.2.1.cmml" xref="S3.T1.17.17.17.1.m1.1.1">subscript</csymbol><ci id="S3.T1.17.17.17.1.m1.1.1.2.2.cmml" xref="S3.T1.17.17.17.1.m1.1.1.2.2">𝑊</ci><ci id="S3.T1.17.17.17.1.m1.1.1.2.3.cmml" xref="S3.T1.17.17.17.1.m1.1.1.2.3">𝑆</ci></apply><ci id="S3.T1.17.17.17.1.m1.1.1.3.cmml" xref="S3.T1.17.17.17.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.17.17.1.m1.1c">W_{S}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.17.17.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.18.18.18.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.18.18.18.2.1" style="font-size:90%;">Current subgoal at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.18.18.18.2.m1.1"><semantics id="S3.T1.18.18.18.2.m1.1a"><mi id="S3.T1.18.18.18.2.m1.1.1" mathsize="90%" xref="S3.T1.18.18.18.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.18.18.18.2.m1.1b"><ci id="S3.T1.18.18.18.2.m1.1.1.cmml" xref="S3.T1.18.18.18.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.18.18.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.18.18.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.20.20">
<td class="ltx_td ltx_align_left" id="S3.T1.19.19.19.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{G}^{t}" class="ltx_Math" display="inline" id="S3.T1.19.19.19.1.m1.1"><semantics id="S3.T1.19.19.19.1.m1.1a"><msubsup id="S3.T1.19.19.19.1.m1.1.1" xref="S3.T1.19.19.19.1.m1.1.1.cmml"><mi id="S3.T1.19.19.19.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.19.19.19.1.m1.1.1.2.2.cmml">W</mi><mi id="S3.T1.19.19.19.1.m1.1.1.2.3" mathsize="90%" xref="S3.T1.19.19.19.1.m1.1.1.2.3.cmml">G</mi><mi id="S3.T1.19.19.19.1.m1.1.1.3" mathsize="90%" xref="S3.T1.19.19.19.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.19.19.19.1.m1.1b"><apply id="S3.T1.19.19.19.1.m1.1.1.cmml" xref="S3.T1.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.19.19.19.1.m1.1.1.1.cmml" xref="S3.T1.19.19.19.1.m1.1.1">superscript</csymbol><apply id="S3.T1.19.19.19.1.m1.1.1.2.cmml" xref="S3.T1.19.19.19.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.19.19.19.1.m1.1.1.2.1.cmml" xref="S3.T1.19.19.19.1.m1.1.1">subscript</csymbol><ci id="S3.T1.19.19.19.1.m1.1.1.2.2.cmml" xref="S3.T1.19.19.19.1.m1.1.1.2.2">𝑊</ci><ci id="S3.T1.19.19.19.1.m1.1.1.2.3.cmml" xref="S3.T1.19.19.19.1.m1.1.1.2.3">𝐺</ci></apply><ci id="S3.T1.19.19.19.1.m1.1.1.3.cmml" xref="S3.T1.19.19.19.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.19.19.1.m1.1c">W_{G}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.19.19.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_G end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.20.20.20.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.20.20.20.2.1" style="font-size:90%;">Progress status at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.20.20.20.2.m1.1"><semantics id="S3.T1.20.20.20.2.m1.1a"><mi id="S3.T1.20.20.20.2.m1.1.1" mathsize="90%" xref="S3.T1.20.20.20.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.20.20.20.2.m1.1b"><ci id="S3.T1.20.20.20.2.m1.1.1.cmml" xref="S3.T1.20.20.20.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.20.20.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.20.20.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.22.22">
<td class="ltx_td ltx_align_left" id="S3.T1.21.21.21.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{N}^{t}" class="ltx_Math" display="inline" id="S3.T1.21.21.21.1.m1.1"><semantics id="S3.T1.21.21.21.1.m1.1a"><msubsup id="S3.T1.21.21.21.1.m1.1.1" xref="S3.T1.21.21.21.1.m1.1.1.cmml"><mi id="S3.T1.21.21.21.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.21.21.21.1.m1.1.1.2.2.cmml">W</mi><mi id="S3.T1.21.21.21.1.m1.1.1.2.3" mathsize="90%" xref="S3.T1.21.21.21.1.m1.1.1.2.3.cmml">N</mi><mi id="S3.T1.21.21.21.1.m1.1.1.3" mathsize="90%" xref="S3.T1.21.21.21.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.21.21.21.1.m1.1b"><apply id="S3.T1.21.21.21.1.m1.1.1.cmml" xref="S3.T1.21.21.21.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.21.21.21.1.m1.1.1.1.cmml" xref="S3.T1.21.21.21.1.m1.1.1">superscript</csymbol><apply id="S3.T1.21.21.21.1.m1.1.1.2.cmml" xref="S3.T1.21.21.21.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.21.21.21.1.m1.1.1.2.1.cmml" xref="S3.T1.21.21.21.1.m1.1.1">subscript</csymbol><ci id="S3.T1.21.21.21.1.m1.1.1.2.2.cmml" xref="S3.T1.21.21.21.1.m1.1.1.2.2">𝑊</ci><ci id="S3.T1.21.21.21.1.m1.1.1.2.3.cmml" xref="S3.T1.21.21.21.1.m1.1.1.2.3">𝑁</ci></apply><ci id="S3.T1.21.21.21.1.m1.1.1.3.cmml" xref="S3.T1.21.21.21.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.21.21.1.m1.1c">W_{N}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.21.21.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_N end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.22.22.22.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.22.22.22.2.1" style="font-size:90%;">Important notes at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.22.22.22.2.m1.1"><semantics id="S3.T1.22.22.22.2.m1.1a"><mi id="S3.T1.22.22.22.2.m1.1.1" mathsize="90%" xref="S3.T1.22.22.22.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.22.22.22.2.m1.1b"><ci id="S3.T1.22.22.22.2.m1.1.1.cmml" xref="S3.T1.22.22.22.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.22.22.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.22.22.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.24.24">
<td class="ltx_td ltx_align_left" id="S3.T1.23.23.23.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="W_{EF}^{t}" class="ltx_Math" display="inline" id="S3.T1.23.23.23.1.m1.1"><semantics id="S3.T1.23.23.23.1.m1.1a"><msubsup id="S3.T1.23.23.23.1.m1.1.1" xref="S3.T1.23.23.23.1.m1.1.1.cmml"><mi id="S3.T1.23.23.23.1.m1.1.1.2.2" mathsize="90%" xref="S3.T1.23.23.23.1.m1.1.1.2.2.cmml">W</mi><mrow id="S3.T1.23.23.23.1.m1.1.1.2.3" xref="S3.T1.23.23.23.1.m1.1.1.2.3.cmml"><mi id="S3.T1.23.23.23.1.m1.1.1.2.3.2" mathsize="90%" xref="S3.T1.23.23.23.1.m1.1.1.2.3.2.cmml">E</mi><mo id="S3.T1.23.23.23.1.m1.1.1.2.3.1" xref="S3.T1.23.23.23.1.m1.1.1.2.3.1.cmml">⁢</mo><mi id="S3.T1.23.23.23.1.m1.1.1.2.3.3" mathsize="90%" xref="S3.T1.23.23.23.1.m1.1.1.2.3.3.cmml">F</mi></mrow><mi id="S3.T1.23.23.23.1.m1.1.1.3" mathsize="90%" xref="S3.T1.23.23.23.1.m1.1.1.3.cmml">t</mi></msubsup><annotation-xml encoding="MathML-Content" id="S3.T1.23.23.23.1.m1.1b"><apply id="S3.T1.23.23.23.1.m1.1.1.cmml" xref="S3.T1.23.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.23.23.23.1.m1.1.1.1.cmml" xref="S3.T1.23.23.23.1.m1.1.1">superscript</csymbol><apply id="S3.T1.23.23.23.1.m1.1.1.2.cmml" xref="S3.T1.23.23.23.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.23.23.23.1.m1.1.1.2.1.cmml" xref="S3.T1.23.23.23.1.m1.1.1">subscript</csymbol><ci id="S3.T1.23.23.23.1.m1.1.1.2.2.cmml" xref="S3.T1.23.23.23.1.m1.1.1.2.2">𝑊</ci><apply id="S3.T1.23.23.23.1.m1.1.1.2.3.cmml" xref="S3.T1.23.23.23.1.m1.1.1.2.3"><times id="S3.T1.23.23.23.1.m1.1.1.2.3.1.cmml" xref="S3.T1.23.23.23.1.m1.1.1.2.3.1"></times><ci id="S3.T1.23.23.23.1.m1.1.1.2.3.2.cmml" xref="S3.T1.23.23.23.1.m1.1.1.2.3.2">𝐸</ci><ci id="S3.T1.23.23.23.1.m1.1.1.2.3.3.cmml" xref="S3.T1.23.23.23.1.m1.1.1.2.3.3">𝐹</ci></apply></apply><ci id="S3.T1.23.23.23.1.m1.1.1.3.cmml" xref="S3.T1.23.23.23.1.m1.1.1.3">𝑡</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.23.23.1.m1.1c">W_{EF}^{t}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.23.23.1.m1.1d">italic_W start_POSTSUBSCRIPT italic_E italic_F end_POSTSUBSCRIPT start_POSTSUPERSCRIPT italic_t end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.24.24.24.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S3.T1.24.24.24.2.1" style="font-size:90%;">Error Escalation Flag at time </span><math alttext="t" class="ltx_Math" display="inline" id="S3.T1.24.24.24.2.m1.1"><semantics id="S3.T1.24.24.24.2.m1.1a"><mi id="S3.T1.24.24.24.2.m1.1.1" mathsize="90%" xref="S3.T1.24.24.24.2.m1.1.1.cmml">t</mi><annotation-xml encoding="MathML-Content" id="S3.T1.24.24.24.2.m1.1b"><ci id="S3.T1.24.24.24.2.m1.1.1.cmml" xref="S3.T1.24.24.24.2.m1.1.1">𝑡</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.24.24.2.m1.1c">t</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.24.24.2.m1.1d">italic_t</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.25.25">
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.25.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathbf{W_{A}}" class="ltx_Math" display="inline" id="S3.T1.25.25.25.1.m1.1"><semantics id="S3.T1.25.25.25.1.m1.1a"><msub id="S3.T1.25.25.25.1.m1.1.1" xref="S3.T1.25.25.25.1.m1.1.1.cmml"><mi id="S3.T1.25.25.25.1.m1.1.1.2" mathsize="90%" xref="S3.T1.25.25.25.1.m1.1.1.2.cmml">𝐖</mi><mi id="S3.T1.25.25.25.1.m1.1.1.3" mathsize="90%" xref="S3.T1.25.25.25.1.m1.1.1.3.cmml">𝐀</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.25.25.25.1.m1.1b"><apply id="S3.T1.25.25.25.1.m1.1.1.cmml" xref="S3.T1.25.25.25.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.25.25.25.1.m1.1.1.1.cmml" xref="S3.T1.25.25.25.1.m1.1.1">subscript</csymbol><ci id="S3.T1.25.25.25.1.m1.1.1.2.cmml" xref="S3.T1.25.25.25.1.m1.1.1.2">𝐖</ci><ci id="S3.T1.25.25.25.1.m1.1.1.3.cmml" xref="S3.T1.25.25.25.1.m1.1.1.3">𝐀</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.25.25.1.m1.1c">\mathbf{W_{A}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.25.25.1.m1.1d">bold_W start_POSTSUBSCRIPT bold_A end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.25.25.25.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.25.25.25.2.1" style="font-size:90%;">Action history with outcome status</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.26.26.26">
<td class="ltx_td ltx_align_left" id="S3.T1.26.26.26.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="\mathbf{W_{E}}" class="ltx_Math" display="inline" id="S3.T1.26.26.26.1.m1.1"><semantics id="S3.T1.26.26.26.1.m1.1a"><msub id="S3.T1.26.26.26.1.m1.1.1" xref="S3.T1.26.26.26.1.m1.1.1.cmml"><mi id="S3.T1.26.26.26.1.m1.1.1.2" mathsize="90%" xref="S3.T1.26.26.26.1.m1.1.1.2.cmml">𝐖</mi><mi id="S3.T1.26.26.26.1.m1.1.1.3" mathsize="90%" xref="S3.T1.26.26.26.1.m1.1.1.3.cmml">𝐄</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.26.26.26.1.m1.1b"><apply id="S3.T1.26.26.26.1.m1.1.1.cmml" xref="S3.T1.26.26.26.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.26.26.26.1.m1.1.1.1.cmml" xref="S3.T1.26.26.26.1.m1.1.1">subscript</csymbol><ci id="S3.T1.26.26.26.1.m1.1.1.2.cmml" xref="S3.T1.26.26.26.1.m1.1.1.2">𝐖</ci><ci id="S3.T1.26.26.26.1.m1.1.1.3.cmml" xref="S3.T1.26.26.26.1.m1.1.1.3">𝐄</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.26.26.1.m1.1c">\mathbf{W_{E}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.26.26.1.m1.1d">bold_W start_POSTSUBSCRIPT bold_E end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left" id="S3.T1.26.26.26.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.26.26.26.2.1" style="font-size:90%;">Error history with feedback</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.33">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="2" id="S3.T1.28.28.33.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.28.28.33.1.1" style="font-size:90%;">Long-term Memory</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.27.27.27">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.27.27.27.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="L_{S}" class="ltx_Math" display="inline" id="S3.T1.27.27.27.1.m1.1"><semantics id="S3.T1.27.27.27.1.m1.1a"><msub id="S3.T1.27.27.27.1.m1.1.1" xref="S3.T1.27.27.27.1.m1.1.1.cmml"><mi id="S3.T1.27.27.27.1.m1.1.1.2" mathsize="90%" xref="S3.T1.27.27.27.1.m1.1.1.2.cmml">L</mi><mi id="S3.T1.27.27.27.1.m1.1.1.3" mathsize="90%" xref="S3.T1.27.27.27.1.m1.1.1.3.cmml">S</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.27.27.27.1.m1.1b"><apply id="S3.T1.27.27.27.1.m1.1.1.cmml" xref="S3.T1.27.27.27.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.27.27.27.1.m1.1.1.1.cmml" xref="S3.T1.27.27.27.1.m1.1.1">subscript</csymbol><ci id="S3.T1.27.27.27.1.m1.1.1.2.cmml" xref="S3.T1.27.27.27.1.m1.1.1.2">𝐿</ci><ci id="S3.T1.27.27.27.1.m1.1.1.3.cmml" xref="S3.T1.27.27.27.1.m1.1.1.3">𝑆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.27.27.1.m1.1c">L_{S}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.27.27.1.m1.1d">italic_L start_POSTSUBSCRIPT italic_S end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.27.27.27.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.27.27.27.2.1" style="font-size:90%;">Shortcuts</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.28.28">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.28.28.28.1" style="padding-left:4.0pt;padding-right:4.0pt;"><math alttext="L_{T}" class="ltx_Math" display="inline" id="S3.T1.28.28.28.1.m1.1"><semantics id="S3.T1.28.28.28.1.m1.1a"><msub id="S3.T1.28.28.28.1.m1.1.1" xref="S3.T1.28.28.28.1.m1.1.1.cmml"><mi id="S3.T1.28.28.28.1.m1.1.1.2" mathsize="90%" xref="S3.T1.28.28.28.1.m1.1.1.2.cmml">L</mi><mi id="S3.T1.28.28.28.1.m1.1.1.3" mathsize="90%" xref="S3.T1.28.28.28.1.m1.1.1.3.cmml">T</mi></msub><annotation-xml encoding="MathML-Content" id="S3.T1.28.28.28.1.m1.1b"><apply id="S3.T1.28.28.28.1.m1.1.1.cmml" xref="S3.T1.28.28.28.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.28.28.28.1.m1.1.1.1.cmml" xref="S3.T1.28.28.28.1.m1.1.1">subscript</csymbol><ci id="S3.T1.28.28.28.1.m1.1.1.2.cmml" xref="S3.T1.28.28.28.1.m1.1.1.2">𝐿</ci><ci id="S3.T1.28.28.28.1.m1.1.1.3.cmml" xref="S3.T1.28.28.28.1.m1.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.28.28.1.m1.1c">L_{T}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.28.28.1.m1.1d">italic_L start_POSTSUBSCRIPT italic_T end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.28.28.28.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S3.T1.28.28.28.2.1" style="font-size:90%;">Tips</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table lists notations used in the paper and their corresponding descriptions.  It provides a comprehensive glossary of terms and symbols that are essential for understanding the Mobile-Agent-E framework and its associated algorithms. The table is divided into two main sections: Environment and Agents. Environment includes notations for task input, actions, and phone states. Agents include notations for different agents involved in the system along with notations for the working memory and long-term memory.
> <details>
> <summary>read the caption</summary>
> Table 1: Notation definitions.
> </details>





### In-depth insights


#### Mobile Agent E
Mobile Agent E presents a novel approach to mobile assistance, addressing limitations of prior methods by introducing a **hierarchical multi-agent framework**. This architecture separates high-level planning from low-level execution, improving efficiency and robustness.  The system's **self-evolution module** is a key innovation, enabling continuous learning from past experiences.  This learning is manifested through the acquisition of reusable Shortcuts and general Tips stored in long-term memory.  The framework demonstrates significant performance gains on a new benchmark, Mobile-Eval-E, which features complex real-world tasks.  However, the paper also acknowledges limitations, particularly concerning the generation and use of Shortcuts, suggesting that future work should refine shortcut generation and validation.  Overall, Mobile Agent E offers a promising advancement in mobile assistance, showcasing the potential of combining hierarchical reasoning with self-learning capabilities.

#### Hierarchical Framework
A hierarchical framework in a mobile agent system is crucial for effectively managing complex tasks.  It promotes efficiency by **decomposing high-level goals into smaller, manageable sub-goals**. This decomposition allows for parallel processing and specialization of agents, each focusing on a specific aspect of the task.  **A manager agent coordinates the actions of these lower-level agents**, ensuring that sub-goals are completed in the correct order and resources are allocated effectively.  This approach is particularly beneficial for handling long-horizon tasks where intricate reasoning and multiple interactions with various mobile apps are necessary. The **hierarchical structure enhances robustness and error recovery** by allowing higher-level agents to intervene and adjust strategies when lower-level agents encounter unexpected situations.  The framework also allows for easier integration of self-evolution modules, which can learn from past experiences and refine agent behavior to improve overall performance and efficiency.  **Clear separation of concerns between planning and execution** is another key advantage, preventing the conflation of high-level strategic decisions with low-level operational details, enhancing the system's overall scalability and maintainability.

#### Self-Evolution Module
The Self-Evolution Module is a crucial component of Mobile-Agent-E, designed to enhance its efficiency and adaptability over time.  It leverages a **persistent long-term memory** that stores both **Tips (general guidelines)** and **Shortcuts (reusable atomic operation sequences)**.  These are continuously updated after each task by the Experience Reflectors, which analyze the interaction history.  **Tips** are akin to human episodic memory, providing general guidance and lessons learned from past interactions.  **Shortcuts**, on the other hand, represent procedural knowledge, offering efficient, pre-defined solutions for recurring subroutines.  The inclusion of both Tips and Shortcuts promotes continuous refinement of task performance.  This self-evolution mechanism addresses a critical limitation of prior mobile agents: the inability to learn and adapt from past experiences, enabling Mobile-Agent-E to significantly outperform existing approaches in complex, real-world tasks.

#### Mobile-Eval-E Benchmark
The Mobile-Eval-E benchmark is a crucial contribution to the field of mobile agent research because it addresses a significant gap in existing benchmarks.  Unlike previous benchmarks focusing on simple, short-horizon tasks, **Mobile-Eval-E introduces complex, real-world scenarios requiring multi-app interactions and long-horizon planning.** This increased complexity better reflects the challenges faced by human users when performing multi-step tasks on their mobile devices. The benchmark's design incorporates **a novel evaluation metric, the Satisfaction Score**, which moves beyond binary success/failure measurements to assess more nuanced aspects of task completion aligned with human preferences. This shift towards human-centric evaluation makes the benchmark more meaningful and directly applicable to real-world use cases. By using the SSS curve, the benchmark enables a more comprehensive analysis of both performance and efficiency.  **Mobile-Eval-E's challenges push the boundaries of mobile agent capabilities**, promoting further innovation and more robust, human-aligned mobile assistant development.

#### Future Work
The authors of the Mobile-Agent-E research paper outline several crucial avenues for future work.  **Improving the generation and utilization of Shortcuts** is paramount, as current methods sometimes produce erroneous or inapplicable shortcuts.  Developing more robust mechanisms for validating shortcut preconditions and revising or discarding faulty shortcuts is essential.  A key area for improvement lies in enhancing the **personalization of the agent**, tailoring its behavior and strategies to individual user preferences and needs. This involves exploring techniques like adaptive learning and user feedback integration to create more customized experiences.   **Strengthening safety and privacy protocols** is also highlighted. The authors acknowledge the potential risks of autonomous decision-making and emphasize the necessity of integrating robust safeguards to prevent unintended actions and protect user data. This could include explicit consent workflows for sensitive actions and mechanisms for detecting and rectifying potentially harmful behavior. Finally, the authors suggest further exploring **the interplay between agent capabilities and user interaction**, aiming to create a more collaborative and efficient system.  This might involve investigations into seamless human-agent interaction methods, improved error handling, and enhanced feedback mechanisms to support more intuitive task management.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1">
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T2.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.1.1" style="font-size:90%;">Benchmark</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.2.1" style="font-size:90%;">#Tasks</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.3.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1.1.1.1" style="font-size:90%;">#Multi-App</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1.2.1.1" style="font-size:90%;">Tasks</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1.1.1.1" style="font-size:90%;">#Apps</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.5" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1.1.1.1" style="font-size:90%;">Avg #</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.5.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1.2.1.1" style="font-size:90%;">Ops</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1.6" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1.1.1.1" style="font-size:90%;">Total #</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.6.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1.2.1.1" style="font-size:90%;">Ops</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.1.1" style="font-size:90%;">Mobile-Eval</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.2.1" style="font-size:90%;">33</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.3.1" style="font-size:90%;">3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.5.1" style="font-size:90%;">5.55</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.1.1.2.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.2.6.1" style="font-size:90%;">183</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.3.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.1.1" style="font-size:90%;">Mobile-Eval-v2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.2.1" style="font-size:90%;">44</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.3.1" style="font-size:90%;">4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.4.1" style="font-size:90%;">10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.5.1" style="font-size:90%;">5.57</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.3.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.3.6.1" style="font-size:90%;">245</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.4.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.1.1" style="font-size:90%;">AppAgent</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.4.2.1" style="font-size:90%;">45</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.3.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.4.1" style="font-size:90%;">9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.5.1" style="font-size:90%;">6.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.4.6.1" style="font-size:90%;">284</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.1.1" style="font-size:90%;">Mobile-Eval-E</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.5.2.1" style="font-size:90%;">25</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.3.1" style="font-size:90%;">19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.4.1" style="font-size:90%;">15</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.5.1" style="font-size:90%;">14.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.1.1.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.1.1.5.6.1" style="font-size:90%;">364</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares Mobile-Eval-E with other existing mobile device evaluation benchmarks.  It highlights key differences in terms of task complexity, the number of apps involved in each task, the average number of operations needed to complete each task, and the total number of operations across all tasks. Mobile-Eval-E is shown to feature significantly more complex tasks involving interactions across multiple applications, requiring substantially more operations than previous benchmarks. This increased complexity better reflects real-world mobile task scenarios.
> <details>
> <summary>read the caption</summary>
> Table 2: Comparison with existing dynamic evaluation benchmarks on real devices. Mobile-Eval-E emphasizes long-horizon, complex tasks that require significantly more operations and a wider variety of apps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.3.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1.1.1.1" style="font-size:90%;">#Multi-App</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.3.1.2.1.1" style="font-size:90%;">Tasks</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of Mobile-Agent-E's performance against state-of-the-art (SOTA) mobile agent models on the Mobile-Eval-E benchmark.  Using GPT-40 as the foundation model for all agents, the table shows the Satisfaction Score (a human-evaluated metric reflecting task completion and user satisfaction), Action Accuracy (the percentage of correctly performed actions), Reflection Accuracy (the percentage of correctly assessed action outcomes, omitted for models lacking an action reflector), and Termination Error rate (the percentage of tasks prematurely ended due to errors).  The results demonstrate Mobile-Agent-E's substantial performance gains over previous SOTA models in all evaluated metrics, highlighting its superior capabilities in long-term planning, decision-making, and error recovery.  Furthermore, the table illustrates that incorporating a self-evolution module (Mobile-Agent-E + Evo) leads to even more significant improvements.
> <details>
> <summary>read the caption</summary>
> Table 3: Comparison with state-of-the-art models on the Mobile-Eval-E benchmark, using GPT-4o as the backbone. Mobile-Agent-E outperforms previous SOTA models by a significant margin across all metrics, demonstrating superior long-term planning, decision accuracy, and error recovery. Enabling self-evolution (Mobile-Agent-E + Evo) further enhances performance. Reflection Accuracy for AppAgent and Mobile-Agent-v1 are omitted since they do not have action reflectors.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.4.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.4.1.1.1.1" style="font-size:90%;">#Apps</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Mobile-Agent-E using three different large language models (LLMs) as its backbone: GPT-40, Gemini, and Claude.  The evaluation metrics used are Satisfaction Score (SS), Action Accuracy (AA), Reflection Accuracy (RA), and Termination Error (TE).  Each metric is expressed as a percentage, providing a comprehensive view of the model's performance across different LLMs.  Higher percentages for SS, AA, and RA indicate better performance, while a lower percentage for TE represents fewer errors.
> <details>
> <summary>read the caption</summary>
> Table 4: Results on different large multimodal model backbones, including GPT-4o, Gemini, and Claude. The metrics SS, AA, RA, and TE represent Satisfaction Score, Action Accuracy, Reflection Accuracy, and Termination Error, respectively, expressed as percentages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.5.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.5.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.5.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1.1.1.1" style="font-size:90%;">Avg #</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.5.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.5.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.5.1.2.1.1" style="font-size:90%;">Ops</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table analyzes the computational efficiency of the Mobile-Agent-E model by comparing the time taken for reasoning alone versus the combined time for reasoning and perception. It also shows how frequently Shortcuts (pre-defined sequences of actions) were used.  The results demonstrate that using Shortcuts significantly speeds up the model's inference, making it comparable to previous, less complex models despite the increased sophistication of Mobile-Agent-E.
> <details>
> <summary>read the caption</summary>
> Table 5:  Analysis of computational overhead and Shortcut usage. In the inference speed table, the reasoning only section accounts for time spent solely on reasoning agents, while perception + reasoning includes the runtime of the Perceptor on CPU. Shortcut usage statistics are calculated as the ratio of Shortcuts used to the total number of actions performed by the Operator. The use of Shortcuts significantly accelerates inference, achieving comparable times to previous, simpler frameworks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.1.1.1.6.1">
<tr class="ltx_tr" id="S4.T2.1.1.1.6.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.6.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1.1.1.1" style="font-size:90%;">Total #</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1.6.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.1.1.1.6.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T2.1.1.1.6.1.2.1.1" style="font-size:90%;">Ops</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table investigates the unique contribution of evolved Tips to task success, excluding the impact of newly generated Shortcuts. By analyzing a subset of task instances where only evolved Tips were used, the study quantifies the improvement in Satisfaction Score attributable solely to these learned guidelines.  The results demonstrate that the evolved Tips significantly enhance task performance even without the benefit of new Shortcuts.
> <details>
> <summary>read the caption</summary>
> Table 6: To investigate the unique impact of Tips, we compute the Satisfaction Score on a subset of instances where no newly generated Shortcuts are used in the trajectory. The results show distinctive benefits from the evolved Tips.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.4.4">
<tr class="ltx_tr" id="S4.T3.4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.4.5.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.4.4.4.4.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.4.6.1" style="font-size:90%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.1.1.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.1.1.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.1.1.1.2.1.1" style="font-size:90%;">Satisfaction Score</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.1.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1.1.1.1.1.1" style="font-size:90%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2.2.2.2.2.1">
<tr class="ltx_tr" id="S4.T3.2.2.2.2.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.2.2.2.2.2.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.2.2.2.2.2.1.2.1.1" style="font-size:90%;">Action Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2.2.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.2.2.2.2.2.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.2.2.2.2.2.1.1.1.1" style="font-size:90%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.2.1.1.1.m1.1"><semantics id="S4.T3.2.2.2.2.2.1.1.1.m1.1a"><mo id="S4.T3.2.2.2.2.2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.2.2.2.2.2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.2.1.1.1.m1.1b"><ci id="S4.T3.2.2.2.2.2.1.1.1.m1.1.1.cmml" xref="S4.T3.2.2.2.2.2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.2.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.3.3.3.3.1">
<tr class="ltx_tr" id="S4.T3.3.3.3.3.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.3.3.3.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.3.3.3.3.3.1.2.1.1" style="font-size:90%;">Reflection Accuracy</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.3.3.3.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.3.3.3.3.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.3.3.3.3.3.1.1.1.1" style="font-size:90%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.3.3.1.1.1.m1.1"><semantics id="S4.T3.3.3.3.3.3.1.1.1.m1.1a"><mo id="S4.T3.3.3.3.3.3.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.3.3.3.3.3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.3.3.1.1.1.m1.1b"><ci id="S4.T3.3.3.3.3.3.1.1.1.m1.1.1.cmml" xref="S4.T3.3.3.3.3.3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.3.3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.3.3.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">
<table class="ltx_tabular ltx_align_middle" id="S4.T3.4.4.4.4.4.1">
<tr class="ltx_tr" id="S4.T3.4.4.4.4.4.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.4.4.4.4.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.4.4.1.2.1.1" style="font-size:90%;">Termination Error</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.4.4.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.4.4.4.4.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.4.4.1.1.1.1" style="font-size:90%;">(%) </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.4.4.1.1.1.m1.1"><semantics id="S4.T3.4.4.4.4.4.1.1.1.m1.1a"><mo id="S4.T3.4.4.4.4.4.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.4.4.4.4.4.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.4.4.1.1.1.m1.1b"><ci id="S4.T3.4.4.4.4.4.1.1.1.m1.1.1.cmml" xref="S4.T3.4.4.4.4.4.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.4.4.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.4.4.1.1.1.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.4.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.5.1.1" style="font-size:90%;">AppAgent </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.4.4.4.5.1.2.1" style="font-size:90%;">(</span>Zhang et al.<span class="ltx_text" id="S4.T3.4.4.4.5.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11733v1#bib.bib34" title="">2023</a><span class="ltx_text" id="S4.T3.4.4.4.5.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.4.4.5.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.5.2.1" style="font-size:90%;">Single-Agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.5.3.1" style="font-size:90%;">25.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.5.4.1" style="font-size:90%;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.5.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.5.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.5.6.1" style="font-size:90%;">96.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.6">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.4.6.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.6.1.1" style="font-size:90%;">Mobile-Agent-v1 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.4.4.4.6.1.2.1" style="font-size:90%;">(</span>Wang et al.<span class="ltx_text" id="S4.T3.4.4.4.6.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11733v1#bib.bib27" title="">2024b</a><span class="ltx_text" id="S4.T3.4.4.4.6.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.4.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.6.2.1" style="font-size:90%;">Single-Agent</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.6.3.1" style="font-size:90%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.6.4.1" style="font-size:90%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.6.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.6.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.6.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.6.6.1" style="font-size:90%;">68.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.7">
<td class="ltx_td ltx_align_left" id="S4.T3.4.4.4.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.4.4.4.7.1.1" style="font-size:90%;">Mobile-Agent-v2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T3.4.4.4.7.1.2.1" style="font-size:90%;">(</span>Wang et al.<span class="ltx_text" id="S4.T3.4.4.4.7.1.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.11733v1#bib.bib26" title="">2024a</a><span class="ltx_text" id="S4.T3.4.4.4.7.1.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.4.4.4.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.7.2.1" style="font-size:90%;">Multi-Agent</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.7.3.1" style="font-size:90%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.7.4.1" style="font-size:90%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.7.5.1" style="font-size:90%;">96.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.7.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.7.6.1" style="font-size:90%;">52.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.4.8.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.1.1" style="font-size:90%;">Mobile-Agent-E</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.4.4.4.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.2.1" style="font-size:90%;">Multi-Agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.3.1" style="font-size:90%;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.8.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.4.1" style="font-size:90%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.8.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.5.1" style="font-size:90%;">97.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4.8.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.8.6.1" style="font-size:90%;">32.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4.9">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.4.4.4.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.9.1.1" style="font-size:90%;">Mobile-Agent-E + Evo</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.4.4.4.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.4.4.4.9.2.1" style="font-size:90%;">Multi-Agent</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.9.3.1" style="font-size:90%;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.9.4.1" style="font-size:90%;">90.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.9.5.1" style="font-size:90%;">97.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.4.4.4.9.6" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.9.6.1" style="font-size:90%;">12.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists all 25 tasks included in the Mobile-Eval-E benchmark dataset.  For each task, it provides the task ID, the apps involved in completing the task, the input query given to the agent, and the scenario to which the task belongs. The scenarios represent different real-world task categories, such as restaurant recommendations, online shopping, and travel planning.  The table is designed to show the complexity of tasks in Mobile-Eval-E, highlighting the multi-app and reasoning aspects frequently encountered in everyday mobile use.
> <details>
> <summary>read the caption</summary>
> Table 7: All task queries in Mobile-Eval-E.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.1.1.1.1.1.1">
<tr class="ltx_tr" id="S4.T3.1.1.1.1.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.1.1.1.1.2.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T3.1.1.1.1.1.1.2.1.1" style="font-size:90%;">Satisfaction Score</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.1.1.1.1.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.1.1.1.1.1.1.1.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text" id="S4.T3.1.1.1.1.1.1.1.1.1" style="font-size:90%;">(%) </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the atomic operations used by the Mobile-Agent-E system.  These are the fundamental actions the system can perform, such as tapping on the screen, swiping, typing text, etc. These atomic operations are combined to create more complex actions and sequences, allowing Mobile-Agent-E to interact with mobile applications.
> <details>
> <summary>read the caption</summary>
> Table 8: Atomic operations space.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.11733/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.11733/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}