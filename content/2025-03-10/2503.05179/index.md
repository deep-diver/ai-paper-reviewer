---
title: "Sketch-of-Thought: Efficient LLM Reasoning with Adaptive Cognitive-Inspired Sketching"
summary: "Sketch-of-Thought(SoT) reduces LLM token usage by up to 76% while maintaining (or improving) accuracy via cognitive-inspired sketching."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 KAIST",]
showSummary: true
date: 2025-03-07
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.05179 {{< /keyword >}}
{{< keyword icon="writer" >}} Simon A. Aytes et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-10 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.05179" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.05179" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.05179/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large language models excel at reasoning, but often use too many tokens, increasing computational cost. This paper introduces **Sketch-of-Thought (SoT)**, a new prompting framework to make LLM reasoning more efficient. It combines cognitive-inspired methods with linguistic constraints to minimize token usage while maintaining accuracy. 



SoT has three reasoning paradigms: **Conceptual Chaining, Chunked Symbolism, and Expert Lexicons**. A lightweight router model selects the best approach for each task. Evaluations across 15 datasets (including multilingual and multimodal) show SoT reduces token usage by up to 76% with minimal accuracy impact and sometimes even improves accuracy.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Sketch-of-Thought (SoT) offers a new prompting method that leverages cognitive science principles to reduce token usage in LLM reasoning. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} SoT combines Conceptual Chaining, Chunked Symbolism, and Expert Lexicons, dynamically selected by a lightweight router model. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Evaluations show SoT significantly reduces token usage (up to 76%) with minimal accuracy impact and even improves certain tasks. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it tackles the **growing verbosity of LLM reasoning** directly. SoT's cognitive-inspired approach offers a promising direction for creating more efficient AI systems, which is particularly crucial for **resource-constrained applications**. It also opens new research avenues such as how to combine SoT with other reasoning approaches.

------
#### Visual Insights



![](https://arxiv.org/html/2503.05179/x1.png)

> 🔼 This figure compares the performance of two large language model (LLM) prompting techniques, Chain-of-Thought (CoT) and the proposed Sketch-of-Thought (SoT), in terms of accuracy and the number of tokens used.  The results are averaged across 15 different reasoning datasets and utilize the Qwen-2.5 family of LLMs.  The shaded region highlights the area where the model demonstrates more efficient reasoning (higher accuracy with fewer tokens). SoT is shown to be superior to CoT in this regard, offering comparable accuracy with a significantly reduced number of tokens.
> <details>
> <summary>read the caption</summary>
> Figure 1: A comparison of accuracy and token usage in the Chain-of-Thought (CoT) Wei et al. (2023) and the proposed Sketch-of-Thought (SoT). Average of tests across 15 datasets using the family of Qwen-2.5 models. Shaded region represents more efficient reasoning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.5">
<tr class="ltx_tr" id="S3.T1.5.6">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="17" id="S3.T1.5.6.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.6.1.1">Reasoning Task</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7">
<td class="ltx_td ltx_border_t" id="S3.T1.5.7.1" style="padding-left:3.5pt;padding-right:3.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.2" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.2.1">Mathematical</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.3" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.3.1">Commonsense</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.4" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.4.1">Logical</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.5" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.5.1">Multi-Hop</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.6.1">Scientific</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T1.5.7.7" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.7.1">Specialized</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="4" id="S3.T1.5.7.8" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.8.1">Overall</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_left" id="S3.T1.5.5.6" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.5.6.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.7" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.8" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.9" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.10" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.11" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.12" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.13" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.14" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.15" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.16" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.17" style="padding-left:3.5pt;padding-right:3.5pt;">%</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.18" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1" style="padding-left:3.5pt;padding-right:3.5pt;">% <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.2.2" style="padding-left:3.5pt;padding-right:3.5pt;">Tokens <math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mo id="S3.T1.2.2.2.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><ci id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3" style="padding-left:3.5pt;padding-right:3.5pt;">Red. <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.m1.1"><semantics id="S3.T1.3.3.3.m1.1a"><mo id="S3.T1.3.3.3.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.m1.1b"><ci id="S3.T1.3.3.3.m1.1.1.cmml" xref="S3.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.5.5" style="padding-left:3.5pt;padding-right:3.5pt;">
<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T1.4.4.4.m1.1"><semantics id="S3.T1.4.4.4.m1.1a"><mi id="S3.T1.4.4.4.m1.1.1" mathvariant="normal" xref="S3.T1.4.4.4.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.4.m1.1b"><ci id="S3.T1.4.4.4.m1.1.1.cmml" xref="S3.T1.4.4.4.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.4.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.4.m1.1d">roman_Δ</annotation></semantics></math> Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.5.m2.1"><semantics id="S3.T1.5.5.5.m2.1a"><mo id="S3.T1.5.5.5.m2.1.1" stretchy="false" xref="S3.T1.5.5.5.m2.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.5.m2.1b"><ci id="S3.T1.5.5.5.m2.1.1.cmml" xref="S3.T1.5.5.5.m2.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.5.m2.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.5.m2.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T1.5.8.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.8.1.1">Qwen-2.5-32B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.9.1" style="padding-left:3.5pt;padding-right:3.5pt;">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.2" style="padding-left:3.5pt;padding-right:3.5pt;">84.17</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.3" style="padding-left:3.5pt;padding-right:3.5pt;">221</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.4" style="padding-left:3.5pt;padding-right:3.5pt;">90.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.5" style="padding-left:3.5pt;padding-right:3.5pt;">186</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.6" style="padding-left:3.5pt;padding-right:3.5pt;">71.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.7" style="padding-left:3.5pt;padding-right:3.5pt;">297</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.8" style="padding-left:3.5pt;padding-right:3.5pt;">79.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.9" style="padding-left:3.5pt;padding-right:3.5pt;">154</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.10" style="padding-left:3.5pt;padding-right:3.5pt;">92.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.11" style="padding-left:3.5pt;padding-right:3.5pt;">212</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.12" style="padding-left:3.5pt;padding-right:3.5pt;">67.66</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.13" style="padding-left:3.5pt;padding-right:3.5pt;">291</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.14" style="padding-left:3.5pt;padding-right:3.5pt;">80.95</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.15" style="padding-left:3.5pt;padding-right:3.5pt;">227</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10">
<td class="ltx_td ltx_align_left" id="S3.T1.5.10.1" style="padding-left:3.5pt;padding-right:3.5pt;">SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.2" style="padding-left:3.5pt;padding-right:3.5pt;">86.94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.3" style="padding-left:3.5pt;padding-right:3.5pt;">88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.4" style="padding-left:3.5pt;padding-right:3.5pt;">90.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.5" style="padding-left:3.5pt;padding-right:3.5pt;">30</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.6" style="padding-left:3.5pt;padding-right:3.5pt;">71.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.7" style="padding-left:3.5pt;padding-right:3.5pt;">65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.8" style="padding-left:3.5pt;padding-right:3.5pt;">81.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.9" style="padding-left:3.5pt;padding-right:3.5pt;">43</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.10" style="padding-left:3.5pt;padding-right:3.5pt;">91.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.11" style="padding-left:3.5pt;padding-right:3.5pt;">31</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.12" style="padding-left:3.5pt;padding-right:3.5pt;">61.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.13" style="padding-left:3.5pt;padding-right:3.5pt;">62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.14" style="padding-left:3.5pt;padding-right:3.5pt;">80.49</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.15" style="padding-left:3.5pt;padding-right:3.5pt;">53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.16.1">76.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.17.1">-0.46</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11">
<td class="ltx_td ltx_align_left" id="S3.T1.5.11.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.2" style="padding-left:3.5pt;padding-right:3.5pt;">84.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.3" style="padding-left:3.5pt;padding-right:3.5pt;">665</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.4" style="padding-left:3.5pt;padding-right:3.5pt;">91.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.5" style="padding-left:3.5pt;padding-right:3.5pt;">560</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.6" style="padding-left:3.5pt;padding-right:3.5pt;">71.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.7" style="padding-left:3.5pt;padding-right:3.5pt;">892</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.8" style="padding-left:3.5pt;padding-right:3.5pt;">81.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.9" style="padding-left:3.5pt;padding-right:3.5pt;">464</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.10" style="padding-left:3.5pt;padding-right:3.5pt;">93.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.11" style="padding-left:3.5pt;padding-right:3.5pt;">638</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.12" style="padding-left:3.5pt;padding-right:3.5pt;">67.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.13" style="padding-left:3.5pt;padding-right:3.5pt;">875</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.14" style="padding-left:3.5pt;padding-right:3.5pt;">81.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.15" style="padding-left:3.5pt;padding-right:3.5pt;">682</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.11.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12">
<td class="ltx_td ltx_align_left" id="S3.T1.5.12.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.2" style="padding-left:3.5pt;padding-right:3.5pt;">87.50</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.3" style="padding-left:3.5pt;padding-right:3.5pt;">265</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.4" style="padding-left:3.5pt;padding-right:3.5pt;">90.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.5" style="padding-left:3.5pt;padding-right:3.5pt;">92</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.6" style="padding-left:3.5pt;padding-right:3.5pt;">71.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.7" style="padding-left:3.5pt;padding-right:3.5pt;">197</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.8" style="padding-left:3.5pt;padding-right:3.5pt;">82.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.9" style="padding-left:3.5pt;padding-right:3.5pt;">129</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.10" style="padding-left:3.5pt;padding-right:3.5pt;">92.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.11" style="padding-left:3.5pt;padding-right:3.5pt;">94</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.12" style="padding-left:3.5pt;padding-right:3.5pt;">61.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.13" style="padding-left:3.5pt;padding-right:3.5pt;">187</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.14" style="padding-left:3.5pt;padding-right:3.5pt;">80.97</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.15" style="padding-left:3.5pt;padding-right:3.5pt;">161</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.12.16.1">76.22</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.12.17.1">-0.47</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T1.5.13.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.1.1">Qwen-2.5-14B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.14">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.14.1" style="padding-left:3.5pt;padding-right:3.5pt;">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.2" style="padding-left:3.5pt;padding-right:3.5pt;">83.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.3" style="padding-left:3.5pt;padding-right:3.5pt;">189</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.4" style="padding-left:3.5pt;padding-right:3.5pt;">90.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.5" style="padding-left:3.5pt;padding-right:3.5pt;">155</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.6" style="padding-left:3.5pt;padding-right:3.5pt;">67.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.7" style="padding-left:3.5pt;padding-right:3.5pt;">248</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.8" style="padding-left:3.5pt;padding-right:3.5pt;">77.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.9" style="padding-left:3.5pt;padding-right:3.5pt;">148</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.10" style="padding-left:3.5pt;padding-right:3.5pt;">90.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.11" style="padding-left:3.5pt;padding-right:3.5pt;">164</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.12" style="padding-left:3.5pt;padding-right:3.5pt;">65.11</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.13" style="padding-left:3.5pt;padding-right:3.5pt;">234</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.14" style="padding-left:3.5pt;padding-right:3.5pt;">79.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.15" style="padding-left:3.5pt;padding-right:3.5pt;">190</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.14.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.15">
<td class="ltx_td ltx_align_left" id="S3.T1.5.15.1" style="padding-left:3.5pt;padding-right:3.5pt;">SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.2" style="padding-left:3.5pt;padding-right:3.5pt;">82.72</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.3" style="padding-left:3.5pt;padding-right:3.5pt;">78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.4" style="padding-left:3.5pt;padding-right:3.5pt;">89.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.5" style="padding-left:3.5pt;padding-right:3.5pt;">35</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.6" style="padding-left:3.5pt;padding-right:3.5pt;">67.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.7" style="padding-left:3.5pt;padding-right:3.5pt;">63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.8" style="padding-left:3.5pt;padding-right:3.5pt;">79.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.9" style="padding-left:3.5pt;padding-right:3.5pt;">45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.10" style="padding-left:3.5pt;padding-right:3.5pt;">90.89</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.11" style="padding-left:3.5pt;padding-right:3.5pt;">37</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.12" style="padding-left:3.5pt;padding-right:3.5pt;">62.56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.13" style="padding-left:3.5pt;padding-right:3.5pt;">62</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.14" style="padding-left:3.5pt;padding-right:3.5pt;">78.88</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.15" style="padding-left:3.5pt;padding-right:3.5pt;">53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.16.1">71.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.15.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.15.17.1">-0.14</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.16">
<td class="ltx_td ltx_align_left" id="S3.T1.5.16.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.2" style="padding-left:3.5pt;padding-right:3.5pt;">83.17</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.3" style="padding-left:3.5pt;padding-right:3.5pt;">569</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.4" style="padding-left:3.5pt;padding-right:3.5pt;">92.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.5" style="padding-left:3.5pt;padding-right:3.5pt;">467</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.6" style="padding-left:3.5pt;padding-right:3.5pt;">69.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.7" style="padding-left:3.5pt;padding-right:3.5pt;">744</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.8" style="padding-left:3.5pt;padding-right:3.5pt;">76.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.9" style="padding-left:3.5pt;padding-right:3.5pt;">446</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.10" style="padding-left:3.5pt;padding-right:3.5pt;">91.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.11" style="padding-left:3.5pt;padding-right:3.5pt;">493</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.12" style="padding-left:3.5pt;padding-right:3.5pt;">66.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.13" style="padding-left:3.5pt;padding-right:3.5pt;">703</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.14" style="padding-left:3.5pt;padding-right:3.5pt;">79.75</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.15" style="padding-left:3.5pt;padding-right:3.5pt;">570</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.16.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.17">
<td class="ltx_td ltx_align_left" id="S3.T1.5.17.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.2" style="padding-left:3.5pt;padding-right:3.5pt;">83.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.3" style="padding-left:3.5pt;padding-right:3.5pt;">234</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.4" style="padding-left:3.5pt;padding-right:3.5pt;">90.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.5" style="padding-left:3.5pt;padding-right:3.5pt;">106</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.6" style="padding-left:3.5pt;padding-right:3.5pt;">68.66</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.7" style="padding-left:3.5pt;padding-right:3.5pt;">190</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.8" style="padding-left:3.5pt;padding-right:3.5pt;">80.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.9" style="padding-left:3.5pt;padding-right:3.5pt;">135</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.10" style="padding-left:3.5pt;padding-right:3.5pt;">91.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.11" style="padding-left:3.5pt;padding-right:3.5pt;">111</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.12" style="padding-left:3.5pt;padding-right:3.5pt;">62.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.13" style="padding-left:3.5pt;padding-right:3.5pt;">187</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.14" style="padding-left:3.5pt;padding-right:3.5pt;">79.28</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.15" style="padding-left:3.5pt;padding-right:3.5pt;">161</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.16.1">71.80</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.17.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.17.17.1">-0.47</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.18">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="S3.T1.5.18.1" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.18.1.1">Qwen-2.5-7B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.19">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.5.19.1" style="padding-left:3.5pt;padding-right:3.5pt;">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.2" style="padding-left:3.5pt;padding-right:3.5pt;">77.41</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.3" style="padding-left:3.5pt;padding-right:3.5pt;">180</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.4" style="padding-left:3.5pt;padding-right:3.5pt;">85.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.5" style="padding-left:3.5pt;padding-right:3.5pt;">172</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.6" style="padding-left:3.5pt;padding-right:3.5pt;">63.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.7" style="padding-left:3.5pt;padding-right:3.5pt;">279</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.8" style="padding-left:3.5pt;padding-right:3.5pt;">76.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.9" style="padding-left:3.5pt;padding-right:3.5pt;">137</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.10" style="padding-left:3.5pt;padding-right:3.5pt;">86.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.11" style="padding-left:3.5pt;padding-right:3.5pt;">183</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.12" style="padding-left:3.5pt;padding-right:3.5pt;">57.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.13" style="padding-left:3.5pt;padding-right:3.5pt;">246</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.14" style="padding-left:3.5pt;padding-right:3.5pt;">74.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.15" style="padding-left:3.5pt;padding-right:3.5pt;">200</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.19.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.20">
<td class="ltx_td ltx_align_left" id="S3.T1.5.20.1" style="padding-left:3.5pt;padding-right:3.5pt;">SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.2" style="padding-left:3.5pt;padding-right:3.5pt;">77.05</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.3" style="padding-left:3.5pt;padding-right:3.5pt;">73</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.4" style="padding-left:3.5pt;padding-right:3.5pt;">85.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.5" style="padding-left:3.5pt;padding-right:3.5pt;">27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.6" style="padding-left:3.5pt;padding-right:3.5pt;">59.78</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.7" style="padding-left:3.5pt;padding-right:3.5pt;">61</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.8" style="padding-left:3.5pt;padding-right:3.5pt;">77.22</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.9" style="padding-left:3.5pt;padding-right:3.5pt;">44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.10" style="padding-left:3.5pt;padding-right:3.5pt;">85.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.11" style="padding-left:3.5pt;padding-right:3.5pt;">27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.12" style="padding-left:3.5pt;padding-right:3.5pt;">58.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.13" style="padding-left:3.5pt;padding-right:3.5pt;">105</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.14" style="padding-left:3.5pt;padding-right:3.5pt;">73.69</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.15" style="padding-left:3.5pt;padding-right:3.5pt;">56</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.20.16.1">71.90</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.20.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.20.17.1">-0.74</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.21">
<td class="ltx_td ltx_align_left" id="S3.T1.5.21.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+CoT</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.2" style="padding-left:3.5pt;padding-right:3.5pt;">79.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.3" style="padding-left:3.5pt;padding-right:3.5pt;">542</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.4" style="padding-left:3.5pt;padding-right:3.5pt;">86.44</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.5" style="padding-left:3.5pt;padding-right:3.5pt;">516</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.6" style="padding-left:3.5pt;padding-right:3.5pt;">66.11</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.7" style="padding-left:3.5pt;padding-right:3.5pt;">837</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.8" style="padding-left:3.5pt;padding-right:3.5pt;">78.33</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.9" style="padding-left:3.5pt;padding-right:3.5pt;">412</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.10" style="padding-left:3.5pt;padding-right:3.5pt;">87.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.11" style="padding-left:3.5pt;padding-right:3.5pt;">550</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.12" style="padding-left:3.5pt;padding-right:3.5pt;">58.34</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.13" style="padding-left:3.5pt;padding-right:3.5pt;">739</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.14" style="padding-left:3.5pt;padding-right:3.5pt;">75.93</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.15" style="padding-left:3.5pt;padding-right:3.5pt;">600</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.16" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.21.17" style="padding-left:3.5pt;padding-right:3.5pt;">-</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.22">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T1.5.22.1" style="padding-left:3.5pt;padding-right:3.5pt;">SC+SoT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.2" style="padding-left:3.5pt;padding-right:3.5pt;">78.83</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.3" style="padding-left:3.5pt;padding-right:3.5pt;">219</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.4" style="padding-left:3.5pt;padding-right:3.5pt;">85.66</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.5" style="padding-left:3.5pt;padding-right:3.5pt;">81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.6" style="padding-left:3.5pt;padding-right:3.5pt;">60.34</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.7" style="padding-left:3.5pt;padding-right:3.5pt;">184</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.8" style="padding-left:3.5pt;padding-right:3.5pt;">77.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.9" style="padding-left:3.5pt;padding-right:3.5pt;">134</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.10" style="padding-left:3.5pt;padding-right:3.5pt;">85.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.11" style="padding-left:3.5pt;padding-right:3.5pt;">82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.12" style="padding-left:3.5pt;padding-right:3.5pt;">59.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.13" style="padding-left:3.5pt;padding-right:3.5pt;">317</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.14" style="padding-left:3.5pt;padding-right:3.5pt;">74.36</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.15" style="padding-left:3.5pt;padding-right:3.5pt;">169</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.16" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.22.16.1">71.90</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.22.17" style="padding-left:3.5pt;padding-right:3.5pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.22.17.1">-1.57</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of three different prompting methods: Sketch-of-Thought (SoT), Chain-of-Thought (CoT), and Self-Consistency (SC) across 15 reasoning datasets.  The results are categorized by reasoning type (Mathematical, Commonsense, Logical, Multi-hop, Scientific, Specialized) and show the average accuracy and number of tokens used for each method within each category.  Overall performance metrics are also provided, including the percentage reduction in tokens achieved by SoT compared to CoT and the change in accuracy. The table is broken down by model size (7B, 14B, 32B parameters).
> <details>
> <summary>read the caption</summary>
> Table 1: Primary Experimental Results for SoT. Results are shown for Sketch-of-Thought (SoT), Chain-of-Thought (CoT), and Self-Consistency (SC). We separate results by reasoning type and report them alongside overall results. For each reasoning task we report the average of all associated datasets. '%' denotes accuracy and 'Tokens' denotes the number of tokens. In the Overall section, we report two additional metrics: the token reduction percentage (shown as 'Red.') and the change in accuracy between SoT and the baseline (shown as 'ΔΔ\Deltaroman_Δ Acc').
> </details>





### In-depth insights


#### Cognitive Sketch
While the term "Cognitive Sketch" isn't explicitly used in the document, the paper's core concept, **Sketch-of-Thought (SoT)**, strongly embodies it.  SoT draws inspiration from cognitive science, specifically the idea of "sketches" as efficient intermediaries in cognitive processes. The paper emphasizes **the use of symbolic representations, domain-specific notation, and abbreviation** to distill reasoning steps. The goal is to minimize verbosity while preserving essential logical connections, mirroring how experts often approach problem-solving. The paper implements it using Conceptual Chaining, Chunked Symbolism, and Expert Lexicons, all acting as methods to create simplified cognitive representations. SoT is about finding the "sketch" which efficiently conveys the thought process.

#### Adaptive Routing
Adaptive routing, as presented, is a **crucial component** for the Sketch-of-Thought framework, intelligently selecting the most suitable reasoning paradigm for a given query. This dynamic approach is essential because different reasoning tasks benefit from different cognitive strategies, such as Conceptual Chaining, Chunked Symbolism, or Expert Lexicons. By analyzing question characteristics, like the presence of mathematical symbols or domain-specific terminology, the **lightweight router model** dynamically chooses the optimal strategy, maximizing efficiency and accuracy. This adaptability ensures that resources are allocated effectively, leveraging each paradigm's strengths while minimizing its weaknesses. The goal is a **seamless and efficient integration** of cognitive science principles into language model reasoning, mirroring the nuanced decision-making processes of human experts. Adaptive routing **improves token efficiency** and maintains strong performance across diverse reasoning domains. It showcases a shift towards more context-aware AI.

#### Token Reduction
The paper introduces Sketch-of-Thought (SoT) as a method to substantially **reduce token usage in LLMs** during reasoning, addressing the verbosity issues of Chain-of-Thought (CoT). SoT aims for a **70-80% token reduction** while maintaining or improving accuracy. They use **cognitive-inspired** paradigms and it could potentially lead to computational savings and improve practicality, especially in resource-constrained environments, democratizing AI access. This is achieved through structured, less verbose reasoning processes.

#### LLM Efficiency
LLM efficiency is a crucial research area, focusing on reducing computational costs and token usage. **Sketch-of-Thought (SoT)**, for example, enhances efficiency by combining cognitive-inspired reasoning with linguistic constraints, yielding substantial token reductions while maintaining accuracy. Methods like **concise chain-of-thought** aim to limit response length, and other strategies distill verbose reasoning into efficient forms. By structuring reasoning according to cognitive principles, models can focus on essential logical connections, leading to more efficient and cost-effective AI reasoning.

#### Multimodal SoT
Based on the provided research paper, 'Multimodal SoT' likely refers to the **extension of Sketch-of-Thought (SoT) to scenarios involving both text and images.**  It seems the authors explore whether SoT, which reduces token usage by generating concise reasoning chains, can be effectively applied when the input includes visual information.  The experiment with the multimodal split of ScienceQA suggests they aim to demonstrate that SoT can **dramatically reduce verbosity while preserving performance** even when reasoning requires visual and textual integration. This implies that the core principles of SoT – cognitive-inspired sketching, paradigm selection, and efficient knowledge representation – are generalizable and **not limited to text-based reasoning.** This is significant because real-world applications often involve processing information from multiple modalities. The potential for SoT to improve efficiency in multimodal reasoning could be crucial for deploying LLMs in resource-constrained environments where image processing is also computationally expensive. A key element is handling the image context, where it's either ignored or implicitly represented in the paradigm selection process.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.1">
<tr class="ltx_tr" id="S3.T2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.1.1.2">Lang.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.3">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.4">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.5">%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.6">Red.</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1">Acc<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T2.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.m1.1a"><mi id="S3.T2.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T2.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.m1.1d">roman_Δ</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.2.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.2.1.1">Korean</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.2">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.3">315</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.4">77.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.5">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.2.6">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.3">
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.1">SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.2">45</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.3">76.26</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.4.1">85.71</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.3.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.3.5.1">-1.01</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.1.4.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.4.1.1">Italian</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.2">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.3">336</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.4">81.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.5">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.4.6">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.5">
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.1">SoT</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.2">50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.3">79.50</td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.4.1">85.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T2.1.5.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.5.5.1">-2.00</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S3.T2.1.6.1" rowspan="2"><span class="ltx_text" id="S3.T2.1.6.1.1">German</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.2">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.3">309</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.4">83.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.5">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.1.6.6">–</td>
</tr>
<tr class="ltx_tr" id="S3.T2.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.1">SoT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.2">46</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.3">84.92</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.4"><span class="ltx_text ltx_font_bold" id="S3.T2.1.7.4.1">85.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.1.7.5"><span class="ltx_text ltx_font_bold" id="S3.T2.1.7.5.1">1.50</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Chain-of-Thought (CoT) and Sketch-of-Thought (SoT) prompting methods across three different languages: Korean, Italian, and German.  For each language, the table shows the number of tokens used by both CoT and SoT, as well as their respective accuracy scores.  This allows for a direct comparison of the efficiency and effectiveness of the two methods in multilingual contexts.
> <details>
> <summary>read the caption</summary>
> Table 2: Multilingual Results. Performance comparison of CoT and SoT across different languages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.1">
<tr class="ltx_tr" id="S3.T3.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.1.1.2">Method</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.3">Tokens</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.4">%</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.5">Red</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1">Acc<math alttext="\Delta" class="ltx_Math" display="inline" id="S3.T3.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.m1.1a"><mi id="S3.T3.1.1.1.m1.1.1" mathvariant="normal" xref="S3.T3.1.1.1.m1.1.1.cmml">Δ</mi><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.m1.1.1">Δ</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.m1.1c">\Delta</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.m1.1d">roman_Δ</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.1.2.1">CoT</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.2">151</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.3">85.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.4">–</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.1.2.5">–</td>
</tr>
<tr class="ltx_tr" id="S3.T3.1.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.1.3.1">SoT</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.3.2">28</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.3.3">82.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.3.4"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.4.1">81.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.1.3.5"><span class="ltx_text ltx_font_bold" id="S3.T3.1.3.5.1">-3.44</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of Chain-of-Thought (CoT) and Sketch-of-Thought (SoT) prompting methods on multimodal reasoning tasks using the Qwen-2.5-VL 7B model.  It shows the number of tokens generated, the accuracy achieved, the percentage reduction in tokens achieved by SoT compared to CoT, and the difference in accuracy between the two methods. The results demonstrate SoT's efficiency in reducing token usage while maintaining comparable accuracy to CoT in multimodal scenarios.
> <details>
> <summary>read the caption</summary>
> Table 3: Multimodal Results. Performance comparison of CoT and SoT for multimodal reasoning tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T4.1">
<tr class="ltx_tr" id="A1.T4.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T4.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Dataset</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">Citation</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T4.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">HF ID</td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T4.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Cobbe et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib8" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.2.3.1">gsm8k</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.3">
<td class="ltx_td ltx_align_left" id="A1.T4.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">SVAMP</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Patel et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib29" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.3.3.1">ChilleD/SVAMP</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.4">
<td class="ltx_td ltx_align_left" id="A1.T4.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">AQUA-RAT</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Ling et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib22" title="">2017</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.4.3.1">aqua_rat</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.5">
<td class="ltx_td ltx_align_left" id="A1.T4.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">DROP</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Dua et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib10" title="">2019</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.5.3.1">drop</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.6">
<td class="ltx_td ltx_align_left" id="A1.T4.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">OpenbookQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Mihaylov et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib25" title="">2018</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.6.3.1">openbookqa</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.7">
<td class="ltx_td ltx_align_left" id="A1.T4.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">StrategyQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Geva et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib12" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.7.3.1">ChilleD/StrategyQA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.8">
<td class="ltx_td ltx_align_left" id="A1.T4.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">LogiQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Liu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib23" title="">2020</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.8.3.1">lucasmccabe/logiqa</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.9">
<td class="ltx_td ltx_align_left" id="A1.T4.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">Reclor</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Yu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib46" title="">2020</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.9.3.1">metaeval/reclor</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.10">
<td class="ltx_td ltx_align_left" id="A1.T4.1.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">HotPotQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Yang et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib44" title="">2018</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.10.3.1">hotpot_qa</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.11">
<td class="ltx_td ltx_align_left" id="A1.T4.1.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">MuSiQue-Ans</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Trivedi et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib39" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.11.3.1">dgslibisey/MuSiQue</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.12">
<td class="ltx_td ltx_align_left" id="A1.T4.1.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">QASC</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Khot et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib21" title="">2020</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.12.3.1">allenai/qasc</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.13">
<td class="ltx_td ltx_align_left" id="A1.T4.1.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">Worldtree</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Jansen et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib17" title="">2018</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.13.3.1">nguyen-brat/worldtree</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.14">
<td class="ltx_td ltx_align_left" id="A1.T4.1.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">PubMedQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Jin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib20" title="">2019</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.14.3.1">qiaojin/PubMedQA</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.15">
<td class="ltx_td ltx_align_left" id="A1.T4.1.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">MedQA</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Jin et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib19" title="">2020</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.15.3.1">bigbio/med_qa</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.16">
<td class="ltx_td ltx_align_left" id="A1.T4.1.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">MMLU</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib15" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.16.3.1">cais/mmlu</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.17">
<td class="ltx_td ltx_align_left" id="A1.T4.1.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">MMMLU</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Hendrycks et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib15" title="">2021</a>)</cite></td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.17.3.1">openai/MMMLU</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.1.18">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T4.1.18.1" style="padding-left:2.0pt;padding-right:2.0pt;">ScienceQA</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"><cite class="ltx_cite ltx_citemacro_cite">Lu et al. (<a class="ltx_ref" href="https://arxiv.org/html/2503.05179v1#bib.bib24" title="">2022</a>)</cite></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T4.1.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_typewriter" id="A1.T4.1.18.3.1">lmms-lab/ScienceQA</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table lists the fifteen datasets used in the paper's experiments.  For each dataset, it provides the dataset's full citation and its corresponding Hugging Face ID, a unique identifier used to easily access the dataset's data within the Hugging Face ecosystem.  This allows for reproducibility and facilitates access for other researchers.
> <details>
> <summary>read the caption</summary>
> Table 4: Dataset Information. Details of datasets used for evaluation including their citation and Hugging Face ID.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.05179/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.05179/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}