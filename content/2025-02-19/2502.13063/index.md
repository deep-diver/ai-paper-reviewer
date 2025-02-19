---
title: "Cramming 1568 Tokens into a Single Vector and Back Again: Exploring the Limits of Embedding Space Capacity"
summary: "LLMs can losslessly compress 1568 tokens into a single vector, surpassing prior methods by two orders of magnitude."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 AIRI",]
showSummary: true
date: 2025-02-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.13063 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuri Kuratov et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-02-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.13063" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.13063" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.13063/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current methods for compressing long text sequences into shorter vectors for use in LLMs have limitations, with compression ratios rarely exceeding x10.  This is surprising given the theoretically high information capacity of large vectors. The authors explore this discrepancy and aim to discover the true limits of compression using optimized techniques.

The researchers used a per-sample optimization procedure to replace traditional encoders and demonstrate significantly higher compression ratios.  They show that compression limits depend on the uncertainty to be reduced (cross-entropy loss), not input length. The results reveal a considerable gap between the theoretical capacity of input embeddings and their practical use, suggesting opportunities to significantly enhance LLM design and efficiency.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Achieved lossless compression ratios up to x1500, far exceeding prior methods. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Compression limits are determined by uncertainty reduction rather than input length. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Linear scaling of compression capacity with the number of trainable vectors observed. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial because **it challenges the prevailing assumptions about the capacity of input embeddings in large language models (LLMs)**.  By demonstrating significantly higher compression ratios than previously thought possible, it **opens new avenues for optimizing LLM design**, improving efficiency, and potentially enabling entirely new functionalities. This has **significant implications for researchers working on LLM efficiency, memory augmentation, and long-context processing.**

------
#### Visual Insights



![](https://arxiv.org/html/2502.13063/x1.png)

> 🔼 This figure shows the maximum number of tokens that different language models can process within a single input vector.  The x-axis represents the number of tokens in the input text, and the y-axis represents the model's capacity to handle those tokens.  Each bar represents a different language model, showing how many tokens each model can effectively process before encountering performance limitations. This illustrates the varying capacities of different language models in compressing text information into a single vector, highlighting the limitations and potential for improvement.
> <details>
> <summary>read the caption</summary>
> Figure 1:  How many tokens fit into a single input vector? We estimate maximum number of tokens that can be decoded from a single input vector across various language models.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T1.36.36">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.36.36.37.1">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.36.36.37.1.1" style="padding-top:1pt;padding-bottom:1pt;"></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S4.T1.36.36.37.1.2" style="padding-top:1pt;padding-bottom:1pt;"></th>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.3.1">Pythia-160M</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.4.1">Pythia-410M</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.5.1">Pythia-1.4B</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.6.1">Llama-3.2-1B</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.7" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.7.1">Llama-3.2-3B</span></td>
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.36.36.37.1.8" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.37.1.8.1">Llama-3.1-8B</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.38.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.36.36.38.2.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.38.2.1.1">PG-19</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.36.36.38.2.2" style="padding-top:1pt;padding-bottom:1pt;">Max, tokens</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.3" style="padding-top:1pt;padding-bottom:1pt;">80</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.4" style="padding-top:1pt;padding-bottom:1pt;">96</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.5" style="padding-top:1pt;padding-bottom:1pt;">160</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.6" style="padding-top:1pt;padding-bottom:1pt;">512</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.7" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.38.2.8" style="padding-top:1pt;padding-bottom:1pt;">1568</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.6.6.6.7" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.6.6.6.7.1" style="background-color:#D9D9D9;">Gain, tokens</span></th>
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.1.1" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.1.1.1.1.1" style="background-color:#D9D9D9;">70.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.1.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.1.m1.1d">±</annotation></semantics></math>11.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.2.2" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.2.2.2.2.1" style="background-color:#D9D9D9;">81.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.1.m1.1"><semantics id="S4.T1.2.2.2.2.1.m1.1a"><mo id="S4.T1.2.2.2.2.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.2.2.2.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.2.2.2.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.1.m1.1d">±</annotation></semantics></math>12.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.3.3" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.3.3.3.3.1" style="background-color:#D9D9D9;">158.0<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.3.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.3.3.3.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.3.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.1.m1.1d">±</annotation></semantics></math>29.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.4.4.4.4" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.4.4.4.4.1" style="background-color:#D9D9D9;">426.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.4.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.4.4.4.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.4.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.1.m1.1d">±</annotation></semantics></math>79.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.5.5.5.5" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.5.5.5.5.1" style="background-color:#D9D9D9;">720.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.5.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.5.5.5.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.5.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.1.m1.1d">±</annotation></semantics></math>80.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.6.6.6.6" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.6.6.6.6.1" style="background-color:#D9D9D9;">1094.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.6.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.6.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.6.6.6.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.6.1.m1.1d">±</annotation></semantics></math>127.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.12.12.12.7" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.12.12.12.7.1" style="background-color:#BFBFBF;">Information Gain</span></th>
<td class="ltx_td ltx_align_left" id="S4.T1.7.7.7.1" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.7.7.7.1.1" style="background-color:#BFBFBF;">396.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.1.m1.1"><semantics id="S4.T1.7.7.7.1.1.m1.1a"><mo id="S4.T1.7.7.7.1.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.7.7.7.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.7.1.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.1.m1.1d">±</annotation></semantics></math>46.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.8.8.8.2" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.8.8.8.2.1" style="background-color:#BFBFBF;">431.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.8.8.8.2.1.m1.1"><semantics id="S4.T1.8.8.8.2.1.m1.1a"><mo id="S4.T1.8.8.8.2.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.8.8.8.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.8.2.1.m1.1.1.cmml" xref="S4.T1.8.8.8.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.2.1.m1.1d">±</annotation></semantics></math>51.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.9.9.9.3" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.9.9.9.3.1" style="background-color:#BFBFBF;">792.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.9.9.9.3.1.m1.1"><semantics id="S4.T1.9.9.9.3.1.m1.1a"><mo id="S4.T1.9.9.9.3.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.9.9.9.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.9.9.9.3.1.m1.1.1.cmml" xref="S4.T1.9.9.9.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.3.1.m1.1d">±</annotation></semantics></math>143.4</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.10.10.10.4" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.10.10.10.4.1" style="background-color:#BFBFBF;">2119.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.10.10.10.4.1.m1.1"><semantics id="S4.T1.10.10.10.4.1.m1.1a"><mo id="S4.T1.10.10.10.4.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.10.10.10.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.10.10.10.4.1.m1.1.1.cmml" xref="S4.T1.10.10.10.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.4.1.m1.1d">±</annotation></semantics></math>364.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.11.11.11.5" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.11.11.11.5.1" style="background-color:#BFBFBF;">3292.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.11.11.11.5.1.m1.1"><semantics id="S4.T1.11.11.11.5.1.m1.1a"><mo id="S4.T1.11.11.11.5.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.11.11.11.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.11.11.11.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.11.11.11.5.1.m1.1.1.cmml" xref="S4.T1.11.11.11.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.11.11.11.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.11.11.11.5.1.m1.1d">±</annotation></semantics></math>320.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.12.12.12.6" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.12.12.12.6.1" style="background-color:#BFBFBF;">4865.7<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.12.12.12.6.1.m1.1"><semantics id="S4.T1.12.12.12.6.1.m1.1a"><mo id="S4.T1.12.12.12.6.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.12.12.12.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.12.12.12.6.1.m1.1.1.cmml" xref="S4.T1.12.12.12.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.6.1.m1.1d">±</annotation></semantics></math>546.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.39.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.36.36.39.3.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.39.3.1.1">Fanfics</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.36.36.39.3.2" style="padding-top:1pt;padding-bottom:1pt;">Max, tokens</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.3" style="padding-top:1pt;padding-bottom:1pt;">80</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.4" style="padding-top:1pt;padding-bottom:1pt;">96</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.5" style="padding-top:1pt;padding-bottom:1pt;">192</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.6" style="padding-top:1pt;padding-bottom:1pt;">512</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.7" style="padding-top:1pt;padding-bottom:1pt;">1024</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.39.3.8" style="padding-top:1pt;padding-bottom:1pt;">1568</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.18.18.18.7" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.18.18.18.7.1" style="background-color:#D9D9D9;">Gain, tokens</span></th>
<td class="ltx_td ltx_align_left" id="S4.T1.13.13.13.1" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.13.13.13.1.1" style="background-color:#D9D9D9;">70.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.1.m1.1"><semantics id="S4.T1.13.13.13.1.1.m1.1a"><mo id="S4.T1.13.13.13.1.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.13.13.13.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.13.13.13.1.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.1.m1.1d">±</annotation></semantics></math>10.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.14.14.14.2" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.14.14.14.2.1" style="background-color:#D9D9D9;">81.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.14.14.14.2.1.m1.1"><semantics id="S4.T1.14.14.14.2.1.m1.1a"><mo id="S4.T1.14.14.14.2.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.14.14.14.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.14.14.14.2.1.m1.1.1.cmml" xref="S4.T1.14.14.14.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.2.1.m1.1d">±</annotation></semantics></math>11.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.15.15.15.3" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.15.15.15.3.1" style="background-color:#D9D9D9;">152.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.15.15.15.3.1.m1.1"><semantics id="S4.T1.15.15.15.3.1.m1.1a"><mo id="S4.T1.15.15.15.3.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.15.15.15.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.15.15.15.3.1.m1.1.1.cmml" xref="S4.T1.15.15.15.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.3.1.m1.1d">±</annotation></semantics></math>28.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.16.16.16.4" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.16.16.16.4.1" style="background-color:#D9D9D9;">449.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.16.16.16.4.1.m1.1"><semantics id="S4.T1.16.16.16.4.1.m1.1a"><mo id="S4.T1.16.16.16.4.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.16.16.16.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.16.16.16.4.1.m1.1.1.cmml" xref="S4.T1.16.16.16.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.4.1.m1.1d">±</annotation></semantics></math>83.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.17.17.17.5" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.17.17.17.5.1" style="background-color:#D9D9D9;">734.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.17.17.17.5.1.m1.1"><semantics id="S4.T1.17.17.17.5.1.m1.1a"><mo id="S4.T1.17.17.17.5.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.17.17.17.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.17.17.17.5.1.m1.1.1.cmml" xref="S4.T1.17.17.17.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.5.1.m1.1d">±</annotation></semantics></math>85.0</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.18.18.18.6" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.18.18.18.6.1" style="background-color:#D9D9D9;">1071.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.18.18.18.6.1.m1.1"><semantics id="S4.T1.18.18.18.6.1.m1.1a"><mo id="S4.T1.18.18.18.6.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.18.18.18.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.18.18.18.6.1.m1.1.1.cmml" xref="S4.T1.18.18.18.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.6.1.m1.1d">±</annotation></semantics></math>168.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.24.24.24">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.24.24.24.7" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.24.24.24.7.1" style="background-color:#BFBFBF;">Information Gain</span></th>
<td class="ltx_td ltx_align_left" id="S4.T1.19.19.19.1" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.19.19.19.1.1" style="background-color:#BFBFBF;">378.1<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.19.19.19.1.1.m1.1"><semantics id="S4.T1.19.19.19.1.1.m1.1a"><mo id="S4.T1.19.19.19.1.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.19.19.19.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.19.19.19.1.1.m1.1.1.cmml" xref="S4.T1.19.19.19.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.1.1.m1.1d">±</annotation></semantics></math>45.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.20.20.20.2" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.20.20.20.2.1" style="background-color:#BFBFBF;">429.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.20.20.20.2.1.m1.1"><semantics id="S4.T1.20.20.20.2.1.m1.1a"><mo id="S4.T1.20.20.20.2.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.20.20.20.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.20.20.20.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.20.20.20.2.1.m1.1.1.cmml" xref="S4.T1.20.20.20.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.20.20.20.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.20.20.20.2.1.m1.1d">±</annotation></semantics></math>46.2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.21.21.21.3" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.21.21.21.3.1" style="background-color:#BFBFBF;">776.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.21.21.21.3.1.m1.1"><semantics id="S4.T1.21.21.21.3.1.m1.1a"><mo id="S4.T1.21.21.21.3.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.21.21.21.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.21.21.21.3.1.m1.1.1.cmml" xref="S4.T1.21.21.21.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.3.1.m1.1d">±</annotation></semantics></math>132.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.22.22.22.4" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.22.22.22.4.1" style="background-color:#BFBFBF;">2213.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.22.22.22.4.1.m1.1"><semantics id="S4.T1.22.22.22.4.1.m1.1a"><mo id="S4.T1.22.22.22.4.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.22.22.22.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.22.22.22.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.22.22.22.4.1.m1.1.1.cmml" xref="S4.T1.22.22.22.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.22.22.22.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.22.22.22.4.1.m1.1d">±</annotation></semantics></math>365.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.23.23.23.5" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.23.23.23.5.1" style="background-color:#BFBFBF;">3354.5<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.23.23.23.5.1.m1.1"><semantics id="S4.T1.23.23.23.5.1.m1.1a"><mo id="S4.T1.23.23.23.5.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.23.23.23.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.23.23.23.5.1.m1.1.1.cmml" xref="S4.T1.23.23.23.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.5.1.m1.1d">±</annotation></semantics></math>344.9</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.24.24.24.6" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.24.24.24.6.1" style="background-color:#BFBFBF;">4768.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.24.24.24.6.1.m1.1"><semantics id="S4.T1.24.24.24.6.1.m1.1a"><mo id="S4.T1.24.24.24.6.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.24.24.24.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.24.24.24.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.24.24.24.6.1.m1.1.1.cmml" xref="S4.T1.24.24.24.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.24.24.24.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.24.24.24.6.1.m1.1d">±</annotation></semantics></math>622.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.40.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T1.36.36.40.4.1" rowspan="3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.36.36.40.4.1.1">Random</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.36.36.40.4.2" style="padding-top:1pt;padding-bottom:1pt;">Max, tokens</th>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.3" style="padding-top:1pt;padding-bottom:1pt;">65</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.4" style="padding-top:1pt;padding-bottom:1pt;">72</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.5" style="padding-top:1pt;padding-bottom:1pt;">139</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.6" style="padding-top:1pt;padding-bottom:1pt;">316</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.7" style="padding-top:1pt;padding-bottom:1pt;">460</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.36.36.40.4.8" style="padding-top:1pt;padding-bottom:1pt;">792</td>
</tr>
<tr class="ltx_tr" id="S4.T1.30.30.30">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.30.30.30.7" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.30.30.30.7.1" style="background-color:#D9D9D9;">Gain, tokens</span></th>
<td class="ltx_td ltx_align_left" id="S4.T1.25.25.25.1" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.25.25.25.1.1" style="background-color:#D9D9D9;">61.3<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.25.25.25.1.1.m1.1"><semantics id="S4.T1.25.25.25.1.1.m1.1a"><mo id="S4.T1.25.25.25.1.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.25.25.25.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.25.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.25.25.25.1.1.m1.1.1.cmml" xref="S4.T1.25.25.25.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.25.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.25.1.1.m1.1d">±</annotation></semantics></math>6.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.26.26.26.2" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.26.26.26.2.1" style="background-color:#D9D9D9;">76.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.26.26.26.2.1.m1.1"><semantics id="S4.T1.26.26.26.2.1.m1.1a"><mo id="S4.T1.26.26.26.2.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.26.26.26.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.26.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.26.26.26.2.1.m1.1.1.cmml" xref="S4.T1.26.26.26.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.26.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.26.2.1.m1.1d">±</annotation></semantics></math>8.7</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.27.27.27.3" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.27.27.27.3.1" style="background-color:#D9D9D9;">144.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.27.27.27.3.1.m1.1"><semantics id="S4.T1.27.27.27.3.1.m1.1a"><mo id="S4.T1.27.27.27.3.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.27.27.27.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.27.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.27.27.27.3.1.m1.1.1.cmml" xref="S4.T1.27.27.27.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.27.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.27.3.1.m1.1d">±</annotation></semantics></math>17.5</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.28.28.28.4" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.28.28.28.4.1" style="background-color:#D9D9D9;">294.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.28.28.28.4.1.m1.1"><semantics id="S4.T1.28.28.28.4.1.m1.1a"><mo id="S4.T1.28.28.28.4.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.28.28.28.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.28.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.28.28.28.4.1.m1.1.1.cmml" xref="S4.T1.28.28.28.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.28.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.28.4.1.m1.1d">±</annotation></semantics></math>64.8</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.29.29.29.5" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.29.29.29.5.1" style="background-color:#D9D9D9;">456.9<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.29.29.29.5.1.m1.1"><semantics id="S4.T1.29.29.29.5.1.m1.1a"><mo id="S4.T1.29.29.29.5.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.29.29.29.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.29.29.29.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.29.29.29.5.1.m1.1.1.cmml" xref="S4.T1.29.29.29.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.29.29.29.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.29.29.29.5.1.m1.1d">±</annotation></semantics></math>72.1</span></td>
<td class="ltx_td ltx_align_left" id="S4.T1.30.30.30.6" style="background-color:#D9D9D9;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.30.30.30.6.1" style="background-color:#D9D9D9;">623.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.30.30.30.6.1.m1.1"><semantics id="S4.T1.30.30.30.6.1.m1.1a"><mo id="S4.T1.30.30.30.6.1.m1.1.1" mathbackground="#D9D9D9" xref="S4.T1.30.30.30.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.30.30.30.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.30.30.30.6.1.m1.1.1.cmml" xref="S4.T1.30.30.30.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.30.30.30.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.30.30.30.6.1.m1.1d">±</annotation></semantics></math>97.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.36">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.36.36.36.7" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.36.36.36.7.1" style="background-color:#BFBFBF;">Information Gain</span></th>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.31.31.31.1" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.31.31.31.1.1" style="background-color:#BFBFBF;">500.8<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.31.31.31.1.1.m1.1"><semantics id="S4.T1.31.31.31.1.1.m1.1a"><mo id="S4.T1.31.31.31.1.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.31.31.31.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.31.31.31.1.1.m1.1b"><csymbol cd="latexml" id="S4.T1.31.31.31.1.1.m1.1.1.cmml" xref="S4.T1.31.31.31.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.31.31.31.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.31.31.31.1.1.m1.1d">±</annotation></semantics></math>38.9</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.32.32.32.2" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.32.32.32.2.1" style="background-color:#BFBFBF;">630.4<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.32.32.32.2.1.m1.1"><semantics id="S4.T1.32.32.32.2.1.m1.1a"><mo id="S4.T1.32.32.32.2.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.32.32.32.2.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.32.32.32.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.32.32.32.2.1.m1.1.1.cmml" xref="S4.T1.32.32.32.2.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.32.32.32.2.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.32.32.32.2.1.m1.1d">±</annotation></semantics></math>65.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.33.33.33.3" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.33.33.33.3.1" style="background-color:#BFBFBF;">1108.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.33.33.33.3.1.m1.1"><semantics id="S4.T1.33.33.33.3.1.m1.1a"><mo id="S4.T1.33.33.33.3.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.33.33.33.3.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.33.33.33.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.33.33.33.3.1.m1.1.1.cmml" xref="S4.T1.33.33.33.3.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.33.33.33.3.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.33.33.33.3.1.m1.1d">±</annotation></semantics></math>136.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.34.34.34.4" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.34.34.34.4.1" style="background-color:#BFBFBF;">2265.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.34.34.34.4.1.m1.1"><semantics id="S4.T1.34.34.34.4.1.m1.1a"><mo id="S4.T1.34.34.34.4.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.34.34.34.4.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.34.34.34.4.1.m1.1b"><csymbol cd="latexml" id="S4.T1.34.34.34.4.1.m1.1.1.cmml" xref="S4.T1.34.34.34.4.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.34.34.34.4.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.34.34.34.4.1.m1.1d">±</annotation></semantics></math>498.7</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.35.35.35.5" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.35.35.35.5.1" style="background-color:#BFBFBF;">3382.6<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.35.35.35.5.1.m1.1"><semantics id="S4.T1.35.35.35.5.1.m1.1a"><mo id="S4.T1.35.35.35.5.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.35.35.35.5.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.35.35.35.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.35.35.35.5.1.m1.1.1.cmml" xref="S4.T1.35.35.35.5.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.35.35.35.5.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.35.35.35.5.1.m1.1d">±</annotation></semantics></math>585.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.36.36.36.6" style="background-color:#BFBFBF;padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text" id="S4.T1.36.36.36.6.1" style="background-color:#BFBFBF;">4541.2<math alttext="\pm" class="ltx_Math" display="inline" id="S4.T1.36.36.36.6.1.m1.1"><semantics id="S4.T1.36.36.36.6.1.m1.1a"><mo id="S4.T1.36.36.36.6.1.m1.1.1" mathbackground="#BFBFBF" xref="S4.T1.36.36.36.6.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S4.T1.36.36.36.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.36.36.36.6.1.m1.1.1.cmml" xref="S4.T1.36.36.36.6.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.36.36.36.6.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S4.T1.36.36.36.6.1.m1.1d">±</annotation></semantics></math>758.6</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table shows how different language models compress text from three sources: PG-19 (a book dataset), fanfics (fan fiction stories written after the models' training), and random text.  Three metrics are reported: Decoding Capacity (the maximum number of tokens a model can accurately reconstruct from a compressed vector), Token Gain (additional tokens correctly predicted due to the compressed vector), and Information Gain (reduction in uncertainty measured by cross-entropy). The results show that Information Gain is consistent across text sources for each model (except for random text with the Pythia model), indicating that the compression ability is not heavily reliant on memorization of the training data.  Decoding Capacity is higher for natural language texts (PG-19 and fanfics) than for random text. Larger models consistently demonstrate better compression across all metrics.
> <details>
> <summary>read the caption</summary>
> Table 1:  Compression capacity across different text sources and models. We report Decoding Capacity (in Tokens) ('Max, tokens' in the Table), Token Gain, and Information Gain for texts from PG-19, fanfics, random. Notably, Information Gain remains similar across all text sources for each model (except random for Pythia). For PG-19 and fanfics, LMs leverage their ability to predict natural language, so the Decoding Capacity (in Tokens) generally exceeds the Token Gain. Furthermore, we find no evidence that the models benefit from potentially having PG-19 in their pre-training data, as their performance on PG-19 is not significantly better than on fanfics published after October 2024. In contrast, random text offers no predictable structure, making these two metrics nearly identical. This allows us to distinguish how many tokens model can predict by itself compared to decoding from trainable input vector. Larger models consistently show greater compression capacity across all metrics.
> </details>





### In-depth insights


#### Embedding Limits
The concept of "Embedding Limits" in the context of large language models (LLMs) explores the boundaries of information that can be effectively encoded and decoded within a fixed-size embedding vector.  The research highlights a significant gap between the **theoretical capacity** of these vectors and their **practical utilization**.  Existing methods, while leveraging powerful models, achieve compression ratios far below what's theoretically possible.  This suggests considerable room for improvement in model design and optimization techniques.  **The study challenges the conventional approach** of representing one token per embedding, demonstrating lossless compression ratios up to x1500 by optimizing a vector to encode an entire text sequence.  This breakthrough reveals that the limiting factor isn't sequence length, but rather the amount of uncertainty inherent in the text.  **Focusing on reducing cross-entropy** during the encoding process, rather than simply the length of the input, unlocks far greater embedding capacity. The results underscore the need to re-evaluate our understanding of embedding efficiency within LLMs and further investigate how to exploit the latent potential of these representations for more efficient context encoding and processing.

#### Compression via Optimization
The concept of 'Compression via Optimization' in the context of large language models (LLMs) presents a novel approach to handling long text sequences.  Instead of relying on pre-trained encoders or traditional compression methods, this technique uses a per-sample optimization procedure to directly compress token sequences into significantly shorter, real-valued vectors.  **This method offers the potential to overcome the limitations of existing techniques, which typically achieve compression ratios no higher than 10x.** By replacing the encoder with an optimization process, it pushes the boundaries of compression, demonstrating ratios up to 1500x. This substantial increase highlights the **vast difference between theoretical capacity of large vectors and their practical utilization in current LLMs.**  Moreover, the research indicates that compression limits are not determined by text length, but rather by the uncertainty to be reduced, specifically measured by cross-entropy loss.  This finding suggests that **future model designs could benefit significantly from focusing on optimizing the utilization of embedding space for efficient information storage and retrieval** rather than solely increasing model size.

#### Capacity Scaling Laws
Capacity scaling laws in large language models (LLMs) explore how the model's ability to process and generate text scales with its size, specifically focusing on the relationship between model parameters and the maximum context length or the number of tokens that can be encoded and decoded effectively.  **Understanding these laws is crucial for optimizing model design and resource allocation.**  The research paper likely investigates if this scaling is linear, sublinear, or superlinear; whether there are diminishing returns with increasing size; and what architectural choices (e.g., attention mechanisms) influence the scaling behavior. A key aspect would be examining the capacity utilization – **how efficiently the model utilizes its parameter space to achieve the observed capacity.**  The investigation would probably also consider the trade-offs between capacity and other metrics like performance (accuracy, fluency) and computational cost. Ultimately, a deep understanding of capacity scaling laws can help developers build more efficient and powerful LLMs capable of handling longer sequences and complex tasks.

#### Beyond Memorization
The concept of moving beyond memorization in large language models (LLMs) is crucial for achieving true artificial intelligence.  Current LLMs often excel at pattern recognition and mimicking training data, essentially memorizing relationships.  **To surpass this limitation, research must focus on developing models that exhibit genuine understanding and reasoning capabilities.** This involves shifting from simply predicting the next word to inferring meaning, generating novel content, and making logical deductions.  **Achieving this requires advancements in model architecture, training methodologies, and evaluation metrics.**  Instead of relying solely on massive datasets, emphasis should be placed on creating models capable of learning from limited examples and generalizing effectively. **Developing methods to assess true comprehension, rather than just mimicking learned patterns, is a major hurdle in this field.**  **Ultimately, the goal is to create LLMs that exhibit contextual awareness, critical thinking, and the ability to solve complex problems – capabilities far exceeding mere memorization.**  This would signify a true leap forward in AI, paving the way for more sophisticated and adaptable AI systems.

#### Future Directions
Future research should prioritize a deeper investigation into the **semantic properties** of the compressed vectors and their utility in downstream tasks.  Exploring alternative model architectures, especially recurrent and memory-augmented models, and scaling the methodology to larger models with greater parameter counts is essential.  **Understanding the relationship between model capacity, compression effectiveness, and the specific training data** used requires further study.  Furthermore, **the impact of different text complexities and sources on compression performance** necessitates detailed analysis.  Investigating the potential for exploiting these compact representations in various applications, including efficient information storage and retrieval and enhanced reasoning capabilities, offers exciting possibilities. Finally, rigorous examination of the ethical implications surrounding the potential misuse of compressed information and related data security issues is crucial for responsible development and deployment.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.13063/extracted/6214616/imgs/compression_schema.drawio.png)

> 🔼 This figure illustrates the process of compressing a sequence of tokens into a smaller set of memory vectors using a pre-trained language model.  The pre-trained language model's weights are frozen; only the memory vectors are trainable parameters. These memory vectors are prepended to the input token sequence and serve as a compact representation to be processed by the frozen language model. The model is trained to predict the original token sequence from these memory vectors. Importantly, the memory vectors are trained independently for each text sequence, emphasizing the per-sample optimization approach used in this study.
> <details>
> <summary>read the caption</summary>
> Figure 2: Compressing text into a [mem] vector. The pre-trained LLM is frozen, and we only finetune one or multiple [mem] vectors to decode the sequence of tokens [t1,t2,…,tN]subscript𝑡1subscript𝑡2…subscript𝑡𝑁[t_{1},t_{2},\ldots,t_{N}][ italic_t start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_t start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT , … , italic_t start_POSTSUBSCRIPT italic_N end_POSTSUBSCRIPT ]. [mem] vectors are trained for each text separately.
> </details>



![](https://arxiv.org/html/2502.13063/x2.png)

> 🔼 Figure 3 examines the relationship between the cross-entropy of original and compressed texts across various language models, demonstrating that compression capacity is independent of the model's language understanding capabilities.  The x-axis shows the original text's cross-entropy, and the y-axis represents the cross-entropy after compression.  Lossless compression occurs when the compressed text's cross-entropy falls below a model-specific threshold (red line), representing the model's information gain.  Texts above this line show a consistent cross-entropy reduction to a model-specific value (black dashed line). Larger models demonstrate a higher compression capacity than smaller models.  The same pattern holds true for both natural language texts and synthetic random text sequences.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Information gain of text compression to [mem] vector doesn’t depend on language understanding capabilities of models. Compression results for various language models show the relationship between the cross-entropy (CE) of the original and decompressed texts. If the text CE falls below a model-specific threshold (red line), the text is losslessly compressed. This value is a input vector capacity in terms of entropy (Information Gain, CHsubscript𝐶𝐻C_{H}italic_C start_POSTSUBSCRIPT italic_H end_POSTSUBSCRIPT). For texts that are not perfectly compressed, the compression process reduces their CE to a consistent, model-specific value (bias of the black dashed line). Larger models (e.g., Llama-3.1-8B) can handle longer texts before reaching the compression threshold, due to their greater capacity compared to smaller models (e.g., Pythia-160M). This behavior holds for both natural texts (PG-19) and unnatural random texts consisting of random word sequences.
> </details>



![](https://arxiv.org/html/2502.13063/x3.png)

> 🔼 This figure displays the linear relationship between the number of trainable memory vectors ([mem] vectors) used and the model's ability to compress and decompress text.  The dashed lines show the ideal linear scaling. Shaded areas represent the standard deviation (±1 std).  For the Pythia-160M model, the maximum input context is 2048 tokens; it successfully encoded up to 2016 tokens with 32 [mem] vectors.  The Llama-3.2-1B model perfectly decoded texts of 7168 tokens using just 16 [mem] vectors, demonstrating that the compression capacity scales effectively with the number of trainable memory vectors.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Compression scales linearly with the number of trainable [mem] vectors. Dashed lines represent ideal linear scaling, and shaded regions indicate ±1plus-or-minus1\pm 1± 1 std. Pythia-160m reaches its maximum input context length of 2048 tokens and can successfully encode texts of up to 2016 tokens into 32 [mem] input vectors. Llama-3.2-1B can perfectly decode texts of 7168 tokens from just 16 input vectors.
> </details>



![](https://arxiv.org/html/2502.13063/x4.png)

> 🔼 Figure 5 analyzes the efficiency of different language models in using their input embedding capacity for text compression.  The top panel plots the theoretical maximum number of tokens that can be encoded in the input embedding (calculated using Equation 1) against the actual gain in correctly decoded tokens achieved through compression. This comparison reveals variations in how effectively different models utilize their embedding space. The bottom panel further examines capacity utilization by contrasting performance on natural language text with that of randomly generated text, providing insights into how model architecture and training data affect the capacity to represent text information in the input embeddings.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Only fraction of learned input embedding information capacity can be utilized. Top. Maximum token capacity (see Eq. 1) against gain in correctly decoded tokens shows differences in utilization of learned memory embedding for studied models. Bottom. Capacity utilization for natural and random texts.
> </details>



![](https://arxiv.org/html/2502.13063/x5.png)

> 🔼 Figure 6 illustrates the relationship between the cross-entropy of original and compressed texts for various language models.  The x-axis represents the cross-entropy of the original text, and the y-axis represents the cross-entropy after compression using a trainable memory vector.  The red line indicates a model-specific threshold: if the compressed text's cross-entropy falls below this line, the compression is lossless. The black dashed lines show the consistent, model-specific cross-entropy reduction for texts not perfectly compressed. Larger models demonstrate a greater capacity to handle longer texts before reaching this lossless compression threshold. This consistent behavior is observed for both naturally occurring and randomly generated texts.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Information gain of text compression to [mem] vector doesn’t depend on language understanding capabilities of models. Compression results for various language models show the relationship between the cross-entropy (CE) of the original and decompressed texts. If the text CE falls below a model-specific threshold (red line), the text is losslessly compressed. This value is a input vector capacity in terms of entropy (Information Gain, CHsubscript𝐶𝐻C_{H}italic_C start_POSTSUBSCRIPT italic_H end_POSTSUBSCRIPT). For texts that are not perfectly compressed, the compression process reduces their CE to a consistent, model-specific value (bias of the black dashed line). Larger models (e.g., Llama-3.1-8B) can handle longer texts before reaching the compression threshold, due to their greater capacity compared to smaller models (e.g., Pythia-160M). This behavior holds for both natural texts (PG-19) and unnatural random texts consisting of random word sequences.
> </details>



![](https://arxiv.org/html/2502.13063/x6.png)

> 🔼 This figure displays the distribution of cosine similarity scores between different embeddings of the same text sequence (intra-sample) and between embeddings of different text sequences (inter-sample).  The cosine similarity measures how similar two vector representations are, with a score of 1 indicating identical vectors and 0 indicating orthogonal vectors. The distributions show that intra-sample similarities are not strongly clustered around a high similarity value (e.g. 1), indicating the model can generate diverse vector representations for the same input. Furthermore, the overlap between the intra-sample and inter-sample distributions suggests that the uniqueness of the embedding for a given input is not guaranteed and that there is a significant amount of variation in the representation of different input sequences.
> <details>
> <summary>read the caption</summary>
> Figure 7: Intra/inter-sample embeddings cosine similarity. Empirical probability densities of cosine similarity between intra-sample and inter-sample embeddings. Intra-sample similarities are measured between of the same sequence of tokens, while inter-sample between different ones. Measured on GovReport Huang et al. (2021) and Sheared-Llama-1.3B Xia et al. (2024).
> </details>



![](https://arxiv.org/html/2502.13063/x7.png)

> 🔼 Figure 8 visualizes the accuracy of reconstructing text sequences from linear interpolations between different embeddings of the same input sequence.  For each input sequence, 32 different embeddings were generated using the method described in the paper. Then, linear interpolations were performed between all pairs of these embeddings.  The plot shows the accuracy of reconstructing the original text at various points along these interpolation lines. The higher density of lines in certain areas indicates a higher concentration of interpolation points with similar reconstruction accuracy. The grey lines represent the minimum and maximum accuracies observed across all interpolations for a given interpolation parameter (θ). This helps illustrate the variability in reconstruction accuracy across different interpolations between embeddings of the same sequence.
> <details>
> <summary>read the caption</summary>
> Figure 8: Intra-sample Interpolation Accuracies. Interpolation lines are provided for all pairs between 32 embeddings of the same input sequence. All interpolation lines are printed with high transparency to show denser regions. Grey lines depict minimums and maximums of the accuracy for a given interpolation parameter θ𝜃\thetaitalic_θ.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.13063/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.13063/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}