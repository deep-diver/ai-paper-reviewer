---
title: "FuseChat-3.0: Preference Optimization Meets Heterogeneous Model Fusion"
summary: "FuseChat-3.0: Heterogeneous model fusion boosts LLM performance via preference optimization, creating efficient and powerful language models."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 School of Computer Science and Engineering, Sun Yat-sen University, China",]
showSummary: true
date: 2025-03-06
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.04222 {{< /keyword >}}
{{< keyword icon="writer" >}} Ziyi Yang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-07 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.04222" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.04222" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.04222/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models (LLMs) are powerful but can be limited by size or training data. Combining different LLMs can improve performance, but methods like ensembling are costly. Explicit model fusion is adaptable, but can struggle with vocabulary alignment. This paper tackles the challenge of improving LLMs by implicitly combining strengths of different open-source LLMs into smaller models. 



The study introduces FuseChat-3.0, a framework that leverages supervised fine-tuning and direct preference optimization to train target models. It leverages diverse datasets to improve instruction following, math, and coding. Evaluations show FuseChat-3.0 enhances performance, improving results across established benchmarks and creating state-of-the-art performance. 

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FuseChat-3.0 efficiently fuses knowledge from diverse LLMs into smaller, more powerful models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} The framework utilizes a specialized data construction protocol and direct preference optimization for enhanced performance. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Experiments demonstrate significant performance gains across various benchmarks, showcasing the effectiveness of the approach. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel framework for enhancing LLMs**, offering a practical approach for researchers. By combining diverse models & preference optimization, it paves the way for **building efficient & robust LLMs** for various applications.

------
#### Visual Insights



![](https://arxiv.org/html/2503.04222/x1.png)

> 🔼 This figure illustrates the FuseChat-3.0 framework's three-stage process for implicit model fusion.  First, data is constructed by generating multiple responses from various source LLMs for each prompt, then these responses are evaluated using an external reward model (for instruction-following) or rule-based methods (for math and coding).  Second, supervised fine-tuning (SFT) addresses distribution shifts by fine-tuning target models on optimal responses.  Finally, Direct Preference Optimization (DPO) incorporates controlled preference signals from same-source response pairs to further fine-tune the target model.
> <details>
> <summary>read the caption</summary>
> Figure 2: Overview of our proposed FuseChat-3.0 framework for implicit model fusion.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.3.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.4.1">Dataset</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T1.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.5.1">Count</span></td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T1.1.1.1" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.1.1">
<span class="ltx_p" id="S3.T1.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1.1">#<math alttext="\mathcal{D}_{\text{SFT}}" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.1.m1.1a"><msub id="S3.T1.1.1.1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.1.1.1.1.1.1.m1.1.1.2" xref="S3.T1.1.1.1.1.1.1.m1.1.1.2.cmml">𝒟</mi><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.1.1.1.m1.1.1.3" xref="S3.T1.1.1.1.1.1.1.m1.1.1.3a.cmml">SFT</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1.2">𝒟</ci><ci id="S3.T1.1.1.1.1.1.1.m1.1.1.3a.cmml" xref="S3.T1.1.1.1.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T1.1.1.1.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T1.1.1.1.1.1.1.m1.1.1.3">SFT</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.1.m1.1c">\mathcal{D}_{\text{SFT}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT SFT end_POSTSUBSCRIPT</annotation></semantics></math></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_tt" id="S3.T1.2.2.2" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.2.2.1">
<span class="ltx_p" id="S3.T1.2.2.2.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.1.1.1">#<math alttext="\mathcal{D}_{\text{DPO}}" class="ltx_Math" display="inline" id="S3.T1.2.2.2.1.1.1.m1.1"><semantics id="S3.T1.2.2.2.1.1.1.m1.1a"><msub id="S3.T1.2.2.2.1.1.1.m1.1.1" xref="S3.T1.2.2.2.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S3.T1.2.2.2.1.1.1.m1.1.1.2" xref="S3.T1.2.2.2.1.1.1.m1.1.1.2.cmml">𝒟</mi><mtext class="ltx_mathvariant_bold" id="S3.T1.2.2.2.1.1.1.m1.1.1.3" xref="S3.T1.2.2.2.1.1.1.m1.1.1.3a.cmml">DPO</mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.1.1.1.m1.1b"><apply id="S3.T1.2.2.2.1.1.1.m1.1.1.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T1.2.2.2.1.1.1.m1.1.1.1.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1">subscript</csymbol><ci id="S3.T1.2.2.2.1.1.1.m1.1.1.2.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1.2">𝒟</ci><ci id="S3.T1.2.2.2.1.1.1.m1.1.1.3a.cmml" xref="S3.T1.2.2.2.1.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_bold" id="S3.T1.2.2.2.1.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T1.2.2.2.1.1.1.m1.1.1.3">DPO</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.1.1.1.m1.1c">\mathcal{D}_{\text{DPO}}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.1.1.1.m1.1d">caligraphic_D start_POSTSUBSCRIPT DPO end_POSTSUBSCRIPT</annotation></semantics></math></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">Instruction Following</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">UltraFeedback</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">51,098</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.3.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.3.4.1">
<span class="ltx_p" id="S3.T1.2.3.4.1.1">20,439</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.3.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.3.5.1">
<span class="ltx_p" id="S3.T1.2.3.5.1.1">30,659</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4">
<td class="ltx_td" id="S3.T1.2.4.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">Magpie-Pro-DPO</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">20,374</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.4.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.4.4.1">
<span class="ltx_p" id="S3.T1.2.4.4.1.1">8,149</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.4.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.4.5.1">
<span class="ltx_p" id="S3.T1.2.4.5.1.1">12,225</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5">
<td class="ltx_td" id="S3.T1.2.5.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">HelpSteer2</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">9,435</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.5.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.5.4.1">
<span class="ltx_p" id="S3.T1.2.5.4.1.1">3,774</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.5.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.5.5.1">
<span class="ltx_p" id="S3.T1.2.5.5.1.1">5,661</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.6.1" style="padding-left:5.0pt;padding-right:5.0pt;">Mathematics</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.6.2" style="padding-left:5.0pt;padding-right:5.0pt;">OpenMathInstruct-2</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.6.3" style="padding-left:5.0pt;padding-right:5.0pt;">51,803</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.6.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.6.4.1">
<span class="ltx_p" id="S3.T1.2.6.4.1.1">40,188</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.6.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.6.5.1">
<span class="ltx_p" id="S3.T1.2.6.5.1.1">11,615</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.7.1" style="padding-left:5.0pt;padding-right:5.0pt;">Coding</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.7.2" style="padding-left:5.0pt;padding-right:5.0pt;">LeetCode</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.7.3" style="padding-left:5.0pt;padding-right:5.0pt;">3,113</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.7.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.7.4.1">
<span class="ltx_p" id="S3.T1.2.7.4.1.1">1,877</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.7.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.7.5.1">
<span class="ltx_p" id="S3.T1.2.7.5.1.1">1,236</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8">
<td class="ltx_td" id="S3.T1.2.8.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.8.2" style="padding-left:5.0pt;padding-right:5.0pt;">Self-Oss-Instruct-SC2</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.8.3" style="padding-left:5.0pt;padding-right:5.0pt;">12,892</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.8.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.8.4.1">
<span class="ltx_p" id="S3.T1.2.8.4.1.1">10,160</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.8.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.8.5.1">
<span class="ltx_p" id="S3.T1.2.8.5.1.1">2,732</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.9.1" style="padding-left:5.0pt;padding-right:5.0pt;">Chinese Language</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.9.2" style="padding-left:5.0pt;padding-right:5.0pt;">Alpaca-GPT4-Zh</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.9.3" style="padding-left:5.0pt;padding-right:5.0pt;">2,471</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.9.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.9.4.1">
<span class="ltx_p" id="S3.T1.2.9.4.1.1">2,471</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_t" id="S3.T1.2.9.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.9.5.1">
<span class="ltx_p" id="S3.T1.2.9.5.1.1">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.10">
<td class="ltx_td" id="S3.T1.2.10.1" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.10.2" style="padding-left:5.0pt;padding-right:5.0pt;">Magpie-Qwen2-Pro-Zh</td>
<td class="ltx_td ltx_align_left" id="S3.T1.2.10.3" style="padding-left:5.0pt;padding-right:5.0pt;">7,481</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.10.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.10.4.1">
<span class="ltx_p" id="S3.T1.2.10.4.1.1">7,481</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle" id="S3.T1.2.10.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.10.5.1">
<span class="ltx_p" id="S3.T1.2.10.5.1.1">0</span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.2.11.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_italic" id="S3.T1.2.11.1.1">Total</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S3.T1.2.11.2" style="padding-left:5.0pt;padding-right:5.0pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T1.2.11.3" style="padding-left:5.0pt;padding-right:5.0pt;">158,667</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T1.2.11.4" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.11.4.1">
<span class="ltx_p" id="S3.T1.2.11.4.1.1">94,539</span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_middle ltx_border_bb ltx_border_t" id="S3.T1.2.11.5" style="width:48.4pt;padding-left:5.0pt;padding-right:5.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.2.11.5.1">
<span class="ltx_p" id="S3.T1.2.11.5.1.1">64,128</span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table details the composition of the FuseChat-3.0 dataset used for training.  It's broken down into two phases: Supervised Fine-Tuning (SFT) and Direct Preference Optimization (DPO).  The dataset includes samples from multiple categories: instruction following, mathematics, coding, and Chinese language. The number of samples used in each phase is specified for each category. Note that, due to a lack of suitable reward models, all Chinese language samples were only used for SFT and excluded from the DPO phase.
> <details>
> <summary>read the caption</summary>
> Table 1: The constitution of FuseChat-3.0 dataset in SFT phase and DPO phase. As no suitable reward models were available for Chinese, we used all samples for SFT and omitted the DPO phase.
> </details>





### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.04222/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.04222/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}