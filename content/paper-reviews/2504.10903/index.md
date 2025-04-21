---
title: "Efficient Reasoning Models: A Survey"
summary: "Efficient reasoning survey: Compressing chains of thought, smaller models, and faster decoding to boost reasoning with less overhead."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 National University of Singapore, Singapore",]
showSummary: true
date: 2025-04-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.10903 {{< /keyword >}}
{{< keyword icon="writer" >}} Sicheng Feng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-16 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.10903" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.10903" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.10903/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Reasoning models have shown remarkable progress by generating Chain-of-Thoughts (CoTs), yet introduce computational overhead. This survey categorizes existing works into three key directions: (1) compressing lengthy CoTs into concise chains; (2) developing compact language models with strong reasoning capabilities through knowledge distillation, model compression, and reinforcement learning; and (3) designing efficient decoding strategies to accelerate inference. It addresses the urgent need for effective acceleration in reasoning models.



This survey comprehensively reviews recent advances in efficient reasoning, categorizing methods into shorter, smaller, and faster approaches. It highlights reinforcement learning and supervised fine-tuning techniques to shorten CoTs, model compression via distillation/quantization/pruning to build small models, and efficient sampling to accelerate decoding. By structuring the landscape of efficient reasoning research, the paper identifies key challenges and offers potential research directions, serving as a valuable resource.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Efficient reasoning can be achieved through shorter reasoning chains, smaller models, and faster decoding strategies. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Model compression and reinforcement learning are promising avenues for enhancing reasoning capabilities in small language models. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} There is a growing need for better evaluation metrics that balance performance and efficiency in reasoning models. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This survey is important for researchers because it provides a **structured overview of efficient reasoning techniques**, which can enable the development of more scalable and practical AI systems. It highlights key challenges and opportunities, guiding future research directions to address limitations in current reasoning models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.10903/x1.png)

> 🔼 This figure provides a visual overview of efficient reasoning methods, categorized into three main approaches based on how they enhance reasoning efficiency.  The first approach focuses on shortening excessively long Chain-of-Thought (CoT) sequences by various techniques, aiming to make the reasoning process more concise without sacrificing accuracy.  The second approach involves creating smaller language models that retain strong reasoning capabilities, thereby reducing computational resource demands.  This is often achieved using model compression or other similar techniques. The third approach concentrates on optimizing the decoding process itself to speed up inference while maintaining the quality of the reasoning output.  Each category is illustrated with key methods and techniques used to improve reasoning efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of efficient reasoning. We categorize existing efficient reasoning methods into three key directions based on how they improve reasoning efficiency: (1) make long CoT short (shorter); (2) build small language model with strong reasoning ability (smaller); and (3) let decoding more efficient (faster).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.30.26">
<tr class="ltx_tr" id="S3.T1.30.26.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.30.26.27.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.1.1">Type</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.30.26.27.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.2.1">Methods</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.30.26.27.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.3.1">Training Scheme</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.30.26.27.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.4.1">Acc. / #Tokens</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T1.30.26.27.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.5.1">Base Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T1.30.26.27.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.30.26.27.6.1">Speedup</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.5.1.1.2" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.5.1.1.3" style="padding-left:1.4pt;padding-right:1.4pt;">O1-Pruner</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.5.1.1.4" style="padding-left:1.4pt;padding-right:1.4pt;">PPO (Freeze FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.5.1.1.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 96.50% / 543</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T1.5.1.1.6" style="padding-left:1.4pt;padding-right:1.4pt;">QwQ-32B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T1.5.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.5 - 2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.1.1.1.m1.1"><semantics id="S3.T1.5.1.1.1.m1.1a"><mo id="S3.T1.5.1.1.1.m1.1.1" xref="S3.T1.5.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.1.1.1.m1.1b"><times id="S3.T1.5.1.1.1.m1.1.1.cmml" xref="S3.T1.5.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.1.1.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.2.2.3" style="padding-left:1.4pt;padding-right:1.4pt;">DAST</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.2.2.4" style="padding-left:1.4pt;padding-right:1.4pt;">SimPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.2.2.5" style="padding-left:1.4pt;padding-right:1.4pt;">MATH-500: 92.60% / 2802</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.6.2.2.6" style="padding-left:1.4pt;padding-right:1.4pt;">DeepSeek-R1-Distill-Qwen-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.6.2.2.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.6 - 2.2 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.6.2.2.1.m1.1"><semantics id="S3.T1.6.2.2.1.m1.1a"><mo id="S3.T1.6.2.2.1.m1.1.1" xref="S3.T1.6.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.2.2.1.m1.1b"><times id="S3.T1.6.2.2.1.m1.1.1.cmml" xref="S3.T1.6.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.2.2.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.3.3.2" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.3.3.3" style="padding-left:1.4pt;padding-right:1.4pt;">AGPO</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.3.3.4" style="padding-left:1.4pt;padding-right:1.4pt;">GRPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.3.3.5" style="padding-left:1.4pt;padding-right:1.4pt;">MATH-500: 77.20% / 463</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.7.3.3.6" style="padding-left:1.4pt;padding-right:1.4pt;">Qwen2.5-Math-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.7.3.3.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.3 - 1.5 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.7.3.3.1.m1.1"><semantics id="S3.T1.7.3.3.1.m1.1a"><mo id="S3.T1.7.3.3.1.m1.1.1" xref="S3.T1.7.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.3.3.1.m1.1b"><times id="S3.T1.7.3.3.1.m1.1.1.cmml" xref="S3.T1.7.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.3.3.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.4.4.2" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.4.4.3" style="padding-left:1.4pt;padding-right:1.4pt;">THINKPRUNE</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.4.4.4" style="padding-left:1.4pt;padding-right:1.4pt;">GRPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.4.4.5" style="padding-left:1.4pt;padding-right:1.4pt;">MATH-500: 83.90% / 2209</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.8.4.4.6" style="padding-left:1.4pt;padding-right:1.4pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.8.4.4.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.7 - 2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.4.4.1.m1.1"><semantics id="S3.T1.8.4.4.1.m1.1a"><mo id="S3.T1.8.4.4.1.m1.1.1" xref="S3.T1.8.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.4.4.1.m1.1b"><times id="S3.T1.8.4.4.1.m1.1.1.cmml" xref="S3.T1.8.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.4.4.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;">Think When You Need</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;">GRPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.9.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.9.5.5.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.3 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.9.5.5.1.m1.1"><semantics id="S3.T1.9.5.5.1.m1.1a"><mo id="S3.T1.9.5.5.1.m1.1.1" xref="S3.T1.9.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.5.5.1.m1.1b"><times id="S3.T1.9.5.5.1.m1.1.1.cmml" xref="S3.T1.9.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.5.5.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.6.6.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T1.10.6.6.2.1">\hdashline</span>SFT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.6.6.3" style="padding-left:1.4pt;padding-right:1.4pt;">TokenSkip</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.6.6.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.6.6.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 78.20% / 113</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.10.6.6.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.1-8B-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.10.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.7 - 1.8 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.6.6.1.m1.1"><semantics id="S3.T1.10.6.6.1.m1.1a"><mo id="S3.T1.10.6.6.1.m1.1.1" xref="S3.T1.10.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.6.6.1.m1.1b"><times id="S3.T1.10.6.6.1.m1.1.1.cmml" xref="S3.T1.10.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.6.6.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;">SFT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.7.7.3" style="padding-left:1.4pt;padding-right:1.4pt;">C3oT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.7.7.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.7.7.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 47.10% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.11.7.7.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA2-Chat-13B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.11.7.7.1" style="padding-left:1.4pt;padding-right:1.4pt;">2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.11.7.7.1.m1.1"><semantics id="S3.T1.11.7.7.1.m1.1a"><mo id="S3.T1.11.7.7.1.m1.1.1" xref="S3.T1.11.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.7.7.1.m1.1b"><times id="S3.T1.11.7.7.1.m1.1.1.cmml" xref="S3.T1.11.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.7.7.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.13.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.13.9.9.3" style="padding-left:1.4pt;padding-right:1.4pt;">SFT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.13.9.9.4" style="padding-left:1.4pt;padding-right:1.4pt;">Self-Training</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.13.9.9.5" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.13.9.9.6" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 78.07% / 176</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.12.8.8.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="Avg_{1}" class="ltx_Math" display="inline" id="S3.T1.12.8.8.1.m1.1"><semantics id="S3.T1.12.8.8.1.m1.1a"><mrow id="S3.T1.12.8.8.1.m1.1.1" xref="S3.T1.12.8.8.1.m1.1.1.cmml"><mi id="S3.T1.12.8.8.1.m1.1.1.2" xref="S3.T1.12.8.8.1.m1.1.1.2.cmml">A</mi><mo id="S3.T1.12.8.8.1.m1.1.1.1" xref="S3.T1.12.8.8.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.12.8.8.1.m1.1.1.3" xref="S3.T1.12.8.8.1.m1.1.1.3.cmml">v</mi><mo id="S3.T1.12.8.8.1.m1.1.1.1a" xref="S3.T1.12.8.8.1.m1.1.1.1.cmml">⁢</mo><msub id="S3.T1.12.8.8.1.m1.1.1.4" xref="S3.T1.12.8.8.1.m1.1.1.4.cmml"><mi id="S3.T1.12.8.8.1.m1.1.1.4.2" xref="S3.T1.12.8.8.1.m1.1.1.4.2.cmml">g</mi><mn id="S3.T1.12.8.8.1.m1.1.1.4.3" xref="S3.T1.12.8.8.1.m1.1.1.4.3.cmml">1</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.12.8.8.1.m1.1b"><apply id="S3.T1.12.8.8.1.m1.1.1.cmml" xref="S3.T1.12.8.8.1.m1.1.1"><times id="S3.T1.12.8.8.1.m1.1.1.1.cmml" xref="S3.T1.12.8.8.1.m1.1.1.1"></times><ci id="S3.T1.12.8.8.1.m1.1.1.2.cmml" xref="S3.T1.12.8.8.1.m1.1.1.2">𝐴</ci><ci id="S3.T1.12.8.8.1.m1.1.1.3.cmml" xref="S3.T1.12.8.8.1.m1.1.1.3">𝑣</ci><apply id="S3.T1.12.8.8.1.m1.1.1.4.cmml" xref="S3.T1.12.8.8.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.12.8.8.1.m1.1.1.4.1.cmml" xref="S3.T1.12.8.8.1.m1.1.1.4">subscript</csymbol><ci id="S3.T1.12.8.8.1.m1.1.1.4.2.cmml" xref="S3.T1.12.8.8.1.m1.1.1.4.2">𝑔</ci><cn id="S3.T1.12.8.8.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.12.8.8.1.m1.1.1.4.3">1</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.8.8.1.m1.1c">Avg_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.8.8.1.m1.1d">italic_A italic_v italic_g start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.13.9.9.2" style="padding-left:1.4pt;padding-right:1.4pt;">1.3 - 1.5 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.13.9.9.2.m1.1"><semantics id="S3.T1.13.9.9.2.m1.1a"><mo id="S3.T1.13.9.9.2.m1.1.1" xref="S3.T1.13.9.9.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.13.9.9.2.m1.1b"><times id="S3.T1.13.9.9.2.m1.1.1.cmml" xref="S3.T1.13.9.9.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.13.9.9.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.13.9.9.2.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.15.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.15.11.11.3" style="padding-left:1.4pt;padding-right:1.4pt;">SFT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.15.11.11.4" style="padding-left:1.4pt;padding-right:1.4pt;">TALE</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.15.11.11.5" style="padding-left:1.4pt;padding-right:1.4pt;">SFT / DPO (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.15.11.11.6" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 78.57% / 140</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.14.10.10.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="Avg_{2}" class="ltx_Math" display="inline" id="S3.T1.14.10.10.1.m1.1"><semantics id="S3.T1.14.10.10.1.m1.1a"><mrow id="S3.T1.14.10.10.1.m1.1.1" xref="S3.T1.14.10.10.1.m1.1.1.cmml"><mi id="S3.T1.14.10.10.1.m1.1.1.2" xref="S3.T1.14.10.10.1.m1.1.1.2.cmml">A</mi><mo id="S3.T1.14.10.10.1.m1.1.1.1" xref="S3.T1.14.10.10.1.m1.1.1.1.cmml">⁢</mo><mi id="S3.T1.14.10.10.1.m1.1.1.3" xref="S3.T1.14.10.10.1.m1.1.1.3.cmml">v</mi><mo id="S3.T1.14.10.10.1.m1.1.1.1a" xref="S3.T1.14.10.10.1.m1.1.1.1.cmml">⁢</mo><msub id="S3.T1.14.10.10.1.m1.1.1.4" xref="S3.T1.14.10.10.1.m1.1.1.4.cmml"><mi id="S3.T1.14.10.10.1.m1.1.1.4.2" xref="S3.T1.14.10.10.1.m1.1.1.4.2.cmml">g</mi><mn id="S3.T1.14.10.10.1.m1.1.1.4.3" xref="S3.T1.14.10.10.1.m1.1.1.4.3.cmml">2</mn></msub></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.14.10.10.1.m1.1b"><apply id="S3.T1.14.10.10.1.m1.1.1.cmml" xref="S3.T1.14.10.10.1.m1.1.1"><times id="S3.T1.14.10.10.1.m1.1.1.1.cmml" xref="S3.T1.14.10.10.1.m1.1.1.1"></times><ci id="S3.T1.14.10.10.1.m1.1.1.2.cmml" xref="S3.T1.14.10.10.1.m1.1.1.2">𝐴</ci><ci id="S3.T1.14.10.10.1.m1.1.1.3.cmml" xref="S3.T1.14.10.10.1.m1.1.1.3">𝑣</ci><apply id="S3.T1.14.10.10.1.m1.1.1.4.cmml" xref="S3.T1.14.10.10.1.m1.1.1.4"><csymbol cd="ambiguous" id="S3.T1.14.10.10.1.m1.1.1.4.1.cmml" xref="S3.T1.14.10.10.1.m1.1.1.4">subscript</csymbol><ci id="S3.T1.14.10.10.1.m1.1.1.4.2.cmml" xref="S3.T1.14.10.10.1.m1.1.1.4.2">𝑔</ci><cn id="S3.T1.14.10.10.1.m1.1.1.4.3.cmml" type="integer" xref="S3.T1.14.10.10.1.m1.1.1.4.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.14.10.10.1.m1.1c">Avg_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T1.14.10.10.1.m1.1d">italic_A italic_v italic_g start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.15.11.11.2" style="padding-left:1.4pt;padding-right:1.4pt;">1.7 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.15.11.11.2.m1.1"><semantics id="S3.T1.15.11.11.2.m1.1a"><mo id="S3.T1.15.11.11.2.m1.1.1" xref="S3.T1.15.11.11.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.15.11.11.2.m1.1b"><times id="S3.T1.15.11.11.2.m1.1.1.cmml" xref="S3.T1.15.11.11.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.15.11.11.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.15.11.11.2.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.16.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.16.12.12.2" style="padding-left:1.4pt;padding-right:1.4pt;">SFT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.16.12.12.3" style="padding-left:1.4pt;padding-right:1.4pt;">CoT-Valve</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.16.12.12.4" style="padding-left:1.4pt;padding-right:1.4pt;">Progressive SFT (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.16.12.12.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 95.40% / 289</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.16.12.12.6" style="padding-left:1.4pt;padding-right:1.4pt;">QwQ-32B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.16.12.12.1" style="padding-left:1.4pt;padding-right:1.4pt;">2.6 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.16.12.12.1.m1.1"><semantics id="S3.T1.16.12.12.1.m1.1a"><mo id="S3.T1.16.12.12.1.m1.1.1" xref="S3.T1.16.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.16.12.12.1.m1.1b"><times id="S3.T1.16.12.12.1.m1.1.1.cmml" xref="S3.T1.16.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.16.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.16.12.12.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.17.13.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.17.13.13.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T1.17.13.13.2.1">\hdashline</span>Prompting</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.17.13.13.3" style="padding-left:1.4pt;padding-right:1.4pt;">Concise CoT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.17.13.13.4" style="padding-left:1.4pt;padding-right:1.4pt;">Training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.17.13.13.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.17.13.13.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.17.13.13.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.9 - 2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.17.13.13.1.m1.1"><semantics id="S3.T1.17.13.13.1.m1.1a"><mo id="S3.T1.17.13.13.1.m1.1.1" xref="S3.T1.17.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.17.13.13.1.m1.1b"><times id="S3.T1.17.13.13.1.m1.1.1.cmml" xref="S3.T1.17.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.17.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.17.13.13.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.30.26.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.30.26.28.1" style="padding-left:1.4pt;padding-right:1.4pt;">Prompting</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.30.26.28.2" style="padding-left:1.4pt;padding-right:1.4pt;">Break the Chain</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.30.26.28.3" style="padding-left:1.4pt;padding-right:1.4pt;">Training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.30.26.28.4" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 74.22% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.30.26.28.5" style="padding-left:1.4pt;padding-right:1.4pt;">ChatGPT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.30.26.28.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.18.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.18.14.14.2" style="padding-left:1.4pt;padding-right:1.4pt;">Prompting</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.18.14.14.3" style="padding-left:1.4pt;padding-right:1.4pt;">TALE-EP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.18.14.14.4" style="padding-left:1.4pt;padding-right:1.4pt;">Training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.18.14.14.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 84.46% / 77</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.18.14.14.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4o-mini</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.18.14.14.1" style="padding-left:1.4pt;padding-right:1.4pt;">4.1 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.18.14.14.1.m1.1"><semantics id="S3.T1.18.14.14.1.m1.1a"><mo id="S3.T1.18.14.14.1.m1.1.1" xref="S3.T1.18.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.18.14.14.1.m1.1b"><times id="S3.T1.18.14.14.1.m1.1.1.cmml" xref="S3.T1.18.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.18.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.18.14.14.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.19.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.19.15.15.2" style="padding-left:1.4pt;padding-right:1.4pt;">Prompting</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.19.15.15.3" style="padding-left:1.4pt;padding-right:1.4pt;">CoD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.19.15.15.4" style="padding-left:1.4pt;padding-right:1.4pt;">Training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.19.15.15.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 91.10% / 44</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.19.15.15.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4o</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.19.15.15.1" style="padding-left:1.4pt;padding-right:1.4pt;">4.7 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.19.15.15.1.m1.1"><semantics id="S3.T1.19.15.15.1.m1.1a"><mo id="S3.T1.19.15.15.1.m1.1.1" xref="S3.T1.19.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.19.15.15.1.m1.1b"><times id="S3.T1.19.15.15.1.m1.1.1.cmml" xref="S3.T1.19.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.19.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.19.15.15.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.20.16.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.20.16.16.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T1.20.16.16.2.1">\hdashline</span>Routing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.20.16.16.3" style="padding-left:1.4pt;padding-right:1.4pt;">RouteLLM</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.20.16.16.4" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3-8B Router</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.20.16.16.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 74.82% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.20.16.16.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.20.16.16.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.5 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.20.16.16.1.m1.1"><semantics id="S3.T1.20.16.16.1.m1.1a"><mo id="S3.T1.20.16.16.1.m1.1.1" xref="S3.T1.20.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.20.16.16.1.m1.1b"><times id="S3.T1.20.16.16.1.m1.1.1.cmml" xref="S3.T1.20.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.20.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.20.16.16.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.21.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.21.17.17.2" style="padding-left:1.4pt;padding-right:1.4pt;">Routing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.21.17.17.3" style="padding-left:1.4pt;padding-right:1.4pt;">Sketch-of-Thought</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.21.17.17.4" style="padding-left:1.4pt;padding-right:1.4pt;">DistillBERT Router</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.21.17.17.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.21.17.17.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.21.17.17.1" style="padding-left:1.4pt;padding-right:1.4pt;">3.6 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.21.17.17.1.m1.1"><semantics id="S3.T1.21.17.17.1.m1.1a"><mo id="S3.T1.21.17.17.1.m1.1.1" xref="S3.T1.21.17.17.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.21.17.17.1.m1.1b"><times id="S3.T1.21.17.17.1.m1.1.1.cmml" xref="S3.T1.21.17.17.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.21.17.17.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.21.17.17.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.22.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.22.18.18.2" style="padding-left:1.4pt;padding-right:1.4pt;">Routing</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.22.18.18.3" style="padding-left:1.4pt;padding-right:1.4pt;">Self-REF</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.22.18.18.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.22.18.18.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 81.60% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.22.18.18.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3-8B-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.22.18.18.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.2 - 2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.22.18.18.1.m1.1"><semantics id="S3.T1.22.18.18.1.m1.1a"><mo id="S3.T1.22.18.18.1.m1.1.1" xref="S3.T1.22.18.18.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.22.18.18.1.m1.1b"><times id="S3.T1.22.18.18.1.m1.1.1.cmml" xref="S3.T1.22.18.18.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.22.18.18.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.22.18.18.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.23.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.23.19.19.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T1.23.19.19.2.1">\hdashline</span>Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.23.19.19.3" style="padding-left:1.4pt;padding-right:1.4pt;">Implicit-KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.23.19.19.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.23.19.19.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 20.00% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.23.19.19.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-2 small</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.23.19.19.1" style="padding-left:1.4pt;padding-right:1.4pt;">8.2 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.23.19.19.1.m1.1"><semantics id="S3.T1.23.19.19.1.m1.1a"><mo id="S3.T1.23.19.19.1.m1.1.1" xref="S3.T1.23.19.19.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.23.19.19.1.m1.1b"><times id="S3.T1.23.19.19.1.m1.1.1.cmml" xref="S3.T1.23.19.19.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.23.19.19.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.23.19.19.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.24.20.20">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.24.20.20.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.24.20.20.3" style="padding-left:1.4pt;padding-right:1.4pt;">SI</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.24.20.20.4" style="padding-left:1.4pt;padding-right:1.4pt;">Progressive SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.24.20.20.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 30.00% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.24.20.20.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-2 small</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.24.20.20.1" style="padding-left:1.4pt;padding-right:1.4pt;">4.0 - 11.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.24.20.20.1.m1.1"><semantics id="S3.T1.24.20.20.1.m1.1a"><mo id="S3.T1.24.20.20.1.m1.1.1" xref="S3.T1.24.20.20.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.24.20.20.1.m1.1b"><times id="S3.T1.24.20.20.1.m1.1.1.cmml" xref="S3.T1.24.20.20.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.24.20.20.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.24.20.20.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.25.21.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.25.21.21.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.25.21.21.3" style="padding-left:1.4pt;padding-right:1.4pt;">CCoT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.25.21.21.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.25.21.21.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 17.90% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.25.21.21.6" style="padding-left:1.4pt;padding-right:1.4pt;">CCOT
&amp; DECODE</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.25.21.21.1" style="padding-left:1.4pt;padding-right:1.4pt;">10.4 - 24.5 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.25.21.21.1.m1.1"><semantics id="S3.T1.25.21.21.1.m1.1a"><mo id="S3.T1.25.21.21.1.m1.1.1" xref="S3.T1.25.21.21.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.25.21.21.1.m1.1b"><times id="S3.T1.25.21.21.1.m1.1.1.cmml" xref="S3.T1.25.21.21.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.25.21.21.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.25.21.21.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.26.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.26.22.22.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.26.22.22.3" style="padding-left:1.4pt;padding-right:1.4pt;">SoftCoT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.26.22.22.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Freeze FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.26.22.22.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 85.81% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.26.22.22.6" style="padding-left:1.4pt;padding-right:1.4pt;">Qwen2.5-7B-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.26.22.22.1" style="padding-left:1.4pt;padding-right:1.4pt;">4.0 - 5.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.26.22.22.1.m1.1"><semantics id="S3.T1.26.22.22.1.m1.1a"><mo id="S3.T1.26.22.22.1.m1.1.1" xref="S3.T1.26.22.22.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.26.22.22.1.m1.1b"><times id="S3.T1.26.22.22.1.m1.1.1.cmml" xref="S3.T1.26.22.22.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.26.22.22.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.26.22.22.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.27.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.27.23.23.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.27.23.23.3" style="padding-left:1.4pt;padding-right:1.4pt;">CODI</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.27.23.23.4" style="padding-left:1.4pt;padding-right:1.4pt;">Self-distillation (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.27.23.23.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 43.70% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.27.23.23.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-2 small</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.27.23.23.1" style="padding-left:1.4pt;padding-right:1.4pt;">2.5 - 2.7 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.27.23.23.1.m1.1"><semantics id="S3.T1.27.23.23.1.m1.1a"><mo id="S3.T1.27.23.23.1.m1.1.1" xref="S3.T1.27.23.23.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.27.23.23.1.m1.1b"><times id="S3.T1.27.23.23.1.m1.1.1.cmml" xref="S3.T1.27.23.23.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.27.23.23.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.27.23.23.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.28.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.28.24.24.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.28.24.24.3" style="padding-left:1.4pt;padding-right:1.4pt;">LightThinker</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.28.24.24.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.28.24.24.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 90.14% / -</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.28.24.24.6" style="padding-left:1.4pt;padding-right:1.4pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.28.24.24.1" style="padding-left:1.4pt;padding-right:1.4pt;">up to 1.4 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.28.24.24.1.m1.1"><semantics id="S3.T1.28.24.24.1.m1.1a"><mo id="S3.T1.28.24.24.1.m1.1.1" xref="S3.T1.28.24.24.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.28.24.24.1.m1.1b"><times id="S3.T1.28.24.24.1.m1.1.1.cmml" xref="S3.T1.28.24.24.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.28.24.24.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.28.24.24.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.29.25.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.29.25.25.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.29.25.25.3" style="padding-left:1.4pt;padding-right:1.4pt;">Coconut</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.29.25.25.4" style="padding-left:1.4pt;padding-right:1.4pt;">Progressive SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.29.25.25.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 34.10% / 8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T1.29.25.25.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T1.29.25.25.1" style="padding-left:1.4pt;padding-right:1.4pt;">3.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.29.25.25.1.m1.1"><semantics id="S3.T1.29.25.25.1.m1.1a"><mo id="S3.T1.29.25.25.1.m1.1.1" xref="S3.T1.29.25.25.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.29.25.25.1.m1.1b"><times id="S3.T1.29.25.25.1.m1.1.1.cmml" xref="S3.T1.29.25.25.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.29.25.25.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.29.25.25.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T1.30.26.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.30.26.26.2" style="padding-left:1.4pt;padding-right:1.4pt;">Latent reasoning</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.30.26.26.3" style="padding-left:1.4pt;padding-right:1.4pt;">Token Assorted</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.30.26.26.4" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.30.26.26.5" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 84.10% / 194</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T1.30.26.26.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.1-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T1.30.26.26.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.2 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.30.26.26.1.m1.1"><semantics id="S3.T1.30.26.26.1.m1.1a"><mo id="S3.T1.30.26.26.1.m1.1.1" xref="S3.T1.30.26.26.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.30.26.26.1.m1.1b"><times id="S3.T1.30.26.26.1.m1.1.1.cmml" xref="S3.T1.30.26.26.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.30.26.26.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.30.26.26.1.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 Table 1 provides a comprehensive overview of efficient reasoning methods discussed in Section 3.1 of the paper.  It categorizes these methods based on their approach (Reinforcement Learning, Supervised Fine-Tuning, Prompting, or Latent Reasoning) and reports their performance in terms of accuracy and either latency or token count.  The table also shows a speedup ratio, calculated by comparing the performance of each method against a baseline.  Two average values, Avg1 and Avg2, are used to summarize performance across different model types.
> <details>
> <summary>read the caption</summary>
> Table 1: Overview of efficient reasoning methods in Section 3.1. The speedup ratio is computed by comparing either the latency (L.) or the token count (T.). A⁢v⁢g1𝐴𝑣subscript𝑔1Avg_{1}italic_A italic_v italic_g start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT represents the average of Llama-3.2-3B, Gemma2-2B, Qwen2.5-3B, Qwen2.5-Math-1.5B, and DeepSeekMath-7B; A⁢v⁢g2𝐴𝑣subscript𝑔2Avg_{2}italic_A italic_v italic_g start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT represents the average of GPT-4o, GPT-4o-mini, Yi-lightning, o3-mini, and LLaMA3.1-8B-I.
> </details>





### In-depth insights


#### CoT's overhead
**Chain-of-Thought (CoT) prompting**, while boosting reasoning in LLMs, introduces significant overhead. This arises from generating lengthy intermediate steps, leading to **increased computational cost and latency**. The number of tokens dramatically rises, straining memory and slowing inference. This overhead is especially noticeable in real-time applications or resource-constrained environments. Therefore, efficiently mitigating CoT's overhead is crucial, involving strategies such as shortening reasoning paths, developing smaller, more powerful models, or optimizing decoding processes, and ultimately it could help strike a balance between reasoning performance and computational efficiency.

#### RL to compress
While the query 'RL to compress' isn't directly from the document, I can infer thoughts on applying reinforcement learning (RL) for compression, particularly in the context of efficient reasoning. RL could be used to **compress lengthy CoTs** by rewarding shorter, accurate reasoning paths, addressing the token redundancy. RL offers a way to **train models to be more concise** by penalizing length and incentivizing accuracy through specifically designed reward functions. This is especially relevant as longer reasoning doesn't always translate to better performance. Reward function design is crucial, considering factors like accuracy, length, and even safety, which can affect how the RL agent learns to compress. It could also be used to **distill knowledge into smaller models**, which is more efficient.

#### Distillation's key
While "Distillation's key" isn't a direct heading, distillation fundamentally **transfers knowledge from a larger, more capable model (teacher) to a smaller one (student)**. The process aims to achieve comparable performance with reduced computational cost. The key lies in carefully **crafting the training data** used to teach the student. This might involve using the teacher to generate diverse outputs. Also, distillation helps in other efficient reasoning directions such as in cases like latent reasoning by compressing explicit CoTs into compact implicit reasoning paths as well with SFT using variable-length CoT data. The success hinges on the **student's architecture**, **training regime**, and the **quality of knowledge transferred**, ensuring the student doesn't just mimic but truly learns to reason. 

#### Safety vs. Speed
**Balancing safety and speed in reasoning models is crucial.** Longer reasoning (more steps) often enhances safety through self-correction. However, it undermines efficiency. Shorter paths, while efficient, risk skipping vital safety checks. This creates a tension: prioritizing safety can make models slower, whereas speed compromises reliability. Future work is to find approaches that maintain both rapid inference and robust safety checks. Models must learn to identify and correct potential errors without incurring significant overhead.

#### CoT: Limits found
While Chain-of-Thought (CoT) prompting has shown promise, it's crucial to acknowledge its limitations. **CoT's effectiveness isn't universal;** it can falter on tasks requiring intuition.  **Long CoTs may introduce noise,** diverting the model and increasing computational cost. **The reliance on explicit reasoning steps can be a bottleneck;** certain problems may be better solved implicitly. Future research should investigate the boundaries of CoT, exploring alternative approaches for scenarios where it underperforms, and seeking methods to make CoT more robust and efficient.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T2.15.11">
<tr class="ltx_tr" id="S3.T2.15.11.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.1.1">Type</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.2.1">Methods</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.3.1">Training Scheme</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.4.1">Training Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.5.1">Acc.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T2.15.11.12.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T2.15.11.12.6.1">Base Model</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.5.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.3" style="padding-left:1.4pt;padding-right:1.4pt;">CoT-KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.4" style="padding-left:1.4pt;padding-right:1.4pt;">Distillation (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.5" style="padding-left:1.4pt;padding-right:1.4pt;">CoT data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 21.99% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.1.1.1.m1.1"><semantics id="S3.T2.5.1.1.1.m1.1a"><mo id="S3.T2.5.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.1.1.1.m1.1b"><ci id="S3.T2.5.1.1.1.m1.1.1.cmml" xref="S3.T2.5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.1.1.1.m1.1d">↑</annotation></semantics></math> 13.88%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T2.5.1.1.6" style="padding-left:1.4pt;padding-right:1.4pt;">T5 XXL</td>
</tr>
<tr class="ltx_tr" id="S3.T2.6.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.3" style="padding-left:1.4pt;padding-right:1.4pt;">MD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.4" style="padding-left:1.4pt;padding-right:1.4pt;">Mixed distillation (Freeze FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.5" style="padding-left:1.4pt;padding-right:1.4pt;">CoT and PoT data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 41.50% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.2.2.1.m1.1"><semantics id="S3.T2.6.2.2.1.m1.1a"><mo id="S3.T2.6.2.2.1.m1.1.1" stretchy="false" xref="S3.T2.6.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.2.2.1.m1.1b"><ci id="S3.T2.6.2.2.1.m1.1.1.cmml" xref="S3.T2.6.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.2.2.1.m1.1d">↑</annotation></semantics></math> 28.20%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.6.2.2.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA2-7B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.3" style="padding-left:1.4pt;padding-right:1.4pt;">Mix</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.4" style="padding-left:1.4pt;padding-right:1.4pt;">Mixed distillation (Full FT &amp; LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.5" style="padding-left:1.4pt;padding-right:1.4pt;">Long and short CoT data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 79.20% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.3.3.1.m1.1"><semantics id="S3.T2.7.3.3.1.m1.1a"><mo id="S3.T2.7.3.3.1.m1.1.1" stretchy="false" xref="S3.T2.7.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.3.3.1.m1.1b"><ci id="S3.T2.7.3.3.1.m1.1.1.cmml" xref="S3.T2.7.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.3.3.1.m1.1d">↑</annotation></semantics></math> 1.70%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.7.3.3.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.2-3B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.8.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.3" style="padding-left:1.4pt;padding-right:1.4pt;">NAT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.4" style="padding-left:1.4pt;padding-right:1.4pt;">Mixed distillation (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.5" style="padding-left:1.4pt;padding-right:1.4pt;">Positive and negative data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 41.24% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.8.4.4.1.m1.1"><semantics id="S3.T2.8.4.4.1.m1.1a"><mo id="S3.T2.8.4.4.1.m1.1.1" stretchy="false" xref="S3.T2.8.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.8.4.4.1.m1.1b"><ci id="S3.T2.8.4.4.1.m1.1.1.cmml" xref="S3.T2.8.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.8.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.8.4.4.1.m1.1d">↑</annotation></semantics></math> 23.73%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.8.4.4.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA-7B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.11.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.1" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.2" style="padding-left:1.4pt;padding-right:1.4pt;">CD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.3" style="padding-left:1.4pt;padding-right:1.4pt;">Counterfactual distillation (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.4" style="padding-left:1.4pt;padding-right:1.4pt;">Original and counterfactual data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.15.11.13.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T2.9.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;">FDD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;">Feedback-driven distillation (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;">Progressively add generated data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 49.43% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.9.5.5.1.m1.1"><semantics id="S3.T2.9.5.5.1.m1.1a"><mo id="S3.T2.9.5.5.1.m1.1.1" stretchy="false" xref="S3.T2.9.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.9.5.5.1.m1.1b"><ci id="S3.T2.9.5.5.1.m1.1.1.cmml" xref="S3.T2.9.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.9.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.9.5.5.1.m1.1d">↑</annotation></semantics></math> 42.53%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.9.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;">FlanT5-Large</td>
</tr>
<tr class="ltx_tr" id="S3.T2.10.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.3" style="padding-left:1.4pt;padding-right:1.4pt;">DLCoT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.4" style="padding-left:1.4pt;padding-right:1.4pt;">Distillation (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.5" style="padding-left:1.4pt;padding-right:1.4pt;">High-quality data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 93.60% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.10.6.6.1.m1.1"><semantics id="S3.T2.10.6.6.1.m1.1a"><mo id="S3.T2.10.6.6.1.m1.1.1" stretchy="false" xref="S3.T2.10.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.10.6.6.1.m1.1b"><ci id="S3.T2.10.6.6.1.m1.1.1.cmml" xref="S3.T2.10.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.10.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.10.6.6.1.m1.1d">↑</annotation></semantics></math> 9.10%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.10.6.6.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.1-8B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.11.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;">KD</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.3" style="padding-left:1.4pt;padding-right:1.4pt;">SKIntern</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.4" style="padding-left:1.4pt;padding-right:1.4pt;">Distillation (LoRA)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.5" style="padding-left:1.4pt;padding-right:1.4pt;">Progressively simplify data</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.1" style="padding-left:1.4pt;padding-right:1.4pt;">GSM8K: 33.90% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.11.7.7.1.m1.1"><semantics id="S3.T2.11.7.7.1.m1.1a"><mo id="S3.T2.11.7.7.1.m1.1.1" stretchy="false" xref="S3.T2.11.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.11.7.7.1.m1.1b"><ci id="S3.T2.11.7.7.1.m1.1.1.cmml" xref="S3.T2.11.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.11.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.11.7.7.1.m1.1d">↑</annotation></semantics></math> 30.80%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.11.7.7.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA2-7B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.13.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.13.9.9.3" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T2.13.9.9.3.1">\hdashline</span>RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.13.9.9.4" style="padding-left:1.4pt;padding-right:1.4pt;">Open-RS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.13.9.9.5" style="padding-left:1.4pt;padding-right:1.4pt;">GRPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.12.8.8.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\text{Blended}_{1}" class="ltx_Math" display="inline" id="S3.T2.12.8.8.1.m1.1"><semantics id="S3.T2.12.8.8.1.m1.1a"><msub id="S3.T2.12.8.8.1.m1.1.1" xref="S3.T2.12.8.8.1.m1.1.1.cmml"><mtext id="S3.T2.12.8.8.1.m1.1.1.2" xref="S3.T2.12.8.8.1.m1.1.1.2a.cmml">Blended</mtext><mn id="S3.T2.12.8.8.1.m1.1.1.3" xref="S3.T2.12.8.8.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.12.8.8.1.m1.1b"><apply id="S3.T2.12.8.8.1.m1.1.1.cmml" xref="S3.T2.12.8.8.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.12.8.8.1.m1.1.1.1.cmml" xref="S3.T2.12.8.8.1.m1.1.1">subscript</csymbol><ci id="S3.T2.12.8.8.1.m1.1.1.2a.cmml" xref="S3.T2.12.8.8.1.m1.1.1.2"><mtext id="S3.T2.12.8.8.1.m1.1.1.2.cmml" xref="S3.T2.12.8.8.1.m1.1.1.2">Blended</mtext></ci><cn id="S3.T2.12.8.8.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.12.8.8.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.12.8.8.1.m1.1c">\text{Blended}_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.12.8.8.1.m1.1d">Blended start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.13.9.9.2" style="padding-left:1.4pt;padding-right:1.4pt;">AIME: 46.70% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.13.9.9.2.m1.1"><semantics id="S3.T2.13.9.9.2.m1.1a"><mo id="S3.T2.13.9.9.2.m1.1.1" stretchy="false" xref="S3.T2.13.9.9.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.13.9.9.2.m1.1b"><ci id="S3.T2.13.9.9.2.m1.1.1.cmml" xref="S3.T2.13.9.9.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.13.9.9.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.13.9.9.2.m1.1d">↑</annotation></semantics></math> 17.80%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T2.13.9.9.6" style="padding-left:1.4pt;padding-right:1.4pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
</tr>
<tr class="ltx_tr" id="S3.T2.15.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.15.11.11.3" style="padding-left:1.4pt;padding-right:1.4pt;">RL</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.15.11.11.4" style="padding-left:1.4pt;padding-right:1.4pt;">DeepSacleR</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.15.11.11.5" style="padding-left:1.4pt;padding-right:1.4pt;">GRPO (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.14.10.10.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="\text{Blended}_{2}" class="ltx_Math" display="inline" id="S3.T2.14.10.10.1.m1.1"><semantics id="S3.T2.14.10.10.1.m1.1a"><msub id="S3.T2.14.10.10.1.m1.1.1" xref="S3.T2.14.10.10.1.m1.1.1.cmml"><mtext id="S3.T2.14.10.10.1.m1.1.1.2" xref="S3.T2.14.10.10.1.m1.1.1.2a.cmml">Blended</mtext><mn id="S3.T2.14.10.10.1.m1.1.1.3" xref="S3.T2.14.10.10.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T2.14.10.10.1.m1.1b"><apply id="S3.T2.14.10.10.1.m1.1.1.cmml" xref="S3.T2.14.10.10.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T2.14.10.10.1.m1.1.1.1.cmml" xref="S3.T2.14.10.10.1.m1.1.1">subscript</csymbol><ci id="S3.T2.14.10.10.1.m1.1.1.2a.cmml" xref="S3.T2.14.10.10.1.m1.1.1.2"><mtext id="S3.T2.14.10.10.1.m1.1.1.2.cmml" xref="S3.T2.14.10.10.1.m1.1.1.2">Blended</mtext></ci><cn id="S3.T2.14.10.10.1.m1.1.1.3.cmml" type="integer" xref="S3.T2.14.10.10.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.14.10.10.1.m1.1c">\text{Blended}_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T2.14.10.10.1.m1.1d">Blended start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.15.11.11.2" style="padding-left:1.4pt;padding-right:1.4pt;">AIME: 43.10% (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.15.11.11.2.m1.1"><semantics id="S3.T2.15.11.11.2.m1.1a"><mo id="S3.T2.15.11.11.2.m1.1.1" stretchy="false" xref="S3.T2.15.11.11.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.15.11.11.2.m1.1b"><ci id="S3.T2.15.11.11.2.m1.1.1.cmml" xref="S3.T2.15.11.11.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.15.11.11.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.15.11.11.2.m1.1d">↑</annotation></semantics></math> 14.20%)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T2.15.11.11.6" style="padding-left:1.4pt;padding-right:1.4pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 2 provides a detailed overview of the efficient reasoning methods discussed in Section 3.2 of the paper.  The table categorizes these methods, showing their training schemes, the datasets used for training, and their performance results.  Importantly, it defines what 'Blended1' and 'Blended2' represent in terms of the datasets used: Blended1 is a combination of the s1 and DeepScaleR datasets, while Blended2 combines the Omni-MATH, AIME, AMC, and Still datasets. This clarification is crucial for understanding the context and comparability of the results presented.
> <details>
> <summary>read the caption</summary>
> Table 2: Overview of efficient reasoning methods in Section 3.2. Blended1subscriptBlended1\text{Blended}_{1}Blended start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT represents the combination of s1 and DeepSacleR datasets; Blended2subscriptBlended2\text{Blended}_{2}Blended start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT represents the combination of Omni-MATH, AIME, AMC, and Still datasets.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T3.32.24">
<tr class="ltx_tr" id="S3.T3.9.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.2" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.2.1">Type</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.3" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.3.1">Methods</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.4" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.4.1">Training Scheme</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.5" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.5.1">Criteria</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.1" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.1.1">GSM8K <math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.9.1.1.1.1.m1.1"><semantics id="S3.T3.9.1.1.1.1.m1.1a"><mi id="S3.T3.9.1.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T3.9.1.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.9.1.1.1.1.m1.1b"><ci id="S3.T3.9.1.1.1.1.m1.1.1.cmml" xref="S3.T3.9.1.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.9.1.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.9.1.1.1.1.m1.1d">roman_Δ</annotation></semantics></math> Acc.</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="S3.T3.9.1.1.6" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.6.1">Base Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_tt" id="S3.T3.9.1.1.7" style="padding-left:1.4pt;padding-right:1.4pt;"><span class="ltx_text ltx_font_bold" id="S3.T3.9.1.1.7.1">Efficiency-up Ratio</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.11.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.11.3.3.3" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.11.3.3.4" style="padding-left:1.4pt;padding-right:1.4pt;">ASC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.11.3.3.5" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.10.2.2.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="C_{1}" class="ltx_Math" display="inline" id="S3.T3.10.2.2.1.m1.1"><semantics id="S3.T3.10.2.2.1.m1.1a"><msub id="S3.T3.10.2.2.1.m1.1.1" xref="S3.T3.10.2.2.1.m1.1.1.cmml"><mi id="S3.T3.10.2.2.1.m1.1.1.2" xref="S3.T3.10.2.2.1.m1.1.1.2.cmml">C</mi><mn id="S3.T3.10.2.2.1.m1.1.1.3" xref="S3.T3.10.2.2.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.10.2.2.1.m1.1b"><apply id="S3.T3.10.2.2.1.m1.1.1.cmml" xref="S3.T3.10.2.2.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.10.2.2.1.m1.1.1.1.cmml" xref="S3.T3.10.2.2.1.m1.1.1">subscript</csymbol><ci id="S3.T3.10.2.2.1.m1.1.1.2.cmml" xref="S3.T3.10.2.2.1.m1.1.1.2">𝐶</ci><cn id="S3.T3.10.2.2.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.10.2.2.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.10.2.2.1.m1.1c">C_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.10.2.2.1.m1.1d">italic_C start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.11.3.3.6" style="padding-left:1.4pt;padding-right:1.4pt;">0.00%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="S3.T3.11.3.3.7" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-3.5-Turbo</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_t" id="S3.T3.11.3.3.2" style="padding-left:1.4pt;padding-right:1.4pt;">1.4 - 4.3 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.11.3.3.2.m1.1"><semantics id="S3.T3.11.3.3.2.m1.1a"><mo id="S3.T3.11.3.3.2.m1.1.1" xref="S3.T3.11.3.3.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.11.3.3.2.m1.1b"><times id="S3.T3.11.3.3.2.m1.1.1.cmml" xref="S3.T3.11.3.3.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.11.3.3.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.11.3.3.2.m1.1d">×</annotation></semantics></math> (S.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.13.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.13.5.5.3" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.13.5.5.4" style="padding-left:1.4pt;padding-right:1.4pt;">ESC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.13.5.5.5" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.12.4.4.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="C_{2}" class="ltx_Math" display="inline" id="S3.T3.12.4.4.1.m1.1"><semantics id="S3.T3.12.4.4.1.m1.1a"><msub id="S3.T3.12.4.4.1.m1.1.1" xref="S3.T3.12.4.4.1.m1.1.1.cmml"><mi id="S3.T3.12.4.4.1.m1.1.1.2" xref="S3.T3.12.4.4.1.m1.1.1.2.cmml">C</mi><mn id="S3.T3.12.4.4.1.m1.1.1.3" xref="S3.T3.12.4.4.1.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.12.4.4.1.m1.1b"><apply id="S3.T3.12.4.4.1.m1.1.1.cmml" xref="S3.T3.12.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.12.4.4.1.m1.1.1.1.cmml" xref="S3.T3.12.4.4.1.m1.1.1">subscript</csymbol><ci id="S3.T3.12.4.4.1.m1.1.1.2.cmml" xref="S3.T3.12.4.4.1.m1.1.1.2">𝐶</ci><cn id="S3.T3.12.4.4.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.12.4.4.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.12.4.4.1.m1.1c">C_{2}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.12.4.4.1.m1.1d">italic_C start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.13.5.5.6" style="padding-left:1.4pt;padding-right:1.4pt;">0.00%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.13.5.5.7" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.13.5.5.2" style="padding-left:1.4pt;padding-right:1.4pt;">1.3 - 5.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.13.5.5.2.m1.1"><semantics id="S3.T3.13.5.5.2.m1.1a"><mo id="S3.T3.13.5.5.2.m1.1.1" xref="S3.T3.13.5.5.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.13.5.5.2.m1.1b"><times id="S3.T3.13.5.5.2.m1.1.1.cmml" xref="S3.T3.13.5.5.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.13.5.5.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.13.5.5.2.m1.1d">×</annotation></semantics></math> (S.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.16.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.16.8.8.4" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.16.8.8.5" style="padding-left:1.4pt;padding-right:1.4pt;">DSC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.16.8.8.6" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.14.6.6.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="C_{1}" class="ltx_Math" display="inline" id="S3.T3.14.6.6.1.m1.1"><semantics id="S3.T3.14.6.6.1.m1.1a"><msub id="S3.T3.14.6.6.1.m1.1.1" xref="S3.T3.14.6.6.1.m1.1.1.cmml"><mi id="S3.T3.14.6.6.1.m1.1.1.2" xref="S3.T3.14.6.6.1.m1.1.1.2.cmml">C</mi><mn id="S3.T3.14.6.6.1.m1.1.1.3" xref="S3.T3.14.6.6.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.14.6.6.1.m1.1b"><apply id="S3.T3.14.6.6.1.m1.1.1.cmml" xref="S3.T3.14.6.6.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.14.6.6.1.m1.1.1.1.cmml" xref="S3.T3.14.6.6.1.m1.1.1">subscript</csymbol><ci id="S3.T3.14.6.6.1.m1.1.1.2.cmml" xref="S3.T3.14.6.6.1.m1.1.1.2">𝐶</ci><cn id="S3.T3.14.6.6.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.14.6.6.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.14.6.6.1.m1.1c">C_{1}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.14.6.6.1.m1.1d">italic_C start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math> + Difficulty</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.15.7.7.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T3.15.7.7.2.m1.1"><semantics id="S3.T3.15.7.7.2.m1.1a"><mo id="S3.T3.15.7.7.2.m1.1.1" stretchy="false" xref="S3.T3.15.7.7.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T3.15.7.7.2.m1.1b"><ci id="S3.T3.15.7.7.2.m1.1.1.cmml" xref="S3.T3.15.7.7.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.15.7.7.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.15.7.7.2.m1.1d">↓</annotation></semantics></math> 0.02%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.16.8.8.7" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.16.8.8.3" style="padding-left:1.4pt;padding-right:1.4pt;">2.6 - 5.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.16.8.8.3.m1.1"><semantics id="S3.T3.16.8.8.3.m1.1a"><mo id="S3.T3.16.8.8.3.m1.1.1" xref="S3.T3.16.8.8.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.16.8.8.3.m1.1b"><times id="S3.T3.16.8.8.3.m1.1.1.cmml" xref="S3.T3.16.8.8.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.16.8.8.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.16.8.8.3.m1.1d">×</annotation></semantics></math> (C.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.18.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.18.10.10.3" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.18.10.10.4" style="padding-left:1.4pt;padding-right:1.4pt;">Path-Consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.18.10.10.5" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.18.10.10.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.17.9.9.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.17.9.9.1.m1.1"><semantics id="S3.T3.17.9.9.1.m1.1a"><mo id="S3.T3.17.9.9.1.m1.1.1" stretchy="false" xref="S3.T3.17.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.17.9.9.1.m1.1b"><ci id="S3.T3.17.9.9.1.m1.1.1.cmml" xref="S3.T3.17.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.17.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.17.9.9.1.m1.1d">↑</annotation></semantics></math> 3.80%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.18.10.10.7" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.18.10.10.2" style="padding-left:1.4pt;padding-right:1.4pt;">1.2 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.18.10.10.2.m1.1"><semantics id="S3.T3.18.10.10.2.m1.1a"><mo id="S3.T3.18.10.10.2.m1.1.1" xref="S3.T3.18.10.10.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.18.10.10.2.m1.1b"><times id="S3.T3.18.10.10.2.m1.1.1.cmml" xref="S3.T3.18.10.10.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.18.10.10.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.18.10.10.2.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.20.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.20.12.12.3" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.20.12.12.4" style="padding-left:1.4pt;padding-right:1.4pt;">Self-Calibration</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.20.12.12.5" style="padding-left:1.4pt;padding-right:1.4pt;">SFT (Full FT)</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.20.12.12.6" style="padding-left:1.4pt;padding-right:1.4pt;">Confidence</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.19.11.11.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.19.11.11.1.m1.1"><semantics id="S3.T3.19.11.11.1.m1.1a"><mo id="S3.T3.19.11.11.1.m1.1.1" stretchy="false" xref="S3.T3.19.11.11.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.19.11.11.1.m1.1b"><ci id="S3.T3.19.11.11.1.m1.1.1.cmml" xref="S3.T3.19.11.11.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.19.11.11.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.19.11.11.1.m1.1d">↑</annotation></semantics></math> 2.99%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.20.12.12.7" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.1-8B-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.20.12.12.2" style="padding-left:1.4pt;padding-right:1.4pt;">16.7 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.20.12.12.2.m1.1"><semantics id="S3.T3.20.12.12.2.m1.1a"><mo id="S3.T3.20.12.12.2.m1.1.1" xref="S3.T3.20.12.12.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.20.12.12.2.m1.1b"><times id="S3.T3.20.12.12.2.m1.1.1.cmml" xref="S3.T3.20.12.12.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.20.12.12.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.20.12.12.2.m1.1d">×</annotation></semantics></math> (S.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.21.13.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.2" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.3" style="padding-left:1.4pt;padding-right:1.4pt;">Fast Best-of-N</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.4" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.5" style="padding-left:1.4pt;padding-right:1.4pt;">Reward score</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.21.13.13.7" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.21.13.13.1" style="padding-left:1.4pt;padding-right:1.4pt;">39.9 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.21.13.13.1.m1.1"><semantics id="S3.T3.21.13.13.1.m1.1a"><mo id="S3.T3.21.13.13.1.m1.1.1" xref="S3.T3.21.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.21.13.13.1.m1.1b"><times id="S3.T3.21.13.13.1.m1.1.1.cmml" xref="S3.T3.21.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.21.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.21.13.13.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.23.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.23.15.15.3" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.23.15.15.4" style="padding-left:1.4pt;padding-right:1.4pt;">ST-BoN</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.23.15.15.5" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.22.14.14.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="C_{3}" class="ltx_Math" display="inline" id="S3.T3.22.14.14.1.m1.1"><semantics id="S3.T3.22.14.14.1.m1.1a"><msub id="S3.T3.22.14.14.1.m1.1.1" xref="S3.T3.22.14.14.1.m1.1.1.cmml"><mi id="S3.T3.22.14.14.1.m1.1.1.2" xref="S3.T3.22.14.14.1.m1.1.1.2.cmml">C</mi><mn id="S3.T3.22.14.14.1.m1.1.1.3" xref="S3.T3.22.14.14.1.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.22.14.14.1.m1.1b"><apply id="S3.T3.22.14.14.1.m1.1.1.cmml" xref="S3.T3.22.14.14.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.22.14.14.1.m1.1.1.1.cmml" xref="S3.T3.22.14.14.1.m1.1.1">subscript</csymbol><ci id="S3.T3.22.14.14.1.m1.1.1.2.cmml" xref="S3.T3.22.14.14.1.m1.1.1.2">𝐶</ci><cn id="S3.T3.22.14.14.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.22.14.14.1.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.22.14.14.1.m1.1c">C_{3}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.22.14.14.1.m1.1d">italic_C start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.23.15.15.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.23.15.15.7" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.23.15.15.2" style="padding-left:1.4pt;padding-right:1.4pt;">2.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.23.15.15.2.m1.1"><semantics id="S3.T3.23.15.15.2.m1.1a"><mo id="S3.T3.23.15.15.2.m1.1.1" xref="S3.T3.23.15.15.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.23.15.15.2.m1.1b"><times id="S3.T3.23.15.15.2.m1.1.1.cmml" xref="S3.T3.23.15.15.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.23.15.15.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.23.15.15.2.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.26.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.26.18.18.4" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.26.18.18.5" style="padding-left:1.4pt;padding-right:1.4pt;">FastMCTS</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.26.18.18.6" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.24.16.16.1" style="padding-left:1.4pt;padding-right:1.4pt;"><math alttext="C_{4}" class="ltx_Math" display="inline" id="S3.T3.24.16.16.1.m1.1"><semantics id="S3.T3.24.16.16.1.m1.1a"><msub id="S3.T3.24.16.16.1.m1.1.1" xref="S3.T3.24.16.16.1.m1.1.1.cmml"><mi id="S3.T3.24.16.16.1.m1.1.1.2" xref="S3.T3.24.16.16.1.m1.1.1.2.cmml">C</mi><mn id="S3.T3.24.16.16.1.m1.1.1.3" xref="S3.T3.24.16.16.1.m1.1.1.3.cmml">4</mn></msub><annotation-xml encoding="MathML-Content" id="S3.T3.24.16.16.1.m1.1b"><apply id="S3.T3.24.16.16.1.m1.1.1.cmml" xref="S3.T3.24.16.16.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T3.24.16.16.1.m1.1.1.1.cmml" xref="S3.T3.24.16.16.1.m1.1.1">subscript</csymbol><ci id="S3.T3.24.16.16.1.m1.1.1.2.cmml" xref="S3.T3.24.16.16.1.m1.1.1.2">𝐶</ci><cn id="S3.T3.24.16.16.1.m1.1.1.3.cmml" type="integer" xref="S3.T3.24.16.16.1.m1.1.1.3">4</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.24.16.16.1.m1.1c">C_{4}</annotation><annotation encoding="application/x-llamapun" id="S3.T3.24.16.16.1.m1.1d">italic_C start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.25.17.17.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.25.17.17.2.m1.1"><semantics id="S3.T3.25.17.17.2.m1.1a"><mo id="S3.T3.25.17.17.2.m1.1.1" stretchy="false" xref="S3.T3.25.17.17.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.25.17.17.2.m1.1b"><ci id="S3.T3.25.17.17.2.m1.1.1.cmml" xref="S3.T3.25.17.17.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.25.17.17.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.25.17.17.2.m1.1d">↑</annotation></semantics></math> 1.80%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.26.18.18.7" style="padding-left:1.4pt;padding-right:1.4pt;">Qwen2.5-7B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.26.18.18.3" style="padding-left:1.4pt;padding-right:1.4pt;">1.1 - 3.0 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.26.18.18.3.m1.1"><semantics id="S3.T3.26.18.18.3.m1.1a"><mo id="S3.T3.26.18.18.3.m1.1.1" xref="S3.T3.26.18.18.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.26.18.18.3.m1.1b"><times id="S3.T3.26.18.18.3.m1.1.1.cmml" xref="S3.T3.26.18.18.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.26.18.18.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.26.18.18.3.m1.1d">×</annotation></semantics></math> (T.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.27.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.2" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.3" style="padding-left:1.4pt;padding-right:1.4pt;">Predictive-Decoding</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.4" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.27.19.19.1.m1.1"><semantics id="S3.T3.27.19.19.1.m1.1a"><mo id="S3.T3.27.19.19.1.m1.1.1" stretchy="false" xref="S3.T3.27.19.19.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.27.19.19.1.m1.1b"><ci id="S3.T3.27.19.19.1.m1.1.1.cmml" xref="S3.T3.27.19.19.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.27.19.19.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.27.19.19.1.m1.1d">↑</annotation></semantics></math> 0.40%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.27.19.19.6" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3-8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.27.19.19.7" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T3.30.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.30.22.22.4" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.28.20.20.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\phi" class="ltx_Math" display="inline" id="S3.T3.28.20.20.1.m1.1"><semantics id="S3.T3.28.20.20.1.m1.1a"><mi id="S3.T3.28.20.20.1.m1.1.1" xref="S3.T3.28.20.20.1.m1.1.1.cmml">ϕ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.28.20.20.1.m1.1b"><ci id="S3.T3.28.20.20.1.m1.1.1.cmml" xref="S3.T3.28.20.20.1.m1.1.1">italic-ϕ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.28.20.20.1.m1.1c">\phi</annotation><annotation encoding="application/x-llamapun" id="S3.T3.28.20.20.1.m1.1d">italic_ϕ</annotation></semantics></math>-Decoding</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.30.22.22.5" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.30.22.22.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.29.21.21.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.29.21.21.2.m1.1"><semantics id="S3.T3.29.21.21.2.m1.1a"><mo id="S3.T3.29.21.21.2.m1.1.1" stretchy="false" xref="S3.T3.29.21.21.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.29.21.21.2.m1.1b"><ci id="S3.T3.29.21.21.2.m1.1.1.cmml" xref="S3.T3.29.21.21.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.29.21.21.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.29.21.21.2.m1.1d">↑</annotation></semantics></math> 6.14%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.30.22.22.7" style="padding-left:1.4pt;padding-right:1.4pt;">LLaMA3.1-8B-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.30.22.22.3" style="padding-left:1.4pt;padding-right:1.4pt;">2.8 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.30.22.22.3.m1.1"><semantics id="S3.T3.30.22.22.3.m1.1a"><mo id="S3.T3.30.22.22.3.m1.1.1" xref="S3.T3.30.22.22.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.30.22.22.3.m1.1b"><times id="S3.T3.30.22.22.3.m1.1.1.cmml" xref="S3.T3.30.22.22.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.30.22.22.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.30.22.22.3.m1.1d">×</annotation></semantics></math> (F.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.31.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.2" style="padding-left:1.4pt;padding-right:1.4pt;">Efficient sampling</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.3" style="padding-left:1.4pt;padding-right:1.4pt;">Skeleton-of-Thought</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.4" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.6" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="S3.T3.31.23.23.7" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right" id="S3.T3.31.23.23.1" style="padding-left:1.4pt;padding-right:1.4pt;">1.1 - 2.4 <math alttext="\times" class="ltx_Math" display="inline" id="S3.T3.31.23.23.1.m1.1"><semantics id="S3.T3.31.23.23.1.m1.1a"><mo id="S3.T3.31.23.23.1.m1.1.1" xref="S3.T3.31.23.23.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T3.31.23.23.1.m1.1b"><times id="S3.T3.31.23.23.1.m1.1.1.cmml" xref="S3.T3.31.23.23.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.31.23.23.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T3.31.23.23.1.m1.1d">×</annotation></semantics></math> (L.)</td>
</tr>
<tr class="ltx_tr" id="S3.T3.32.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.2" style="padding-left:1.4pt;padding-right:1.4pt;">
<span class="ltx_ERROR undefined" id="S3.T3.32.24.24.2.1">\hdashline</span>Other methods</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.3" style="padding-left:1.4pt;padding-right:1.4pt;">AoT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.4" style="padding-left:1.4pt;padding-right:1.4pt;">training-free</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.5" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.1" style="padding-left:1.4pt;padding-right:1.4pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.32.24.24.1.m1.1"><semantics id="S3.T3.32.24.24.1.m1.1a"><mo id="S3.T3.32.24.24.1.m1.1.1" stretchy="false" xref="S3.T3.32.24.24.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.32.24.24.1.m1.1b"><ci id="S3.T3.32.24.24.1.m1.1.1.cmml" xref="S3.T3.32.24.24.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.32.24.24.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.32.24.24.1.m1.1d">↑</annotation></semantics></math> 3.00%</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="S3.T3.32.24.24.6" style="padding-left:1.4pt;padding-right:1.4pt;">GPT-4o-mini-0718</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_bb" id="S3.T3.32.24.24.7" style="padding-left:1.4pt;padding-right:1.4pt;">-</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 3 categorizes efficient decoding strategies discussed in Section 3.3 of the paper.  It compares these strategies based on their efficiency improvements, calculated as a ratio relative to a baseline.  The efficiency is measured in terms of sampling count (S), costs (C), latency (L), correct trajectory count (T), or FLOPs (F).  Different consistency metrics are also considered:  C1 represents the consistency of the majority candidate; C2, answer consistency across the sampling window; C3, internal consistency measured via Chain-of-Embedding; and C4, the probability of arriving at the correct answer.
> <details>
> <summary>read the caption</summary>
> Table 3: Overview of efficient reasoning methods in Section 3.3. The efficiency-up ratio is computed by comparing either the sampling count (S.), costs (C.), latency (L.), the correct trajectory count (T.), or FLOPs (F.). C1subscript𝐶1C_{1}italic_C start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT represents the consistency probability of the majority candidate. C2subscript𝐶2C_{2}italic_C start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT means the answer consistency within the sampling window. C3subscript𝐶3C_{3}italic_C start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT is the internal consistency via Chain-of-Embedding. C4subscript𝐶4C_{4}italic_C start_POSTSUBSCRIPT 4 end_POSTSUBSCRIPT is the probability of reaching the correct answer.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.1.1">
<tr class="ltx_tr" id="A1.T4.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.1" style="padding-left:17.1pt;padding-right:17.1pt;">      Type</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Name</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Task / Target</td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1.4" style="padding-left:17.1pt;padding-right:17.1pt;">      Source</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.1" style="padding-left:17.1pt;padding-right:17.1pt;">      <em class="ltx_emph ltx_font_italic" id="A1.T4.1.1.2.1.1">Datasets</em></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.2" style="padding-left:17.1pt;padding-right:17.1pt;">      GSM8K</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Math</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.1.2.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/openai/gsm8k" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.3">
<td class="ltx_td" id="A1.T4.1.1.3.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.2" style="padding-left:17.1pt;padding-right:17.1pt;">      MATH &amp; MATH-500</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Math</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.3.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/HuggingFaceH4/MATH-500" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.4">
<td class="ltx_td" id="A1.T4.1.1.4.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.2" style="padding-left:17.1pt;padding-right:17.1pt;">      AIME</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Math</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.4.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/HuggingFaceH4/aime_2024" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.5">
<td class="ltx_td" id="A1.T4.1.1.5.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.2" style="padding-left:17.1pt;padding-right:17.1pt;">      AMC</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Math</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.5.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/math-ai/amc23" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.6">
<td class="ltx_td" id="A1.T4.1.1.6.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.2" style="padding-left:17.1pt;padding-right:17.1pt;">      AQuA</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Math</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.6.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/deepmind/aqua_rat" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.7">
<td class="ltx_td" id="A1.T4.1.1.7.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.2" style="padding-left:17.1pt;padding-right:17.1pt;">      ProntoQA</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Logical</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.7.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/asaparov/prontoqa" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.8">
<td class="ltx_td" id="A1.T4.1.1.8.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.2" style="padding-left:17.1pt;padding-right:17.1pt;">      StrategyQA</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Common sense</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.8.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/ChilleD/StrategyQA" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.9">
<td class="ltx_td" id="A1.T4.1.1.9.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.2" style="padding-left:17.1pt;padding-right:17.1pt;">      HotPotQA</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Common sense</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.9.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/hotpotqa/hotpot_qa" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.10">
<td class="ltx_td" id="A1.T4.1.1.10.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Game of 24</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Algorithmic</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.10.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/princeton-nlp/tree-of-thought-llm" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.11">
<td class="ltx_td" id="A1.T4.1.1.11.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Bin Packing</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Algorithmic</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.11.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/divelab/sys2bench" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.12">
<td class="ltx_td" id="A1.T4.1.1.12.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.2" style="padding-left:17.1pt;padding-right:17.1pt;">      BlocksWorld</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Planning</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.12.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://huggingface.co/datasets/chiayewken/blocksworld" title="">HuggingFace Dataset</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.13">
<td class="ltx_td" id="A1.T4.1.1.13.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Rubik’s Cube</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Planning</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.13.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/divelab/sys2bench" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.14">
<td class="ltx_td" id="A1.T4.1.1.14.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.14.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Trip Plan</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.14.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Planning</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.14.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/divelab/sys2bench" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.15">
<td class="ltx_td" id="A1.T4.1.1.15.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.15.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Calendar Plan</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.15.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Planning</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.15.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/divelab/sys2bench" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.16">
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.16.1" style="padding-left:17.1pt;padding-right:17.1pt;">      <span class="ltx_ERROR undefined" id="A1.T4.1.1.16.1.1">\hdashline</span><em class="ltx_emph ltx_font_italic" id="A1.T4.1.1.16.1.2">Benchmarks</em></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.16.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Sys2Bench</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.16.3" style="padding-left:17.1pt;padding-right:17.1pt;">      General reasoning</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.16.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/divelab/sys2bench" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.17">
<td class="ltx_td" id="A1.T4.1.1.17.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.17.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Overthinking Bench</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.17.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Overthinking</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.17.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/AlexCuadron/ThinkingAgent" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.18">
<td class="ltx_td" id="A1.T4.1.1.18.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.18.2" style="padding-left:17.1pt;padding-right:17.1pt;">      Bag of Tricks</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.18.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Test-time computation (TTC)</td>
<td class="ltx_td ltx_align_left" id="A1.T4.1.1.18.4" style="padding-left:17.1pt;padding-right:17.1pt;">      <a class="ltx_ref ltx_href" href="https://github.com/usail-hkust/benchmark_inference_time_computation_LLM" title="">GitHub</a></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.1.19">
<td class="ltx_td ltx_border_bb" id="A1.T4.1.1.19.1" style="padding-left:17.1pt;padding-right:17.1pt;"></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.19.2" style="padding-left:17.1pt;padding-right:17.1pt;">      DNA Bench</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.19.3" style="padding-left:17.1pt;padding-right:17.1pt;">      Over-reasoning</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.1.19.4" style="padding-left:17.1pt;padding-right:17.1pt;">      -</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive list of datasets and benchmarks commonly used to evaluate the reasoning capabilities of large language models (LLMs).  It categorizes them by the type of reasoning task they assess (e.g., mathematical, logical, commonsense, algorithmic, planning), and indicates the source from where they can be obtained (e.g., Hugging Face Datasets, GitHub). The table offers researchers a centralized resource for selecting appropriate evaluation resources based on the specific reasoning aspects they are interested in.
> <details>
> <summary>read the caption</summary>
> Table 4: Full List of Datasets and Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.4.2">
<tr class="ltx_tr" id="A1.T5.4.2.3">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.4.2.3.1" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.2.3.1.1">Category</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.4.2.3.2" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.2.3.2.1">Type</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.4.2.3.3" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.2.3.3.1">Methods</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.4.2.3.4" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.2.3.4.1">Acc. / #Tokens</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T5.4.2.3.5" style="padding-left:14.2pt;padding-right:14.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T5.4.2.3.5.1">Base Model</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.3.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1.2" style="padding-left:14.2pt;padding-right:14.2pt;">Original Model</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1.3" style="padding-left:14.2pt;padding-right:14.2pt;">-</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1.1" style="padding-left:14.2pt;padding-right:14.2pt;">Baseline<sup class="ltx_sup" id="A1.T5.3.1.1.1.1">†</sup>
</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1.4" style="padding-left:14.2pt;padding-right:14.2pt;">70.67% / 10024</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T5.3.1.1.5" style="padding-left:14.2pt;padding-right:14.2pt;">DeepSeek-R1-32B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.4">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.4.1" style="padding-left:14.2pt;padding-right:14.2pt;">
<span class="ltx_ERROR undefined" id="A1.T5.4.2.4.1.1">\hdashline</span>Shorter</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.4.2" style="padding-left:14.2pt;padding-right:14.2pt;">RL</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.4.3" style="padding-left:14.2pt;padding-right:14.2pt;">DAST</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.4.4" style="padding-left:14.2pt;padding-right:14.2pt;">53.30% / 6337</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.4.5" style="padding-left:14.2pt;padding-right:14.2pt;">DeepSeek-R1-Distill-Qwen-7B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.5">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.5.1" style="padding-left:14.2pt;padding-right:14.2pt;">Shorter</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.5.2" style="padding-left:14.2pt;padding-right:14.2pt;">KD</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.5.3" style="padding-left:14.2pt;padding-right:14.2pt;">CoT-Valve</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.5.4" style="padding-left:14.2pt;padding-right:14.2pt;">43.30% / 4630</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.5.5" style="padding-left:14.2pt;padding-right:14.2pt;">QwQ-32B-Preview</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.6">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.6.1" style="padding-left:14.2pt;padding-right:14.2pt;">Shorter</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.6.2" style="padding-left:14.2pt;padding-right:14.2pt;">KD</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.6.3" style="padding-left:14.2pt;padding-right:14.2pt;">TOPS</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.6.4" style="padding-left:14.2pt;padding-right:14.2pt;">46.00% / 6427</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.6.5" style="padding-left:14.2pt;padding-right:14.2pt;">Qwen2.5-32B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.7">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.7.1" style="padding-left:14.2pt;padding-right:14.2pt;">
<span class="ltx_ERROR undefined" id="A1.T5.4.2.7.1.1">\hdashline</span>Smaller</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.7.2" style="padding-left:14.2pt;padding-right:14.2pt;">KD</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.7.3" style="padding-left:14.2pt;padding-right:14.2pt;">Mix</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.7.4" style="padding-left:14.2pt;padding-right:14.2pt;">10.00% / -</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.7.5" style="padding-left:14.2pt;padding-right:14.2pt;">Qwen2.5-3B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.8">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.8.1" style="padding-left:14.2pt;padding-right:14.2pt;">Smaller</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.8.2" style="padding-left:14.2pt;padding-right:14.2pt;">KD</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.8.3" style="padding-left:14.2pt;padding-right:14.2pt;">DLCoT</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.8.4" style="padding-left:14.2pt;padding-right:14.2pt;">53.30% / 18825</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.8.5" style="padding-left:14.2pt;padding-right:14.2pt;">Qwen2.5-14B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.9">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.9.1" style="padding-left:14.2pt;padding-right:14.2pt;">Smaller</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.9.2" style="padding-left:14.2pt;padding-right:14.2pt;">RL</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.9.3" style="padding-left:14.2pt;padding-right:14.2pt;">Open-RS</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.9.4" style="padding-left:14.2pt;padding-right:14.2pt;">46.70% / -</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.9.5" style="padding-left:14.2pt;padding-right:14.2pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.10">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.10.1" style="padding-left:14.2pt;padding-right:14.2pt;">Smaller</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.10.2" style="padding-left:14.2pt;padding-right:14.2pt;">RL</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.10.3" style="padding-left:14.2pt;padding-right:14.2pt;">DeepSacleR</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.10.4" style="padding-left:14.2pt;padding-right:14.2pt;">43.10% / -</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.10.5" style="padding-left:14.2pt;padding-right:14.2pt;">DeepSeek-R1-Distill-Qwen-1.5B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.11">
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.11.1" style="padding-left:14.2pt;padding-right:14.2pt;">
<span class="ltx_ERROR undefined" id="A1.T5.4.2.11.1.1">\hdashline</span>Faster</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.11.2" style="padding-left:14.2pt;padding-right:14.2pt;">Efficient self-consistency</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.11.3" style="padding-left:14.2pt;padding-right:14.2pt;">RPC</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.11.4" style="padding-left:14.2pt;padding-right:14.2pt;">9.50% / -</td>
<td class="ltx_td ltx_align_left" id="A1.T5.4.2.11.5" style="padding-left:14.2pt;padding-right:14.2pt;">InternLM-2-MATH-Plus 7B</td>
</tr>
<tr class="ltx_tr" id="A1.T5.4.2.2">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.4.2.2.2" style="padding-left:14.2pt;padding-right:14.2pt;">Faster</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.4.2.2.3" style="padding-left:14.2pt;padding-right:14.2pt;">Efficient sampling</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.4.2.2.1" style="padding-left:14.2pt;padding-right:14.2pt;">
<math alttext="\phi" class="ltx_Math" display="inline" id="A1.T5.4.2.2.1.m1.1"><semantics id="A1.T5.4.2.2.1.m1.1a"><mi id="A1.T5.4.2.2.1.m1.1.1" xref="A1.T5.4.2.2.1.m1.1.1.cmml">ϕ</mi><annotation-xml encoding="MathML-Content" id="A1.T5.4.2.2.1.m1.1b"><ci id="A1.T5.4.2.2.1.m1.1.1.cmml" xref="A1.T5.4.2.2.1.m1.1.1">italic-ϕ</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T5.4.2.2.1.m1.1c">\phi</annotation><annotation encoding="application/x-llamapun" id="A1.T5.4.2.2.1.m1.1d">italic_ϕ</annotation></semantics></math>-Decoding</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.4.2.2.4" style="padding-left:14.2pt;padding-right:14.2pt;">16.67% / -</td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T5.4.2.2.5" style="padding-left:14.2pt;padding-right:14.2pt;">LLaMA3.1-8B-I</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents the performance of various efficient reasoning methods on the AIME dataset.  The table shows the accuracy and the number of tokens generated by each method. The 'Original Model' column provides a baseline by showing the performance of the original, non-optimized models on the same dataset. The results are averaged across 5 independent runs to account for variability and provide a more robust comparison.
> <details>
> <summary>read the caption</summary>
> Table 5: Performance of efficient reasoning methods on the AIME dataset. ††\dagger† denotes the result of the original model, averaged over 5 independent runs.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.10903/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.10903/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}