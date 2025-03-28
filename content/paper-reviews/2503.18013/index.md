---
title: "Vision-R1: Evolving Human-Free Alignment in Large Vision-Language Models via Vision-Guided Reinforcement Learning"
summary: "Vision-R1: Improves LVLMs via vision-guided reinforcement learning, eliminating the need for human feedback and specialized reward models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Foundation Model Research Center, Institute of Automation, Chinese Academy of Sciences",]
showSummary: true
date: 2025-03-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.18013 {{< /keyword >}}
{{< keyword icon="writer" >}} Yufei Zhan et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.18013" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.18013" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.18013/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Vision-Language Models(LVLMs) use preference optimization, derived from language, but need high-quality human-annotated preference data and robust reward models, making it costly. Thus, the paper explores whether an R1-like reinforcement learning method can enhance LVLM capabilities with curated vision-language instruction data.



Vision-R1, a vision-guided R1-like reinforcement learning algorithm for LVLMs, rewards models with definitive vision feedback. It uses curated instruction data, removing the need for reward models and preference datasets. Vision-R1 achieves performance gains on models across scenarios, and improves Qwen2.5-VL by 50% while maintaining generalization.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Vision-R1 algorithm enhances LVLMs' object localization through vision-guided reinforcement learning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A progressive rule refinement strategy dynamically adjusts reward criteria for continuous model improvement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Vision-R1 achieves superior performance on various tasks and models, with notable gains in object localization and generalization. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces Vision-R1, which advances vision-language models by **automating alignment with visual feedback.** It offers a new approach to improve object localization. This can benefit researchers by **enhancing model performance, reducing reliance on human-annotated data**, and exploring vision-guided reinforcement learning in the field of AI.

------
#### Visual Insights



![](https://arxiv.org/html/2503.18013/x1.png)

> 🔼 Vision-R1 is a reinforcement learning algorithm for Large Vision-Language Models (LVLMs).  It uses a novel vision-guided reward function that evaluates model outputs based on visual feedback, eliminating the need for human-annotated preference data. The algorithm incorporates a progressive rule refinement strategy, dynamically adjusting reward criteria during training to ensure continuous model improvement and mitigate reward hacking.  The figure illustrates the key components of Vision-R1: the curated instruction data, the vision criteria-driven reward function (incorporating precision and dual-format rewards), and the progressive rule refinement process. The LVLMs (e.g., Qwen2.5-VL and InternVL) are shown interacting with the Vision-R1 system.
> <details>
> <summary>read the caption</summary>
> Figure 1: Key designs of Vision-R1. Vision-R1 introduces vision criteria-driven reward function to holistically assess model completions and presents progressive rule refinement to ensure sustained improvement.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T1.4">
<tr class="ltx_tr" id="S4.T1.4.5">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.5.1" rowspan="2" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.5.1.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.4.5.2" rowspan="2" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.5.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.4.5.3" rowspan="2" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.5.3.1">Res.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S4.T1.4.5.4" style="padding-left:6.8pt;padding-right:6.8pt;">MSCOCO Val2017</td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S4.T1.4.5.5" style="padding-left:6.8pt;padding-right:6.8pt;">ODINW-13</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.1.1.1" style="padding-left:6.8pt;padding-right:6.8pt;"><math alttext="AP_{50}" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mrow id="S4.T1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.m1.1.1.cmml"><mi id="S4.T1.1.1.1.m1.1.1.2" xref="S4.T1.1.1.1.m1.1.1.2.cmml">A</mi><mo id="S4.T1.1.1.1.m1.1.1.1" xref="S4.T1.1.1.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T1.1.1.1.m1.1.1.3" xref="S4.T1.1.1.1.m1.1.1.3.cmml"><mi id="S4.T1.1.1.1.m1.1.1.3.2" xref="S4.T1.1.1.1.m1.1.1.3.2.cmml">P</mi><mn id="S4.T1.1.1.1.m1.1.1.3.3" xref="S4.T1.1.1.1.m1.1.1.3.3.cmml">50</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><apply id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1"><times id="S4.T1.1.1.1.m1.1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1.1"></times><ci id="S4.T1.1.1.1.m1.1.1.2.cmml" xref="S4.T1.1.1.1.m1.1.1.2">𝐴</ci><apply id="S4.T1.1.1.1.m1.1.1.3.cmml" xref="S4.T1.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.1.1.1.m1.1.1.3.1.cmml" xref="S4.T1.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S4.T1.1.1.1.m1.1.1.3.2.cmml" xref="S4.T1.1.1.1.m1.1.1.3.2">𝑃</ci><cn id="S4.T1.1.1.1.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.1.1.1.m1.1.1.3.3">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">AP_{50}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">italic_A italic_P start_POSTSUBSCRIPT 50 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.2.2.2" style="padding-left:6.8pt;padding-right:6.8pt;"><math alttext="AP_{75}" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mrow id="S4.T1.2.2.2.m1.1.1" xref="S4.T1.2.2.2.m1.1.1.cmml"><mi id="S4.T1.2.2.2.m1.1.1.2" xref="S4.T1.2.2.2.m1.1.1.2.cmml">A</mi><mo id="S4.T1.2.2.2.m1.1.1.1" xref="S4.T1.2.2.2.m1.1.1.1.cmml">⁢</mo><msub id="S4.T1.2.2.2.m1.1.1.3" xref="S4.T1.2.2.2.m1.1.1.3.cmml"><mi id="S4.T1.2.2.2.m1.1.1.3.2" xref="S4.T1.2.2.2.m1.1.1.3.2.cmml">P</mi><mn id="S4.T1.2.2.2.m1.1.1.3.3" xref="S4.T1.2.2.2.m1.1.1.3.3.cmml">75</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><apply id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1"><times id="S4.T1.2.2.2.m1.1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1.1"></times><ci id="S4.T1.2.2.2.m1.1.1.2.cmml" xref="S4.T1.2.2.2.m1.1.1.2">𝐴</ci><apply id="S4.T1.2.2.2.m1.1.1.3.cmml" xref="S4.T1.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T1.2.2.2.m1.1.1.3.1.cmml" xref="S4.T1.2.2.2.m1.1.1.3">subscript</csymbol><ci id="S4.T1.2.2.2.m1.1.1.3.2.cmml" xref="S4.T1.2.2.2.m1.1.1.3.2">𝑃</ci><cn id="S4.T1.2.2.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T1.2.2.2.m1.1.1.3.3">75</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">AP_{75}</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">italic_A italic_P start_POSTSUBSCRIPT 75 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3" style="padding-left:6.8pt;padding-right:6.8pt;"><math alttext="mAP" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mrow id="S4.T1.3.3.3.m1.1.1" xref="S4.T1.3.3.3.m1.1.1.cmml"><mi id="S4.T1.3.3.3.m1.1.1.2" xref="S4.T1.3.3.3.m1.1.1.2.cmml">m</mi><mo id="S4.T1.3.3.3.m1.1.1.1" xref="S4.T1.3.3.3.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.m1.1.1.3" xref="S4.T1.3.3.3.m1.1.1.3.cmml">A</mi><mo id="S4.T1.3.3.3.m1.1.1.1a" xref="S4.T1.3.3.3.m1.1.1.1.cmml">⁢</mo><mi id="S4.T1.3.3.3.m1.1.1.4" xref="S4.T1.3.3.3.m1.1.1.4.cmml">P</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><apply id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1"><times id="S4.T1.3.3.3.m1.1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1.1"></times><ci id="S4.T1.3.3.3.m1.1.1.2.cmml" xref="S4.T1.3.3.3.m1.1.1.2">𝑚</ci><ci id="S4.T1.3.3.3.m1.1.1.3.cmml" xref="S4.T1.3.3.3.m1.1.1.3">𝐴</ci><ci id="S4.T1.3.3.3.m1.1.1.4.cmml" xref="S4.T1.3.3.3.m1.1.1.4">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">mAP</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">italic_m italic_A italic_P</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.5" style="padding-left:6.8pt;padding-right:6.8pt;">Pistols</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.6" style="padding-left:6.8pt;padding-right:6.8pt;">Pothole</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.7" style="padding-left:6.8pt;padding-right:6.8pt;">Thermal</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.4.4" style="padding-left:6.8pt;padding-right:6.8pt;"><math alttext="Avg.\;mAP" class="ltx_Math" display="inline" id="S4.T1.4.4.4.m1.2"><semantics id="S4.T1.4.4.4.m1.2a"><mrow id="S4.T1.4.4.4.m1.2.2.2" xref="S4.T1.4.4.4.m1.2.2.3.cmml"><mrow id="S4.T1.4.4.4.m1.1.1.1.1" xref="S4.T1.4.4.4.m1.1.1.1.1.cmml"><mi id="S4.T1.4.4.4.m1.1.1.1.1.2" xref="S4.T1.4.4.4.m1.1.1.1.1.2.cmml">A</mi><mo id="S4.T1.4.4.4.m1.1.1.1.1.1" xref="S4.T1.4.4.4.m1.1.1.1.1.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.m1.1.1.1.1.3" xref="S4.T1.4.4.4.m1.1.1.1.1.3.cmml">v</mi><mo id="S4.T1.4.4.4.m1.1.1.1.1.1a" xref="S4.T1.4.4.4.m1.1.1.1.1.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.m1.1.1.1.1.4" xref="S4.T1.4.4.4.m1.1.1.1.1.4.cmml">g</mi></mrow><mo id="S4.T1.4.4.4.m1.2.2.2.3" lspace="0em" rspace="0.447em" xref="S4.T1.4.4.4.m1.2.2.3a.cmml">.</mo><mrow id="S4.T1.4.4.4.m1.2.2.2.2" xref="S4.T1.4.4.4.m1.2.2.2.2.cmml"><mi id="S4.T1.4.4.4.m1.2.2.2.2.2" xref="S4.T1.4.4.4.m1.2.2.2.2.2.cmml">m</mi><mo id="S4.T1.4.4.4.m1.2.2.2.2.1" xref="S4.T1.4.4.4.m1.2.2.2.2.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.m1.2.2.2.2.3" xref="S4.T1.4.4.4.m1.2.2.2.2.3.cmml">A</mi><mo id="S4.T1.4.4.4.m1.2.2.2.2.1a" xref="S4.T1.4.4.4.m1.2.2.2.2.1.cmml">⁢</mo><mi id="S4.T1.4.4.4.m1.2.2.2.2.4" xref="S4.T1.4.4.4.m1.2.2.2.2.4.cmml">P</mi></mrow></mrow><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.m1.2b"><apply id="S4.T1.4.4.4.m1.2.2.3.cmml" xref="S4.T1.4.4.4.m1.2.2.2"><csymbol cd="ambiguous" id="S4.T1.4.4.4.m1.2.2.3a.cmml" xref="S4.T1.4.4.4.m1.2.2.2.3">formulae-sequence</csymbol><apply id="S4.T1.4.4.4.m1.1.1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1.1.1"><times id="S4.T1.4.4.4.m1.1.1.1.1.1.cmml" xref="S4.T1.4.4.4.m1.1.1.1.1.1"></times><ci id="S4.T1.4.4.4.m1.1.1.1.1.2.cmml" xref="S4.T1.4.4.4.m1.1.1.1.1.2">𝐴</ci><ci id="S4.T1.4.4.4.m1.1.1.1.1.3.cmml" xref="S4.T1.4.4.4.m1.1.1.1.1.3">𝑣</ci><ci id="S4.T1.4.4.4.m1.1.1.1.1.4.cmml" xref="S4.T1.4.4.4.m1.1.1.1.1.4">𝑔</ci></apply><apply id="S4.T1.4.4.4.m1.2.2.2.2.cmml" xref="S4.T1.4.4.4.m1.2.2.2.2"><times id="S4.T1.4.4.4.m1.2.2.2.2.1.cmml" xref="S4.T1.4.4.4.m1.2.2.2.2.1"></times><ci id="S4.T1.4.4.4.m1.2.2.2.2.2.cmml" xref="S4.T1.4.4.4.m1.2.2.2.2.2">𝑚</ci><ci id="S4.T1.4.4.4.m1.2.2.2.2.3.cmml" xref="S4.T1.4.4.4.m1.2.2.2.2.3">𝐴</ci><ci id="S4.T1.4.4.4.m1.2.2.2.2.4.cmml" xref="S4.T1.4.4.4.m1.2.2.2.2.4">𝑃</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.m1.2c">Avg.\;mAP</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.m1.2d">italic_A italic_v italic_g . italic_m italic_A italic_P</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.6.1" rowspan="5" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.6.1.1">Specialists</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.6.2" style="padding-left:6.8pt;padding-right:6.8pt;">Faster RCNN-FPN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.3" style="padding-left:6.8pt;padding-right:6.8pt;">1022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.4" style="padding-left:6.8pt;padding-right:6.8pt;">58.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.5" style="padding-left:6.8pt;padding-right:6.8pt;">40.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.6" style="padding-left:6.8pt;padding-right:6.8pt;">37.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.6.10" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.7">
<td class="ltx_td ltx_align_left" id="S4.T1.4.7.1" style="padding-left:6.8pt;padding-right:6.8pt;">DAB-DETR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.2" style="padding-left:6.8pt;padding-right:6.8pt;">1333</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.3" style="padding-left:6.8pt;padding-right:6.8pt;">60.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.4" style="padding-left:6.8pt;padding-right:6.8pt;">39.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.5" style="padding-left:6.8pt;padding-right:6.8pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.7.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.8">
<td class="ltx_td ltx_align_left" id="S4.T1.4.8.1" style="padding-left:6.8pt;padding-right:6.8pt;">DETR <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.2" style="padding-left:6.8pt;padding-right:6.8pt;">1333</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.3" style="padding-left:6.8pt;padding-right:6.8pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.4" style="padding-left:6.8pt;padding-right:6.8pt;">44.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.5" style="padding-left:6.8pt;padding-right:6.8pt;">42.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.8.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.9">
<td class="ltx_td ltx_align_left" id="S4.T1.4.9.1" style="padding-left:6.8pt;padding-right:6.8pt;">Pix2Seq <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.2" style="padding-left:6.8pt;padding-right:6.8pt;">1333</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.3" style="padding-left:6.8pt;padding-right:6.8pt;">61.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.4" style="padding-left:6.8pt;padding-right:6.8pt;">45.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.5" style="padding-left:6.8pt;padding-right:6.8pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.9.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.10">
<td class="ltx_td ltx_align_left" id="S4.T1.4.10.1" style="padding-left:6.8pt;padding-right:6.8pt;">GroundingDINO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.2" style="padding-left:6.8pt;padding-right:6.8pt;">1333</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.3" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.4" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.5" style="padding-left:6.8pt;padding-right:6.8pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.10.9" style="padding-left:6.8pt;padding-right:6.8pt;">55.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S4.T1.4.11.1" rowspan="13" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.11.1.1">Generalist</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.11.2" style="padding-left:6.8pt;padding-right:6.8pt;">Griffon-13B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib51" title=""><span class="ltx_text" style="font-size:90%;">51</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.3" style="padding-left:6.8pt;padding-right:6.8pt;">448</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.4" style="padding-left:6.8pt;padding-right:6.8pt;">40.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.5" style="padding-left:6.8pt;padding-right:6.8pt;">25.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.6" style="padding-left:6.8pt;padding-right:6.8pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.11.10" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.12">
<td class="ltx_td ltx_align_left" id="S4.T1.4.12.1" style="padding-left:6.8pt;padding-right:6.8pt;">Griffon v2 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.2" style="padding-left:6.8pt;padding-right:6.8pt;">1022</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.3" style="padding-left:6.8pt;padding-right:6.8pt;">54.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.4" style="padding-left:6.8pt;padding-right:6.8pt;">41.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.5" style="padding-left:6.8pt;padding-right:6.8pt;">38.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.12.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.13">
<td class="ltx_td ltx_align_left" id="S4.T1.4.13.1" style="padding-left:6.8pt;padding-right:6.8pt;">Lumen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.2" style="padding-left:6.8pt;padding-right:6.8pt;">448</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.3" style="padding-left:6.8pt;padding-right:6.8pt;">53.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.4" style="padding-left:6.8pt;padding-right:6.8pt;">35.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.5" style="padding-left:6.8pt;padding-right:6.8pt;">35.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.13.9" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.14">
<td class="ltx_td ltx_align_left" id="S4.T1.4.14.1" style="padding-left:6.8pt;padding-right:6.8pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.2" style="padding-left:6.8pt;padding-right:6.8pt;">Dynamic</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.3" style="padding-left:6.8pt;padding-right:6.8pt;">11.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.4" style="padding-left:6.8pt;padding-right:6.8pt;">19.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.5" style="padding-left:6.8pt;padding-right:6.8pt;">12.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.6" style="padding-left:6.8pt;padding-right:6.8pt;">29.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.7" style="padding-left:6.8pt;padding-right:6.8pt;">1.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.8" style="padding-left:6.8pt;padding-right:6.8pt;">3.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.14.9" style="padding-left:6.8pt;padding-right:6.8pt;">20.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.15">
<td class="ltx_td ltx_align_left" id="S4.T1.4.15.1" style="padding-left:6.8pt;padding-right:6.8pt;">InternVL2.5-78B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.2" style="padding-left:6.8pt;padding-right:6.8pt;">Dynamic</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.3" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.4" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.5" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.15.9" style="padding-left:6.8pt;padding-right:6.8pt;">31.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.16">
<td class="ltx_td ltx_align_left" id="S4.T1.4.16.1" style="padding-left:6.8pt;padding-right:6.8pt;">Qwen2.5-VL-72B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.2" style="padding-left:6.8pt;padding-right:6.8pt;">Dynamic</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.3" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.4" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.5" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.16.9" style="padding-left:6.8pt;padding-right:6.8pt;">43.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.17">
<td class="ltx_td ltx_align_left" id="S4.T1.4.17.1" style="padding-left:6.8pt;padding-right:6.8pt;">Gemini 1.5 Pro <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.2" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.3" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.4" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.5" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.6" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.7" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.8" style="padding-left:6.8pt;padding-right:6.8pt;">-</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.17.9" style="padding-left:6.8pt;padding-right:6.8pt;">36.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.18">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.4.18.1" style="padding-left:6.8pt;padding-right:6.8pt;">Griffon-G-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.2" style="padding-left:6.8pt;padding-right:6.8pt;">1022</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.3" style="padding-left:6.8pt;padding-right:6.8pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.4" style="padding-left:6.8pt;padding-right:6.8pt;">42.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.5" style="padding-left:6.8pt;padding-right:6.8pt;">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.6" style="padding-left:6.8pt;padding-right:6.8pt;">59.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.7" style="padding-left:6.8pt;padding-right:6.8pt;">11.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.8" style="padding-left:6.8pt;padding-right:6.8pt;">49.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.4.18.9" style="padding-left:6.8pt;padding-right:6.8pt;">43.8</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.19">
<td class="ltx_td ltx_align_left" id="S4.T1.4.19.1" style="padding-left:6.8pt;padding-right:6.8pt;">+ SFT</td>
<td class="ltx_td" id="S4.T1.4.19.2" style="padding-left:6.8pt;padding-right:6.8pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.3" style="padding-left:6.8pt;padding-right:6.8pt;">57.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.4" style="padding-left:6.8pt;padding-right:6.8pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.5" style="padding-left:6.8pt;padding-right:6.8pt;">40.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.6" style="padding-left:6.8pt;padding-right:6.8pt;">52.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.7" style="padding-left:6.8pt;padding-right:6.8pt;">10.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.8" style="padding-left:6.8pt;padding-right:6.8pt;">49.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.19.9" style="padding-left:6.8pt;padding-right:6.8pt;">45.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.20">
<td class="ltx_td ltx_align_left" id="S4.T1.4.20.1" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.1.1" style="background-color:#E6E6E6;">+ Vision-R1</span></td>
<td class="ltx_td" id="S4.T1.4.20.2" style="padding-left:6.8pt;padding-right:6.8pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.3" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.3.1" style="background-color:#E6E6E6;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.4" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.4.1" style="background-color:#E6E6E6;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.5" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.20.5.1" style="background-color:#E6E6E6;">42.0 <span class="ltx_text" id="S4.T1.4.20.5.1.1" style="color:#CC0000;">(+1.8)</span></span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.6" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.6.1" style="background-color:#E6E6E6;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.7" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.7.1" style="background-color:#E6E6E6;">17.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.8" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.20.8.1" style="background-color:#E6E6E6;">55.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.20.9" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.20.9.1" style="background-color:#E6E6E6;">46.3 <span class="ltx_text" id="S4.T1.4.20.9.1.1" style="color:#CC0000;">(+2.5)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.21">
<td class="ltx_td ltx_align_left" id="S4.T1.4.21.1" style="padding-left:6.8pt;padding-right:6.8pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.2" style="padding-left:6.8pt;padding-right:6.8pt;">Dynamic</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.3" style="padding-left:6.8pt;padding-right:6.8pt;">27.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.4" style="padding-left:6.8pt;padding-right:6.8pt;">18.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.5" style="padding-left:6.8pt;padding-right:6.8pt;">17.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.6" style="padding-left:6.8pt;padding-right:6.8pt;">48.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.7" style="padding-left:6.8pt;padding-right:6.8pt;">7.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.8" style="padding-left:6.8pt;padding-right:6.8pt;">38.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.21.9" style="padding-left:6.8pt;padding-right:6.8pt;">37.0†</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.22">
<td class="ltx_td ltx_align_left" id="S4.T1.4.22.1" style="padding-left:6.8pt;padding-right:6.8pt;">+ SFT</td>
<td class="ltx_td" id="S4.T1.4.22.2" style="padding-left:6.8pt;padding-right:6.8pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.3" style="padding-left:6.8pt;padding-right:6.8pt;">36.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.4" style="padding-left:6.8pt;padding-right:6.8pt;">24.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.5" style="padding-left:6.8pt;padding-right:6.8pt;">23.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.6" style="padding-left:6.8pt;padding-right:6.8pt;">49.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.7" style="padding-left:6.8pt;padding-right:6.8pt;">9.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.8" style="padding-left:6.8pt;padding-right:6.8pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.22.9" style="padding-left:6.8pt;padding-right:6.8pt;">35.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.23">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.4.23.1" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.1.1" style="background-color:#E6E6E6;">+ Vision-R1</span></td>
<td class="ltx_td ltx_border_bb" id="S4.T1.4.23.2" style="padding-left:6.8pt;padding-right:6.8pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.3" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.3.1" style="background-color:#E6E6E6;">40.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.4" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.4.1" style="background-color:#E6E6E6;">27.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.5" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.23.5.1" style="background-color:#E6E6E6;">26.6 <span class="ltx_text" id="S4.T1.4.23.5.1.1" style="color:#CC0000;">(+8.9)</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.6" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.6.1" style="background-color:#E6E6E6;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.7" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.7.1" style="background-color:#E6E6E6;">13.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.8" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text" id="S4.T1.4.23.8.1" style="background-color:#E6E6E6;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.4.23.9" style="padding-left:6.8pt;padding-right:6.8pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.4.23.9.1" style="background-color:#E6E6E6;">46.0 <span class="ltx_text" id="S4.T1.4.23.9.1.1" style="color:#CC0000;">(+9.0)</span></span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of object localization performance across various models on the MS COCO val2017 and ODINW-13 benchmark datasets.  The results are evaluated using the visual grounding setting from Qwen2.5-VL [3], reporting the average mean Average Precision (mAP) across all 13 ODINW-13 datasets.  The table includes results for both specialists (models designed specifically for object detection) and generalist (vision-language models) models.  It shows the performance of models before fine-tuning (SFT), after supervised fine-tuning (SFT), and after fine-tuning using the proposed Vision-R1 method.  Results for three representative datasets from ODINW-13 are shown, with detailed results for all 13 datasets available in the Appendix.  The symbol † denotes results reproduced using the official experimental settings.
> <details>
> <summary>read the caption</summary>
> Table 1: Object localization results on common detection benchmark MSCOCO val2017 [28] and ODINW-13 [27] benchmarks. We follow ODINW evaluation of [3] using the visual grounding setting and report the A⁢v⁢g.m⁢A⁢Pformulae-sequence𝐴𝑣𝑔𝑚𝐴𝑃Avg.\;mAPitalic_A italic_v italic_g . italic_m italic_A italic_P, which indicates the average mAP on all 13 evaluation datasets. The m⁢A⁢P𝑚𝐴𝑃mAPitalic_m italic_A italic_P of all datasets in ODINW-13 are detailed in the Appendix and three representative datasets are listed as below. †indicates we reproduce the result following the official setting.
> </details>





### In-depth insights


#### Vision-Guided RL
Vision-guided Reinforcement Learning (RL) leverages visual information to train agents, enabling them to interact with environments in a more nuanced way. It has the potential to enhance RL in scenarios where visual perception is crucial for decision-making. **By incorporating visual cues into the reward function or state representation, agents can learn to perform tasks more effectively and adapt to dynamic environments.** Challenges include the computational cost of processing visual data and the need for robust visual representations that are invariant to changes in lighting, viewpoint, and occlusion. **However, recent advancements in computer vision and deep learning have made vision-guided RL more feasible and accessible.** Vision-guided RL can be used to improve existing RL tasks, which can include self-driving or robotic manipulation.

#### Human-Free Tuning
**Human-free tuning** represents a compelling direction in AI, particularly for large vision-language models (LVLMs), addressing the high costs and challenges associated with human annotation. The conventional approach relies on labor-intensive processes to create preference datasets and train reward models, which can be both expensive and subjective. Moving towards automated methods could offer several advantages. Firstly, it drastically reduces the cost and time involved in data collection. Secondly, it eliminates the potential biases introduced by human annotators, leading to more objective and consistent model training. Thirdly, automated methods can scale more efficiently, allowing for continuous model improvement without the limitations imposed by human resources. However, challenges remain in designing robust, vision-guided reinforcement learning algorithms that accurately mimic human preferences without explicit human feedback, mitigate reward hacking, and ensure sustained improvement. Ultimately, human-free tuning holds the promise of democratizing AI development, making it more accessible and scalable while maintaining or even improving model performance and reliability.

#### Criterion Rewards
While the paper doesn't explicitly use the heading 'Criterion Rewards,' the core of Vision-R1 revolves around defining and applying such criteria. The success hinges on crafting **robust, task-relevant criteria** that guide the reinforcement learning process. Simply relying on generic metrics may lead to reward hacking or fail to capture the nuances of vision-language understanding. Further, Vision-R1's innovation lies in its **vision-guided approach to criterion design**, leveraging visual feedback to provide objective standards for reward calculation, rather than relying solely on subjective human preferences. This is a key departure from traditional RLHF methods. The use of **progressive rule refinement** is another important element, where the reward criteria themselves are dynamically adjusted during training. This strategy enables continuous model improvement and mitigates reward hacking. The paper carefully defines multi-dimensional reward signals, such as **Precision Rewards, Recall Rewards and Dual Format Rewards** to evaluate the model responses to object localization tasks. These reward functions helps to model the model to develop a deeper understanding of the task characteristics and generate accurate responses.

#### Progressive Rules
**Progressive rule refinement** is a compelling strategy for continuous model improvement, drawing inspiration from curriculum learning and human learning processes. It involves dynamically adjusting reward calculation criteria during training. **Differentiation** increases the contrast between predictions and rewards by penalizing low recall/IoU and rewarding high recall/IoU. **Staged progression** utilizes easier standards initially, gradually increasing difficulty to prevent reward hacking. Such staged training helps maintain optimization in the long term.

#### Enhanced LVLMs
While the term "Enhanced LVLMs" isn't explicitly present, the paper explores advancements in Large Vision-Language Models (LVLMs). The authors highlight the typical two-stage training paradigm (**pre-training and supervised fine-tuning**) and propose a novel approach, Vision-R1, to improve LVLM capabilities. A core issue addressed is the **high cost and challenge of creating high-quality, human-annotated preference data** for training reward models. Vision-R1 circumvents this by using vision-guided reinforcement learning, **leveraging curated instruction data and a criterion-driven reward function** to evaluate model completions based on visual task logic. The paper also introduces a **progressive rule refinement strategy** that dynamically adjusts reward criteria during training to mitigate reward hacking and ensure continuous model improvement. The goal is to **bridge the gap between LVLM performance and human expectations** by refining responses based on visual feedback, ultimately aiming for more robust and generalized object localization and reasoning.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.18013/x2.png)

> 🔼 This figure illustrates the Vision-R1 framework, a reinforcement learning algorithm for Large Vision-Language Models (LVLMs). It details the process of generating multiple completions for an object localization task, evaluating those completions using a criteria-driven reward function, and updating the model based on the results.  The reward function incorporates multiple factors, including a check for correct formatting and multi-dimensional feedback on the quality and precision of the model's predictions.  Color-coded bounding boxes highlight the correctness of predictions; green indicates a correct prediction, while red signifies an incorrect or missed prediction.  Solid lines denote predicted results, whereas dashed lines represent the ground truth annotations.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overall framework of Vision-R1. We start by analyzing the object localization tasks, and design our criteria-driven reward function based on the analysis. We illustrate the key step in one forward starting from inputting, generating all completions, calculating the reward with adjustment, to the final objective calculation and model update. Boxes in red indicate missed or wrong predictions, while the green ones are correct. Also, the solid line represents the predicted result, while the dashed line indicates the annotated ground truth.
> </details>



![](https://arxiv.org/html/2503.18013/x3.png)

> 🔼 This figure presents a qualitative comparison of object localization results between the original Qwen2.5-VL-7B model and the model fine-tuned with Vision-R1.  It visually demonstrates the improvements achieved by Vision-R1, highlighting how it reduces redundant and incorrect predictions, improves the recall by correctly identifying more objects, and leads to more accurate bounding boxes around the detected objects. The figure showcases several example images with their corresponding predictions from both models, allowing for a direct visual comparison of the quality and accuracy of object localization.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative analysis results using Qwen2.5-VL-7B
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.2">
<tr class="ltx_tr" id="S4.T2.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T2.2.1.1" style="padding-left:12.0pt;padding-right:12.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.2" style="padding-left:12.0pt;padding-right:12.0pt;">boggleBoards</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.3" style="padding-left:12.0pt;padding-right:12.0pt;">MountainDewCommercial</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.4" style="padding-left:12.0pt;padding-right:12.0pt;">ThermalCheetah</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.5" style="padding-left:12.0pt;padding-right:12.0pt;">Vector</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.1.6" style="padding-left:12.0pt;padding-right:12.0pt;">Avg.</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.2.1" style="padding-left:12.0pt;padding-right:12.0pt;">GroundingDINO <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.2" style="padding-left:12.0pt;padding-right:12.0pt;">0.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.3" style="padding-left:12.0pt;padding-right:12.0pt;">18.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.4" style="padding-left:12.0pt;padding-right:12.0pt;">12.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.5" style="padding-left:12.0pt;padding-right:12.0pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.2.6" style="padding-left:12.0pt;padding-right:12.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.3.1" style="padding-left:12.0pt;padding-right:12.0pt;">InternVL2.5-8B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.2" style="padding-left:12.0pt;padding-right:12.0pt;">0.1</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.3" style="padding-left:12.0pt;padding-right:12.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.4" style="padding-left:12.0pt;padding-right:12.0pt;">0.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.5" style="padding-left:12.0pt;padding-right:12.0pt;">6.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.3.6" style="padding-left:12.0pt;padding-right:12.0pt;">1.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.4.1" style="padding-left:12.0pt;padding-right:12.0pt;">Griffon-G-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.2" style="padding-left:12.0pt;padding-right:12.0pt;">3.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.3" style="padding-left:12.0pt;padding-right:12.0pt;">28.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.4" style="padding-left:12.0pt;padding-right:12.0pt;">8.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.5" style="padding-left:12.0pt;padding-right:12.0pt;">8.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.4.6" style="padding-left:12.0pt;padding-right:12.0pt;">12.2</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.5.1" style="padding-left:12.0pt;padding-right:12.0pt;">+ SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.2" style="padding-left:12.0pt;padding-right:12.0pt;">2.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.3" style="padding-left:12.0pt;padding-right:12.0pt;">13.7</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.4" style="padding-left:12.0pt;padding-right:12.0pt;">9.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.5" style="padding-left:12.0pt;padding-right:12.0pt;">24.0</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.5.6" style="padding-left:12.0pt;padding-right:12.0pt;">12.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.6" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.6.1" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.6.1.1" style="background-color:#E6E6E6;">+ Vision-R1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.6.2.1" style="background-color:#E6E6E6;">3.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.6.3.1" style="background-color:#E6E6E6;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.6.4.1" style="background-color:#E6E6E6;">7.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.6.5.1" style="background-color:#E6E6E6;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.6.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.6.6.1" style="background-color:#E6E6E6;">19.3<span class="ltx_text" id="S4.T2.2.6.6.1.1" style="color:#CC0000;"> (+7.1)</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.2.7.1" style="padding-left:12.0pt;padding-right:12.0pt;">Qwen2.5-VL-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.7.2" style="padding-left:12.0pt;padding-right:12.0pt;">4.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.7.3" style="padding-left:12.0pt;padding-right:12.0pt;">3.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.7.4" style="padding-left:12.0pt;padding-right:12.0pt;">7.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.7.5" style="padding-left:12.0pt;padding-right:12.0pt;">51.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.7.6" style="padding-left:12.0pt;padding-right:12.0pt;">16.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.8.1" style="padding-left:12.0pt;padding-right:12.0pt;">+ SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.2" style="padding-left:12.0pt;padding-right:12.0pt;">8.4</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.3" style="padding-left:12.0pt;padding-right:12.0pt;">6.5</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.4" style="padding-left:12.0pt;padding-right:12.0pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.5" style="padding-left:12.0pt;padding-right:12.0pt;">48.3</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.8.6" style="padding-left:12.0pt;padding-right:12.0pt;">17.9</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.9" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T2.2.9.1" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.9.1.1" style="background-color:#E6E6E6;">+ Vision-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.9.2" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.9.2.1" style="background-color:#E6E6E6;">8.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.9.3" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.9.3.1" style="background-color:#E6E6E6;">13.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.9.4" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.9.4.1" style="background-color:#E6E6E6;">9.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.9.5" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text" id="S4.T2.2.9.5.1" style="background-color:#E6E6E6;">54.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.2.9.6" style="padding-left:12.0pt;padding-right:12.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.9.6.1" style="background-color:#E6E6E6;">21.7<span class="ltx_text" id="S4.T2.2.9.6.1.1" style="color:#CC0000;"> (+4.8)</span></span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of out-of-domain object localization experiments.  The datasets used,  'boggleBoards', 'MountainDewCommercial', 'ThermalCheetah', and 'Vector', are all drawn from the ODINW benchmark [27], but are non-overlapping with the in-domain training data. The evaluation metric used is Average Precision (AP) which is computed by following the grounding setting defined in reference [3]. The table compares different models, including the baseline model and models fine-tuned using both supervised fine-tuning (SFT) and Vision-R1. This allows for a direct comparison of the effectiveness of Vision-R1 in improving the models' ability to generalize to unseen data.
> <details>
> <summary>read the caption</summary>
> Table 2: Result on out-of-domain datasets collected from non-overlapping ODINW [27]. We follow the grounding setting in [3] for evaluation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.2">
<tr class="ltx_tr" id="S4.T3.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.2.2.3" style="padding-left:12.0pt;padding-right:12.0pt;">Matcher Choice</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.1.1.1" style="padding-left:12.0pt;padding-right:12.0pt;"><math alttext="mAP" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mrow id="S4.T3.1.1.1.m1.1.1" xref="S4.T3.1.1.1.m1.1.1.cmml"><mi id="S4.T3.1.1.1.m1.1.1.2" xref="S4.T3.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T3.1.1.1.m1.1.1.1" xref="S4.T3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.1.1.1.m1.1.1.3" xref="S4.T3.1.1.1.m1.1.1.3.cmml">A</mi><mo id="S4.T3.1.1.1.m1.1.1.1a" xref="S4.T3.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.1.1.1.m1.1.1.4" xref="S4.T3.1.1.1.m1.1.1.4.cmml">P</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><apply id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1"><times id="S4.T3.1.1.1.m1.1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1.1"></times><ci id="S4.T3.1.1.1.m1.1.1.2.cmml" xref="S4.T3.1.1.1.m1.1.1.2">𝑚</ci><ci id="S4.T3.1.1.1.m1.1.1.3.cmml" xref="S4.T3.1.1.1.m1.1.1.3">𝐴</ci><ci id="S4.T3.1.1.1.m1.1.1.4.cmml" xref="S4.T3.1.1.1.m1.1.1.4">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">mAP</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">italic_m italic_A italic_P</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.2.2" style="padding-left:12.0pt;padding-right:12.0pt;"><math alttext="AR100" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mrow id="S4.T3.2.2.2.m1.1.1" xref="S4.T3.2.2.2.m1.1.1.cmml"><mi id="S4.T3.2.2.2.m1.1.1.2" xref="S4.T3.2.2.2.m1.1.1.2.cmml">A</mi><mo id="S4.T3.2.2.2.m1.1.1.1" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mi id="S4.T3.2.2.2.m1.1.1.3" xref="S4.T3.2.2.2.m1.1.1.3.cmml">R</mi><mo id="S4.T3.2.2.2.m1.1.1.1a" xref="S4.T3.2.2.2.m1.1.1.1.cmml">⁢</mo><mn id="S4.T3.2.2.2.m1.1.1.4" xref="S4.T3.2.2.2.m1.1.1.4.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><apply id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1"><times id="S4.T3.2.2.2.m1.1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1.1"></times><ci id="S4.T3.2.2.2.m1.1.1.2.cmml" xref="S4.T3.2.2.2.m1.1.1.2">𝐴</ci><ci id="S4.T3.2.2.2.m1.1.1.3.cmml" xref="S4.T3.2.2.2.m1.1.1.3">𝑅</ci><cn id="S4.T3.2.2.2.m1.1.1.4.cmml" type="integer" xref="S4.T3.2.2.2.m1.1.1.4">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">AR100</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">italic_A italic_R 100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.2.3.1" style="padding-left:12.0pt;padding-right:12.0pt;">Box-only</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.2" style="padding-left:12.0pt;padding-right:12.0pt;">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.3.3" style="padding-left:12.0pt;padding-right:12.0pt;">54.2</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.2.4.1" style="padding-left:12.0pt;padding-right:12.0pt;">Box &amp; Label</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.4.2" style="padding-left:12.0pt;padding-right:12.0pt;">41.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.4.3" style="padding-left:12.0pt;padding-right:12.0pt;">53.4</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different box matching methods used in the Vision-R1 model for Large Vision-Language Models (LVLMs).  It investigates the impact of the choice of box matching technique on the model's overall performance in object localization tasks. The study likely contrasts different matching algorithms (e.g., Hungarian matching, box-only matching, or a combined box and label matching), showing their respective effects on metrics such as mean Average Precision (mAP) and Average Recall (AR). This helps determine which matching strategy optimizes the Vision-R1 model's ability to accurately locate and classify objects within images.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on different box matcher for LVLMs.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.4">
<tr class="ltx_tr" id="S4.T4.4.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.5" style="padding-left:7.0pt;padding-right:7.0pt;">precision</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.4.4.6" style="padding-left:7.0pt;padding-right:7.0pt;">recall</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="mAP" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mrow id="S4.T4.1.1.1.m1.1.1" xref="S4.T4.1.1.1.m1.1.1.cmml"><mi id="S4.T4.1.1.1.m1.1.1.2" xref="S4.T4.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T4.1.1.1.m1.1.1.1" xref="S4.T4.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.m1.1.1.3" xref="S4.T4.1.1.1.m1.1.1.3.cmml">A</mi><mo id="S4.T4.1.1.1.m1.1.1.1a" xref="S4.T4.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.1.1.1.m1.1.1.4" xref="S4.T4.1.1.1.m1.1.1.4.cmml">P</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><apply id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1"><times id="S4.T4.1.1.1.m1.1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1.1"></times><ci id="S4.T4.1.1.1.m1.1.1.2.cmml" xref="S4.T4.1.1.1.m1.1.1.2">𝑚</ci><ci id="S4.T4.1.1.1.m1.1.1.3.cmml" xref="S4.T4.1.1.1.m1.1.1.3">𝐴</ci><ci id="S4.T4.1.1.1.m1.1.1.4.cmml" xref="S4.T4.1.1.1.m1.1.1.4">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">mAP</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">italic_m italic_A italic_P</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AP^{50}" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mrow id="S4.T4.2.2.2.m1.1.1" xref="S4.T4.2.2.2.m1.1.1.cmml"><mi id="S4.T4.2.2.2.m1.1.1.2" xref="S4.T4.2.2.2.m1.1.1.2.cmml">A</mi><mo id="S4.T4.2.2.2.m1.1.1.1" xref="S4.T4.2.2.2.m1.1.1.1.cmml">⁢</mo><msup id="S4.T4.2.2.2.m1.1.1.3" xref="S4.T4.2.2.2.m1.1.1.3.cmml"><mi id="S4.T4.2.2.2.m1.1.1.3.2" xref="S4.T4.2.2.2.m1.1.1.3.2.cmml">P</mi><mn id="S4.T4.2.2.2.m1.1.1.3.3" xref="S4.T4.2.2.2.m1.1.1.3.3.cmml">50</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><apply id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1"><times id="S4.T4.2.2.2.m1.1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1.1"></times><ci id="S4.T4.2.2.2.m1.1.1.2.cmml" xref="S4.T4.2.2.2.m1.1.1.2">𝐴</ci><apply id="S4.T4.2.2.2.m1.1.1.3.cmml" xref="S4.T4.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.2.2.2.m1.1.1.3.1.cmml" xref="S4.T4.2.2.2.m1.1.1.3">superscript</csymbol><ci id="S4.T4.2.2.2.m1.1.1.3.2.cmml" xref="S4.T4.2.2.2.m1.1.1.3.2">𝑃</ci><cn id="S4.T4.2.2.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.2.2.2.m1.1.1.3.3">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">AP^{50}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">italic_A italic_P start_POSTSUPERSCRIPT 50 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AP^{75}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mrow id="S4.T4.3.3.3.m1.1.1" xref="S4.T4.3.3.3.m1.1.1.cmml"><mi id="S4.T4.3.3.3.m1.1.1.2" xref="S4.T4.3.3.3.m1.1.1.2.cmml">A</mi><mo id="S4.T4.3.3.3.m1.1.1.1" xref="S4.T4.3.3.3.m1.1.1.1.cmml">⁢</mo><msup id="S4.T4.3.3.3.m1.1.1.3" xref="S4.T4.3.3.3.m1.1.1.3.cmml"><mi id="S4.T4.3.3.3.m1.1.1.3.2" xref="S4.T4.3.3.3.m1.1.1.3.2.cmml">P</mi><mn id="S4.T4.3.3.3.m1.1.1.3.3" xref="S4.T4.3.3.3.m1.1.1.3.3.cmml">75</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><apply id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1"><times id="S4.T4.3.3.3.m1.1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1.1"></times><ci id="S4.T4.3.3.3.m1.1.1.2.cmml" xref="S4.T4.3.3.3.m1.1.1.2">𝐴</ci><apply id="S4.T4.3.3.3.m1.1.1.3.cmml" xref="S4.T4.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T4.3.3.3.m1.1.1.3.1.cmml" xref="S4.T4.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S4.T4.3.3.3.m1.1.1.3.2.cmml" xref="S4.T4.3.3.3.m1.1.1.3.2">𝑃</ci><cn id="S4.T4.3.3.3.m1.1.1.3.3.cmml" type="integer" xref="S4.T4.3.3.3.m1.1.1.3.3">75</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">AP^{75}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">italic_A italic_P start_POSTSUPERSCRIPT 75 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AR100" class="ltx_Math" display="inline" id="S4.T4.4.4.4.m1.1"><semantics id="S4.T4.4.4.4.m1.1a"><mrow id="S4.T4.4.4.4.m1.1.1" xref="S4.T4.4.4.4.m1.1.1.cmml"><mi id="S4.T4.4.4.4.m1.1.1.2" xref="S4.T4.4.4.4.m1.1.1.2.cmml">A</mi><mo id="S4.T4.4.4.4.m1.1.1.1" xref="S4.T4.4.4.4.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.m1.1.1.3" xref="S4.T4.4.4.4.m1.1.1.3.cmml">R</mi><mo id="S4.T4.4.4.4.m1.1.1.1a" xref="S4.T4.4.4.4.m1.1.1.1.cmml">⁢</mo><mn id="S4.T4.4.4.4.m1.1.1.4" xref="S4.T4.4.4.4.m1.1.1.4.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.m1.1b"><apply id="S4.T4.4.4.4.m1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1"><times id="S4.T4.4.4.4.m1.1.1.1.cmml" xref="S4.T4.4.4.4.m1.1.1.1"></times><ci id="S4.T4.4.4.4.m1.1.1.2.cmml" xref="S4.T4.4.4.4.m1.1.1.2">𝐴</ci><ci id="S4.T4.4.4.4.m1.1.1.3.cmml" xref="S4.T4.4.4.4.m1.1.1.3">𝑅</ci><cn id="S4.T4.4.4.4.m1.1.1.4.cmml" type="integer" xref="S4.T4.4.4.4.m1.1.1.4">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.m1.1c">AR100</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.m1.1d">italic_A italic_R 100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S4.T4.4.5.1" style="padding-left:7.0pt;padding-right:7.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.2" style="padding-left:7.0pt;padding-right:7.0pt;">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.3" style="padding-left:7.0pt;padding-right:7.0pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.4" style="padding-left:7.0pt;padding-right:7.0pt;">42.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.4.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">52.2</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.6">
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.1" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_border_r" id="S4.T4.4.6.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.3" style="padding-left:7.0pt;padding-right:7.0pt;">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.4" style="padding-left:7.0pt;padding-right:7.0pt;">55.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.5" style="padding-left:7.0pt;padding-right:7.0pt;">45.1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.6.6" style="padding-left:7.0pt;padding-right:7.0pt;">49.6</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.1" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T4.4.7.2" style="padding-left:7.0pt;padding-right:7.0pt;">✓</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.3" style="padding-left:7.0pt;padding-right:7.0pt;">42.1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.4" style="padding-left:7.0pt;padding-right:7.0pt;">58.7</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.5" style="padding-left:7.0pt;padding-right:7.0pt;">45.3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.4.7.6" style="padding-left:7.0pt;padding-right:7.0pt;">54.2</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study investigating the impact of different reward function components on the model's performance.  It shows how removing or modifying parts of the reward function (specifically, the recall and precision rewards) affects the overall performance metrics such as precision, recall, mean Average Precision (mAP), average precision at 50% IoU (AP50), average precision at 75% IoU (AP75), and average recall at 100 (AR100). The baseline model is compared against versions with altered reward functions to isolate the contribution of each component to the overall performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Ablation study on Reward Function Design.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.4">
<tr class="ltx_tr" id="S4.T5.4.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T5.4.4.5" style="padding-left:7.0pt;padding-right:7.0pt;">STEP</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="mAP" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mrow id="S4.T5.1.1.1.m1.1.1" xref="S4.T5.1.1.1.m1.1.1.cmml"><mi id="S4.T5.1.1.1.m1.1.1.2" xref="S4.T5.1.1.1.m1.1.1.2.cmml">m</mi><mo id="S4.T5.1.1.1.m1.1.1.1" xref="S4.T5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T5.1.1.1.m1.1.1.3" xref="S4.T5.1.1.1.m1.1.1.3.cmml">A</mi><mo id="S4.T5.1.1.1.m1.1.1.1a" xref="S4.T5.1.1.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T5.1.1.1.m1.1.1.4" xref="S4.T5.1.1.1.m1.1.1.4.cmml">P</mi></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><apply id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1"><times id="S4.T5.1.1.1.m1.1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1.1"></times><ci id="S4.T5.1.1.1.m1.1.1.2.cmml" xref="S4.T5.1.1.1.m1.1.1.2">𝑚</ci><ci id="S4.T5.1.1.1.m1.1.1.3.cmml" xref="S4.T5.1.1.1.m1.1.1.3">𝐴</ci><ci id="S4.T5.1.1.1.m1.1.1.4.cmml" xref="S4.T5.1.1.1.m1.1.1.4">𝑃</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">mAP</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">italic_m italic_A italic_P</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AP^{50}" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mrow id="S4.T5.2.2.2.m1.1.1" xref="S4.T5.2.2.2.m1.1.1.cmml"><mi id="S4.T5.2.2.2.m1.1.1.2" xref="S4.T5.2.2.2.m1.1.1.2.cmml">A</mi><mo id="S4.T5.2.2.2.m1.1.1.1" xref="S4.T5.2.2.2.m1.1.1.1.cmml">⁢</mo><msup id="S4.T5.2.2.2.m1.1.1.3" xref="S4.T5.2.2.2.m1.1.1.3.cmml"><mi id="S4.T5.2.2.2.m1.1.1.3.2" xref="S4.T5.2.2.2.m1.1.1.3.2.cmml">P</mi><mn id="S4.T5.2.2.2.m1.1.1.3.3" xref="S4.T5.2.2.2.m1.1.1.3.3.cmml">50</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><apply id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1"><times id="S4.T5.2.2.2.m1.1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1.1"></times><ci id="S4.T5.2.2.2.m1.1.1.2.cmml" xref="S4.T5.2.2.2.m1.1.1.2">𝐴</ci><apply id="S4.T5.2.2.2.m1.1.1.3.cmml" xref="S4.T5.2.2.2.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T5.2.2.2.m1.1.1.3.1.cmml" xref="S4.T5.2.2.2.m1.1.1.3">superscript</csymbol><ci id="S4.T5.2.2.2.m1.1.1.3.2.cmml" xref="S4.T5.2.2.2.m1.1.1.3.2">𝑃</ci><cn id="S4.T5.2.2.2.m1.1.1.3.3.cmml" type="integer" xref="S4.T5.2.2.2.m1.1.1.3.3">50</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">AP^{50}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">italic_A italic_P start_POSTSUPERSCRIPT 50 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AP^{75}" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mrow id="S4.T5.3.3.3.m1.1.1" xref="S4.T5.3.3.3.m1.1.1.cmml"><mi id="S4.T5.3.3.3.m1.1.1.2" xref="S4.T5.3.3.3.m1.1.1.2.cmml">A</mi><mo id="S4.T5.3.3.3.m1.1.1.1" xref="S4.T5.3.3.3.m1.1.1.1.cmml">⁢</mo><msup id="S4.T5.3.3.3.m1.1.1.3" xref="S4.T5.3.3.3.m1.1.1.3.cmml"><mi id="S4.T5.3.3.3.m1.1.1.3.2" xref="S4.T5.3.3.3.m1.1.1.3.2.cmml">P</mi><mn id="S4.T5.3.3.3.m1.1.1.3.3" xref="S4.T5.3.3.3.m1.1.1.3.3.cmml">75</mn></msup></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><apply id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1"><times id="S4.T5.3.3.3.m1.1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1.1"></times><ci id="S4.T5.3.3.3.m1.1.1.2.cmml" xref="S4.T5.3.3.3.m1.1.1.2">𝐴</ci><apply id="S4.T5.3.3.3.m1.1.1.3.cmml" xref="S4.T5.3.3.3.m1.1.1.3"><csymbol cd="ambiguous" id="S4.T5.3.3.3.m1.1.1.3.1.cmml" xref="S4.T5.3.3.3.m1.1.1.3">superscript</csymbol><ci id="S4.T5.3.3.3.m1.1.1.3.2.cmml" xref="S4.T5.3.3.3.m1.1.1.3.2">𝑃</ci><cn id="S4.T5.3.3.3.m1.1.1.3.3.cmml" type="integer" xref="S4.T5.3.3.3.m1.1.1.3.3">75</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">AP^{75}</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">italic_A italic_P start_POSTSUPERSCRIPT 75 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;"><math alttext="AR100" class="ltx_Math" display="inline" id="S4.T5.4.4.4.m1.1"><semantics id="S4.T5.4.4.4.m1.1a"><mrow id="S4.T5.4.4.4.m1.1.1" xref="S4.T5.4.4.4.m1.1.1.cmml"><mi id="S4.T5.4.4.4.m1.1.1.2" xref="S4.T5.4.4.4.m1.1.1.2.cmml">A</mi><mo id="S4.T5.4.4.4.m1.1.1.1" xref="S4.T5.4.4.4.m1.1.1.1.cmml">⁢</mo><mi id="S4.T5.4.4.4.m1.1.1.3" xref="S4.T5.4.4.4.m1.1.1.3.cmml">R</mi><mo id="S4.T5.4.4.4.m1.1.1.1a" xref="S4.T5.4.4.4.m1.1.1.1.cmml">⁢</mo><mn id="S4.T5.4.4.4.m1.1.1.4" xref="S4.T5.4.4.4.m1.1.1.4.cmml">100</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T5.4.4.4.m1.1b"><apply id="S4.T5.4.4.4.m1.1.1.cmml" xref="S4.T5.4.4.4.m1.1.1"><times id="S4.T5.4.4.4.m1.1.1.1.cmml" xref="S4.T5.4.4.4.m1.1.1.1"></times><ci id="S4.T5.4.4.4.m1.1.1.2.cmml" xref="S4.T5.4.4.4.m1.1.1.2">𝐴</ci><ci id="S4.T5.4.4.4.m1.1.1.3.cmml" xref="S4.T5.4.4.4.m1.1.1.3">𝑅</ci><cn id="S4.T5.4.4.4.m1.1.1.4.cmml" type="integer" xref="S4.T5.4.4.4.m1.1.1.4">100</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.4.4.4.m1.1c">AR100</annotation><annotation encoding="application/x-llamapun" id="S4.T5.4.4.4.m1.1d">italic_A italic_R 100</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.4.5.1" style="padding-left:7.0pt;padding-right:7.0pt;">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.5.2" style="padding-left:7.0pt;padding-right:7.0pt;">40.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.5.3" style="padding-left:7.0pt;padding-right:7.0pt;">57.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.5.4" style="padding-left:7.0pt;padding-right:7.0pt;">42.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.4.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">52.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.6.1" style="padding-left:7.0pt;padding-right:7.0pt;">1/3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.2" style="padding-left:7.0pt;padding-right:7.0pt;">41.5</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.3" style="padding-left:7.0pt;padding-right:7.0pt;">58.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.4" style="padding-left:7.0pt;padding-right:7.0pt;">44.8</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.6.5" style="padding-left:7.0pt;padding-right:7.0pt;">54.6</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.4.7.1" style="padding-left:7.0pt;padding-right:7.0pt;">1/2</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.2" style="padding-left:7.0pt;padding-right:7.0pt;">42.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.3" style="padding-left:7.0pt;padding-right:7.0pt;">58.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.4" style="padding-left:7.0pt;padding-right:7.0pt;">45.3</td>
<td class="ltx_td ltx_align_center" id="S4.T5.4.7.5" style="padding-left:7.0pt;padding-right:7.0pt;">54.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.4.8">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T5.4.8.1" style="padding-left:7.0pt;padding-right:7.0pt;">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.8.2" style="padding-left:7.0pt;padding-right:7.0pt;">39.9</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.8.3" style="padding-left:7.0pt;padding-right:7.0pt;">57.0</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.8.4" style="padding-left:7.0pt;padding-right:7.0pt;">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.4.8.5" style="padding-left:7.0pt;padding-right:7.0pt;">56.7</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the Progressive Rule Refinement strategy used in the Vision-R1 model.  The study investigates how varying the training stage at which reward calculation criteria adjustments begin impacts the model's performance.  Different starting points for these adjustments (STEP) are tested, showing how the timing of the refinement affects the model's ability to achieve high precision and recall in object localization tasks.  The impact on various performance metrics (MAP, AP50, AP75, AR100) is shown for each setting.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation study on Progressive Rule Refinement. STEP determines the training stage at which adjustments begin.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.2">
<tr class="ltx_tr" id="S4.T6.2.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S4.T6.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;">GQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;">AI2D</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;">ChartQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;">SEED</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">Griffon-G-7B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">64.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">70.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">68.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">71.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T6.2.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">+ SFT</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">63.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.4" style="padding-left:5.0pt;padding-right:5.0pt;">67.5</td>
<td class="ltx_td ltx_align_center" id="S4.T6.2.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">72.2</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.4" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S4.T6.2.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.2.4.1.1" style="background-color:#E6E6E6;">+ Vision-R1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.2.4.2.1" style="background-color:#E6E6E6;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.2.4.3.1" style="background-color:#E6E6E6;">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.2.4.4.1" style="background-color:#E6E6E6;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.2.4.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text" id="S4.T6.2.4.5.1" style="background-color:#E6E6E6;">71.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study assessing the impact of Vision-R1 on the generalization capabilities of large vision-language models (LVLMs) in question answering (QA) tasks.  It compares the performance of Griffon-G-7B and Qwen2.5-VL-7B models before and after fine-tuning with Vision-R1 and standard supervised fine-tuning (SFT). The evaluation uses the VLMEvalKit toolkit across four diverse QA benchmarks: GQA (general question answering), AI2D (diagram understanding), ChartQA (chart question answering), and SEED (interdisciplinary QA). This allows for assessment of the effect of Vision-R1 on various aspects of language understanding and reasoning in the context of image understanding. The metrics used are likely accuracy-based for each QA subset.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation on generalization QA capabilities. Results are all produced by VLMEvalKit under the same setting.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S1.T7.2">
<tr class="ltx_tr" id="S1.T7.2.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T7.2.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.1.1.1" style="font-size:144%;">Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T7.2.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.1.2.1" style="font-size:144%;">Num.</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T7.2.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.1.3.1" style="font-size:144%;">Source</span></td>
</tr>
<tr class="ltx_tr" id="S1.T7.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T7.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.2.1.1" style="font-size:144%;">Object Detection</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S1.T7.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.2.2.1" style="font-size:144%;">30K</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S1.T7.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S1.T7.2.2.3.1" style="font-size:144%;">COCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T7.2.2.3.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="S1.T7.2.2.3.3.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T7.2.3">
<td class="ltx_td ltx_align_center" id="S1.T7.2.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.3.1.1" style="font-size:144%;">Visual Grounding</span></td>
<td class="ltx_td ltx_align_center" id="S1.T7.2.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.3.2.1" style="font-size:144%;">9K</span></td>
<td class="ltx_td ltx_align_left" id="S1.T7.2.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S1.T7.2.3.3.1" style="font-size:144%;">ODINW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T7.2.3.3.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S1.T7.2.3.3.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S1.T7.2.3.3.4" style="font-size:144%;">, V3Det </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T7.2.3.3.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S1.T7.2.3.3.6.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="S1.T7.2.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T7.2.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.4.1.1" style="font-size:144%;">REC</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S1.T7.2.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S1.T7.2.4.2.1" style="font-size:144%;">10K</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S1.T7.2.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S1.T7.2.4.3.1" style="font-size:144%;">RefCOCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T7.2.4.3.2.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="S1.T7.2.4.3.3.2" style="font-size:144%;">]</span></cite><span class="ltx_text" id="S1.T7.2.4.3.4" style="font-size:144%;">, Visual Genome </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S1.T7.2.4.3.5.1" style="font-size:144%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.18013v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S1.T7.2.4.3.6.2" style="font-size:144%;">]</span></cite>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the composition of the training dataset used for the Vision-R1 model.  It breaks down the number of samples used for each task type: Object Detection (primarily from MS COCO), Visual Grounding (from ODINW and V3Det), and Referring Expression Comprehension (from RefCOCO and Visual Genome).  The dataset is designed to be diverse and challenging, containing various scenarios and object categories to improve the model's generalization capabilities.
> <details>
> <summary>read the caption</summary>
> Table 7: Details of constructed training dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T8.2">
<tr class="ltx_tr" id="S3.T8.2.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T8.2.1.1"><span class="ltx_text" id="S3.T8.2.1.1.1" style="font-size:144%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T8.2.1.2"><span class="ltx_text" id="S3.T8.2.1.2.1" style="font-size:144%;">Task</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T8.2.1.3"><span class="ltx_text" id="S3.T8.2.1.3.1" style="font-size:144%;">Template</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.2.1" rowspan="3"><span class="ltx_text" id="S3.T8.2.2.1.1" style="font-size:144%;">Griffon-G</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.2.2"><span class="ltx_text" id="S3.T8.2.2.2.1" style="font-size:144%;">Object Detection</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.2.2.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.2.3.1">
<tr class="ltx_tr" id="S3.T8.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.2.3.1.1.1"><span class="ltx_text" id="S3.T8.2.2.3.1.1.1.1" style="font-size:144%;">Examine the image for any objects from the category set. Report the coordinates of each</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.2.3.1.2.1"><span class="ltx_text" id="S3.T8.2.2.3.1.2.1.1" style="font-size:144%;">detected object. The category set includes {category list}.</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.3.1"><span class="ltx_text" id="S3.T8.2.3.1.1" style="font-size:144%;">Visual Grounding</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.2.3.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.3.2.1">
<tr class="ltx_tr" id="S3.T8.2.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.3.2.1.1.1"><span class="ltx_text" id="S3.T8.2.3.2.1.1.1.1" style="font-size:144%;">Locate the exact position of {category} in the picture, if you can.</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.4.1"><span class="ltx_text" id="S3.T8.2.4.1.1" style="font-size:144%;">REC</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.2.4.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.4.2.1">
<tr class="ltx_tr" id="S3.T8.2.4.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.4.2.1.1.1"><span class="ltx_text" id="S3.T8.2.4.2.1.1.1.1" style="font-size:144%;">Can you point out {ref expression} in the image and provide the coordinates of its</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.4.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.4.2.1.2.1"><span class="ltx_text" id="S3.T8.2.4.2.1.2.1.1" style="font-size:144%;">location?</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T8.2.5.1" rowspan="4"><span class="ltx_text" id="S3.T8.2.5.1.1" style="font-size:144%;">Qwen2.5-VL</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T8.2.5.2"><span class="ltx_text" id="S3.T8.2.5.2.1" style="font-size:144%;">Object Detection</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T8.2.5.3">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.5.3.1">
<tr class="ltx_tr" id="S3.T8.2.5.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.5.3.1.1.1"><span class="ltx_text" id="S3.T8.2.5.3.1.1.1.1" style="font-size:144%;">Locate every item from the category list in the image and output the coordinates in</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.5.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.5.3.1.2.1"><span class="ltx_text" id="S3.T8.2.5.3.1.2.1.1" style="font-size:144%;">JSON format. The category set includes {category list}.</span></td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T8.2.6.1">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.6.1.1">
<tr class="ltx_tr" id="S3.T8.2.6.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.6.1.1.1.1"><span class="ltx_text" id="S3.T8.2.6.1.1.1.1.1" style="font-size:144%;">Visual Grounding</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.6.1.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T8.2.6.1.1.2.1"><span class="ltx_text" id="S3.T8.2.6.1.1.2.1.1" style="font-size:144%;">REC</span></td>
</tr>
</table>
</td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T8.2.6.2">
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.6.2.1">
<tr class="ltx_tr" id="S3.T8.2.6.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.6.2.1.1.1"><span class="ltx_text" id="S3.T8.2.6.2.1.1.1.1" style="font-size:144%;">Locate every {category} in the image and output the coordinates in JSON format.</span></td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the instruction templates used for training and evaluating different large vision-language models (LVLMs) on various object localization tasks.  It shows the specific instructions given to each model (Griffon-G and Qwen2.5-VL) for object detection, visual grounding, and referring expression comprehension tasks.  The templates detail the expected format of the model's output, including coordinate systems and category labels, illustrating how the task instructions were tailored to each model and task type for consistent and comparable results.
> <details>
> <summary>read the caption</summary>
> Table 8: Training and evaluation templates for each model and task.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.2.3.1">
<tr class="ltx_tr" id="S3.T8.2.2.3.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.2.3.1.1.1"><span class="ltx_text" id="S3.T8.2.2.3.1.1.1.1" style="font-size:144%;">Examine the image for any objects from the category set. Report the coordinates of each</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.2.3.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.2.3.1.2.1"><span class="ltx_text" id="S3.T8.2.2.3.1.2.1.1" style="font-size:144%;">detected object. The category set includes {category list}.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a detailed breakdown of the performance of different large vision-language models (LVLMs) on the ODINW-13 benchmark dataset.  It compares the performance of various models, including InternVL-2.5-8B, Qwen2.5-VL-7B, Griffon-G-7B, and their fine-tuned versions using supervised fine-tuning (SFT) and the Vision-R1 method. The results are presented in terms of mean average precision (mAP) across various metrics (AP50, AP75, etc.) for each model on all 13 datasets within the ODINW-13 benchmark. This allows for a comprehensive comparison of the effectiveness of Vision-R1 in enhancing the object localization capabilities of different LVLMs.
> <details>
> <summary>read the caption</summary>
> Table 9: Detailed results on ODINW-13 dataset.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.3.2.1">
<tr class="ltx_tr" id="S3.T8.2.3.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.3.2.1.1.1"><span class="ltx_text" id="S3.T8.2.3.2.1.1.1.1" style="font-size:144%;">Locate the exact position of {category} in the picture, if you can.</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study results on the progressive rule refinement strategy using the Qwen2.5-VL-7B model. It shows how different settings of the STEP parameter (which determines when the training process transitions to the advanced phase with stricter reward criteria) affect the model's performance on the object localization task.  The results are measured using the metrics mean average precision (MAP), average precision at 50% IoU (AP50), average precision at 75% IoU (AP75), and average recall at 100 (AR100).  The baseline represents the model's performance without progressive rule refinement.
> <details>
> <summary>read the caption</summary>
> Table 10: Experiments on Progressive Rule Refinement with Qwen2.5-VL-7B.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T8.2.4.2.1">
<tr class="ltx_tr" id="S3.T8.2.4.2.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.4.2.1.1.1"><span class="ltx_text" id="S3.T8.2.4.2.1.1.1.1" style="font-size:144%;">Can you point out {ref expression} in the image and provide the coordinates of its</span></td>
</tr>
<tr class="ltx_tr" id="S3.T8.2.4.2.1.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="S3.T8.2.4.2.1.2.1"><span class="ltx_text" id="S3.T8.2.4.2.1.2.1.1" style="font-size:144%;">location?</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study assessing the impact of Vision-R1 on the generalization capabilities of large vision-language models (LVLMs) in question answering (QA) tasks.  It compares the performance of two models, Griffon-G-7B and Qwen2.5-VL-7B, across four different general-purpose QA benchmarks: GQA (general question answering), AI2D (diagrammatic reasoning), ChartQA (chart-based QA), and SEED (scientific, engineering, economics, and data-related QA). The table shows the performance of each model before and after fine-tuning with both supervised fine-tuning (SFT) and Vision-R1. This allows for a direct comparison of the effectiveness of Vision-R1 in improving the general QA performance of the models while also evaluating how it compares to the more traditional approach of SFT.  All results were obtained using the VLMEvalKit evaluation toolkit to ensure consistent evaluation across all experiments.
> <details>
> <summary>read the caption</summary>
> Table 11: Ablation on generalization QA capabilities. Results are all produced by VLMEvalKit under the same setting.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.18013/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.18013/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}