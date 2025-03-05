---
title: "Mask-DPO: Generalizable Fine-grained Factuality Alignment of LLMs"
summary: "Mask-DPO: Fine-grained Factuality Alignment improves LLMs' factuality by masking sentence-level errors during DPO training for enhanced knowledge alignment."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-03-04
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.02846 {{< /keyword >}}
{{< keyword icon="writer" >}} Yuzhe Gu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-05 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.02846" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.02846" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.02846/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Large Language Models (LLMs) often generate hallucinations, mixing truthful and incorrect information. Existing methods, using response-level feedback, inadvertently introduce noise during training. To solve the issue, the paper introduces Mask-DPO, a fine-grained approach that uses sentence-level factuality as a mask signal, only training on factually correct sentences and preventing penalties on truthful content when models make mistakes. 



Experimental results show that Mask-DPO significantly improves factuality on both in-domain and out-of-domain tasks, surpassing existing models. The method also improves generalization by scaling training data effectively, emphasizing the importance of topic diversity. Furthermore, the paper hypothesizes that factuality alignment adjusts LLMs' internal knowledge structures, improving the model's responses.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Mask-DPO significantly improves LLM factuality by leveraging sentence-level factuality during training. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Scaling the number of topics in the training data is more effective for generalization than scaling the number of questions. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Factuality alignment adjusts the internal knowledge graph of LLMs, improving responses to related topics. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important to researchers since it addresses a **critical issue in LLMs**: hallucinations. By introducing a novel and effective method (Mask-DPO) for factuality alignment, the study paves the way for more reliable and trustworthy LLMs. Furthermore, the investigation of data scaling strategies and their impact on generalization is valuable for future research in this area, opening avenues for **improving LLMs**.

------
#### Visual Insights



![](https://arxiv.org/html/2503.02846/extracted/6251826/figures/teaser.png)

> 🔼 This figure illustrates the core difference between the vanilla Direct Preference Optimization (DPO) method and the proposed Mask-DPO method for factuality alignment in LLMs. Vanilla DPO uses response-level factuality, leading to the model inadvertently encouraging incorrect information in preferred samples and penalizing correct information in non-preferred samples.  Mask-DPO addresses this issue by incorporating sentence-level factuality as a mask signal during training. This allows Mask-DPO to learn only from factually correct sentences in the preferred samples, thus resolving ambiguity and enhancing the effectiveness of factuality alignment.
> <details>
> <summary>read the caption</summary>
> Figure 1: Comparison between DPO and Mask-DPO. Vanilla DPO (a) inadvertently encourages and penalizes all the content in the preferred and non-preferred samples, respectively, regardless of their correctness. Instead, Mask-DPO (b) incorporates sentence-level facticity into the mask signal, preventing incorrect reward signal, which resolves ambiguity in preference learning.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.3.3">
<tr class="ltx_tr" id="S3.T1.3.3.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T1.3.3.4.1" rowspan="3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.4.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="6" id="S3.T1.3.3.4.2"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.4.2.1">ANAH (in-domain)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T1.3.3.4.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.4.3.1">Biography (out-of-domain)</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.5">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S3.T1.3.3.5.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.3.3.5.1.1">ANAH-v2 Evaluator</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="3" id="S3.T1.3.3.5.2"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.3.3.5.2.1">Factscore Evaluator</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S3.T1.3.3.5.3"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.3.3.5.3.1">Factscore Evaluator</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.4.1"># Cor.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.5"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.5.1"># Inc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.1.1.1.1.1">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.6"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.6.1"># Cor.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.7"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.7.1"># Inc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.2.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.2.2.2.1">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.2.2.2.2.1.m1.1"><semantics id="S3.T1.2.2.2.2.1.m1.1a"><mo id="S3.T1.2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T1.2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.2.1.m1.1b"><ci id="S3.T1.2.2.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.8"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.8.1"># Cor.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.9"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.9.1"># Inc.</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.3.3.1">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.3.3.1.m1.1"><semantics id="S3.T1.3.3.3.3.1.m1.1a"><mo id="S3.T1.3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.3.3.1.m1.1b"><ci id="S3.T1.3.3.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.6">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.6.1">Qwen2-7B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.2">450</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.3">872</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.6.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.6.4.1" style="background-color:#E6E6E6;">34.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.5">5.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.6">30.60</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.6.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.6.7.1" style="background-color:#E6E6E6;">15.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.8">14.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.9">39.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.6.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.6.10.1" style="background-color:#E6E6E6;">27.28</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.7.1">Qwen2-72B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.2">538</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.3">690</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.7.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.7.4.1" style="background-color:#E6E6E6;">43.81</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.5">6.45</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.6">27.97</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.7.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.7.7.1" style="background-color:#E6E6E6;">20.76</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.8">20.13</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.9">40.09</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.7.10.1" style="background-color:#E6E6E6;">34.06</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.8.1">Gemma2-9B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.2">635</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.3">837</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.8.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.8.4.1" style="background-color:#E6E6E6;">43.13</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.5">4.51</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.6">25.92</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.8.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.8.7.1" style="background-color:#E6E6E6;">18.29</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.8">15.53</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.9">29.00</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.8.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.8.10.1" style="background-color:#E6E6E6;">29.52</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.9.1">Gemma2-27B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.2">889</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.3">1110</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.9.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.9.4.1" style="background-color:#E6E6E6;">44.47</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.5">7.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.6">35.65</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.9.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.9.7.1" style="background-color:#E6E6E6;">20.14</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.8">19.27</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.9">36.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.9.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.9.10.1" style="background-color:#E6E6E6;">29.99</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.10.1">Yi1.5-6B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.2">440</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.3">1143</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.10.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.10.4.1" style="background-color:#E6E6E6;">27.79</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.5">6.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.6">44.48</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.10.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.10.7.1" style="background-color:#E6E6E6;">11.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.8">10.84</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.9">59.65</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.10.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.10.10.1" style="background-color:#E6E6E6;">15.81</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.11.1">Yi1.5-9B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.2">483</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.3">1136</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.11.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.11.4.1" style="background-color:#E6E6E6;">29.83</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.5">5.06</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.6">39.79</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.11.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.11.7.1" style="background-color:#E6E6E6;">10.42</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.8">10.63</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.9">62.67</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.11.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.11.10.1" style="background-color:#E6E6E6;">15.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.12.1">Yi1.5-34B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.2">535</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.3">911</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.12.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.12.4.1" style="background-color:#E6E6E6;">36.99</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.5">5.25</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.6">36.96</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.12.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.12.7.1" style="background-color:#E6E6E6;">13.27</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.8">17.01</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.9">52.76</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.12.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.12.10.1" style="background-color:#E6E6E6;">25.49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.13.1">Llama3.1-8B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.2">461</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.3">476</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.13.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.13.4.1" style="background-color:#E6E6E6;">49.19</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.5">5.95</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.6">21.29</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.13.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.13.7.1" style="background-color:#E6E6E6;">19.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.8">16.83</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.9">31.57</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.13.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.13.10.1" style="background-color:#E6E6E6;">30.29</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.14.1">Llama3.1-70B</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.2">520</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.3">453</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.14.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.14.4.1" style="background-color:#E6E6E6;">53.44</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.5">6.81</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.6">22.17</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T1.3.3.14.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.14.7.1" style="background-color:#E6E6E6;">21.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.8">23.58</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.9">31.59</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.14.10" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.14.10.1" style="background-color:#E6E6E6;">40.47</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.15">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.15.1">FactTune</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.2">657</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.3">499</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.15.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.3.3.15.4.1" style="background-color:#E6E6E6;">56.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.5">7.45</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.6">23.08</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T1.3.3.15.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.3.3.15.7.1" style="background-color:#E6E6E6;">22.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.8">15.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.9">23.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.3.3.15.10" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T1.3.3.15.10.1" style="background-color:#E6E6E6;">37.97</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3.16">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.3.3.16.1">Ours</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.2">547.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.3">161.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.3.3.16.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.16.4.1" style="background-color:#E6E6E6;">77.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.5">5.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.6">18.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T1.3.3.16.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T1.3.3.16.7.1" style="background-color:#E6E6E6;">25.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.8">12.16</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.9">15.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T1.3.3.16.10" style="background-color:#E6E6E6;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.3.3.16.10.1" style="background-color:#E6E6E6;">39.39</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of factuality scores achieved by various large language models (LLMs) on two datasets: ANAH (in-domain) and Biography (out-of-domain).  The models compared include several open-source LLMs, FactTune (a factuality enhancement method), and the proposed Mask-DPO method.  Two different evaluation metrics are used: ANAH-v2 and FactScore. For each model and metric, the number of correct and incorrect factual statements are reported, along with the overall factuality score (percentage of correct statements).  The best and second-best performing models for each metric are highlighted.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results for the open-source models, FactTune, and our Mask-DPO. Here, ANAH and Biography represent the in-domain and out-of-domain test sets, respectively. ANAH-v2 and FactScore represent the corresponding evaluation strategies. For each evaluation strategy, we report the number of correct facts (# Correct.), the number of inaccurate facts (# Inc.), and the factuality score (% Score), i.e. the proportion of correct facts out of the total number of facts. Bold and underlined represent the best and second best performance, respectively.
> </details>





### In-depth insights


#### Factuality F-tuning
**Factuality Fine-tuning** is crucial for reliable LLMs. Aligning models with factual knowledge requires addressing inherent hallucinations. Existing methods using response-level preferences introduce noise, penalizing correct content alongside errors. A fine-grained approach is needed, masking sentence-level factuality. Mask-DPO leverages sentence-level factuality to guide training, avoiding penalization of truthful content. This resolves preference learning ambiguity, improving in-domain and out-of-domain generalization. Scaling by increasing the number of topics during alignment is more effective for knowledge adaptation. The underlying knowledge graph adjusts, influencing generalization. This addresses the need for targeted adjustments, rather than broad distributional changes. This refines LLM knowledge, boosting real-world applications.

#### Mask-DPO Insight
Mask-DPO refines LLM factuality by masking sentence-level inaccuracies during DPO, addressing the issue where truthful content is penalized alongside hallucinations. This fine-grained approach enables more precise knowledge alignment, leading to improved performance on both in-domain and out-of-domain datasets. The method's success hinges on sentence-level factuality, as this allows for accurate reward signals during preference learning. It prevents inadvertently encouraging inaccuracies or penalizing truths, a problem inherent in response-level methods like vanilla DPO. By integrating sentence-level factuality, Mask-DPO effectively improves the factuality of LLMs, showcasing its potential in enhancing the reliability of these models across various domains. **This is particularly important since mitigating hallucinations improves LLM trustworthiness.**

#### Topic Scaling
**Topic scaling** appears to be a critical factor in improving the factuality and generalization capabilities of LLMs. The research suggests that diversifying the topics within the training data leads to better performance than simply increasing the number of questions within the same topics. This highlights the importance of exposing the model to a broader range of knowledge domains to improve its ability to answer questions accurately and generalize to new, unseen topics. The success of **topic scaling** likely stems from the LLM's ability to develop a more robust and well-rounded understanding of the world when trained on a diverse set of subjects. Furthermore, the research implies that focusing on topics helps the model grasp broader concepts, while question variety under a single topic might lead to overfitting to specific question structures, hindering generalization.

#### Knowledge Graph
**Knowledge graphs (KGs)** offer a structured way to represent information, connecting entities through relationships.  They can enhance LLMs by providing factual knowledge. LLMs often struggle with hallucination, KGs can serve as external knowledge sources, grounding responses in verifiable facts. By integrating KGs, LLMs can access and reason over structured data, reducing reliance on parametric memory and improving accuracy.  **Factuality alignment** methods are essential to minimize errors and provide trustable information. The effectiveness hinges on KG quality and integration strategy; a poorly constructed KG or ineffective integration can yield limited benefits.

#### RLHF Extension
**Reinforcement Learning from Human Feedback (RLHF)** has become a pivotal technique for aligning LLMs with human preferences, extending beyond mere task completion to encompass aspects like robustness, factuality, and safety. This extension involves a complex pipeline: initially training a reward model to mimic human judgment and iteratively optimizing the language model using the reward signal. RLHF's adaptability allows it to integrate diverse feedback sources, offering granular control over model behavior. Recent advancements explore more efficient methods like Direct Preference Optimization (DPO) to sidestep explicit reward modeling, directly optimizing the policy model using preference data. These methods also seek to refine data creation utilizing AI feedback.


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.2">
<tr class="ltx_tr" id="S3.T2.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T2.2.3.1" rowspan="2"><span class="ltx_text" id="S3.T2.2.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T2.2.3.1.1.1">
<span class="ltx_tr" id="S3.T2.2.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.2.3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.2.3.1.1.1.1.1.1">Training</span></span></span>
<span class="ltx_tr" id="S3.T2.2.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T2.2.3.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T2.2.3.1.1.1.2.1.1">Setting</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T2.2.3.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.3.2.1">ANAH-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T2.2.3.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.3.3.1">FactScore</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.3.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.4.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.1.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1" style="background-color:#E6E6E6;">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.5.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.6.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.2.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.1" style="background-color:#E6E6E6;">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S3.T2.2.2.2.1.m1.1a"><mo id="S3.T2.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="S3.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.m1.1b"><ci id="S3.T2.2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.4.1">w/o mask</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.2">446.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.3">206.00</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T2.2.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T2.2.4.4.1" style="background-color:#E6E6E6;">68.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.5">5.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.6">18.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.2.4.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T2.2.4.7.1" style="background-color:#E6E6E6;">23.43</span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.2.5.1">w/ mask</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.5.2">547.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.5.3">161.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T2.2.5.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.5.4.1" style="background-color:#E6E6E6;">77.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.5.5">5.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.5.6">18.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.2.5.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T2.2.5.7.1" style="background-color:#E6E6E6;">25.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing the performance of the proposed Mask-DPO method against a baseline DPO method without the masking scheme.  The study evaluates the impact of the masking scheme on the factuality of the model's responses.  The 'w/ mask' column shows results using the Mask-DPO method (DPO with masking), while 'w/o mask' shows results using standard DPO without masking.  The table reports the number of correct and incorrect facts identified by two different metrics, ANAH-v2 and FactScore, and the corresponding factuality score for each condition. This allows for a quantitative assessment of how the proposed masking scheme contributes to improved factuality.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study for the masking scheme applied to the DPO. Here, “w/ mask” means that the factual alignment algorithm is DPO with mask, which is the default setting of Mask-DPO. “w/o mask” means that the algorithm is the vanilla DPO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.2">
<tr class="ltx_tr" id="S3.T3.2.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T3.2.3.1" rowspan="2"><span class="ltx_text" id="S3.T3.2.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T3.2.3.1.1.1">
<span class="ltx_tr" id="S3.T3.2.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.3.1.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.3.1.1.1.1.1.1">Sampling</span></span></span>
<span class="ltx_tr" id="S3.T3.2.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T3.2.3.1.1.1.2.1"><span class="ltx_text ltx_font_bold" id="S3.T3.2.3.1.1.1.2.1.1">Setting</span></span></span>
</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" colspan="3" id="S3.T3.2.3.2"><span class="ltx_text ltx_font_bold" id="S3.T3.2.3.2.1">ANAH-v2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S3.T3.2.3.3"><span class="ltx_text ltx_font_bold" id="S3.T3.2.3.3.1">FactScore</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.2.3"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.3.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.2.4"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.4.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.1.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1" style="background-color:#E6E6E6;">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S3.T3.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="S3.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.2.5"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.5.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.2.6"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.6.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.2.2" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.2.1" style="background-color:#E6E6E6;">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S3.T3.2.2.2.1.m1.1a"><mo id="S3.T3.2.2.2.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="S3.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><ci id="S3.T3.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.4">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.4.1">InternLM</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.4.2">419.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.4.3">296.80</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T3.2.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T3.2.4.4.1" style="background-color:#E6E6E6;">59.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.4.5">5.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.4.6">16.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.2.4.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T3.2.4.7.1" style="background-color:#E6E6E6;">21.33</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.5.1">Llama+Doc</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.5.2">877.00</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.5.3">1347.00</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T3.2.5.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T3.2.5.4.1" style="background-color:#E6E6E6;">39.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.5.5">7.98</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.5.6">33.07</td>
<td class="ltx_td ltx_align_center" id="S3.T3.2.5.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S3.T3.2.5.7.1" style="background-color:#E6E6E6;">16.16</span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.2.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.2.6.1">Llama</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.6.2">547.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.6.3">161.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T3.2.6.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.6.4.1" style="background-color:#E6E6E6;">77.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.6.5">5.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.6.6">18.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.2.6.7" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S3.T3.2.6.7.1" style="background-color:#E6E6E6;">25.56</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study comparing different sampling strategies for creating preference data used in Mask-DPO. The default strategy samples data from the Llama3.1-8B-Instruct policy model.  The comparison includes using data from InternLM2-7B-Chat-SFT, and a strategy where the policy model is used, but preferred samples include the reference document in the prompt, while dispreferred samples do not.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study for the sampling strategy in preference dataset construction. Here, “Llama” means that the data used to construct preference pairs is sampled from the policy model (Llama3.1-8B-Instruct), which is the default setting of Mask-DPO. “InternLM” means that the data is sampled from InternLM2-7B-Chat-SFT. And “Llama+Doc” means that the data is sampled from the policy model, but the sampling strategies for preferred and dispreferred samples are different. When generating preferred samples, the reference document corresponding to the question is added to the prompt, but not to the dispreferred ones.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T4.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.2.1">Dimension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.3.1"># Topic</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.4.1"># Question</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.5.1">Scale</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.6"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.6.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.7"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.7.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1" style="background-color:#E6E6E6;">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.m1.1" style="background-color:#E6E6E6;"><semantics id="S4.T4.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.m1.1.1" mathbackground="#E6E6E6" stretchy="false" xref="S4.T4.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T4.1.2.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.2.1.1">Topic</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2">894</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.3">3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.4">1/3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.5">501.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.6">270.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.2.7.1" style="background-color:#E6E6E6;">65.04</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.1">1788</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2">3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3">2/3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.4">518.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.5">206.20</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.3.6.1" style="background-color:#E6E6E6;">71.56 (+6.52)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.1">2682</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.2">3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3">1</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4">547.60</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.5">161.40</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.4.6.1" style="background-color:#E6E6E6;">77.53 (+5.97)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S4.T4.1.5.1" rowspan="3"><span class="ltx_text" id="S4.T4.1.5.1.1">Question</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.2">2682</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.4">1/3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.5">486.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.6">218.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.5.7" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.5.7.1" style="background-color:#E6E6E6;">69.03</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.1">2682</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.2">2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.3">2/3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.4">444.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.5">164.00</td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.6.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.6.6.1" style="background-color:#E6E6E6;">73.03 (+4.00)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.1">2682</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.2">3</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.3">1</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.4">547.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.5">161.40</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.7.6" style="background-color:#E6E6E6;"><span class="ltx_text" id="S4.T4.1.7.6.1" style="background-color:#E6E6E6;">77.53 (+4.50)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a study on the impact of scaling training data on the efficiency and generalization of Mask-DPO, a fine-grained factuality alignment method.  Two scaling strategies were used: scaling the number of different topics and scaling the number of questions within each topic. The table shows the number of topics and questions used for training at different scales (1/3, 2/3, and 1x the original data), along with the corresponding number of correct and incorrect facts, factuality score, and the change in score compared to the baseline.  This allows for analysis of how different scaling approaches affect the performance of the model, specifically its ability to generalize to unseen data.
> <details>
> <summary>read the caption</summary>
> Table 4: Evaluation for the efficiency and the generalization effects of different training sample scaling strategies. Here, “Topic” means scaling from the number of different topics, and “Question” means scaling from the number of different questions under the same topic. “# Topic” denotes the number of topics used for training, and “# Question” denotes the number of questions under the same topic used for training. We also report changes in scores (in parentheses) when scaling the data.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T5.2">
<tr class="ltx_tr" id="S4.T5.2.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.3"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.1">Base Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.4.1">Embedding Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.5"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.5.1">Distance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.6"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.6.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.7"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.7.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1">% Score <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.2.2.2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.1">Diff <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.1.m1.1"><semantics id="S4.T5.2.2.2.1.m1.1a"><mo id="S4.T5.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.1.m1.1b"><ci id="S4.T5.2.2.2.1.m1.1.1.cmml" xref="S4.T5.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.1" rowspan="8"><span class="ltx_text" id="S4.T5.2.3.1.1">InternLM2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.2" rowspan="2"><span class="ltx_text" id="S4.T5.2.3.2.1">InternLM2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.3">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.4">493.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.5">267.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.6">64.99</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.3.7" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.3.7.1">2.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.4">
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.2">456.40</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.3">222.30</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.4.4.1">67.42</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.5.1.1">Llama3.1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.2">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.3">454.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.4">252.20</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.5">64.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.5.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.5.6.1">0.65</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.6">
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.2">487.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.3">263.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.6.4">64.97</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.7.1.1">OpenAI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.2">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.3">487.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.4">256.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.5">65.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.7.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.7.6.1">1.25</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.8">
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.2">489.50</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.3">242.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.8.4">66.84</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.9.1.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.3">453.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.4">247.40</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.5">64.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.9.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.9.6.1">0.77</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.10">
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.1">-</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.2">521.70</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.3">275.90</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.10.4">65.55</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.11">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.11.1" rowspan="10"><span class="ltx_text" id="S4.T5.2.11.1.1">Llama3.1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.2" rowspan="2"><span class="ltx_text" id="S4.T5.2.11.2.1">InternLM2-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.3">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.4">455.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.5">206.50</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.6">68.97</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.11.7" rowspan="2"><span class="ltx_text" id="S4.T5.2.11.7.1">0.22</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.12">
<td class="ltx_td ltx_align_center" id="S4.T5.2.12.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.12.2">551.75</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.12.3">280.75</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.12.4">69.19</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.13">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.13.1.1">Llama3.1-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.2">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.3">568.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.4">265.75</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.5">68.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.13.6" rowspan="2"><span class="ltx_text ltx_font_bold" id="S4.T5.2.13.6.1">4.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.14">
<td class="ltx_td ltx_align_center" id="S4.T5.2.14.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.14.2">500.00</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.14.3">182.33</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.14.4"><span class="ltx_text ltx_font_bold" id="S4.T5.2.14.4.1">73.43</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.15">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.15.1.1">OpenAI</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.2">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.3">761.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.4">317.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.5">71.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.15.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.15.6.1">0.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.16">
<td class="ltx_td ltx_align_center" id="S4.T5.2.16.1">near</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.16.2">616.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.16.3">253.60</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.16.4">72.17</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.17">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.17.1" rowspan="2"><span class="ltx_text" id="S4.T5.2.17.1.1">Random</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.17.2">-</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.17.3">566.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.17.4">219.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.17.5">70.60</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.2.17.6" rowspan="2"><span class="ltx_text" id="S4.T5.2.17.6.1">0.56</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.18">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.18.1">-</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.18.2">454.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.18.3">182.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.2.18.4">71.11</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative analysis of the impact of different topic clustering strategies on the effectiveness of Mask-DPO's factuality alignment.  Four different methods for generating topic embeddings are compared: InternLM2-7B-Chat-SFT, Llama3.1-8B-Instruct, Text-Embedding-3-Large, and a random baseline. For each embedding method, the training data is divided into 'near' and 'far' groups based on the distance of each topic's embedding to the cluster center. The table shows the number of correct and incorrect facts, the overall factuality score, and the difference in score between the 'near' and 'far' groups for each embedding method.  The results demonstrate the relationship between topic proximity and factuality improvement after alignment.
> <details>
> <summary>read the caption</summary>
> Table 5: Evaluation for the effects of different clustering strategies for preference data construction. Here, “InternLM2-7B”, “Llama3.1-8B” and “OpenAI” denotes InternLM2-7B-Chat-SFT, Llama3.1-8B-Instruct and Text-Embedding-3-Large, respectively. And “Random” means randomly selecting samples. “Distance” represents the distance between the training set and the cluster center. “Diff” represents the difference between the score at near distance settings and the one at far.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T6.3">
<tr class="ltx_tr" id="S4.T6.3.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T6.3.1.1"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.2"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.2.1">Best of 1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.3"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.3.1">Best of 16</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.4.1">Best of 32</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.5"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.5.1">Best of 64</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.6"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.6.1">Best of 128</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.1.7"><span class="ltx_text ltx_font_bold" id="S4.T6.3.1.7.1">Best of 256</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T6.3.2.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.2">47.79</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.3">73.38</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.4">76.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.5">76.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.6">79.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.3.2.7">80.98</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T6.3.3.1">Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.2">70.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.3">89.80</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.4">90.53</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.5">92.81</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.6">93.47</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.3.3.7">94.09</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison between the baseline model (Llama-3.1-8B-Instruct) and the Mask-DPO model under different best-of-N settings. Best-of-N refers to selecting the top-performing response from N generated responses. The table shows the number of correct and incorrect facts and the resulting factuality score for each model and each N value (1, 16, 32, 64, 128, 256).  The discrepancy between the best-of-1 results here and those reported in Table 1 is because the inference setting used here is top-k=40, while the setting for Table 1 was top-k=1. This highlights the impact of different inference parameters on model performance.
> <details>
> <summary>read the caption</summary>
> Table 6: Evaluation for the performance under the setting of best-of-N. Here, “Baseline” represents the base model Llama3.1-8N-Instruct and “Mask-DPO” represents the aligned model. 222The results for best-of-1 do not match those in Table 1 because the inference setting here is top-k=40, whereas in Table 1 it is top-k=1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T7.3">
<tr class="ltx_tr" id="A2.T7.3.1">
<td class="ltx_td ltx_border_tt" id="A2.T7.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T7.3.1.2.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T7.3.1.3.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T7.3.1.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T7.3.1.4.1" style="background-color:#E6E6E6;">% Score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T7.3.2.1">Llama-3.1-8B + SFT + Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.2.2">631</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.2.3">192</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T7.3.2.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T7.3.2.4.1" style="background-color:#E6E6E6;">76.67</span></td>
</tr>
<tr class="ltx_tr" id="A2.T7.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T7.3.3.1">Llama-3.1-8B-Instruct + Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.3.3.2">547.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.3.3.3">161.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T7.3.3.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T7.3.3.4.1" style="background-color:#E6E6E6;">77.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of two approaches to factuality alignment: 1) directly applying Mask-DPO to an instruction-tuned LLM and 2) first applying supervised fine-tuning (SFT) to a base LLM and then applying Mask-DPO.  It shows the number of correct and incorrect facts, as well as the factuality score achieved by each method. This comparison helps demonstrate that the effectiveness of Mask-DPO is not dependent on a prior SFT step.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparision with SFT+PO.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.3">
<tr class="ltx_tr" id="A2.T8.3.1">
<td class="ltx_td ltx_border_tt" id="A2.T8.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T8.3.1.2.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T8.3.1.3.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.3.1.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T8.3.1.4.1" style="background-color:#E6E6E6;">% Score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.3.2.1">DPO</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.2.2">446.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.2.3">206</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.2.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T8.3.2.4.1" style="background-color:#E6E6E6;">68.44</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T8.3.3.1">DPOP</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.3.2">593</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.3.3">291</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.3.3.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T8.3.3.4.1" style="background-color:#E6E6E6;">67.08</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.3.4">
<td class="ltx_td ltx_align_left" id="A2.T8.3.4.1">TDPO</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.4.2">703.6</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.4.3">284</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T8.3.4.4.1" style="background-color:#E6E6E6;">70.95</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.3.5">
<td class="ltx_td ltx_align_left" id="A2.T8.3.5.1">SePO</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.5.2">254</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.5.3">611.4</td>
<td class="ltx_td ltx_align_center" id="A2.T8.3.5.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T8.3.5.4.1" style="background-color:#E6E6E6;">58.45</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.3.6">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T8.3.6.1">Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.3.6.2">547.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.3.6.3">161.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T8.3.6.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T8.3.6.4.1" style="background-color:#E6E6E6;">77.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares the performance of Mask-DPO against other Preference Optimization (PO) strategies, namely TDPO, DPOP, and SePO, in enhancing the factuality of LLMs.  It uses Llama3.1-8B-Instruct as the base model and ANAH-v2 for evaluation. The table shows the number of correct and incorrect facts, as well as the factuality score for each method, illustrating Mask-DPO's superior performance compared to others.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparision with other PO Strategies.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.3">
<tr class="ltx_tr" id="A2.T9.3.1">
<td class="ltx_td ltx_border_tt" id="A2.T9.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T9.3.1.2.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T9.3.1.3.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.3.1.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T9.3.1.4.1" style="background-color:#E6E6E6;">% Score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T9.3.2.1">FactTune</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.2.2">657</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.2.3">499</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.2.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T9.3.2.4.1" style="background-color:#E6E6E6;">56.83</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.3.3">
<td class="ltx_td ltx_align_left" id="A2.T9.3.3.1">Flame</td>
<td class="ltx_td ltx_align_center" id="A2.T9.3.3.2">447</td>
<td class="ltx_td ltx_align_center" id="A2.T9.3.3.3">263</td>
<td class="ltx_td ltx_align_center" id="A2.T9.3.3.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T9.3.3.4.1" style="background-color:#E6E6E6;">62.96</span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.3.4">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T9.3.4.1">Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.4.2">547.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.4.3">161.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T9.3.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T9.3.4.4.1" style="background-color:#E6E6E6;">77.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the factuality scores achieved by three different factuality alignment methods: Mask-DPO (the proposed method), FactTune, and Flame.  The scores are based on the ANAH-v2 evaluation metric, indicating the proportion of correctly stated facts in the model's responses.  The table highlights Mask-DPO's superior performance in terms of factuality compared to the other state-of-the-art methods.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparision with factuality alignment methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T10.3">
<tr class="ltx_tr" id="A2.T10.3.1">
<td class="ltx_td ltx_border_tt" id="A2.T10.3.1.1"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.3.1.2">GSM8K</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.3.1.3">MATH</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.3.1.4">GPQA</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.3.1.5">Human Eval</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T10.3.1.6">MBPP</td>
</tr>
<tr class="ltx_tr" id="A2.T10.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A2.T10.3.2.1">Baseline</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.3.2.2">84.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.3.2.3">52.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.3.2.4">26.77</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.3.2.5">70.73</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T10.3.2.6">71.21</td>
</tr>
<tr class="ltx_tr" id="A2.T10.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A2.T10.3.3.1">Mask-DPO</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.3.3.2">86.20</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.3.3.3">47.68</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.3.3.4">31.82</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.3.3.5">68.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T10.3.3.6">70.04</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the Llama3.1-8B-Instruct model on several standard benchmarks before and after applying the Mask-DPO factuality alignment technique.  The benchmarks cover diverse tasks, including mathematical reasoning (GSM8K, MATH, GPQA) and code generation (HumanEval, MBPP). The table shows the scores achieved by the model in each benchmark, allowing comparison of performance before and after the alignment process. This comparison helps determine if the improvement in factuality provided by Mask-DPO impacts the model's overall capabilities across different tasks.
> <details>
> <summary>read the caption</summary>
> Table 10: Evaluation on Standard Benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T11.3">
<tr class="ltx_tr" id="A2.T11.3.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.1"><span class="ltx_text ltx_font_bold" id="A2.T11.3.1.1.1">Temperature</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.2"><span class="ltx_text ltx_font_bold" id="A2.T11.3.1.2.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.3"><span class="ltx_text ltx_font_bold" id="A2.T11.3.1.3.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T11.3.1.4" style="background-color:#E6E6E6;"><span class="ltx_text ltx_font_bold" id="A2.T11.3.1.4.1" style="background-color:#E6E6E6;">% Score</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.3.2.1">0.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.3.2.2">485</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.3.2.3">259.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T11.3.2.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T11.3.2.4.1" style="background-color:#E6E6E6;">65.30</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.3">
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.1">0.5</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.2">539</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.3">244.8</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.3.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T11.3.3.4.1" style="background-color:#E6E6E6;">67.96</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.4">
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.1">0.75</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.2">733</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.3">219</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.4.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T11.3.4.4.1" style="background-color:#E6E6E6;">76.02</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.5">
<td class="ltx_td ltx_align_center" id="A2.T11.3.5.1">1.0</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.5.2">732</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.5.3">240.6</td>
<td class="ltx_td ltx_align_center" id="A2.T11.3.5.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T11.3.5.4.1" style="background-color:#E6E6E6;">74.24</span></td>
</tr>
<tr class="ltx_tr" id="A2.T11.3.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T11.3.6.1">0.8 (default)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T11.3.6.2">547.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T11.3.6.3">161.4</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A2.T11.3.6.4" style="background-color:#E6E6E6;"><span class="ltx_text" id="A2.T11.3.6.4.1" style="background-color:#E6E6E6;">77.53</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study on the impact of different inference temperatures on the performance of the Mask-DPO model. The study evaluates the model's performance using four different temperatures: 0.25, 0.5, 0.75, and 1.0, with the default temperature of 0.8 included for comparison. The results show the number of correct and incorrect facts, along with the factuality score for each temperature setting. This analysis helps to determine the optimal temperature setting for the Mask-DPO model, balancing the trade-off between diversity and accuracy in the model's outputs.
> <details>
> <summary>read the caption</summary>
> Table 11: Evaluation on different inference setup.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T12.3">
<tr class="ltx_tr" id="A3.T12.3.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A3.T12.3.1.1"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.1.1">Distance</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.3.1.2"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.2.1"># Correct</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.3.1.3"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.3.1"># Incorrect</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.3.1.4"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.4.1">% Score</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.3.1.5"><span class="ltx_text ltx_font_bold" id="A3.T12.3.1.5.1">Diff</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T12.3.2.1">far</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.2">541.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.3">214</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.3.2.4">71.69</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T12.3.2.5" rowspan="2"><span class="ltx_text" id="A3.T12.3.2.5.1">0.23</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T12.3.3.1">near</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.3.2">518</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.3.3">195</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T12.3.3.4">71.92</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating different strategies for constructing preference data in the Mask-DPO model.  Specifically, it compares the performance of clustering topics based on questions versus topics to determine which is more effective in improving the model's factuality. The table shows the number of correct and incorrect facts, along with the resulting factuality score, for each sampling strategy.  The purpose is to assess if the model's internal knowledge representation is organized primarily around topics or questions, helping to understand the impact of data scaling strategies for factuality alignment.
> <details>
> <summary>read the caption</summary>
> Table 12: Evaluation on question-based clustering strategies for preference data construction.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.02846/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.02846/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}