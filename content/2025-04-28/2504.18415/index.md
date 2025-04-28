---
title: "BitNet v2: Native 4-bit Activations with Hadamard Transformation for 1-bit LLMs"
summary: "BitNet v2 enables native 4-bit activations in 1-bit LLMs via Hadamard transformation, reducing memory and computation costs."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Natural Language Processing", "Large Language Models", "🏢 University of Chinese Academy of Sciences",]
showSummary: true
date: 2025-04-25
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.18415 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongyu Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-28 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.18415" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.18415" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.18415/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Efficient deployment of 1-bit Large Language Models (LLMs) faces obstacles due to activation outliers, complicating quantization. Existing solutions still rely on 8-bit precision, preventing full utilization of hardware. Additionally, methods like sparsification are not ideal for maximizing throughput in batched inference. Thus, there exists a need for methods that can make fully utilize 4-bit computation for 1.58-bit LLMs.



The paper introduces **BitNet v2, a novel framework enabling native 4-bit activation quantization for 1-bit LLMs**. BitNet v2 uses a module called **H-BitLinear, which applies an online Hadamard transformation prior to activation quantization to smooth sharp activation distributions**. BitNet v2 trained from scratch matches the performance of previous methods, but achieves minimal performance degradation when trained with native 4-bit activations, significantly reducing memory footprint and computational cost.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} BitNet v2 introduces H-BitLinear, enabling native 4-bit activation quantization for 1-bit LLMs. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} H-BitLinear employs an online Hadamard transformation to smooth activation distributions, making them suitable for low-bit representation. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} BitNet v2 achieves comparable performance to previous models with significantly reduced memory footprint and computational cost. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it **reduces memory footprint and computational cost** for batched inference in 1-bit LLMs, making them more practical for deployment on resource-constrained devices. The method can be a starting point for optimization.

------
#### Visual Insights



![](https://arxiv.org/html/2504.18415/x1.png)

> 🔼 This figure shows the distribution of the activation weights of the output projection matrix (Wo) in the attention mechanism of the BitNet b1.58 model.  The plot visualizes the frequency or density of different weight values, offering insight into the distribution's characteristics. This is important because the distribution of activation weights significantly impacts the model's performance and efficiency, particularly when using low-bit quantization.
> <details>
> <summary>read the caption</summary>
> (a) 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT of BitNet b1.58
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S2.T1.8">
<tr class="ltx_tr" id="S2.T1.8.8">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S2.T1.8.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.9.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.8.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.10.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.1.1.1.1">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S2.T1.1.1.1.1.m1.1"><semantics id="S2.T1.1.1.1.1.m1.1a"><mo id="S2.T1.1.1.1.1.m1.1.1" stretchy="false" xref="S2.T1.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S2.T1.1.1.1.1.m1.1b"><ci id="S2.T1.1.1.1.1.m1.1.1.cmml" xref="S2.T1.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.2.2.2.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.2.2.2.1.m1.1"><semantics id="S2.T1.2.2.2.1.m1.1a"><mo id="S2.T1.2.2.2.1.m1.1.1" stretchy="false" xref="S2.T1.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.2.2.2.1.m1.1b"><ci id="S2.T1.2.2.2.1.m1.1.1.cmml" xref="S2.T1.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.3.3.3.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.3.3.3.1.m1.1"><semantics id="S2.T1.3.3.3.1.m1.1a"><mo id="S2.T1.3.3.3.1.m1.1.1" stretchy="false" xref="S2.T1.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.3.3.3.1.m1.1b"><ci id="S2.T1.3.3.3.1.m1.1.1.cmml" xref="S2.T1.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.4.4.4.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.4.4.4.1.m1.1"><semantics id="S2.T1.4.4.4.1.m1.1a"><mo id="S2.T1.4.4.4.1.m1.1.1" stretchy="false" xref="S2.T1.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.4.4.4.1.m1.1b"><ci id="S2.T1.4.4.4.1.m1.1.1.cmml" xref="S2.T1.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.5.5.5.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.5.5.5.1.m1.1"><semantics id="S2.T1.5.5.5.1.m1.1a"><mo id="S2.T1.5.5.5.1.m1.1.1" stretchy="false" xref="S2.T1.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.5.5.5.1.m1.1b"><ci id="S2.T1.5.5.5.1.m1.1.1.cmml" xref="S2.T1.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.6.6.6.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.6.6.6.1.m1.1"><semantics id="S2.T1.6.6.6.1.m1.1a"><mo id="S2.T1.6.6.6.1.m1.1.1" stretchy="false" xref="S2.T1.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.6.6.6.1.m1.1b"><ci id="S2.T1.6.6.6.1.m1.1.1.cmml" xref="S2.T1.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.7.7.7.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.7.7.7.1.m1.1"><semantics id="S2.T1.7.7.7.1.m1.1a"><mo id="S2.T1.7.7.7.1.m1.1.1" stretchy="false" xref="S2.T1.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.7.7.7.1.m1.1b"><ci id="S2.T1.7.7.7.1.m1.1.1.cmml" xref="S2.T1.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S2.T1.8.8.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S2.T1.8.8.8.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="S2.T1.8.8.8.1.m1.1"><semantics id="S2.T1.8.8.8.1.m1.1a"><mo id="S2.T1.8.8.8.1.m1.1.1" stretchy="false" xref="S2.T1.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S2.T1.8.8.8.1.m1.1b"><ci id="S2.T1.8.8.8.1.m1.1.1.cmml" xref="S2.T1.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S2.T1.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S2.T1.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.8.9.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.9.1.1">BitNet b1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.2" rowspan="4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.9.2.1">400M</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.3" style="padding-left:4.5pt;padding-right:4.5pt;">13.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.4" style="padding-left:4.5pt;padding-right:4.5pt;">24.32</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.5" style="padding-left:4.5pt;padding-right:4.5pt;">43.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.6" style="padding-left:4.5pt;padding-right:4.5pt;">39.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.7" style="padding-left:4.5pt;padding-right:4.5pt;">64.91</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.8" style="padding-left:4.5pt;padding-right:4.5pt;">51.93</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.9" style="padding-left:4.5pt;padding-right:4.5pt;">45.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.9.10" style="padding-left:4.5pt;padding-right:4.5pt;">44.87</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.10">
<td class="ltx_td ltx_align_left" id="S2.T1.8.10.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.10.1.1">BitNet a4.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.2" style="padding-left:4.5pt;padding-right:4.5pt;">13.61</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.3" style="padding-left:4.5pt;padding-right:4.5pt;">24.15</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.4" style="padding-left:4.5pt;padding-right:4.5pt;">41.75</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.5" style="padding-left:4.5pt;padding-right:4.5pt;">39.48</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.6" style="padding-left:4.5pt;padding-right:4.5pt;">65.18</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.7" style="padding-left:4.5pt;padding-right:4.5pt;">53.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.8" style="padding-left:4.5pt;padding-right:4.5pt;">44.34</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.10.9" style="padding-left:4.5pt;padding-right:4.5pt;">44.75</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.11">
<td class="ltx_td ltx_align_left" id="S2.T1.8.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.11.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.11.1.2"> (a8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.2" style="padding-left:4.5pt;padding-right:4.5pt;">13.50</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.3" style="padding-left:4.5pt;padding-right:4.5pt;">23.29</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.4" style="padding-left:4.5pt;padding-right:4.5pt;">43.06</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.5" style="padding-left:4.5pt;padding-right:4.5pt;">39.06</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.6" style="padding-left:4.5pt;padding-right:4.5pt;">64.74</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.7" style="padding-left:4.5pt;padding-right:4.5pt;">50.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.8" style="padding-left:4.5pt;padding-right:4.5pt;">45.26</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.11.9" style="padding-left:4.5pt;padding-right:4.5pt;">44.33</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.12">
<td class="ltx_td ltx_align_left" id="S2.T1.8.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.12.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.12.1.2"> (a4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.2" style="padding-left:4.5pt;padding-right:4.5pt;">13.78</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.3" style="padding-left:4.5pt;padding-right:4.5pt;">23.29</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.4" style="padding-left:4.5pt;padding-right:4.5pt;">41.46</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.5" style="padding-left:4.5pt;padding-right:4.5pt;">38.33</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.6" style="padding-left:4.5pt;padding-right:4.5pt;">65.45</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.7" style="padding-left:4.5pt;padding-right:4.5pt;">50.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.8" style="padding-left:4.5pt;padding-right:4.5pt;">44.56</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.12.9" style="padding-left:4.5pt;padding-right:4.5pt;">43.95</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.13">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.8.13.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.13.1.1">BitNet b1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.2" rowspan="4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.13.2.1">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.3" style="padding-left:4.5pt;padding-right:4.5pt;">11.02</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.4" style="padding-left:4.5pt;padding-right:4.5pt;">27.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.5" style="padding-left:4.5pt;padding-right:4.5pt;">49.58</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.6" style="padding-left:4.5pt;padding-right:4.5pt;">48.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.7" style="padding-left:4.5pt;padding-right:4.5pt;">69.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.8" style="padding-left:4.5pt;padding-right:4.5pt;">55.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.9" style="padding-left:4.5pt;padding-right:4.5pt;">54.12</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.13.10" style="padding-left:4.5pt;padding-right:4.5pt;">51.01</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.14">
<td class="ltx_td ltx_align_left" id="S2.T1.8.14.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.14.1.1">BitNet a4.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.2" style="padding-left:4.5pt;padding-right:4.5pt;">11.15</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.3" style="padding-left:4.5pt;padding-right:4.5pt;">27.47</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.4" style="padding-left:4.5pt;padding-right:4.5pt;">49.20</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.5" style="padding-left:4.5pt;padding-right:4.5pt;">48.72</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.6" style="padding-left:4.5pt;padding-right:4.5pt;">69.64</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.7" style="padding-left:4.5pt;padding-right:4.5pt;">56.51</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.8" style="padding-left:4.5pt;padding-right:4.5pt;">53.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.14.9" style="padding-left:4.5pt;padding-right:4.5pt;">50.90</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.15">
<td class="ltx_td ltx_align_left" id="S2.T1.8.15.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.15.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.15.1.2"> (a8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.2" style="padding-left:4.5pt;padding-right:4.5pt;">11.14</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.3" style="padding-left:4.5pt;padding-right:4.5pt;">27.90</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.4" style="padding-left:4.5pt;padding-right:4.5pt;">49.96</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.5" style="padding-left:4.5pt;padding-right:4.5pt;">48.37</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.6" style="padding-left:4.5pt;padding-right:4.5pt;">69.42</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.7" style="padding-left:4.5pt;padding-right:4.5pt;">57.22</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.8" style="padding-left:4.5pt;padding-right:4.5pt;">54.14</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.15.9" style="padding-left:4.5pt;padding-right:4.5pt;">51.17</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.16">
<td class="ltx_td ltx_align_left" id="S2.T1.8.16.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.16.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.16.1.2"> (a4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.2" style="padding-left:4.5pt;padding-right:4.5pt;">11.33</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.3" style="padding-left:4.5pt;padding-right:4.5pt;">27.56</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.4" style="padding-left:4.5pt;padding-right:4.5pt;">49.58</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.5" style="padding-left:4.5pt;padding-right:4.5pt;">48.00</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.6" style="padding-left:4.5pt;padding-right:4.5pt;">68.23</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.7" style="padding-left:4.5pt;padding-right:4.5pt;">55.49</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.8" style="padding-left:4.5pt;padding-right:4.5pt;">53.58</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.16.9" style="padding-left:4.5pt;padding-right:4.5pt;">50.41</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.17">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.8.17.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.17.1.1">BitNet b1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.2" rowspan="4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.17.2.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.3" style="padding-left:4.5pt;padding-right:4.5pt;">9.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.4" style="padding-left:4.5pt;padding-right:4.5pt;">28.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.5" style="padding-left:4.5pt;padding-right:4.5pt;">54.80</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.6" style="padding-left:4.5pt;padding-right:4.5pt;">56.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.7" style="padding-left:4.5pt;padding-right:4.5pt;">71.44</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.8" style="padding-left:4.5pt;padding-right:4.5pt;">59.35</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.9" style="padding-left:4.5pt;padding-right:4.5pt;">60.47</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.17.10" style="padding-left:4.5pt;padding-right:4.5pt;">55.22</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.18">
<td class="ltx_td ltx_align_left" id="S2.T1.8.18.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.18.1.1">BitNet a4.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.80</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.3" style="padding-left:4.5pt;padding-right:4.5pt;">29.01</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.4" style="padding-left:4.5pt;padding-right:4.5pt;">55.01</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.5" style="padding-left:4.5pt;padding-right:4.5pt;">55.92</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.6" style="padding-left:4.5pt;padding-right:4.5pt;">71.76</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.7" style="padding-left:4.5pt;padding-right:4.5pt;">59.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.8" style="padding-left:4.5pt;padding-right:4.5pt;">59.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.18.9" style="padding-left:4.5pt;padding-right:4.5pt;">55.19</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.19">
<td class="ltx_td ltx_align_left" id="S2.T1.8.19.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.19.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.19.1.2"> (a8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.72</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.3" style="padding-left:4.5pt;padding-right:4.5pt;">30.55</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.4" style="padding-left:4.5pt;padding-right:4.5pt;">55.56</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.5" style="padding-left:4.5pt;padding-right:4.5pt;">57.19</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.6" style="padding-left:4.5pt;padding-right:4.5pt;">71.33</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.7" style="padding-left:4.5pt;padding-right:4.5pt;">58.72</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.8" style="padding-left:4.5pt;padding-right:4.5pt;">60.90</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.19.9" style="padding-left:4.5pt;padding-right:4.5pt;">55.71</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.20">
<td class="ltx_td ltx_align_left" id="S2.T1.8.20.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.20.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.20.1.2"> (a4)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.85</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.3" style="padding-left:4.5pt;padding-right:4.5pt;">28.92</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.4" style="padding-left:4.5pt;padding-right:4.5pt;">55.01</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.5" style="padding-left:4.5pt;padding-right:4.5pt;">56.59</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.6" style="padding-left:4.5pt;padding-right:4.5pt;">71.65</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.7" style="padding-left:4.5pt;padding-right:4.5pt;">59.67</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.8" style="padding-left:4.5pt;padding-right:4.5pt;">60.74</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.20.9" style="padding-left:4.5pt;padding-right:4.5pt;">55.43</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.21">
<td class="ltx_td ltx_align_left ltx_border_t" id="S2.T1.8.21.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.21.1.1">BitNet b1.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S2.T1.8.21.2" rowspan="4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.21.2.1">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.3" style="padding-left:4.5pt;padding-right:4.5pt;">9.09</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.4" style="padding-left:4.5pt;padding-right:4.5pt;">31.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.5" style="padding-left:4.5pt;padding-right:4.5pt;">59.51</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.6" style="padding-left:4.5pt;padding-right:4.5pt;">61.49</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.7" style="padding-left:4.5pt;padding-right:4.5pt;">74.37</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.8" style="padding-left:4.5pt;padding-right:4.5pt;">59.98</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.9" style="padding-left:4.5pt;padding-right:4.5pt;">61.63</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S2.T1.8.21.10" style="padding-left:4.5pt;padding-right:4.5pt;">58.12</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.22">
<td class="ltx_td ltx_align_left" id="S2.T1.8.22.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S2.T1.8.22.1.1">BitNet a4.8</span></td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.16</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.3" style="padding-left:4.5pt;padding-right:4.5pt;">31.91</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.4" style="padding-left:4.5pt;padding-right:4.5pt;">59.09</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.5" style="padding-left:4.5pt;padding-right:4.5pt;">61.06</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.6" style="padding-left:4.5pt;padding-right:4.5pt;">74.16</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.7" style="padding-left:4.5pt;padding-right:4.5pt;">59.67</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.8" style="padding-left:4.5pt;padding-right:4.5pt;">61.54</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.22.9" style="padding-left:4.5pt;padding-right:4.5pt;">57.91</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.23">
<td class="ltx_td ltx_align_left" id="S2.T1.8.23.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.23.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.23.1.2"> (a8)</span>
</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.14</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.3" style="padding-left:4.5pt;padding-right:4.5pt;">32.94</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.4" style="padding-left:4.5pt;padding-right:4.5pt;">58.54</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.5" style="padding-left:4.5pt;padding-right:4.5pt;">61.08</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.6" style="padding-left:4.5pt;padding-right:4.5pt;">74.10</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.7" style="padding-left:4.5pt;padding-right:4.5pt;">61.48</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.8" style="padding-left:4.5pt;padding-right:4.5pt;">64.22</td>
<td class="ltx_td ltx_align_center" id="S2.T1.8.23.9" style="padding-left:4.5pt;padding-right:4.5pt;">58.73</td>
</tr>
<tr class="ltx_tr" id="S2.T1.8.24">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S2.T1.8.24.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S2.T1.8.24.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S2.T1.8.24.1.2"> (a4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.2" style="padding-left:4.5pt;padding-right:4.5pt;">9.24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.3" style="padding-left:4.5pt;padding-right:4.5pt;">32.42</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.4" style="padding-left:4.5pt;padding-right:4.5pt;">58.00</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.5" style="padding-left:4.5pt;padding-right:4.5pt;">60.71</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.6" style="padding-left:4.5pt;padding-right:4.5pt;">74.27</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.7" style="padding-left:4.5pt;padding-right:4.5pt;">60.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.8" style="padding-left:4.5pt;padding-right:4.5pt;">63.52</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S2.T1.8.24.9" style="padding-left:4.5pt;padding-right:4.5pt;">58.30</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the performance of three different models: BitNet v2, BitNet a4.8, and BitNet b1.58, across various sizes (400M, 1.3B, 3B, and 7B parameters).  The evaluation metrics include perplexity (PPL), which measures how well the model predicts the next word in a sequence, and zero-shot accuracy across several downstream tasks (ARCC, ARCe, HS, PQ, WGe, LBA).  ARCC and ARCe are subsets of the ARC challenge, HS is HellaSwag, PQ is PIQA, WGe is Winogrande, and LBA is LAMBADA.  The average accuracy across all tasks is also provided.  The table showcases the impact of different activation bit-widths (8-bit and 4-bit) on the overall performance, particularly considering the trade-off between performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 1: Perplexity and results of BitNet v2, BitNet a4.8 and BitNet b1.58 on the end tasks.
> </details>





### In-depth insights


#### 4-bit Activation
4-bit activation is a technique to **reduce the memory footprint and computational cost** of large language models by quantizing the activations to 4-bit precision. This poses challenges due to activation outliers, where some activations have significantly larger magnitudes than others, making them difficult to represent with a low bit-width. Techniques like **Hadamard transformation smooth sharp activation distributions**, making them more Gaussian-like. **Native 4-bit activations** allows leveraging hardware acceleration for 4-bit computation.

#### Hadamard Smooth
The concept of "Hadamard Smoothness" likely refers to the property of a function or transformation, where applying a Hadamard matrix or a Hadamard-related operation results in a **smoother output distribution**. This smoothness is crucial for certain applications, especially in areas like **signal processing and machine learning**, where subsequent operations benefit from well-behaved data. A smoother distribution often implies **reduced variance and fewer outliers**, making the data more amenable to quantization or other compression techniques. In the context of neural networks, **Hadamard Smoothness** could be achieved by incorporating Hadamard transforms within layers to regularize activations and promote more stable training dynamics. **Quantization-aware training** can also benefit from this, leading to more efficient and robust models. 

#### BitNet v2 Achieves
**BitNet v2** represents a significant advancement, achieving **native 4-bit activations** within 1-bit Large Language Models (LLMs). This is a notable step because it overcomes the obstacle of activation outliers, which previously hindered efficient low-bit quantization. **The Hadamard transformation**, a core component of BitNet v2, effectively smooths activation distributions, making them more amenable to low-bit representations. The most important acheivement here is **minimal performance degradation** when trained with native 4-bit activations, a crucial step toward reduced memory footprint and computational cost, particularly beneficial for batched inference.

#### No PTQ Needed
**Post-Training Quantization (PTQ) is a technique to reduce the model size and accelerate inference**, typically involving quantizing weights and activations *after* training. The absence of PTQ suggests the model might possess inherent qualities making it quantization-friendly without extra steps. **Training with quantization-aware methods or specific architectural designs could eliminate the need for PTQ**. This indicates that the model is more robust to the precision loss associated with quantization, potentially due to its **inherent regularization or smoother activation landscapes.** Consequently, deploying such a model would be simpler and more efficient, as it bypasses the PTQ pipeline, saving computation and development effort.

#### STE for INT4
While the provided research paper doesn't explicitly feature a section titled 'STE for INT4,' we can infer the use of the Straight-Through Estimator (STE) in the context of INT4 (4-bit integer) quantization. The STE is essential for training neural networks with quantization, as it addresses the non-differentiability of the quantization function. **In the forward pass, quantized values are used for computation, mimicking inference.** However, in the backward pass, the gradient is directly passed through the quantization function as if it were an identity function. **This allows for weight updates despite the non-differentiability.** For INT4, this is crucial because gradients need to propagate through the quantized activations or weights to effectively train the network for low-precision inference. Without STE, training quantized networks, especially with aggressive quantization like INT4, would be impossible due to the lack of gradient information. The paper mentions the usage of STE for gradient approximation, confirming this method is used for INT4 training in BitNet v2.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.18415/x2.png)

> 🔼 The figure shows the distribution of the down projection weights (𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}) in the feed-forward network (FFN) of the BitNet b1.58 model.  It illustrates the magnitude of these weights across different dimensions, providing insight into the model's internal representation and potentially highlighting areas of sparsity or concentration of weight values. This visualization is helpful for understanding the weight distribution and its influence on model performance, particularly in relation to the quantization techniques employed by the model.
> <details>
> <summary>read the caption</summary>
> (b) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x3.png)

> 🔼 This figure shows the distribution of the activation of the output projection matrix 𝐖o (W_o) in the attention layer of BitNet v2.  It provides a visualization of the activation values, allowing for an understanding of the data distribution's characteristics.  Comparing this to other visualizations of activation distributions (like those from BitNet b1.58) allows for a visual demonstration of how the Hadamard transformation affects the distribution, resulting in a more Gaussian-like shape suitable for low-bit quantization.
> <details>
> <summary>read the caption</summary>
> (c) 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x4.png)

> 🔼 The figure shows the distribution of the down projection matrix (𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}) in the feed-forward network (FFN) of BitNet v2.  This visualization helps illustrate the impact of the Hadamard transformation applied in BitNet v2's H-BitLinear module, which aims to smooth the activation distributions and reduce the number of outlier channels. By comparing this distribution to the distribution of the same weight matrix in previous models (such as BitNet b1.58, shown in other parts of the figure), one can understand the effectiveness of BitNet v2's outlier mitigation strategy.
> <details>
> <summary>read the caption</summary>
> (d) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x5.png)

> 🔼 This figure illustrates the architecture of BitNet v2 and its core component, H-BitLinear. The top part shows a schematic overview of BitNet v2, highlighting the placement of H-BitLinear modules within the attention and feed-forward network (FFN) layers.  The bottom part presents a comparison of activation distributions before and after the Hadamard transformation in H-BitLinear.  Specifically, it shows the distributions of activations from the output projection (Wo) in the attention layer and the down projection (Wdown) in the FFN layer for both BitNet v1.58 (for comparison) and BitNet v2.  The plots visually demonstrate how H-BitLinear, using a Hadamard transform, effectively reduces outliers, transforming the sharp, non-Gaussian activation distributions into smoother, Gaussian-like distributions better suited for low-bit quantization, which is crucial for efficient deployment of 1-bit LLMs.
> <details>
> <summary>read the caption</summary>
> Figure 1: Top: Overview of BitNet v2 and ℋℋ\mathcal{H}caligraphic_H-BitLinear. Bottom: The distribution of the activation of output projection 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT in attention and down projection 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT in FFN. BitNet v2 utilizes ℋℋ\mathcal{H}caligraphic_H-BitLinear to eliminate the large amount of outlier channels in the intermediate states. The Hadamard transformation reshapes the original sharp distribution into a more Gaussian-like form.
> </details>



![](https://arxiv.org/html/2504.18415/)

> 🔼 This figure shows the distribution of the activation values for the query, key, and value weight matrix (Wqkv) in the attention layer of the BitNet b1.58 model.  It displays the distribution of the absolute values of the weights across the different tokens and dimensions. This visualization helps in understanding the distribution characteristics of the weight matrix in relation to the model's performance and its suitability for quantization.
> <details>
> <summary>read the caption</summary>
> (a) 𝐖qkvsubscript𝐖qkv\mathbf{W}_{\text{qkv}}bold_W start_POSTSUBSCRIPT qkv end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x7.png)

> 🔼 This figure shows the distribution of the activation of the output projection (Wo) in the attention mechanism of the BitNet b1.58 model.  The distribution is visualized as a 3D histogram, showing the frequency of different activation values across various tokens and dimensions. This visualization is important for understanding the impact of outliers on the effectiveness of low-bit quantization in the model.
> <details>
> <summary>read the caption</summary>
> (b) 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x8.png)

> 🔼 Figure 2 shows the activation distribution of both BitNet b1.58 and BitNet v2, using 8-bit activations.  It displays the distribution of activations for four different weight matrices within the models: Wqkv (query, key, value), Wo (output projection in attention), Wup,gate (gate projection in feed-forward network), and Wdown (down projection in feed-forward network).  The plots illustrate how the Hadamard transformation in BitNet v2 alters the distribution, making it more Gaussian-like and less prone to outliers compared to BitNet b1.58. This is especially evident in the plots for Wo and Wdown, which show a significant reduction in outlier channels after the transformation.
> <details>
> <summary>read the caption</summary>
> (c) 𝐖up,gatesubscript𝐖up,gate\mathbf{W}_{\text{up,gate}}bold_W start_POSTSUBSCRIPT up,gate end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x9.png)

> 🔼 The figure shows the distribution of the weights in the down projection layer (𝐖downsubscript𝐖down \mathbf{W}_{\text{down}}) of the BitNet b1.58 model.  The distribution is visualized as a 3D histogram, illustrating the frequency of different weight values across various dimensions of the weight matrix. This visualization helps understand the characteristics of the weight distribution and how it might impact the model's performance and quantization.
> <details>
> <summary>read the caption</summary>
> (d) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x10.png)

> 🔼 The figure shows the distribution of the activation of the output projection  for the query, key, and value matrices (Wqkv) in the attention mechanism of BitNet v2.  This visualization helps illustrate how the Hadamard transformation within the H-BitLinear module reshapes the distribution, reducing outliers and making it more suitable for 4-bit quantization. The x-axis represents the number of tokens, and the y-axis represents the dimension of the matrix. The color intensity shows the absolute value of the activation values.
> <details>
> <summary>read the caption</summary>
> (e) 𝐖qkvsubscript𝐖qkv\mathbf{W}_{\text{qkv}}bold_W start_POSTSUBSCRIPT qkv end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x11.png)

> 🔼 The figure shows the distribution of the activation of the output projection matrix (Wo) in the attention layer of BitNet v2.  It visualizes the values of the matrix elements and their frequency to illustrate the impact of the Hadamard transformation on the activation distribution.  In particular, it demonstrates how H-BitLinear (the module using the Hadamard transformation) reshapes the activation distribution into a more Gaussian-like form, reducing the number of outliers compared to the original sharp distribution observed in previous models like BitNet b1.58.
> <details>
> <summary>read the caption</summary>
> (f) 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x12.png)

> 🔼 Figure 2(g) displays the distribution of the activation values for the 	Wup,gate matrix in the BitNet v2 model.  	Wup,gate represents the weight matrix used in the gating mechanism of the feed-forward network within the BitNet v2 architecture. The figure shows a histogram or density plot illustrating the frequency or probability of different activation values within the 	Wup,gate matrix. This visualization helps to understand the distribution of activations and how it may have been affected by the Hadamard transformation method implemented in the BitNet v2 model.
> <details>
> <summary>read the caption</summary>
> (g) 𝐖up,gatesubscript𝐖up,gate\mathbf{W}_{\text{up,gate}}bold_W start_POSTSUBSCRIPT up,gate end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x13.png)

> 🔼 This figure shows the distribution of the down projection weights (𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}) in the feed-forward network of BitNet v2.  It illustrates the impact of the Hadamard transformation within the H-BitLinear module on the distribution of activation values. By comparing this to the distribution in other versions of BitNet (shown in other subfigures), we can see how H-BitLinear effectively reshapes the distribution, mitigating the effect of outliers and making it more suitable for low-bit quantization. This is a crucial aspect of BitNet v2's ability to achieve 4-bit activation quantization without significant performance loss.
> <details>
> <summary>read the caption</summary>
> (h) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x14.png)

> 🔼 Figure 2 presents a comparison of activation distributions in BitNet b1.58 and BitNet v2, both using 8-bit activations.  It shows the distribution of activations for four key weight matrices: Wqkv and Wo in the attention mechanism, and Wup,gate and Wdown in the feed-forward network (FFN). The plots visually demonstrate how the Hadamard transformation in BitNet v2 effectively reshapes the original distributions, which contain many outliers, into smoother, more Gaussian-like distributions. This transformation is crucial for enabling efficient low-bit quantization of activations in BitNet v2.
> <details>
> <summary>read the caption</summary>
> Figure 2: The activation distribution of BitNet b1.58 and BitNet v2 with 8-bit activations.
> </details>



![](https://arxiv.org/html/2504.18415/x15.png)

> 🔼 Figure 1(b) shows the distribution of the weights in the down projection layer (𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}) of the BitNet b1.58 model.  The x-axis represents the number of tokens, the y-axis represents the number of dimensions, and the color intensity represents the absolute value of the weights. This visualization helps understand the distribution of weights in the network and its potential impact on model performance and efficiency.
> <details>
> <summary>read the caption</summary>
> (a) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet b1.58
> </details>



![](https://arxiv.org/html/2504.18415/x16.png)

> 🔼 The figure shows the distribution of the down projection matrix (𝐖downsubscript𝐖down \mathbf{W}_{\text{down}}) in the feed-forward network of BitNet v2.  This visualization helps illustrate the impact of the Hadamard transformation within the H-BitLinear module on the activation distribution. By comparing this distribution to that of BitNet b1.58 (shown in another figure), one can observe how H-BitLinear effectively reduces outliers, making the distribution more Gaussian-like and better suited for low-bit quantization.
> <details>
> <summary>read the caption</summary>
> (b) 𝐖downsubscript𝐖down\mathbf{W}_{\text{down}}bold_W start_POSTSUBSCRIPT down end_POSTSUBSCRIPT of BitNet v2
> </details>



![](https://arxiv.org/html/2504.18415/x17.png)

> 🔼 This figure shows the distribution of the activation of output projection Wo in the attention mechanism of the BitNet b1.58 model. It provides insights into the nature of activations in this specific layer of the model and how they might be affected by quantization.
> <details>
> <summary>read the caption</summary>
> (c) 𝐖osubscript𝐖o\mathbf{W}_{\text{o}}bold_W start_POSTSUBSCRIPT o end_POSTSUBSCRIPT of BitNet b1.58
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T2.7">
<tr class="ltx_tr" id="S3.T2.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T2.7.7.8"><span class="ltx_text ltx_font_bold" id="S3.T2.7.7.8.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.7.9"><span class="ltx_text ltx_font_bold" id="S3.T2.7.7.9.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T2.1.1.1.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.1.1.1.1.m1.1"><semantics id="S3.T2.1.1.1.1.m1.1a"><mo id="S3.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T2.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.1.1.1.1.m1.1b"><ci id="S3.T2.1.1.1.1.m1.1.1.cmml" xref="S3.T2.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T2.2.2.2.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.2.2.2.1.m1.1"><semantics id="S3.T2.2.2.2.1.m1.1a"><mo id="S3.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.2.2.2.1.m1.1b"><ci id="S3.T2.2.2.2.1.m1.1.1.cmml" xref="S3.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T2.3.3.3.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.3.3.3.1.m1.1"><semantics id="S3.T2.3.3.3.1.m1.1a"><mo id="S3.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T2.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.3.3.3.1.m1.1b"><ci id="S3.T2.3.3.3.1.m1.1.1.cmml" xref="S3.T2.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T2.4.4.4.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.4.4.4.1.m1.1"><semantics id="S3.T2.4.4.4.1.m1.1a"><mo id="S3.T2.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.4.4.4.1.m1.1b"><ci id="S3.T2.4.4.4.1.m1.1.1.cmml" xref="S3.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T2.5.5.5.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.5.5.5.1.m1.1"><semantics id="S3.T2.5.5.5.1.m1.1a"><mo id="S3.T2.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T2.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.5.5.5.1.m1.1b"><ci id="S3.T2.5.5.5.1.m1.1.1.cmml" xref="S3.T2.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.6.6.6"><span class="ltx_text ltx_font_bold" id="S3.T2.6.6.6.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.6.6.6.1.m1.1"><semantics id="S3.T2.6.6.6.1.m1.1a"><mo id="S3.T2.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T2.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.6.6.6.1.m1.1b"><ci id="S3.T2.6.6.6.1.m1.1.1.cmml" xref="S3.T2.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T2.7.7.7"><span class="ltx_text ltx_font_bold" id="S3.T2.7.7.7.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T2.7.7.7.1.m1.1"><semantics id="S3.T2.7.7.7.1.m1.1a"><mo id="S3.T2.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T2.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T2.7.7.7.1.m1.1b"><ci id="S3.T2.7.7.7.1.m1.1.1.cmml" xref="S3.T2.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T2.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T2.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.7.8.1">
<span class="ltx_text" id="S3.T2.7.8.1.1">BitNet v2</span> (a8)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.2" rowspan="4"><span class="ltx_text" id="S3.T2.7.8.2.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.3">30.55</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.4">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.5">57.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.6">71.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.7">58.72</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.8">60.90</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.8.9">55.71</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.9">
<td class="ltx_td ltx_align_left" id="S3.T2.7.9.1">w/ 4-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.2">29.52</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.3">55.18</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.4">57.17</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.5">70.95</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.6">58.56</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.7">60.84</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.9.8">55.37</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.10">
<td class="ltx_td ltx_align_left" id="S3.T2.7.10.1">w/ 4-bit QKV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.2">30.63</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.3">55.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.4">57.15</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.5">71.16</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.6">58.96</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.7">60.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.10.8">55.60</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.11">
<td class="ltx_td ltx_align_left" id="S3.T2.7.11.1">w/ 4-bit Q, 3-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.2">29.69</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.3">55.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.4">56.22</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.5">71.49</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.6">57.62</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.7">59.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.11.8">54.88</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T2.7.12.1">
<span class="ltx_text" id="S3.T2.7.12.1.1">BitNet v2</span> (a8)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T2.7.12.2" rowspan="4"><span class="ltx_text" id="S3.T2.7.12.2.1">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.3">32.94</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.4">58.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.5">61.08</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.6">74.10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.7">61.48</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.8">64.22</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T2.7.12.9">58.73</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.13">
<td class="ltx_td ltx_align_left" id="S3.T2.7.13.1">w/ 4-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.2">33.02</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.3">58.67</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.4">61.04</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.5">73.61</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.6">61.88</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.7">64.06</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.13.8">58.71</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.14">
<td class="ltx_td ltx_align_left" id="S3.T2.7.14.1">w/ 4-bit QKV</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.2">32.76</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.3">58.46</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.4">61.01</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.5">74.10</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.6">60.85</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.7">63.87</td>
<td class="ltx_td ltx_align_center" id="S3.T2.7.14.8">58.51</td>
</tr>
<tr class="ltx_tr" id="S3.T2.7.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T2.7.15.1">w/ 4-bit Q, 3-bit KV</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.2">32.51</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.3">58.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.4">60.85</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.5">73.39</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.6">60.77</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.7">62.99</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T2.7.15.8">58.13</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the zero-shot accuracy results of the BitNet v2 model on various downstream tasks.  The model uses 8-bit activations, and the experiment varies the bit-widths of the Query, Key, and Value (QKV) states within the attention mechanism.  Different configurations are compared, including using 4-bit for KV, 4-bit for QKV, and 4-bit for Q with 3-bit for KV.  The results show how different QKV bit-width configurations affect the model's performance on the downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 2: The zero-shot accuracy of BitNet v2 with 8-bit activations and QKV states varying bit-widths on the end tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T3.7">
<tr class="ltx_tr" id="S3.T3.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T3.7.7.8"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.8.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.9"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.9.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.1.1.1"><span class="ltx_text ltx_font_bold" id="S3.T3.1.1.1.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.1.1.1.1.m1.1"><semantics id="S3.T3.1.1.1.1.m1.1a"><mo id="S3.T3.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.1.1.1.1.m1.1b"><ci id="S3.T3.1.1.1.1.m1.1.1.cmml" xref="S3.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.2.2.2"><span class="ltx_text ltx_font_bold" id="S3.T3.2.2.2.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.2.2.2.1.m1.1"><semantics id="S3.T3.2.2.2.1.m1.1a"><mo id="S3.T3.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T3.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.2.2.2.1.m1.1b"><ci id="S3.T3.2.2.2.1.m1.1.1.cmml" xref="S3.T3.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.3.3.3"><span class="ltx_text ltx_font_bold" id="S3.T3.3.3.3.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.3.3.3.1.m1.1"><semantics id="S3.T3.3.3.3.1.m1.1a"><mo id="S3.T3.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.3.3.3.1.m1.1b"><ci id="S3.T3.3.3.3.1.m1.1.1.cmml" xref="S3.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.4.4.4"><span class="ltx_text ltx_font_bold" id="S3.T3.4.4.4.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.4.4.4.1.m1.1"><semantics id="S3.T3.4.4.4.1.m1.1a"><mo id="S3.T3.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T3.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.4.4.4.1.m1.1b"><ci id="S3.T3.4.4.4.1.m1.1.1.cmml" xref="S3.T3.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.5.5.5"><span class="ltx_text ltx_font_bold" id="S3.T3.5.5.5.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.5.5.5.1.m1.1"><semantics id="S3.T3.5.5.5.1.m1.1a"><mo id="S3.T3.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T3.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.5.5.5.1.m1.1b"><ci id="S3.T3.5.5.5.1.m1.1.1.cmml" xref="S3.T3.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.6.6.6"><span class="ltx_text ltx_font_bold" id="S3.T3.6.6.6.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.6.6.6.1.m1.1"><semantics id="S3.T3.6.6.6.1.m1.1a"><mo id="S3.T3.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T3.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.6.6.6.1.m1.1b"><ci id="S3.T3.6.6.6.1.m1.1.1.cmml" xref="S3.T3.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T3.7.7.7"><span class="ltx_text ltx_font_bold" id="S3.T3.7.7.7.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T3.7.7.7.1.m1.1"><semantics id="S3.T3.7.7.7.1.m1.1a"><mo id="S3.T3.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T3.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T3.7.7.7.1.m1.1b"><ci id="S3.T3.7.7.7.1.m1.1.1.cmml" xref="S3.T3.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T3.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T3.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.7.8.1">
<span class="ltx_text" id="S3.T3.7.8.1.1">BitNet v2</span> (a4)</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.2" rowspan="4"><span class="ltx_text" id="S3.T3.7.8.2.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.3">28.92</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.4">55.01</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.5">56.59</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.6">71.65</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.7">59.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.8">60.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.8.9">55.43</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.9">
<td class="ltx_td ltx_align_left" id="S3.T3.7.9.1">w/ 4-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.2">29.52</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.3">54.46</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.4">56.36</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.5">71.49</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.6">58.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.7">60.14</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.9.8">55.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.10">
<td class="ltx_td ltx_align_left" id="S3.T3.7.10.1">w/ 4-bit QKV</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.2">28.58</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.3">55.43</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.4">56.32</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.5">71.16</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.6">57.93</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.7">60.70</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.10.8">55.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.11">
<td class="ltx_td ltx_align_left" id="S3.T3.7.11.1">w/ 4-bit Q, 3-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.2">29.18</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.3">55.51</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.4">55.85</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.5">71.60</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.6">58.41</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.7">59.54</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.11.8">55.02</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T3.7.12.1">
<span class="ltx_text" id="S3.T3.7.12.1.1">BitNet v2</span> (a4)</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S3.T3.7.12.2" rowspan="4"><span class="ltx_text" id="S3.T3.7.12.2.1">7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.3">32.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.4">58.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.5">60.71</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.6">74.27</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.7">60.85</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.8">63.52</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T3.7.12.9">58.30</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.13">
<td class="ltx_td ltx_align_left" id="S3.T3.7.13.1">w/ 4-bit KV</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.2">32.94</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.3">58.12</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.4">60.33</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.5">74.21</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.6">61.01</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.7">63.65</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.13.8">58.38</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.14">
<td class="ltx_td ltx_align_left" id="S3.T3.7.14.1">w/ 4-bit QKV</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.2">33.11</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.3">57.91</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.4">60.78</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.5">74.05</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.6">61.17</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.7">62.93</td>
<td class="ltx_td ltx_align_center" id="S3.T3.7.14.8">58.33</td>
</tr>
<tr class="ltx_tr" id="S3.T3.7.15">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T3.7.15.1">w/ 4-bit Q, 3-bit KV</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.2">32.08</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.3">57.95</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.4">60.29</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.5">73.23</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.6">59.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.7">62.97</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T3.7.15.8">57.69</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the zero-shot accuracy results of the BitNet v2 model when using 4-bit activations.  It shows how the performance varies depending on the bit-width of the query, key, and value (QKV) states within the attention mechanism.  Different configurations are tested, such as using 4-bit for all QKV states, or only 4-bit for KV states, and so on.  The results are evaluated across several downstream tasks, providing a comprehensive performance comparison under varying QKV bit-width settings.
> <details>
> <summary>read the caption</summary>
> Table 3: The zero-shot accuracy of BitNet v2 with 4-bit activations and QKV states varying bit-widths on the end tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T4.9">
<tr class="ltx_tr" id="S3.T4.8.8">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S3.T4.8.8.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.9.1">Models</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.1.1.1.1">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T4.1.1.1.1.m1.1"><semantics id="S3.T4.1.1.1.1.m1.1a"><mo id="S3.T4.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T4.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T4.1.1.1.1.m1.1b"><ci id="S3.T4.1.1.1.1.m1.1.1.cmml" xref="S3.T4.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.2.2.2.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.2.2.2.1.m1.1"><semantics id="S3.T4.2.2.2.1.m1.1a"><mo id="S3.T4.2.2.2.1.m1.1.1" stretchy="false" xref="S3.T4.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.2.2.2.1.m1.1b"><ci id="S3.T4.2.2.2.1.m1.1.1.cmml" xref="S3.T4.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.3.3.3.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.3.3.3.1.m1.1"><semantics id="S3.T4.3.3.3.1.m1.1a"><mo id="S3.T4.3.3.3.1.m1.1.1" stretchy="false" xref="S3.T4.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.3.3.3.1.m1.1b"><ci id="S3.T4.3.3.3.1.m1.1.1.cmml" xref="S3.T4.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.4.4.4.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.4.4.4.1.m1.1"><semantics id="S3.T4.4.4.4.1.m1.1a"><mo id="S3.T4.4.4.4.1.m1.1.1" stretchy="false" xref="S3.T4.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.4.4.4.1.m1.1b"><ci id="S3.T4.4.4.4.1.m1.1.1.cmml" xref="S3.T4.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.5.5.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.5.5.5.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.5.5.5.1.m1.1"><semantics id="S3.T4.5.5.5.1.m1.1a"><mo id="S3.T4.5.5.5.1.m1.1.1" stretchy="false" xref="S3.T4.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.5.5.5.1.m1.1b"><ci id="S3.T4.5.5.5.1.m1.1.1.cmml" xref="S3.T4.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.6.6.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.6.6.6.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.6.6.6.1.m1.1"><semantics id="S3.T4.6.6.6.1.m1.1a"><mo id="S3.T4.6.6.6.1.m1.1.1" stretchy="false" xref="S3.T4.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.6.6.6.1.m1.1b"><ci id="S3.T4.6.6.6.1.m1.1.1.cmml" xref="S3.T4.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.7.7.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.7.7.7.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.7.7.7.1.m1.1"><semantics id="S3.T4.7.7.7.1.m1.1a"><mo id="S3.T4.7.7.7.1.m1.1.1" stretchy="false" xref="S3.T4.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.7.7.7.1.m1.1b"><ci id="S3.T4.7.7.7.1.m1.1.1.cmml" xref="S3.T4.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T4.8.8.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.8.8.8.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T4.8.8.8.1.m1.1"><semantics id="S3.T4.8.8.8.1.m1.1a"><mo id="S3.T4.8.8.8.1.m1.1.1" stretchy="false" xref="S3.T4.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T4.8.8.8.1.m1.1b"><ci id="S3.T4.8.8.8.1.m1.1.1.cmml" xref="S3.T4.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T4.8.8.8.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="6" id="S3.T4.9.9.1" style="padding-left:7.0pt;padding-right:7.0pt;"><em class="ltx_emph ltx_font_italic" id="S3.T4.9.9.1.1">w/o fusing rotary matrix to <math alttext="\text{W}_{\text{qkv,up,gate}}" class="ltx_Math" display="inline" id="S3.T4.9.9.1.1.m1.1"><semantics id="S3.T4.9.9.1.1.m1.1a"><msub id="S3.T4.9.9.1.1.m1.1.1" xref="S3.T4.9.9.1.1.m1.1.1.cmml"><mtext class="ltx_mathvariant_italic" id="S3.T4.9.9.1.1.m1.1.1.2" xref="S3.T4.9.9.1.1.m1.1.1.2a.cmml">W</mtext><mtext class="ltx_mathvariant_italic" id="S3.T4.9.9.1.1.m1.1.1.3" xref="S3.T4.9.9.1.1.m1.1.1.3b.cmml"><em class="ltx_emph" id="S3.T4.9.9.1.1.m1.1.1.3.1nest" style="font-size:70%;">qkv,up,gate</em></mtext></msub><annotation-xml encoding="MathML-Content" id="S3.T4.9.9.1.1.m1.1b"><apply id="S3.T4.9.9.1.1.m1.1.1.cmml" xref="S3.T4.9.9.1.1.m1.1.1"><csymbol cd="ambiguous" id="S3.T4.9.9.1.1.m1.1.1.1.cmml" xref="S3.T4.9.9.1.1.m1.1.1">subscript</csymbol><ci id="S3.T4.9.9.1.1.m1.1.1.2a.cmml" xref="S3.T4.9.9.1.1.m1.1.1.2"><mtext class="ltx_mathvariant_italic" id="S3.T4.9.9.1.1.m1.1.1.2.cmml" xref="S3.T4.9.9.1.1.m1.1.1.2">W</mtext></ci><ci id="S3.T4.9.9.1.1.m1.1.1.3b.cmml" xref="S3.T4.9.9.1.1.m1.1.1.3"><mtext class="ltx_mathvariant_italic" id="S3.T4.9.9.1.1.m1.1.1.3.cmml" mathsize="70%" xref="S3.T4.9.9.1.1.m1.1.1.3"><em class="ltx_emph" id="S3.T4.9.9.1.1.m1.1.1.3.1anest" style="font-size:70%;">qkv,up,gate</em></mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T4.9.9.1.1.m1.1c">\text{W}_{\text{qkv,up,gate}}</annotation><annotation encoding="application/x-llamapun" id="S3.T4.9.9.1.1.m1.1d">W start_POSTSUBSCRIPT qkv,up,gate end_POSTSUBSCRIPT</annotation></semantics></math></em></td>
<td class="ltx_td ltx_border_t" id="S3.T4.9.9.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T4.9.9.3" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_border_t" id="S3.T4.9.9.4" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.10">
<td class="ltx_td ltx_align_left" id="S3.T4.9.10.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.1.1" style="color:#A6A6A6;">QuaRot</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.2.1" style="color:#A6A6A6;">13.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.3.1" style="color:#A6A6A6;">26.28</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.4.1" style="color:#A6A6A6;">47.43</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.5.1" style="color:#A6A6A6;">45.92</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.6.1" style="color:#A6A6A6;">65.89</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.7.1" style="color:#A6A6A6;">51.46</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.8.1" style="color:#A6A6A6;">42.34</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.10.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.10.9.1" style="color:#A6A6A6;">46.55</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.11">
<td class="ltx_td ltx_align_left" id="S3.T4.9.11.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.1.1" style="color:#A6A6A6;">SpinQuant</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.2.1" style="color:#A6A6A6;">13.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.3.1" style="color:#A6A6A6;">25.60</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.4.1" style="color:#A6A6A6;">47.35</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.5.1" style="color:#A6A6A6;">45.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.6.1" style="color:#A6A6A6;">67.25</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.7.1" style="color:#A6A6A6;">52.49</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.8.1" style="color:#A6A6A6;">42.52</span></td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.11.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S3.T4.9.11.9.1" style="color:#A6A6A6;">46.79</span></td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.12">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T4.9.12.1" style="padding-left:7.0pt;padding-right:7.0pt;">QuaRot</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.2" style="padding-left:7.0pt;padding-right:7.0pt;">20.83</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.3" style="padding-left:7.0pt;padding-right:7.0pt;">24.74</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.4" style="padding-left:7.0pt;padding-right:7.0pt;">40.78</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.5" style="padding-left:7.0pt;padding-right:7.0pt;">40.54</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.6" style="padding-left:7.0pt;padding-right:7.0pt;">62.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.7" style="padding-left:7.0pt;padding-right:7.0pt;">49.33</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.8" style="padding-left:7.0pt;padding-right:7.0pt;">36.89</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T4.9.12.9" style="padding-left:7.0pt;padding-right:7.0pt;">42.53</td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.13">
<td class="ltx_td ltx_align_left" id="S3.T4.9.13.1" style="padding-left:7.0pt;padding-right:7.0pt;">SpinQuant</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.2" style="padding-left:7.0pt;padding-right:7.0pt;">19.80</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.3" style="padding-left:7.0pt;padding-right:7.0pt;">24.74</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.4" style="padding-left:7.0pt;padding-right:7.0pt;">40.19</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.5" style="padding-left:7.0pt;padding-right:7.0pt;">40.77</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.6" style="padding-left:7.0pt;padding-right:7.0pt;">62.73</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.7" style="padding-left:7.0pt;padding-right:7.0pt;">52.09</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.8" style="padding-left:7.0pt;padding-right:7.0pt;">39.24</td>
<td class="ltx_td ltx_align_center" id="S3.T4.9.13.9" style="padding-left:7.0pt;padding-right:7.0pt;">43.29</td>
</tr>
<tr class="ltx_tr" id="S3.T4.9.14">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S3.T4.9.14.1" style="padding-left:7.0pt;padding-right:7.0pt;">
<span class="ltx_text ltx_font_bold" id="S3.T4.9.14.1.1">BitNet v2</span><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.1.2"> (a4)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.2" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.2.1">11.33</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.3.1">27.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.4.1">49.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.5.1">48.00</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.6.1">68.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.7.1">55.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.8.1">53.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T4.9.14.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S3.T4.9.14.9.1">50.41</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of three different models: BitNet v2 (a4), QuaRot, and SpinQuant.  All models are evaluated on several downstream tasks, measuring perplexity (a measure of how well a model predicts the next word in a sequence) and zero-shot accuracy (a measure of the model's performance on tasks it hasn't been specifically trained for).  The table highlights the relative strengths and weaknesses of each model concerning these key metrics.  BitNet v2 (a4) is a model with 4-bit activations, while QuaRot and SpinQuant represent alternative quantization methods.
> <details>
> <summary>read the caption</summary>
> Table 4: Perplexity and zero-shot accuracy of BitNet v2, QuaRot and SpinQuant on the end tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T5.4">
<tr class="ltx_tr" id="S3.T5.4.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T5.4.5.1" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T5.4.5.1.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S3.T5.4.5.2" rowspan="2"><span class="ltx_text ltx_font_bold" id="S3.T5.4.5.2.1">#Bits</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T5.4.5.3"><span class="ltx_text ltx_font_bold" id="S3.T5.4.5.3.1">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T5.4.5.4"><span class="ltx_text ltx_font_bold" id="S3.T5.4.5.4.1">3B</span></td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.4">
<td class="ltx_td ltx_align_center" id="S3.T5.1.1.1">Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T5.1.1.1.m1.1"><semantics id="S3.T5.1.1.1.m1.1a"><mo id="S3.T5.1.1.1.m1.1.1" stretchy="false" xref="S3.T5.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T5.1.1.1.m1.1b"><ci id="S3.T5.1.1.1.m1.1.1.cmml" xref="S3.T5.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.2.2.2">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T5.2.2.2.m1.1"><semantics id="S3.T5.2.2.2.m1.1a"><mo id="S3.T5.2.2.2.m1.1.1" stretchy="false" xref="S3.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T5.2.2.2.m1.1b"><ci id="S3.T5.2.2.2.m1.1.1.cmml" xref="S3.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T5.3.3.3">Acc.<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T5.3.3.3.m1.1"><semantics id="S3.T5.3.3.3.m1.1a"><mo id="S3.T5.3.3.3.m1.1.1" stretchy="false" xref="S3.T5.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T5.3.3.3.m1.1b"><ci id="S3.T5.3.3.3.m1.1.1.cmml" xref="S3.T5.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.3.3.3.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.4.4">PPL<math alttext="\downarrow" class="ltx_Math" display="inline" id="S3.T5.4.4.4.m1.1"><semantics id="S3.T5.4.4.4.m1.1a"><mo id="S3.T5.4.4.4.m1.1.1" stretchy="false" xref="S3.T5.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S3.T5.4.4.4.m1.1b"><ci id="S3.T5.4.4.4.m1.1.1.cmml" xref="S3.T5.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T5.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T5.4.4.4.m1.1d">↓</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.4.6.1">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S3.T5.4.6.2" rowspan="3"><span class="ltx_text" id="S3.T5.4.6.2.1">W1.58A8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T5.4.6.3">diverged</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T5.4.6.4">diverged</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T5.4.7.1">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.7.2">50.47</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.4.7.3">11.14</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.7.4">55.55</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.7.5">9.69</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T5.4.8.1">Activation rotatation</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.8.2">51.16</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.4.8.3">11.14</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.8.4">55.71</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.8.5">9.72</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.9">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T5.4.9.1">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="S3.T5.4.9.2" rowspan="3"><span class="ltx_text" id="S3.T5.4.9.2.1">W1.58A4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" colspan="2" id="S3.T5.4.9.3">diverged</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S3.T5.4.9.4">diverged</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T5.4.10.1">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.10.2">50.09</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S3.T5.4.10.3">11.33</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.10.4">54.98</td>
<td class="ltx_td ltx_align_center" id="S3.T5.4.10.5">9.81</td>
</tr>
<tr class="ltx_tr" id="S3.T5.4.11">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T5.4.11.1">Activation rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.4.11.2">50.41</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S3.T5.4.11.3">11.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.4.11.4">55.43</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T5.4.11.5">9.85</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies on the Hadamard transformation within the H-BitLinear module. It shows how different configurations (with and without weight and activation rotation, using different bit-widths for weights and activations) affect the performance of the model across different sizes (1.3B and 3B parameters).  The metrics used to evaluate performance include accuracy and perplexity, providing insights into the impact of the Hadamard transformation on both the overall model efficiency and its ability to generalize.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablations on the Hadamard transformation of ℋℋ\mathcal{H}caligraphic_H-BitLinear across various sizes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T6.7">
<tr class="ltx_tr" id="A1.T6.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T6.7.7.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.8.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.7.7.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.9.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.1.1.1.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.1.1.1.1.m1.1"><semantics id="A1.T6.1.1.1.1.m1.1a"><mo id="A1.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.1.1.1.1.m1.1b"><ci id="A1.T6.1.1.1.1.m1.1.1.cmml" xref="A1.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.2.2.2.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.2.2.2.1.m1.1"><semantics id="A1.T6.2.2.2.1.m1.1a"><mo id="A1.T6.2.2.2.1.m1.1.1" stretchy="false" xref="A1.T6.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.2.2.2.1.m1.1b"><ci id="A1.T6.2.2.2.1.m1.1.1.cmml" xref="A1.T6.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.3.3.3.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.3.3.3.1.m1.1"><semantics id="A1.T6.3.3.3.1.m1.1a"><mo id="A1.T6.3.3.3.1.m1.1.1" stretchy="false" xref="A1.T6.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.3.3.3.1.m1.1b"><ci id="A1.T6.3.3.3.1.m1.1.1.cmml" xref="A1.T6.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.4.4.4.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.4.4.4.1.m1.1"><semantics id="A1.T6.4.4.4.1.m1.1a"><mo id="A1.T6.4.4.4.1.m1.1.1" stretchy="false" xref="A1.T6.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.4.4.4.1.m1.1b"><ci id="A1.T6.4.4.4.1.m1.1.1.cmml" xref="A1.T6.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.5.5.5.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.5.5.5.1.m1.1"><semantics id="A1.T6.5.5.5.1.m1.1a"><mo id="A1.T6.5.5.5.1.m1.1.1" stretchy="false" xref="A1.T6.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.5.5.5.1.m1.1b"><ci id="A1.T6.5.5.5.1.m1.1.1.cmml" xref="A1.T6.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.6.6.6.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.6.6.6.1.m1.1"><semantics id="A1.T6.6.6.6.1.m1.1a"><mo id="A1.T6.6.6.6.1.m1.1.1" stretchy="false" xref="A1.T6.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.6.6.6.1.m1.1b"><ci id="A1.T6.6.6.6.1.m1.1.1.cmml" xref="A1.T6.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T6.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T6.7.7.7.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T6.7.7.7.1.m1.1"><semantics id="A1.T6.7.7.7.1.m1.1a"><mo id="A1.T6.7.7.7.1.m1.1.1" stretchy="false" xref="A1.T6.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T6.7.7.7.1.m1.1b"><ci id="A1.T6.7.7.7.1.m1.1.1.cmml" xref="A1.T6.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T6.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T6.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.7.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.7.8.2" rowspan="3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="A1.T6.7.8.2.1">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T6.7.8.3" style="padding-left:4.5pt;padding-right:4.5pt;">diverged</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.9">
<td class="ltx_td ltx_align_left" id="A1.T6.7.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.2" style="padding-left:4.5pt;padding-right:4.5pt;">27.13</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.3" style="padding-left:4.5pt;padding-right:4.5pt;">50.29</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.4" style="padding-left:4.5pt;padding-right:4.5pt;">48.32</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.5" style="padding-left:4.5pt;padding-right:4.5pt;">69.04</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.6" style="padding-left:4.5pt;padding-right:4.5pt;">54.30</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.7" style="padding-left:4.5pt;padding-right:4.5pt;">53.76</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.9.8" style="padding-left:4.5pt;padding-right:4.5pt;">50.47</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.10">
<td class="ltx_td ltx_align_left" id="A1.T6.7.10.1" style="padding-left:4.5pt;padding-right:4.5pt;">Activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.2" style="padding-left:4.5pt;padding-right:4.5pt;">27.90</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.3" style="padding-left:4.5pt;padding-right:4.5pt;">49.96</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.4" style="padding-left:4.5pt;padding-right:4.5pt;">48.37</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.5" style="padding-left:4.5pt;padding-right:4.5pt;">69.42</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.6" style="padding-left:4.5pt;padding-right:4.5pt;">57.22</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.7" style="padding-left:4.5pt;padding-right:4.5pt;">54.14</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.10.8" style="padding-left:4.5pt;padding-right:4.5pt;">51.17</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T6.7.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T6.7.11.2" rowspan="3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="A1.T6.7.11.2.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T6.7.11.3" style="padding-left:4.5pt;padding-right:4.5pt;">diverged</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.12">
<td class="ltx_td ltx_align_left" id="A1.T6.7.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.2" style="padding-left:4.5pt;padding-right:4.5pt;">30.03</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.3" style="padding-left:4.5pt;padding-right:4.5pt;">55.72</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.4" style="padding-left:4.5pt;padding-right:4.5pt;">56.81</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.5" style="padding-left:4.5pt;padding-right:4.5pt;">71.65</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.6" style="padding-left:4.5pt;padding-right:4.5pt;">59.43</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.7" style="padding-left:4.5pt;padding-right:4.5pt;">59.65</td>
<td class="ltx_td ltx_align_center" id="A1.T6.7.12.8" style="padding-left:4.5pt;padding-right:4.5pt;">55.54</td>
</tr>
<tr class="ltx_tr" id="A1.T6.7.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T6.7.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">Activation rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.2" style="padding-left:4.5pt;padding-right:4.5pt;">30.55</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.3" style="padding-left:4.5pt;padding-right:4.5pt;">55.56</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.4" style="padding-left:4.5pt;padding-right:4.5pt;">57.19</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.5" style="padding-left:4.5pt;padding-right:4.5pt;">71.33</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.6" style="padding-left:4.5pt;padding-right:4.5pt;">58.72</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.7" style="padding-left:4.5pt;padding-right:4.5pt;">60.90</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T6.7.13.8" style="padding-left:4.5pt;padding-right:4.5pt;">55.71</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies on the Hadamard transformation within the H-BitLinear module. It shows the impact of using the Hadamard transformation on model performance across different model sizes (1.3B and 3B parameters).  The experiment compares several scenarios: no Hadamard transformation, applying it to both weights and activations, and applying it only to activations.  All models in this experiment use 1.58-bit weights and 8-bit activations. The metrics evaluated are accuracy on various downstream tasks (ARCC, ARCe, HS, PQ, WGe, LBA) and perplexity (PPL). The goal is to determine the optimal configuration of the Hadamard transformation for enhancing model performance and efficiency.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablations on the Hadamard transformation of ℋℋ\mathcal{H}caligraphic_H-BitLinear across various sizes. All models have 1.58-bit weights and 8-bit activations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A1.T7.7">
<tr class="ltx_tr" id="A1.T7.7.7">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A1.T7.7.7.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.8.1">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.7.7.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.9.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.1.1.1.1">ARCc<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.1.1.1.1.m1.1"><semantics id="A1.T7.1.1.1.1.m1.1a"><mo id="A1.T7.1.1.1.1.m1.1.1" stretchy="false" xref="A1.T7.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.1.1.1.1.m1.1b"><ci id="A1.T7.1.1.1.1.m1.1.1.cmml" xref="A1.T7.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.2.2.2.1">ARCe<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.2.2.2.1.m1.1"><semantics id="A1.T7.2.2.2.1.m1.1a"><mo id="A1.T7.2.2.2.1.m1.1.1" stretchy="false" xref="A1.T7.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.2.2.2.1.m1.1b"><ci id="A1.T7.2.2.2.1.m1.1.1.cmml" xref="A1.T7.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.3.3.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.3.3.3.1">HS<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.3.3.3.1.m1.1"><semantics id="A1.T7.3.3.3.1.m1.1a"><mo id="A1.T7.3.3.3.1.m1.1.1" stretchy="false" xref="A1.T7.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.3.3.3.1.m1.1b"><ci id="A1.T7.3.3.3.1.m1.1.1.cmml" xref="A1.T7.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.4.4.4.1">PQ<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.4.4.4.1.m1.1"><semantics id="A1.T7.4.4.4.1.m1.1a"><mo id="A1.T7.4.4.4.1.m1.1.1" stretchy="false" xref="A1.T7.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.4.4.4.1.m1.1b"><ci id="A1.T7.4.4.4.1.m1.1.1.cmml" xref="A1.T7.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.5.5.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.5.5.5.1">WGe<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.5.5.5.1.m1.1"><semantics id="A1.T7.5.5.5.1.m1.1a"><mo id="A1.T7.5.5.5.1.m1.1.1" stretchy="false" xref="A1.T7.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.5.5.5.1.m1.1b"><ci id="A1.T7.5.5.5.1.m1.1.1.cmml" xref="A1.T7.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.5.5.5.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.6.6.6.1">LBA<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.6.6.6.1.m1.1"><semantics id="A1.T7.6.6.6.1.m1.1a"><mo id="A1.T7.6.6.6.1.m1.1.1" stretchy="false" xref="A1.T7.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.6.6.6.1.m1.1b"><ci id="A1.T7.6.6.6.1.m1.1.1.cmml" xref="A1.T7.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.6.6.6.1.m1.1d">↑</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T7.7.7.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="A1.T7.7.7.7.1">Avg<math alttext="\uparrow" class="ltx_Math" display="inline" id="A1.T7.7.7.7.1.m1.1"><semantics id="A1.T7.7.7.7.1.m1.1a"><mo id="A1.T7.7.7.7.1.m1.1.1" stretchy="false" xref="A1.T7.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A1.T7.7.7.7.1.m1.1b"><ci id="A1.T7.7.7.7.1.m1.1.1.cmml" xref="A1.T7.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T7.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A1.T7.7.7.7.1.m1.1d">↑</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.8">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.7.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.7.8.2" rowspan="3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="A1.T7.7.8.2.1">1.3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.7.8.3" style="padding-left:4.5pt;padding-right:4.5pt;">diverged</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.9">
<td class="ltx_td ltx_align_left" id="A1.T7.7.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.2" style="padding-left:4.5pt;padding-right:4.5pt;">27.22</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.3" style="padding-left:4.5pt;padding-right:4.5pt;">49.12</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.4" style="padding-left:4.5pt;padding-right:4.5pt;">47.77</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.5" style="padding-left:4.5pt;padding-right:4.5pt;">69.37</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.6" style="padding-left:4.5pt;padding-right:4.5pt;">54.54</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.7" style="padding-left:4.5pt;padding-right:4.5pt;">52.49</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.9.8" style="padding-left:4.5pt;padding-right:4.5pt;">50.09</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.10">
<td class="ltx_td ltx_align_left" id="A1.T7.7.10.1" style="padding-left:4.5pt;padding-right:4.5pt;">Activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.2" style="padding-left:4.5pt;padding-right:4.5pt;">27.56</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.3" style="padding-left:4.5pt;padding-right:4.5pt;">49.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.4" style="padding-left:4.5pt;padding-right:4.5pt;">48.00</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.5" style="padding-left:4.5pt;padding-right:4.5pt;">68.23</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.6" style="padding-left:4.5pt;padding-right:4.5pt;">55.49</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.7" style="padding-left:4.5pt;padding-right:4.5pt;">53.58</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.10.8" style="padding-left:4.5pt;padding-right:4.5pt;">50.41</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.11">
<td class="ltx_td ltx_align_left ltx_border_t" id="A1.T7.7.11.1" style="padding-left:4.5pt;padding-right:4.5pt;">No rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A1.T7.7.11.2" rowspan="3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="A1.T7.7.11.2.1">3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="7" id="A1.T7.7.11.3" style="padding-left:4.5pt;padding-right:4.5pt;">diverged</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.12">
<td class="ltx_td ltx_align_left" id="A1.T7.7.12.1" style="padding-left:4.5pt;padding-right:4.5pt;">Weight &amp; activation rotatation</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.2" style="padding-left:4.5pt;padding-right:4.5pt;">29.44</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.3" style="padding-left:4.5pt;padding-right:4.5pt;">54.46</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.4" style="padding-left:4.5pt;padding-right:4.5pt;">56.57</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.5" style="padding-left:4.5pt;padding-right:4.5pt;">71.93</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.6" style="padding-left:4.5pt;padding-right:4.5pt;">57.85</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.7" style="padding-left:4.5pt;padding-right:4.5pt;">59.64</td>
<td class="ltx_td ltx_align_center" id="A1.T7.7.12.8" style="padding-left:4.5pt;padding-right:4.5pt;">54.98</td>
</tr>
<tr class="ltx_tr" id="A1.T7.7.13">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A1.T7.7.13.1" style="padding-left:4.5pt;padding-right:4.5pt;">Activation rotatation</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.2" style="padding-left:4.5pt;padding-right:4.5pt;">28.92</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.3" style="padding-left:4.5pt;padding-right:4.5pt;">55.01</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.4" style="padding-left:4.5pt;padding-right:4.5pt;">56.59</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.5" style="padding-left:4.5pt;padding-right:4.5pt;">71.65</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.6" style="padding-left:4.5pt;padding-right:4.5pt;">59.67</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.7" style="padding-left:4.5pt;padding-right:4.5pt;">60.74</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A1.T7.7.13.8" style="padding-left:4.5pt;padding-right:4.5pt;">55.43</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of ablation studies on the Hadamard transformation within the H-BitLinear module of the BitNet v2 model.  It shows how different configurations affect the model's performance across various model sizes. Specifically, it compares the performance when the Hadamard transformation is applied to both weights and activations, only to activations, or not at all. The model uses 1.58-bit weights and 4-bit activations in all experiments shown in this table.
> <details>
> <summary>read the caption</summary>
> Table 7: Ablations on the Hadamard transformation of ℋℋ\mathcal{H}caligraphic_H-BitLinear across various sizes. All models have 1.58-bit weights and 4-bit activations.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T8.2">
<tr class="ltx_tr" id="A2.T8.2.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.1" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.1.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.2" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.2.1">Hidden Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.3" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.3.1">GLU Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.4" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.4.1">#Heads</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.5" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.5.1">#Layers</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.6" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.6.1">Batch Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.7" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.7.1"># Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T8.2.1.8" style="padding-left:5.0pt;padding-right:5.0pt;"><span class="ltx_text ltx_font_bold" id="A2.T8.2.1.8.1">Seq Length</span></td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.1" style="padding-left:5.0pt;padding-right:5.0pt;">400M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.2" style="padding-left:5.0pt;padding-right:5.0pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.3" style="padding-left:5.0pt;padding-right:5.0pt;">4096</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.4" style="padding-left:5.0pt;padding-right:5.0pt;">16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.5" style="padding-left:5.0pt;padding-right:5.0pt;">24</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.6" style="padding-left:5.0pt;padding-right:5.0pt;">1M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.7" style="padding-left:5.0pt;padding-right:5.0pt;">100B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T8.2.2.8" style="padding-left:5.0pt;padding-right:5.0pt;">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.3">
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.1" style="padding-left:5.0pt;padding-right:5.0pt;">1.3B</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.2" style="padding-left:5.0pt;padding-right:5.0pt;">2048</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.3" style="padding-left:5.0pt;padding-right:5.0pt;">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.4" style="padding-left:5.0pt;padding-right:5.0pt;">32</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.5" style="padding-left:5.0pt;padding-right:5.0pt;">18</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.6" style="padding-left:5.0pt;padding-right:5.0pt;">1M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.7" style="padding-left:5.0pt;padding-right:5.0pt;">100B</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.3.8" style="padding-left:5.0pt;padding-right:5.0pt;">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.4">
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.1" style="padding-left:5.0pt;padding-right:5.0pt;">3B</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.2" style="padding-left:5.0pt;padding-right:5.0pt;">4096</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.3" style="padding-left:5.0pt;padding-right:5.0pt;">8192</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.4" style="padding-left:5.0pt;padding-right:5.0pt;">32</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.5" style="padding-left:5.0pt;padding-right:5.0pt;">20</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.6" style="padding-left:5.0pt;padding-right:5.0pt;">1M</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.7" style="padding-left:5.0pt;padding-right:5.0pt;">100B</td>
<td class="ltx_td ltx_align_center" id="A2.T8.2.4.8" style="padding-left:5.0pt;padding-right:5.0pt;">2048</td>
</tr>
<tr class="ltx_tr" id="A2.T8.2.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.1" style="padding-left:5.0pt;padding-right:5.0pt;">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.2" style="padding-left:5.0pt;padding-right:5.0pt;">4096</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.3" style="padding-left:5.0pt;padding-right:5.0pt;">16384</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.4" style="padding-left:5.0pt;padding-right:5.0pt;">32</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.5" style="padding-left:5.0pt;padding-right:5.0pt;">24</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.6" style="padding-left:5.0pt;padding-right:5.0pt;">1M</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.7" style="padding-left:5.0pt;padding-right:5.0pt;">100B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T8.2.5.8" style="padding-left:5.0pt;padding-right:5.0pt;">2048</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the architectural hyperparameters used for training the various BitNet models.  It shows the model size (in parameters), hidden size, GLU (Gated Linear Unit) size, number of attention heads, number of layers, batch size used during training, the total number of tokens processed during training, and the sequence length used during training.  These configurations are crucial in understanding the computational resources and training characteristics of each BitNet model.
> <details>
> <summary>read the caption</summary>
> Table 8: Model configurations for the BitNet models.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A2.T9.9">
<tr class="ltx_tr" id="A2.T9.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="A2.T9.1.1.2"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.2.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.3"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.3.1">Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.4"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.4.1">Learning Rate</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.5"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.5.1">Weight Decay</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.6"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.6.1">Warm-up</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A2.T9.1.1.1"><span class="ltx_text ltx_font_bold" id="A2.T9.1.1.1.1">Adam <math alttext="\beta" class="ltx_Math" display="inline" id="A2.T9.1.1.1.1.m1.1"><semantics id="A2.T9.1.1.1.1.m1.1a"><mi id="A2.T9.1.1.1.1.m1.1.1" xref="A2.T9.1.1.1.1.m1.1.1.cmml">β</mi><annotation-xml encoding="MathML-Content" id="A2.T9.1.1.1.1.m1.1b"><ci id="A2.T9.1.1.1.1.m1.1.1.cmml" xref="A2.T9.1.1.1.1.m1.1.1">𝛽</ci></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.1.1.1.1.m1.1c">\beta</annotation><annotation encoding="application/x-llamapun" id="A2.T9.1.1.1.1.m1.1d">italic_β</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="A2.T9.3.3">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A2.T9.3.3.3" rowspan="4"><span class="ltx_text" id="A2.T9.3.3.3.1">BitNet</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.3.4">400M</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.2.2.1"><math alttext="1.8\times 10^{-3}\rightarrow 1.2\times 10^{-3}" class="ltx_Math" display="inline" id="A2.T9.2.2.1.m1.1"><semantics id="A2.T9.2.2.1.m1.1a"><mrow id="A2.T9.2.2.1.m1.1.1" xref="A2.T9.2.2.1.m1.1.1.cmml"><mrow id="A2.T9.2.2.1.m1.1.1.2" xref="A2.T9.2.2.1.m1.1.1.2.cmml"><mn id="A2.T9.2.2.1.m1.1.1.2.2" xref="A2.T9.2.2.1.m1.1.1.2.2.cmml">1.8</mn><mo id="A2.T9.2.2.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.2.2.1.m1.1.1.2.1.cmml">×</mo><msup id="A2.T9.2.2.1.m1.1.1.2.3" xref="A2.T9.2.2.1.m1.1.1.2.3.cmml"><mn id="A2.T9.2.2.1.m1.1.1.2.3.2" xref="A2.T9.2.2.1.m1.1.1.2.3.2.cmml">10</mn><mrow id="A2.T9.2.2.1.m1.1.1.2.3.3" xref="A2.T9.2.2.1.m1.1.1.2.3.3.cmml"><mo id="A2.T9.2.2.1.m1.1.1.2.3.3a" xref="A2.T9.2.2.1.m1.1.1.2.3.3.cmml">−</mo><mn id="A2.T9.2.2.1.m1.1.1.2.3.3.2" xref="A2.T9.2.2.1.m1.1.1.2.3.3.2.cmml">3</mn></mrow></msup></mrow><mo id="A2.T9.2.2.1.m1.1.1.1" stretchy="false" xref="A2.T9.2.2.1.m1.1.1.1.cmml">→</mo><mrow id="A2.T9.2.2.1.m1.1.1.3" xref="A2.T9.2.2.1.m1.1.1.3.cmml"><mn id="A2.T9.2.2.1.m1.1.1.3.2" xref="A2.T9.2.2.1.m1.1.1.3.2.cmml">1.2</mn><mo id="A2.T9.2.2.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.2.2.1.m1.1.1.3.1.cmml">×</mo><msup id="A2.T9.2.2.1.m1.1.1.3.3" xref="A2.T9.2.2.1.m1.1.1.3.3.cmml"><mn id="A2.T9.2.2.1.m1.1.1.3.3.2" xref="A2.T9.2.2.1.m1.1.1.3.3.2.cmml">10</mn><mrow id="A2.T9.2.2.1.m1.1.1.3.3.3" xref="A2.T9.2.2.1.m1.1.1.3.3.3.cmml"><mo id="A2.T9.2.2.1.m1.1.1.3.3.3a" xref="A2.T9.2.2.1.m1.1.1.3.3.3.cmml">−</mo><mn id="A2.T9.2.2.1.m1.1.1.3.3.3.2" xref="A2.T9.2.2.1.m1.1.1.3.3.3.2.cmml">3</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.2.2.1.m1.1b"><apply id="A2.T9.2.2.1.m1.1.1.cmml" xref="A2.T9.2.2.1.m1.1.1"><ci id="A2.T9.2.2.1.m1.1.1.1.cmml" xref="A2.T9.2.2.1.m1.1.1.1">→</ci><apply id="A2.T9.2.2.1.m1.1.1.2.cmml" xref="A2.T9.2.2.1.m1.1.1.2"><times id="A2.T9.2.2.1.m1.1.1.2.1.cmml" xref="A2.T9.2.2.1.m1.1.1.2.1"></times><cn id="A2.T9.2.2.1.m1.1.1.2.2.cmml" type="float" xref="A2.T9.2.2.1.m1.1.1.2.2">1.8</cn><apply id="A2.T9.2.2.1.m1.1.1.2.3.cmml" xref="A2.T9.2.2.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="A2.T9.2.2.1.m1.1.1.2.3.1.cmml" xref="A2.T9.2.2.1.m1.1.1.2.3">superscript</csymbol><cn id="A2.T9.2.2.1.m1.1.1.2.3.2.cmml" type="integer" xref="A2.T9.2.2.1.m1.1.1.2.3.2">10</cn><apply id="A2.T9.2.2.1.m1.1.1.2.3.3.cmml" xref="A2.T9.2.2.1.m1.1.1.2.3.3"><minus id="A2.T9.2.2.1.m1.1.1.2.3.3.1.cmml" xref="A2.T9.2.2.1.m1.1.1.2.3.3"></minus><cn id="A2.T9.2.2.1.m1.1.1.2.3.3.2.cmml" type="integer" xref="A2.T9.2.2.1.m1.1.1.2.3.3.2">3</cn></apply></apply></apply><apply id="A2.T9.2.2.1.m1.1.1.3.cmml" xref="A2.T9.2.2.1.m1.1.1.3"><times id="A2.T9.2.2.1.m1.1.1.3.1.cmml" xref="A2.T9.2.2.1.m1.1.1.3.1"></times><cn id="A2.T9.2.2.1.m1.1.1.3.2.cmml" type="float" xref="A2.T9.2.2.1.m1.1.1.3.2">1.2</cn><apply id="A2.T9.2.2.1.m1.1.1.3.3.cmml" xref="A2.T9.2.2.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T9.2.2.1.m1.1.1.3.3.1.cmml" xref="A2.T9.2.2.1.m1.1.1.3.3">superscript</csymbol><cn id="A2.T9.2.2.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T9.2.2.1.m1.1.1.3.3.2">10</cn><apply id="A2.T9.2.2.1.m1.1.1.3.3.3.cmml" xref="A2.T9.2.2.1.m1.1.1.3.3.3"><minus id="A2.T9.2.2.1.m1.1.1.3.3.3.1.cmml" xref="A2.T9.2.2.1.m1.1.1.3.3.3"></minus><cn id="A2.T9.2.2.1.m1.1.1.3.3.3.2.cmml" type="integer" xref="A2.T9.2.2.1.m1.1.1.3.3.3.2">3</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.2.2.1.m1.1c">1.8\times 10^{-3}\rightarrow 1.2\times 10^{-3}</annotation><annotation encoding="application/x-llamapun" id="A2.T9.2.2.1.m1.1d">1.8 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT → 1.2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.3.2"><math alttext="0.1\rightarrow 0" class="ltx_Math" display="inline" id="A2.T9.3.3.2.m1.1"><semantics id="A2.T9.3.3.2.m1.1a"><mrow id="A2.T9.3.3.2.m1.1.1" xref="A2.T9.3.3.2.m1.1.1.cmml"><mn id="A2.T9.3.3.2.m1.1.1.2" xref="A2.T9.3.3.2.m1.1.1.2.cmml">0.1</mn><mo id="A2.T9.3.3.2.m1.1.1.1" stretchy="false" xref="A2.T9.3.3.2.m1.1.1.1.cmml">→</mo><mn id="A2.T9.3.3.2.m1.1.1.3" xref="A2.T9.3.3.2.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.3.3.2.m1.1b"><apply id="A2.T9.3.3.2.m1.1.1.cmml" xref="A2.T9.3.3.2.m1.1.1"><ci id="A2.T9.3.3.2.m1.1.1.1.cmml" xref="A2.T9.3.3.2.m1.1.1.1">→</ci><cn id="A2.T9.3.3.2.m1.1.1.2.cmml" type="float" xref="A2.T9.3.3.2.m1.1.1.2">0.1</cn><cn id="A2.T9.3.3.2.m1.1.1.3.cmml" type="integer" xref="A2.T9.3.3.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.3.3.2.m1.1c">0.1\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="A2.T9.3.3.2.m1.1d">0.1 → 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.3.5">375</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A2.T9.3.3.6">(0.9, 0.95)</td>
</tr>
<tr class="ltx_tr" id="A2.T9.5.5">
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.3">1.3B</td>
<td class="ltx_td ltx_align_center" id="A2.T9.4.4.1"><math alttext="1.2\times 10^{-3}\rightarrow 8\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T9.4.4.1.m1.1"><semantics id="A2.T9.4.4.1.m1.1a"><mrow id="A2.T9.4.4.1.m1.1.1" xref="A2.T9.4.4.1.m1.1.1.cmml"><mrow id="A2.T9.4.4.1.m1.1.1.2" xref="A2.T9.4.4.1.m1.1.1.2.cmml"><mn id="A2.T9.4.4.1.m1.1.1.2.2" xref="A2.T9.4.4.1.m1.1.1.2.2.cmml">1.2</mn><mo id="A2.T9.4.4.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.4.4.1.m1.1.1.2.1.cmml">×</mo><msup id="A2.T9.4.4.1.m1.1.1.2.3" xref="A2.T9.4.4.1.m1.1.1.2.3.cmml"><mn id="A2.T9.4.4.1.m1.1.1.2.3.2" xref="A2.T9.4.4.1.m1.1.1.2.3.2.cmml">10</mn><mrow id="A2.T9.4.4.1.m1.1.1.2.3.3" xref="A2.T9.4.4.1.m1.1.1.2.3.3.cmml"><mo id="A2.T9.4.4.1.m1.1.1.2.3.3a" xref="A2.T9.4.4.1.m1.1.1.2.3.3.cmml">−</mo><mn id="A2.T9.4.4.1.m1.1.1.2.3.3.2" xref="A2.T9.4.4.1.m1.1.1.2.3.3.2.cmml">3</mn></mrow></msup></mrow><mo id="A2.T9.4.4.1.m1.1.1.1" stretchy="false" xref="A2.T9.4.4.1.m1.1.1.1.cmml">→</mo><mrow id="A2.T9.4.4.1.m1.1.1.3" xref="A2.T9.4.4.1.m1.1.1.3.cmml"><mn id="A2.T9.4.4.1.m1.1.1.3.2" xref="A2.T9.4.4.1.m1.1.1.3.2.cmml">8</mn><mo id="A2.T9.4.4.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.4.4.1.m1.1.1.3.1.cmml">×</mo><msup id="A2.T9.4.4.1.m1.1.1.3.3" xref="A2.T9.4.4.1.m1.1.1.3.3.cmml"><mn id="A2.T9.4.4.1.m1.1.1.3.3.2" xref="A2.T9.4.4.1.m1.1.1.3.3.2.cmml">10</mn><mrow id="A2.T9.4.4.1.m1.1.1.3.3.3" xref="A2.T9.4.4.1.m1.1.1.3.3.3.cmml"><mo id="A2.T9.4.4.1.m1.1.1.3.3.3a" xref="A2.T9.4.4.1.m1.1.1.3.3.3.cmml">−</mo><mn id="A2.T9.4.4.1.m1.1.1.3.3.3.2" xref="A2.T9.4.4.1.m1.1.1.3.3.3.2.cmml">4</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.4.4.1.m1.1b"><apply id="A2.T9.4.4.1.m1.1.1.cmml" xref="A2.T9.4.4.1.m1.1.1"><ci id="A2.T9.4.4.1.m1.1.1.1.cmml" xref="A2.T9.4.4.1.m1.1.1.1">→</ci><apply id="A2.T9.4.4.1.m1.1.1.2.cmml" xref="A2.T9.4.4.1.m1.1.1.2"><times id="A2.T9.4.4.1.m1.1.1.2.1.cmml" xref="A2.T9.4.4.1.m1.1.1.2.1"></times><cn id="A2.T9.4.4.1.m1.1.1.2.2.cmml" type="float" xref="A2.T9.4.4.1.m1.1.1.2.2">1.2</cn><apply id="A2.T9.4.4.1.m1.1.1.2.3.cmml" xref="A2.T9.4.4.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="A2.T9.4.4.1.m1.1.1.2.3.1.cmml" xref="A2.T9.4.4.1.m1.1.1.2.3">superscript</csymbol><cn id="A2.T9.4.4.1.m1.1.1.2.3.2.cmml" type="integer" xref="A2.T9.4.4.1.m1.1.1.2.3.2">10</cn><apply id="A2.T9.4.4.1.m1.1.1.2.3.3.cmml" xref="A2.T9.4.4.1.m1.1.1.2.3.3"><minus id="A2.T9.4.4.1.m1.1.1.2.3.3.1.cmml" xref="A2.T9.4.4.1.m1.1.1.2.3.3"></minus><cn id="A2.T9.4.4.1.m1.1.1.2.3.3.2.cmml" type="integer" xref="A2.T9.4.4.1.m1.1.1.2.3.3.2">3</cn></apply></apply></apply><apply id="A2.T9.4.4.1.m1.1.1.3.cmml" xref="A2.T9.4.4.1.m1.1.1.3"><times id="A2.T9.4.4.1.m1.1.1.3.1.cmml" xref="A2.T9.4.4.1.m1.1.1.3.1"></times><cn id="A2.T9.4.4.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T9.4.4.1.m1.1.1.3.2">8</cn><apply id="A2.T9.4.4.1.m1.1.1.3.3.cmml" xref="A2.T9.4.4.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T9.4.4.1.m1.1.1.3.3.1.cmml" xref="A2.T9.4.4.1.m1.1.1.3.3">superscript</csymbol><cn id="A2.T9.4.4.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T9.4.4.1.m1.1.1.3.3.2">10</cn><apply id="A2.T9.4.4.1.m1.1.1.3.3.3.cmml" xref="A2.T9.4.4.1.m1.1.1.3.3.3"><minus id="A2.T9.4.4.1.m1.1.1.3.3.3.1.cmml" xref="A2.T9.4.4.1.m1.1.1.3.3.3"></minus><cn id="A2.T9.4.4.1.m1.1.1.3.3.3.2.cmml" type="integer" xref="A2.T9.4.4.1.m1.1.1.3.3.3.2">4</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.4.4.1.m1.1c">1.2\times 10^{-3}\rightarrow 8\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T9.4.4.1.m1.1d">1.2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT → 8 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.2"><math alttext="0.1\rightarrow 0" class="ltx_Math" display="inline" id="A2.T9.5.5.2.m1.1"><semantics id="A2.T9.5.5.2.m1.1a"><mrow id="A2.T9.5.5.2.m1.1.1" xref="A2.T9.5.5.2.m1.1.1.cmml"><mn id="A2.T9.5.5.2.m1.1.1.2" xref="A2.T9.5.5.2.m1.1.1.2.cmml">0.1</mn><mo id="A2.T9.5.5.2.m1.1.1.1" stretchy="false" xref="A2.T9.5.5.2.m1.1.1.1.cmml">→</mo><mn id="A2.T9.5.5.2.m1.1.1.3" xref="A2.T9.5.5.2.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.5.5.2.m1.1b"><apply id="A2.T9.5.5.2.m1.1.1.cmml" xref="A2.T9.5.5.2.m1.1.1"><ci id="A2.T9.5.5.2.m1.1.1.1.cmml" xref="A2.T9.5.5.2.m1.1.1.1">→</ci><cn id="A2.T9.5.5.2.m1.1.1.2.cmml" type="float" xref="A2.T9.5.5.2.m1.1.1.2">0.1</cn><cn id="A2.T9.5.5.2.m1.1.1.3.cmml" type="integer" xref="A2.T9.5.5.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.5.5.2.m1.1c">0.1\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="A2.T9.5.5.2.m1.1d">0.1 → 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.4">375</td>
<td class="ltx_td ltx_align_center" id="A2.T9.5.5.5">(0.9, 0.95)</td>
</tr>
<tr class="ltx_tr" id="A2.T9.7.7">
<td class="ltx_td ltx_align_center" id="A2.T9.7.7.3">3B</td>
<td class="ltx_td ltx_align_center" id="A2.T9.6.6.1"><math alttext="1.2\times 10^{-3}\rightarrow 6.4\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T9.6.6.1.m1.1"><semantics id="A2.T9.6.6.1.m1.1a"><mrow id="A2.T9.6.6.1.m1.1.1" xref="A2.T9.6.6.1.m1.1.1.cmml"><mrow id="A2.T9.6.6.1.m1.1.1.2" xref="A2.T9.6.6.1.m1.1.1.2.cmml"><mn id="A2.T9.6.6.1.m1.1.1.2.2" xref="A2.T9.6.6.1.m1.1.1.2.2.cmml">1.2</mn><mo id="A2.T9.6.6.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.6.6.1.m1.1.1.2.1.cmml">×</mo><msup id="A2.T9.6.6.1.m1.1.1.2.3" xref="A2.T9.6.6.1.m1.1.1.2.3.cmml"><mn id="A2.T9.6.6.1.m1.1.1.2.3.2" xref="A2.T9.6.6.1.m1.1.1.2.3.2.cmml">10</mn><mrow id="A2.T9.6.6.1.m1.1.1.2.3.3" xref="A2.T9.6.6.1.m1.1.1.2.3.3.cmml"><mo id="A2.T9.6.6.1.m1.1.1.2.3.3a" xref="A2.T9.6.6.1.m1.1.1.2.3.3.cmml">−</mo><mn id="A2.T9.6.6.1.m1.1.1.2.3.3.2" xref="A2.T9.6.6.1.m1.1.1.2.3.3.2.cmml">3</mn></mrow></msup></mrow><mo id="A2.T9.6.6.1.m1.1.1.1" stretchy="false" xref="A2.T9.6.6.1.m1.1.1.1.cmml">→</mo><mrow id="A2.T9.6.6.1.m1.1.1.3" xref="A2.T9.6.6.1.m1.1.1.3.cmml"><mn id="A2.T9.6.6.1.m1.1.1.3.2" xref="A2.T9.6.6.1.m1.1.1.3.2.cmml">6.4</mn><mo id="A2.T9.6.6.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.6.6.1.m1.1.1.3.1.cmml">×</mo><msup id="A2.T9.6.6.1.m1.1.1.3.3" xref="A2.T9.6.6.1.m1.1.1.3.3.cmml"><mn id="A2.T9.6.6.1.m1.1.1.3.3.2" xref="A2.T9.6.6.1.m1.1.1.3.3.2.cmml">10</mn><mrow id="A2.T9.6.6.1.m1.1.1.3.3.3" xref="A2.T9.6.6.1.m1.1.1.3.3.3.cmml"><mo id="A2.T9.6.6.1.m1.1.1.3.3.3a" xref="A2.T9.6.6.1.m1.1.1.3.3.3.cmml">−</mo><mn id="A2.T9.6.6.1.m1.1.1.3.3.3.2" xref="A2.T9.6.6.1.m1.1.1.3.3.3.2.cmml">4</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.6.6.1.m1.1b"><apply id="A2.T9.6.6.1.m1.1.1.cmml" xref="A2.T9.6.6.1.m1.1.1"><ci id="A2.T9.6.6.1.m1.1.1.1.cmml" xref="A2.T9.6.6.1.m1.1.1.1">→</ci><apply id="A2.T9.6.6.1.m1.1.1.2.cmml" xref="A2.T9.6.6.1.m1.1.1.2"><times id="A2.T9.6.6.1.m1.1.1.2.1.cmml" xref="A2.T9.6.6.1.m1.1.1.2.1"></times><cn id="A2.T9.6.6.1.m1.1.1.2.2.cmml" type="float" xref="A2.T9.6.6.1.m1.1.1.2.2">1.2</cn><apply id="A2.T9.6.6.1.m1.1.1.2.3.cmml" xref="A2.T9.6.6.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="A2.T9.6.6.1.m1.1.1.2.3.1.cmml" xref="A2.T9.6.6.1.m1.1.1.2.3">superscript</csymbol><cn id="A2.T9.6.6.1.m1.1.1.2.3.2.cmml" type="integer" xref="A2.T9.6.6.1.m1.1.1.2.3.2">10</cn><apply id="A2.T9.6.6.1.m1.1.1.2.3.3.cmml" xref="A2.T9.6.6.1.m1.1.1.2.3.3"><minus id="A2.T9.6.6.1.m1.1.1.2.3.3.1.cmml" xref="A2.T9.6.6.1.m1.1.1.2.3.3"></minus><cn id="A2.T9.6.6.1.m1.1.1.2.3.3.2.cmml" type="integer" xref="A2.T9.6.6.1.m1.1.1.2.3.3.2">3</cn></apply></apply></apply><apply id="A2.T9.6.6.1.m1.1.1.3.cmml" xref="A2.T9.6.6.1.m1.1.1.3"><times id="A2.T9.6.6.1.m1.1.1.3.1.cmml" xref="A2.T9.6.6.1.m1.1.1.3.1"></times><cn id="A2.T9.6.6.1.m1.1.1.3.2.cmml" type="float" xref="A2.T9.6.6.1.m1.1.1.3.2">6.4</cn><apply id="A2.T9.6.6.1.m1.1.1.3.3.cmml" xref="A2.T9.6.6.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T9.6.6.1.m1.1.1.3.3.1.cmml" xref="A2.T9.6.6.1.m1.1.1.3.3">superscript</csymbol><cn id="A2.T9.6.6.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T9.6.6.1.m1.1.1.3.3.2">10</cn><apply id="A2.T9.6.6.1.m1.1.1.3.3.3.cmml" xref="A2.T9.6.6.1.m1.1.1.3.3.3"><minus id="A2.T9.6.6.1.m1.1.1.3.3.3.1.cmml" xref="A2.T9.6.6.1.m1.1.1.3.3.3"></minus><cn id="A2.T9.6.6.1.m1.1.1.3.3.3.2.cmml" type="integer" xref="A2.T9.6.6.1.m1.1.1.3.3.3.2">4</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.6.6.1.m1.1c">1.2\times 10^{-3}\rightarrow 6.4\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T9.6.6.1.m1.1d">1.2 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT → 6.4 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T9.7.7.2"><math alttext="0.1\rightarrow 0" class="ltx_Math" display="inline" id="A2.T9.7.7.2.m1.1"><semantics id="A2.T9.7.7.2.m1.1a"><mrow id="A2.T9.7.7.2.m1.1.1" xref="A2.T9.7.7.2.m1.1.1.cmml"><mn id="A2.T9.7.7.2.m1.1.1.2" xref="A2.T9.7.7.2.m1.1.1.2.cmml">0.1</mn><mo id="A2.T9.7.7.2.m1.1.1.1" stretchy="false" xref="A2.T9.7.7.2.m1.1.1.1.cmml">→</mo><mn id="A2.T9.7.7.2.m1.1.1.3" xref="A2.T9.7.7.2.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.7.7.2.m1.1b"><apply id="A2.T9.7.7.2.m1.1.1.cmml" xref="A2.T9.7.7.2.m1.1.1"><ci id="A2.T9.7.7.2.m1.1.1.1.cmml" xref="A2.T9.7.7.2.m1.1.1.1">→</ci><cn id="A2.T9.7.7.2.m1.1.1.2.cmml" type="float" xref="A2.T9.7.7.2.m1.1.1.2">0.1</cn><cn id="A2.T9.7.7.2.m1.1.1.3.cmml" type="integer" xref="A2.T9.7.7.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.7.7.2.m1.1c">0.1\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="A2.T9.7.7.2.m1.1d">0.1 → 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A2.T9.7.7.4">375</td>
<td class="ltx_td ltx_align_center" id="A2.T9.7.7.5">(0.9, 0.95)</td>
</tr>
<tr class="ltx_tr" id="A2.T9.9.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.9.9.3">7B</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.8.8.1"><math alttext="1\times 10^{-3}\rightarrow 6\times 10^{-4}" class="ltx_Math" display="inline" id="A2.T9.8.8.1.m1.1"><semantics id="A2.T9.8.8.1.m1.1a"><mrow id="A2.T9.8.8.1.m1.1.1" xref="A2.T9.8.8.1.m1.1.1.cmml"><mrow id="A2.T9.8.8.1.m1.1.1.2" xref="A2.T9.8.8.1.m1.1.1.2.cmml"><mn id="A2.T9.8.8.1.m1.1.1.2.2" xref="A2.T9.8.8.1.m1.1.1.2.2.cmml">1</mn><mo id="A2.T9.8.8.1.m1.1.1.2.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.8.8.1.m1.1.1.2.1.cmml">×</mo><msup id="A2.T9.8.8.1.m1.1.1.2.3" xref="A2.T9.8.8.1.m1.1.1.2.3.cmml"><mn id="A2.T9.8.8.1.m1.1.1.2.3.2" xref="A2.T9.8.8.1.m1.1.1.2.3.2.cmml">10</mn><mrow id="A2.T9.8.8.1.m1.1.1.2.3.3" xref="A2.T9.8.8.1.m1.1.1.2.3.3.cmml"><mo id="A2.T9.8.8.1.m1.1.1.2.3.3a" xref="A2.T9.8.8.1.m1.1.1.2.3.3.cmml">−</mo><mn id="A2.T9.8.8.1.m1.1.1.2.3.3.2" xref="A2.T9.8.8.1.m1.1.1.2.3.3.2.cmml">3</mn></mrow></msup></mrow><mo id="A2.T9.8.8.1.m1.1.1.1" stretchy="false" xref="A2.T9.8.8.1.m1.1.1.1.cmml">→</mo><mrow id="A2.T9.8.8.1.m1.1.1.3" xref="A2.T9.8.8.1.m1.1.1.3.cmml"><mn id="A2.T9.8.8.1.m1.1.1.3.2" xref="A2.T9.8.8.1.m1.1.1.3.2.cmml">6</mn><mo id="A2.T9.8.8.1.m1.1.1.3.1" lspace="0.222em" rspace="0.222em" xref="A2.T9.8.8.1.m1.1.1.3.1.cmml">×</mo><msup id="A2.T9.8.8.1.m1.1.1.3.3" xref="A2.T9.8.8.1.m1.1.1.3.3.cmml"><mn id="A2.T9.8.8.1.m1.1.1.3.3.2" xref="A2.T9.8.8.1.m1.1.1.3.3.2.cmml">10</mn><mrow id="A2.T9.8.8.1.m1.1.1.3.3.3" xref="A2.T9.8.8.1.m1.1.1.3.3.3.cmml"><mo id="A2.T9.8.8.1.m1.1.1.3.3.3a" xref="A2.T9.8.8.1.m1.1.1.3.3.3.cmml">−</mo><mn id="A2.T9.8.8.1.m1.1.1.3.3.3.2" xref="A2.T9.8.8.1.m1.1.1.3.3.3.2.cmml">4</mn></mrow></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.8.8.1.m1.1b"><apply id="A2.T9.8.8.1.m1.1.1.cmml" xref="A2.T9.8.8.1.m1.1.1"><ci id="A2.T9.8.8.1.m1.1.1.1.cmml" xref="A2.T9.8.8.1.m1.1.1.1">→</ci><apply id="A2.T9.8.8.1.m1.1.1.2.cmml" xref="A2.T9.8.8.1.m1.1.1.2"><times id="A2.T9.8.8.1.m1.1.1.2.1.cmml" xref="A2.T9.8.8.1.m1.1.1.2.1"></times><cn id="A2.T9.8.8.1.m1.1.1.2.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.2.2">1</cn><apply id="A2.T9.8.8.1.m1.1.1.2.3.cmml" xref="A2.T9.8.8.1.m1.1.1.2.3"><csymbol cd="ambiguous" id="A2.T9.8.8.1.m1.1.1.2.3.1.cmml" xref="A2.T9.8.8.1.m1.1.1.2.3">superscript</csymbol><cn id="A2.T9.8.8.1.m1.1.1.2.3.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.2.3.2">10</cn><apply id="A2.T9.8.8.1.m1.1.1.2.3.3.cmml" xref="A2.T9.8.8.1.m1.1.1.2.3.3"><minus id="A2.T9.8.8.1.m1.1.1.2.3.3.1.cmml" xref="A2.T9.8.8.1.m1.1.1.2.3.3"></minus><cn id="A2.T9.8.8.1.m1.1.1.2.3.3.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.2.3.3.2">3</cn></apply></apply></apply><apply id="A2.T9.8.8.1.m1.1.1.3.cmml" xref="A2.T9.8.8.1.m1.1.1.3"><times id="A2.T9.8.8.1.m1.1.1.3.1.cmml" xref="A2.T9.8.8.1.m1.1.1.3.1"></times><cn id="A2.T9.8.8.1.m1.1.1.3.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.3.2">6</cn><apply id="A2.T9.8.8.1.m1.1.1.3.3.cmml" xref="A2.T9.8.8.1.m1.1.1.3.3"><csymbol cd="ambiguous" id="A2.T9.8.8.1.m1.1.1.3.3.1.cmml" xref="A2.T9.8.8.1.m1.1.1.3.3">superscript</csymbol><cn id="A2.T9.8.8.1.m1.1.1.3.3.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.3.3.2">10</cn><apply id="A2.T9.8.8.1.m1.1.1.3.3.3.cmml" xref="A2.T9.8.8.1.m1.1.1.3.3.3"><minus id="A2.T9.8.8.1.m1.1.1.3.3.3.1.cmml" xref="A2.T9.8.8.1.m1.1.1.3.3.3"></minus><cn id="A2.T9.8.8.1.m1.1.1.3.3.3.2.cmml" type="integer" xref="A2.T9.8.8.1.m1.1.1.3.3.3.2">4</cn></apply></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.8.8.1.m1.1c">1\times 10^{-3}\rightarrow 6\times 10^{-4}</annotation><annotation encoding="application/x-llamapun" id="A2.T9.8.8.1.m1.1d">1 × 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT → 6 × 10 start_POSTSUPERSCRIPT - 4 end_POSTSUPERSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.9.9.2"><math alttext="0.1\rightarrow 0" class="ltx_Math" display="inline" id="A2.T9.9.9.2.m1.1"><semantics id="A2.T9.9.9.2.m1.1a"><mrow id="A2.T9.9.9.2.m1.1.1" xref="A2.T9.9.9.2.m1.1.1.cmml"><mn id="A2.T9.9.9.2.m1.1.1.2" xref="A2.T9.9.9.2.m1.1.1.2.cmml">0.1</mn><mo id="A2.T9.9.9.2.m1.1.1.1" stretchy="false" xref="A2.T9.9.9.2.m1.1.1.1.cmml">→</mo><mn id="A2.T9.9.9.2.m1.1.1.3" xref="A2.T9.9.9.2.m1.1.1.3.cmml">0</mn></mrow><annotation-xml encoding="MathML-Content" id="A2.T9.9.9.2.m1.1b"><apply id="A2.T9.9.9.2.m1.1.1.cmml" xref="A2.T9.9.9.2.m1.1.1"><ci id="A2.T9.9.9.2.m1.1.1.1.cmml" xref="A2.T9.9.9.2.m1.1.1.1">→</ci><cn id="A2.T9.9.9.2.m1.1.1.2.cmml" type="float" xref="A2.T9.9.9.2.m1.1.1.2">0.1</cn><cn id="A2.T9.9.9.2.m1.1.1.3.cmml" type="integer" xref="A2.T9.9.9.2.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A2.T9.9.9.2.m1.1c">0.1\rightarrow 0</annotation><annotation encoding="application/x-llamapun" id="A2.T9.9.9.2.m1.1d">0.1 → 0</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.9.9.4">375</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A2.T9.9.9.5">(0.9, 0.95)</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the training process of the BitNet v2 model.  It shows the model size, the learning rate schedule (initial and final rates), the weight decay applied to prevent overfitting, the warm-up period for the optimizer, and the Adam optimizer's beta parameters (beta1 and beta2). These parameters are crucial in determining the model's training stability and performance.
> <details>
> <summary>read the caption</summary>
> Table 9: Hyper-parameters for both BitNet v2 training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.18415/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.18415/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}