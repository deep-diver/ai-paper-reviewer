---
title: "Make Your Training Flexible: Towards Deployment-Efficient Video Models"
summary: "FluxViT: Flexible video models via adaptive token selection for efficient deployment!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Shanghai Jiao Tong University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14237 {{< /keyword >}}
{{< keyword icon="writer" >}} Chenting Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-21 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14237" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14237" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14237/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Popular video training methods operate on fixed tokens sampled from predetermined grids, leading to suboptimal accuracy-computation trade-offs. They also lack adaptability to computational budgets, hindering competitive model deployment**. This paper addresses this by proposing 'Token Optimization', which optimizes the size-limited set of input tokens by token selection from more suitably sampled videos to maximized input information across budgets. The goal is to solve redundancy in training and deployment, especially for long videos.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces Token Optimization (TO) for efficient video processing across varied computational budgets. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents Flux, a novel data augmentation tool, enhancing model robustness with negligible additional cost. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} FluxViT achieves state-of-the-art results in video understanding tasks by optimizing token usage, significantly reducing computational costs. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces **a novel framework for adaptable video models**, relevant due to the increasing demand for deployment-efficient solutions in real-world applications. It offers **a new perspective on optimizing computation-accuracy trade-offs**, and opens avenues for exploring advanced token selection methods, potentially impacting future research in video understanding and multimodal learning.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14237/x1.png)

> 🔼 This figure illustrates the difference between traditional video processing methods and the proposed Flux method.  Traditional methods (left) rely on rigid, fixed sampling of video frames, which leads to suboptimal accuracy-computation trade-offs due to redundancy.  Token reduction is often employed afterward to reduce computational costs, but this further limits performance. In contrast, the Flux method (right) utilizes flexible sampling and token selection to achieve 'Token Optimization.'  This involves sampling frames at variable spatiotemporal densities and selecting a size-limited set of tokens that best represent the information within the video. This flexibility allows Flux to adapt better to varying computational budgets and achieve improved accuracy for downstream tasks, especially given limited computational resources.
> <details>
> <summary>read the caption</summary>
> Figure 1:  Flux (right) employs flexible sampling and token selection to achieve Token Optimization. Common methods(left) use rigid sampling(and use token reduction for applications directly).
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.92.92">
<tr class="ltx_tr" id="S4.T1.92.92.93">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.92.92.93.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="S4.T1.92.92.93.1.1">Method</span>
</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.92.92.93.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.93.2.1">Input Size</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="4" id="S4.T1.92.92.93.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.93.3.1">Test Token Number</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.92.92.93.4" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.93.4.1">Avg</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.94">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.94.1" style="padding-left:2.0pt;padding-right:2.0pt;">3072</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.94.2" style="padding-left:2.0pt;padding-right:2.0pt;">2048</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.94.3" style="padding-left:2.0pt;padding-right:2.0pt;">1024</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.94.4" style="padding-left:2.0pt;padding-right:2.0pt;">512</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" xref="S4.T1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><times id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.2.2.2.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.3.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.3.m1.1a"><mi id="S4.T1.3.3.3.3.m1.1.1" mathvariant="normal" xref="S4.T1.3.3.3.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.3.m1.1b"><emptyset id="S4.T1.3.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.4.4.4.4.m1.1"><semantics id="S4.T1.4.4.4.4.m1.1a"><mi id="S4.T1.4.4.4.4.m1.1.1" mathvariant="normal" xref="S4.T1.4.4.4.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.4.m1.1b"><emptyset id="S4.T1.4.4.4.4.m1.1.1.cmml" xref="S4.T1.4.4.4.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.5.5.5.5.m1.1"><semantics id="S4.T1.5.5.5.5.m1.1a"><mi id="S4.T1.5.5.5.5.m1.1.1" mathvariant="normal" xref="S4.T1.5.5.5.5.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.5.m1.1b"><emptyset id="S4.T1.5.5.5.5.m1.1.1.cmml" xref="S4.T1.5.5.5.5.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.5.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.5.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.7" style="padding-left:2.0pt;padding-right:2.0pt;">69.5</td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.8" style="padding-left:2.0pt;padding-right:2.0pt;">69.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.9.9.9">
<td class="ltx_td ltx_border_r" id="S4.T1.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.1.m1.1.1" xref="S4.T1.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><times id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.7.7.7.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.8.8.8.3.m1.1"><semantics id="S4.T1.8.8.8.3.m1.1a"><mi id="S4.T1.8.8.8.3.m1.1.1" mathvariant="normal" xref="S4.T1.8.8.8.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.3.m1.1b"><emptyset id="S4.T1.8.8.8.3.m1.1.1.cmml" xref="S4.T1.8.8.8.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.9.9.9.4.m1.1"><semantics id="S4.T1.9.9.9.4.m1.1a"><mi id="S4.T1.9.9.9.4.m1.1.1" mathvariant="normal" xref="S4.T1.9.9.9.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.9.9.9.4.m1.1b"><emptyset id="S4.T1.9.9.9.4.m1.1.1.cmml" xref="S4.T1.9.9.9.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.9.9.9.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.9.9.9.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.9.6" style="padding-left:2.0pt;padding-right:2.0pt;">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.9.9.9.7" style="padding-left:2.0pt;padding-right:2.0pt;">73.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.9.9.9.8" style="padding-left:2.0pt;padding-right:2.0pt;">77.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<td class="ltx_td ltx_border_r" id="S4.T1.12.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.11.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.11.11.11.2.2">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.10.10.10.1.1.m1.1"><semantics id="S4.T1.10.10.10.1.1.m1.1a"><mo id="S4.T1.10.10.10.1.1.m1.1.1" xref="S4.T1.10.10.10.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.1.1.m1.1b"><times id="S4.T1.10.10.10.1.1.m1.1.1.cmml" xref="S4.T1.10.10.10.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.11.11.11.2.2.1"><span class="ltx_text ltx_font_medium" id="S4.T1.11.11.11.2.2.1.1">2</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.12.12.12.3.m1.1"><semantics id="S4.T1.12.12.12.3.m1.1a"><mi id="S4.T1.12.12.12.3.m1.1.1" mathvariant="normal" xref="S4.T1.12.12.12.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.3.m1.1b"><emptyset id="S4.T1.12.12.12.3.m1.1.1.cmml" xref="S4.T1.12.12.12.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.8" style="padding-left:2.0pt;padding-right:2.0pt;">79.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.14.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.14.14.14.2.2">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.13.13.13.1.1.m1.1"><semantics id="S4.T1.13.13.13.1.1.m1.1a"><mo id="S4.T1.13.13.13.1.1.m1.1.1" xref="S4.T1.13.13.13.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.13.13.13.1.1.m1.1b"><times id="S4.T1.13.13.13.1.1.m1.1.1.cmml" xref="S4.T1.13.13.13.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.13.13.13.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.13.13.13.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.14.14.14.2.2.1">2</sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.16.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">12<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.15.15.15.3.m1.1"><semantics id="S4.T1.15.15.15.3.m1.1a"><mo id="S4.T1.15.15.15.3.m1.1.1" xref="S4.T1.15.15.15.3.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.15.15.15.3.m1.1b"><times id="S4.T1.15.15.15.3.m1.1.1.cmml" xref="S4.T1.15.15.15.3.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.15.15.15.3.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.15.15.15.3.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.16.16.16.4.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">84.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.6" style="padding-left:2.0pt;padding-right:2.0pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.7" style="padding-left:2.0pt;padding-right:2.0pt;">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.8" style="padding-left:2.0pt;padding-right:2.0pt;">69.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.9" style="padding-left:2.0pt;padding-right:2.0pt;">79.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.18.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.18.18.18.3.1">Direct Tuned</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.18.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.17.17.17.1.m1.1"><semantics id="S4.T1.17.17.17.1.m1.1a"><mo id="S4.T1.17.17.17.1.m1.1.1" xref="S4.T1.17.17.17.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.1.m1.1b"><times id="S4.T1.17.17.17.1.m1.1.1.cmml" xref="S4.T1.17.17.17.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.18.18.18.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.6" style="padding-left:2.0pt;padding-right:2.0pt;">79.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.18.18.18.7" style="padding-left:2.0pt;padding-right:2.0pt;">67.0</td>
<td class="ltx_td ltx_align_center" id="S4.T1.18.18.18.8" style="padding-left:2.0pt;padding-right:2.0pt;">78.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.20.20.20">
<td class="ltx_td ltx_border_r" id="S4.T1.20.20.20.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.20.20.20.2" style="padding-left:2.0pt;padding-right:2.0pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.19.19.19.1.m1.1"><semantics id="S4.T1.19.19.19.1.m1.1a"><mo id="S4.T1.19.19.19.1.m1.1.1" xref="S4.T1.19.19.19.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.19.19.19.1.m1.1b"><times id="S4.T1.19.19.19.1.m1.1.1.cmml" xref="S4.T1.19.19.19.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.19.19.19.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.19.19.19.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.20.20.20.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.20.20.20.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.20.20.20.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.20.20.20.6" style="padding-left:2.0pt;padding-right:2.0pt;">77.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.20.20.20.7" style="padding-left:2.0pt;padding-right:2.0pt;">64.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.20.20.20.8" style="padding-left:2.0pt;padding-right:2.0pt;">77.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.22.22.22">
<td class="ltx_td ltx_border_r" id="S4.T1.22.22.22.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.22.22.22.2" style="padding-left:2.0pt;padding-right:2.0pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.21.21.21.1.m1.1"><semantics id="S4.T1.21.21.21.1.m1.1a"><mo id="S4.T1.21.21.21.1.m1.1.1" xref="S4.T1.21.21.21.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.21.21.21.1.m1.1b"><times id="S4.T1.21.21.21.1.m1.1.1.cmml" xref="S4.T1.21.21.21.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.21.21.21.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.21.21.21.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.22.22.22.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.22.22.22.4" style="padding-left:2.0pt;padding-right:2.0pt;">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.22.22.22.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.22.22.22.6" style="padding-left:2.0pt;padding-right:2.0pt;">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.22.22.22.7" style="padding-left:2.0pt;padding-right:2.0pt;">62.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.22.22.22.8" style="padding-left:2.0pt;padding-right:2.0pt;">76.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.95">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.95.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.92.92.95.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.95.2.1">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.95.3" style="padding-left:2.0pt;padding-right:2.0pt;">84.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.95.4" style="padding-left:2.0pt;padding-right:2.0pt;">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.95.5" style="padding-left:2.0pt;padding-right:2.0pt;">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.95.6" style="padding-left:2.0pt;padding-right:2.0pt;">68.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.95.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.96">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.96.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.92.92.96.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.96.2.1">Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.96.3" style="padding-left:2.0pt;padding-right:2.0pt;">84.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.96.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.96.5" style="padding-left:2.0pt;padding-right:2.0pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.96.6" style="padding-left:2.0pt;padding-right:2.0pt;">73.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.96.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.27.27.27">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.27.27.27.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.24.24.24.2" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.23.23.23.1.m1.1"><semantics id="S4.T1.23.23.23.1.m1.1a"><mo id="S4.T1.23.23.23.1.m1.1.1" xref="S4.T1.23.23.23.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.23.23.23.1.m1.1b"><times id="S4.T1.23.23.23.1.m1.1.1.cmml" xref="S4.T1.23.23.23.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.23.23.23.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.23.23.23.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.24.24.24.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.25.25.25.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.25.25.25.3.m1.1"><semantics id="S4.T1.25.25.25.3.m1.1a"><mi id="S4.T1.25.25.25.3.m1.1.1" mathvariant="normal" xref="S4.T1.25.25.25.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.25.25.25.3.m1.1b"><emptyset id="S4.T1.25.25.25.3.m1.1.1.cmml" xref="S4.T1.25.25.25.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.25.25.25.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.25.25.25.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.26.26.26.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.26.26.26.4.m1.1"><semantics id="S4.T1.26.26.26.4.m1.1a"><mi id="S4.T1.26.26.26.4.m1.1.1" mathvariant="normal" xref="S4.T1.26.26.26.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.26.26.26.4.m1.1b"><emptyset id="S4.T1.26.26.26.4.m1.1.1.cmml" xref="S4.T1.26.26.26.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.26.26.26.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.26.26.26.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.27.27.27.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.27.27.27.5.m1.1"><semantics id="S4.T1.27.27.27.5.m1.1a"><mi id="S4.T1.27.27.27.5.m1.1.1" mathvariant="normal" xref="S4.T1.27.27.27.5.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.27.27.27.5.m1.1b"><emptyset id="S4.T1.27.27.27.5.m1.1.1.cmml" xref="S4.T1.27.27.27.5.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.27.27.27.5.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.27.27.27.5.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.27.27.27.7" style="padding-left:2.0pt;padding-right:2.0pt;">68.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.27.27.27.8" style="padding-left:2.0pt;padding-right:2.0pt;">68.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.31.31.31">
<td class="ltx_td ltx_border_r" id="S4.T1.31.31.31.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.29.29.29.2" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.28.28.28.1.m1.1"><semantics id="S4.T1.28.28.28.1.m1.1a"><mo id="S4.T1.28.28.28.1.m1.1.1" xref="S4.T1.28.28.28.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.28.28.28.1.m1.1b"><times id="S4.T1.28.28.28.1.m1.1.1.cmml" xref="S4.T1.28.28.28.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.28.28.28.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.28.28.28.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.29.29.29.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.30.30.30.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.30.30.30.3.m1.1"><semantics id="S4.T1.30.30.30.3.m1.1a"><mi id="S4.T1.30.30.30.3.m1.1.1" mathvariant="normal" xref="S4.T1.30.30.30.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.30.30.30.3.m1.1b"><emptyset id="S4.T1.30.30.30.3.m1.1.1.cmml" xref="S4.T1.30.30.30.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.30.30.30.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.30.30.30.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.31.31.31.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.31.31.31.4.m1.1"><semantics id="S4.T1.31.31.31.4.m1.1a"><mi id="S4.T1.31.31.31.4.m1.1.1" mathvariant="normal" xref="S4.T1.31.31.31.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.31.31.31.4.m1.1b"><emptyset id="S4.T1.31.31.31.4.m1.1.1.cmml" xref="S4.T1.31.31.31.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.31.31.31.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.31.31.31.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.31.31.31.6" style="padding-left:2.0pt;padding-right:2.0pt;">79.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.31.31.31.7" style="padding-left:2.0pt;padding-right:2.0pt;">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.31.31.31.8" style="padding-left:2.0pt;padding-right:2.0pt;">77.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.34.34.34">
<td class="ltx_td ltx_border_r" id="S4.T1.34.34.34.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.33.33.33.2" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.32.32.32.1.m1.1"><semantics id="S4.T1.32.32.32.1.m1.1a"><mo id="S4.T1.32.32.32.1.m1.1.1" xref="S4.T1.32.32.32.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.32.32.32.1.m1.1b"><times id="S4.T1.32.32.32.1.m1.1.1.cmml" xref="S4.T1.32.32.32.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.32.32.32.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.32.32.32.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.33.33.33.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.34.34.34.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.34.34.34.3.m1.1"><semantics id="S4.T1.34.34.34.3.m1.1a"><mi id="S4.T1.34.34.34.3.m1.1.1" mathvariant="normal" xref="S4.T1.34.34.34.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.34.34.34.3.m1.1b"><emptyset id="S4.T1.34.34.34.3.m1.1.1.cmml" xref="S4.T1.34.34.34.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.34.34.34.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.34.34.34.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.34.34.34.5" style="padding-left:2.0pt;padding-right:2.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.34.34.34.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.34.34.34.7" style="padding-left:2.0pt;padding-right:2.0pt;">76.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.34.34.34.8" style="padding-left:2.0pt;padding-right:2.0pt;">81.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.36.36.36">
<td class="ltx_td ltx_border_r" id="S4.T1.36.36.36.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.36.36.36.2" style="padding-left:2.0pt;padding-right:2.0pt;">12<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.35.35.35.1.m1.1"><semantics id="S4.T1.35.35.35.1.m1.1a"><mo id="S4.T1.35.35.35.1.m1.1.1" xref="S4.T1.35.35.35.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.35.35.35.1.m1.1b"><times id="S4.T1.35.35.35.1.m1.1.1.cmml" xref="S4.T1.35.35.35.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.35.35.35.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.35.35.35.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.36.36.36.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.36.36.36.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.36.36.36.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.36.36.36.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.36.36.36.7" style="padding-left:2.0pt;padding-right:2.0pt;">75.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.36.36.36.8" style="padding-left:2.0pt;padding-right:2.0pt;">82.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.38.38.38">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.38.38.38.3" style="padding-left:2.0pt;padding-right:2.0pt;">2048 fixed count</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.38.38.38.2" style="padding-left:2.0pt;padding-right:2.0pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.37.37.37.1.m1.1"><semantics id="S4.T1.37.37.37.1.m1.1a"><mo id="S4.T1.37.37.37.1.m1.1.1" xref="S4.T1.37.37.37.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.37.37.37.1.m1.1b"><times id="S4.T1.37.37.37.1.m1.1.1.cmml" xref="S4.T1.37.37.37.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.37.37.37.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.37.37.37.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.38.38.38.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.38.38.38.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.38.38.38.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.38.38.38.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.38.38.38.7" style="padding-left:2.0pt;padding-right:2.0pt;">75.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.38.38.38.8" style="padding-left:2.0pt;padding-right:2.0pt;">82.1</td>
</tr>
<tr class="ltx_tr" id="S4.T1.40.40.40">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.40.40.40.3" style="padding-left:2.0pt;padding-right:2.0pt;">Flux-Single Tuned</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.40.40.40.2" style="padding-left:2.0pt;padding-right:2.0pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.39.39.39.1.m1.1"><semantics id="S4.T1.39.39.39.1.m1.1a"><mo id="S4.T1.39.39.39.1.m1.1.1" xref="S4.T1.39.39.39.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.39.39.39.1.m1.1b"><times id="S4.T1.39.39.39.1.m1.1.1.cmml" xref="S4.T1.39.39.39.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.39.39.39.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.39.39.39.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.40.40.40.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.40.40.40.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.40.40.40.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.40.40.40.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.40.40.40.7" style="padding-left:2.0pt;padding-right:2.0pt;">74.6</td>
<td class="ltx_td ltx_align_center" id="S4.T1.40.40.40.8" style="padding-left:2.0pt;padding-right:2.0pt;">81.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.42.42.42">
<td class="ltx_td ltx_border_r" id="S4.T1.42.42.42.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.42.42.42.2" style="padding-left:2.0pt;padding-right:2.0pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.41.41.41.1.m1.1"><semantics id="S4.T1.41.41.41.1.m1.1a"><mo id="S4.T1.41.41.41.1.m1.1.1" xref="S4.T1.41.41.41.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.41.41.41.1.m1.1b"><times id="S4.T1.41.41.41.1.m1.1.1.cmml" xref="S4.T1.41.41.41.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.41.41.41.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.41.41.41.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.42.42.42.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.42.42.42.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.42.42.42.5" style="padding-left:2.0pt;padding-right:2.0pt;">84.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.42.42.42.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.42.42.42.7" style="padding-left:2.0pt;padding-right:2.0pt;">74.1</td>
<td class="ltx_td ltx_align_center" id="S4.T1.42.42.42.8" style="padding-left:2.0pt;padding-right:2.0pt;">81.6</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.97">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.97.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.92.92.97.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.97.2.1">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.97.3" style="padding-left:2.0pt;padding-right:2.0pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.97.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.97.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.97.6" style="padding-left:2.0pt;padding-right:2.0pt;">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.97.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.98">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.98.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.92.92.98.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.98.2.1">Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.98.3" style="padding-left:2.0pt;padding-right:2.0pt;">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.98.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.98.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.98.6" style="padding-left:2.0pt;padding-right:2.0pt;">76.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.98.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.46.46.46">
<td class="ltx_td ltx_border_r" id="S4.T1.46.46.46.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.43.43.43.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.43.43.43.1.m1.1"><semantics id="S4.T1.43.43.43.1.m1.1a"><mo id="S4.T1.43.43.43.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.43.43.43.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.43.43.43.1.m1.1b"><ci id="S4.T1.43.43.43.1.m1.1.1.cmml" xref="S4.T1.43.43.43.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.43.43.43.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.43.43.43.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.43.43.43.1.1" style="color:#5C946E;">1.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.44.44.44.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.44.44.44.2.m1.1"><semantics id="S4.T1.44.44.44.2.m1.1a"><mo id="S4.T1.44.44.44.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.44.44.44.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.44.44.44.2.m1.1b"><ci id="S4.T1.44.44.44.2.m1.1.1.cmml" xref="S4.T1.44.44.44.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.44.44.44.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.44.44.44.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.44.44.44.2.1" style="color:#5C946E;">0.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.45.45.45.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.45.45.45.3.m1.1"><semantics id="S4.T1.45.45.45.3.m1.1a"><mo id="S4.T1.45.45.45.3.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.45.45.45.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.45.45.45.3.m1.1b"><ci id="S4.T1.45.45.45.3.m1.1.1.cmml" xref="S4.T1.45.45.45.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.45.45.45.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.45.45.45.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.45.45.45.3.1" style="color:#5C946E;">0.9</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.46.46.46.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.46.46.46.4.m1.1"><semantics id="S4.T1.46.46.46.4.m1.1a"><mo id="S4.T1.46.46.46.4.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.46.46.46.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.46.46.46.4.m1.1b"><ci id="S4.T1.46.46.46.4.m1.1.1.cmml" xref="S4.T1.46.46.46.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.46.46.46.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.46.46.46.4.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.46.46.46.4.1" style="color:#5C946E;">3.1</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.46.46.46.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.51.51.51">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.51.51.51.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.48.48.48.2" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.47.47.47.1.m1.1"><semantics id="S4.T1.47.47.47.1.m1.1a"><mo id="S4.T1.47.47.47.1.m1.1.1" xref="S4.T1.47.47.47.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.47.47.47.1.m1.1b"><times id="S4.T1.47.47.47.1.m1.1.1.cmml" xref="S4.T1.47.47.47.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.47.47.47.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.47.47.47.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.48.48.48.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.49.49.49.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.49.49.49.3.m1.1"><semantics id="S4.T1.49.49.49.3.m1.1a"><mi id="S4.T1.49.49.49.3.m1.1.1" mathvariant="normal" xref="S4.T1.49.49.49.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.49.49.49.3.m1.1b"><emptyset id="S4.T1.49.49.49.3.m1.1.1.cmml" xref="S4.T1.49.49.49.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.49.49.49.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.49.49.49.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.50.50.50.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.50.50.50.4.m1.1"><semantics id="S4.T1.50.50.50.4.m1.1a"><mi id="S4.T1.50.50.50.4.m1.1.1" mathvariant="normal" xref="S4.T1.50.50.50.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.50.50.50.4.m1.1b"><emptyset id="S4.T1.50.50.50.4.m1.1.1.cmml" xref="S4.T1.50.50.50.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.50.50.50.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.50.50.50.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.51.51.51.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.51.51.51.5.m1.1"><semantics id="S4.T1.51.51.51.5.m1.1a"><mi id="S4.T1.51.51.51.5.m1.1.1" mathvariant="normal" xref="S4.T1.51.51.51.5.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.51.51.51.5.m1.1b"><emptyset id="S4.T1.51.51.51.5.m1.1.1.cmml" xref="S4.T1.51.51.51.5.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.51.51.51.5.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.51.51.51.5.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.51.51.51.7" style="padding-left:2.0pt;padding-right:2.0pt;">69.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.51.51.51.8" style="padding-left:2.0pt;padding-right:2.0pt;">69.3</td>
</tr>
<tr class="ltx_tr" id="S4.T1.55.55.55">
<td class="ltx_td ltx_border_r" id="S4.T1.55.55.55.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.53.53.53.2" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.52.52.52.1.m1.1"><semantics id="S4.T1.52.52.52.1.m1.1a"><mo id="S4.T1.52.52.52.1.m1.1.1" xref="S4.T1.52.52.52.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.52.52.52.1.m1.1b"><times id="S4.T1.52.52.52.1.m1.1.1.cmml" xref="S4.T1.52.52.52.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.52.52.52.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.52.52.52.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.53.53.53.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.54.54.54.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.54.54.54.3.m1.1"><semantics id="S4.T1.54.54.54.3.m1.1a"><mi id="S4.T1.54.54.54.3.m1.1.1" mathvariant="normal" xref="S4.T1.54.54.54.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.54.54.54.3.m1.1b"><emptyset id="S4.T1.54.54.54.3.m1.1.1.cmml" xref="S4.T1.54.54.54.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.54.54.54.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.54.54.54.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.55.55.55.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.55.55.55.4.m1.1"><semantics id="S4.T1.55.55.55.4.m1.1a"><mi id="S4.T1.55.55.55.4.m1.1.1" mathvariant="normal" xref="S4.T1.55.55.55.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.55.55.55.4.m1.1b"><emptyset id="S4.T1.55.55.55.4.m1.1.1.cmml" xref="S4.T1.55.55.55.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.55.55.55.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.55.55.55.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.55.55.55.6" style="padding-left:2.0pt;padding-right:2.0pt;">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.55.55.55.7" style="padding-left:2.0pt;padding-right:2.0pt;">72.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.55.55.55.8" style="padding-left:2.0pt;padding-right:2.0pt;">76.7</td>
</tr>
<tr class="ltx_tr" id="S4.T1.58.58.58">
<td class="ltx_td ltx_border_r" id="S4.T1.58.58.58.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.57.57.57.2" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.56.56.56.1.m1.1"><semantics id="S4.T1.56.56.56.1.m1.1a"><mo id="S4.T1.56.56.56.1.m1.1.1" xref="S4.T1.56.56.56.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.56.56.56.1.m1.1b"><times id="S4.T1.56.56.56.1.m1.1.1.cmml" xref="S4.T1.56.56.56.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.56.56.56.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.56.56.56.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.57.57.57.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.58.58.58.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.58.58.58.3.m1.1"><semantics id="S4.T1.58.58.58.3.m1.1a"><mi id="S4.T1.58.58.58.3.m1.1.1" mathvariant="normal" xref="S4.T1.58.58.58.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.58.58.58.3.m1.1b"><emptyset id="S4.T1.58.58.58.3.m1.1.1.cmml" xref="S4.T1.58.58.58.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.58.58.58.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.58.58.58.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.58.58.58.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.58.58.58.6" style="padding-left:2.0pt;padding-right:2.0pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.58.58.58.7" style="padding-left:2.0pt;padding-right:2.0pt;">72.7</td>
<td class="ltx_td ltx_align_center" id="S4.T1.58.58.58.8" style="padding-left:2.0pt;padding-right:2.0pt;">79.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.62.62.62">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.60.60.60.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.60.60.60.2.2">12<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.59.59.59.1.1.m1.1"><semantics id="S4.T1.59.59.59.1.1.m1.1a"><mo id="S4.T1.59.59.59.1.1.m1.1.1" xref="S4.T1.59.59.59.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.59.59.59.1.1.m1.1b"><times id="S4.T1.59.59.59.1.1.m1.1.1.cmml" xref="S4.T1.59.59.59.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.59.59.59.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.59.59.59.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.60.60.60.2.2.1">2</sup></span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.62.62.62.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.62.62.62.4.2">12<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.61.61.61.3.1.m1.1"><semantics id="S4.T1.61.61.61.3.1.m1.1a"><mo id="S4.T1.61.61.61.3.1.m1.1.1" xref="S4.T1.61.61.61.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.61.61.61.3.1.m1.1b"><times id="S4.T1.61.61.61.3.1.m1.1.1.cmml" xref="S4.T1.61.61.61.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.61.61.61.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.61.61.61.3.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.62.62.62.4.2.1"><span class="ltx_text ltx_font_medium" id="S4.T1.62.62.62.4.2.1.1">2</span></sup></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.62.62.62.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.62.62.62.6" style="padding-left:2.0pt;padding-right:2.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.62.62.62.7" style="padding-left:2.0pt;padding-right:2.0pt;">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.62.62.62.8" style="padding-left:2.0pt;padding-right:2.0pt;">67.8</td>
<td class="ltx_td ltx_align_center" id="S4.T1.62.62.62.9" style="padding-left:2.0pt;padding-right:2.0pt;">79.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.64.64.64">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.64.64.64.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T1.64.64.64.3.1">Direct Tuned</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.64.64.64.2" style="padding-left:2.0pt;padding-right:2.0pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.63.63.63.1.m1.1"><semantics id="S4.T1.63.63.63.1.m1.1a"><mo id="S4.T1.63.63.63.1.m1.1.1" xref="S4.T1.63.63.63.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.63.63.63.1.m1.1b"><times id="S4.T1.63.63.63.1.m1.1.1.cmml" xref="S4.T1.63.63.63.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.63.63.63.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.63.63.63.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.64.64.64.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.64.64.64.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.64.64.64.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.64.64.64.6" style="padding-left:2.0pt;padding-right:2.0pt;">78.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.64.64.64.7" style="padding-left:2.0pt;padding-right:2.0pt;">65.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.64.64.64.8" style="padding-left:2.0pt;padding-right:2.0pt;">78.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.66.66.66">
<td class="ltx_td ltx_border_r" id="S4.T1.66.66.66.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.66.66.66.2" style="padding-left:2.0pt;padding-right:2.0pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.65.65.65.1.m1.1"><semantics id="S4.T1.65.65.65.1.m1.1a"><mo id="S4.T1.65.65.65.1.m1.1.1" xref="S4.T1.65.65.65.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.65.65.65.1.m1.1b"><times id="S4.T1.65.65.65.1.m1.1.1.cmml" xref="S4.T1.65.65.65.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.65.65.65.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.65.65.65.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.66.66.66.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.66.66.66.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.66.66.66.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.66.66.66.6" style="padding-left:2.0pt;padding-right:2.0pt;">77.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.66.66.66.7" style="padding-left:2.0pt;padding-right:2.0pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.66.66.66.8" style="padding-left:2.0pt;padding-right:2.0pt;">77.0</td>
</tr>
<tr class="ltx_tr" id="S4.T1.68.68.68">
<td class="ltx_td ltx_border_r" id="S4.T1.68.68.68.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.68.68.68.2" style="padding-left:2.0pt;padding-right:2.0pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.67.67.67.1.m1.1"><semantics id="S4.T1.67.67.67.1.m1.1a"><mo id="S4.T1.67.67.67.1.m1.1.1" xref="S4.T1.67.67.67.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.67.67.67.1.m1.1b"><times id="S4.T1.67.67.67.1.m1.1.1.cmml" xref="S4.T1.67.67.67.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.67.67.67.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.67.67.67.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.68.68.68.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.68.68.68.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.68.68.68.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.68.68.68.6" style="padding-left:2.0pt;padding-right:2.0pt;">76.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.68.68.68.7" style="padding-left:2.0pt;padding-right:2.0pt;">60.4</td>
<td class="ltx_td ltx_align_center" id="S4.T1.68.68.68.8" style="padding-left:2.0pt;padding-right:2.0pt;">75.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.99">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.99.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.92.92.99.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.99.2.1">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.99.3" style="padding-left:2.0pt;padding-right:2.0pt;">84.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.99.4" style="padding-left:2.0pt;padding-right:2.0pt;">83.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.99.5" style="padding-left:2.0pt;padding-right:2.0pt;">79.4</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.99.6" style="padding-left:2.0pt;padding-right:2.0pt;">67.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.99.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.100">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.100.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.92.92.100.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.100.2.1">Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.100.3" style="padding-left:2.0pt;padding-right:2.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.100.4" style="padding-left:2.0pt;padding-right:2.0pt;">84.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.100.5" style="padding-left:2.0pt;padding-right:2.0pt;">81.9</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.100.6" style="padding-left:2.0pt;padding-right:2.0pt;">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.100.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.73.73.73">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.73.73.73.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.70.70.70.2" style="padding-left:2.0pt;padding-right:2.0pt;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.69.69.69.1.m1.1"><semantics id="S4.T1.69.69.69.1.m1.1a"><mo id="S4.T1.69.69.69.1.m1.1.1" xref="S4.T1.69.69.69.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.69.69.69.1.m1.1b"><times id="S4.T1.69.69.69.1.m1.1.1.cmml" xref="S4.T1.69.69.69.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.69.69.69.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.69.69.69.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.70.70.70.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.71.71.71.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.71.71.71.3.m1.1"><semantics id="S4.T1.71.71.71.3.m1.1a"><mi id="S4.T1.71.71.71.3.m1.1.1" mathvariant="normal" xref="S4.T1.71.71.71.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.71.71.71.3.m1.1b"><emptyset id="S4.T1.71.71.71.3.m1.1.1.cmml" xref="S4.T1.71.71.71.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.71.71.71.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.71.71.71.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.72.72.72.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.72.72.72.4.m1.1"><semantics id="S4.T1.72.72.72.4.m1.1a"><mi id="S4.T1.72.72.72.4.m1.1.1" mathvariant="normal" xref="S4.T1.72.72.72.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.72.72.72.4.m1.1b"><emptyset id="S4.T1.72.72.72.4.m1.1.1.cmml" xref="S4.T1.72.72.72.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.72.72.72.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.72.72.72.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.73.73.73.5" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.73.73.73.5.m1.1"><semantics id="S4.T1.73.73.73.5.m1.1a"><mi id="S4.T1.73.73.73.5.m1.1.1" mathvariant="normal" xref="S4.T1.73.73.73.5.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.73.73.73.5.m1.1b"><emptyset id="S4.T1.73.73.73.5.m1.1.1.cmml" xref="S4.T1.73.73.73.5.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.73.73.73.5.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.73.73.73.5.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.73.73.73.7" style="padding-left:2.0pt;padding-right:2.0pt;">72.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.73.73.73.8" style="padding-left:2.0pt;padding-right:2.0pt;">72.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.77.77.77">
<td class="ltx_td ltx_border_r" id="S4.T1.77.77.77.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.75.75.75.2" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.74.74.74.1.m1.1"><semantics id="S4.T1.74.74.74.1.m1.1a"><mo id="S4.T1.74.74.74.1.m1.1.1" xref="S4.T1.74.74.74.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.74.74.74.1.m1.1b"><times id="S4.T1.74.74.74.1.m1.1.1.cmml" xref="S4.T1.74.74.74.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.74.74.74.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.74.74.74.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.75.75.75.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.76.76.76.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.76.76.76.3.m1.1"><semantics id="S4.T1.76.76.76.3.m1.1a"><mi id="S4.T1.76.76.76.3.m1.1.1" mathvariant="normal" xref="S4.T1.76.76.76.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.76.76.76.3.m1.1b"><emptyset id="S4.T1.76.76.76.3.m1.1.1.cmml" xref="S4.T1.76.76.76.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.76.76.76.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.76.76.76.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.77.77.77.4" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.77.77.77.4.m1.1"><semantics id="S4.T1.77.77.77.4.m1.1a"><mi id="S4.T1.77.77.77.4.m1.1.1" mathvariant="normal" xref="S4.T1.77.77.77.4.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.77.77.77.4.m1.1b"><emptyset id="S4.T1.77.77.77.4.m1.1.1.cmml" xref="S4.T1.77.77.77.4.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.77.77.77.4.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.77.77.77.4.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.77.77.77.6" style="padding-left:2.0pt;padding-right:2.0pt;">81.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.77.77.77.7" style="padding-left:2.0pt;padding-right:2.0pt;">79.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.77.77.77.8" style="padding-left:2.0pt;padding-right:2.0pt;">80.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.80.80.80">
<td class="ltx_td ltx_border_r" id="S4.T1.80.80.80.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.79.79.79.2" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.78.78.78.1.m1.1"><semantics id="S4.T1.78.78.78.1.m1.1a"><mo id="S4.T1.78.78.78.1.m1.1.1" xref="S4.T1.78.78.78.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.78.78.78.1.m1.1b"><times id="S4.T1.78.78.78.1.m1.1.1.cmml" xref="S4.T1.78.78.78.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.78.78.78.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.78.78.78.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.79.79.79.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.80.80.80.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T1.80.80.80.3.m1.1"><semantics id="S4.T1.80.80.80.3.m1.1a"><mi id="S4.T1.80.80.80.3.m1.1.1" mathvariant="normal" xref="S4.T1.80.80.80.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T1.80.80.80.3.m1.1b"><emptyset id="S4.T1.80.80.80.3.m1.1.1.cmml" xref="S4.T1.80.80.80.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.80.80.80.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T1.80.80.80.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.80.80.80.5" style="padding-left:2.0pt;padding-right:2.0pt;">84.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.80.80.80.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.8</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.80.80.80.7" style="padding-left:2.0pt;padding-right:2.0pt;">80.3</td>
<td class="ltx_td ltx_align_center" id="S4.T1.80.80.80.8" style="padding-left:2.0pt;padding-right:2.0pt;">82.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.82.82.82">
<td class="ltx_td ltx_border_r" id="S4.T1.82.82.82.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.82.82.82.2" style="padding-left:2.0pt;padding-right:2.0pt;">12<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.81.81.81.1.m1.1"><semantics id="S4.T1.81.81.81.1.m1.1a"><mo id="S4.T1.81.81.81.1.m1.1.1" xref="S4.T1.81.81.81.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.81.81.81.1.m1.1b"><times id="S4.T1.81.81.81.1.m1.1.1.cmml" xref="S4.T1.81.81.81.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.81.81.81.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.81.81.81.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.82.82.82.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.82.82.82.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.82.82.82.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.82.82.82.6" style="padding-left:2.0pt;padding-right:2.0pt;">83.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.82.82.82.7" style="padding-left:2.0pt;padding-right:2.0pt;">79.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.82.82.82.8" style="padding-left:2.0pt;padding-right:2.0pt;">83.5</td>
</tr>
<tr class="ltx_tr" id="S4.T1.84.84.84">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.84.84.84.3" style="padding-left:2.0pt;padding-right:2.0pt;">(3072, 2048, 1024)</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.84.84.84.2" style="padding-left:2.0pt;padding-right:2.0pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.83.83.83.1.m1.1"><semantics id="S4.T1.83.83.83.1.m1.1a"><mo id="S4.T1.83.83.83.1.m1.1.1" xref="S4.T1.83.83.83.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.83.83.83.1.m1.1b"><times id="S4.T1.83.83.83.1.m1.1.1.cmml" xref="S4.T1.83.83.83.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.83.83.83.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.83.83.83.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.84.84.84.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.84.84.84.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.84.84.84.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.84.84.84.6" style="padding-left:2.0pt;padding-right:2.0pt;">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.84.84.84.7" style="padding-left:2.0pt;padding-right:2.0pt;">79.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.84.84.84.8" style="padding-left:2.0pt;padding-right:2.0pt;">83.4</td>
</tr>
<tr class="ltx_tr" id="S4.T1.86.86.86">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.86.86.86.3" style="padding-left:2.0pt;padding-right:2.0pt;">Flux-Multi Tuned</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.86.86.86.2" style="padding-left:2.0pt;padding-right:2.0pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.85.85.85.1.m1.1"><semantics id="S4.T1.85.85.85.1.m1.1a"><mo id="S4.T1.85.85.85.1.m1.1.1" xref="S4.T1.85.85.85.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.85.85.85.1.m1.1b"><times id="S4.T1.85.85.85.1.m1.1.1.cmml" xref="S4.T1.85.85.85.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.85.85.85.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.85.85.85.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.86.86.86.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.86.86.86.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.86.86.86.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.86.86.86.6" style="padding-left:2.0pt;padding-right:2.0pt;">83.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.86.86.86.7" style="padding-left:2.0pt;padding-right:2.0pt;">78.9</td>
<td class="ltx_td ltx_align_center" id="S4.T1.86.86.86.8" style="padding-left:2.0pt;padding-right:2.0pt;">83.2</td>
</tr>
<tr class="ltx_tr" id="S4.T1.88.88.88">
<td class="ltx_td ltx_border_r" id="S4.T1.88.88.88.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.88.88.88.2" style="padding-left:2.0pt;padding-right:2.0pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="S4.T1.87.87.87.1.m1.1"><semantics id="S4.T1.87.87.87.1.m1.1a"><mo id="S4.T1.87.87.87.1.m1.1.1" xref="S4.T1.87.87.87.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T1.87.87.87.1.m1.1b"><times id="S4.T1.87.87.87.1.m1.1.1.cmml" xref="S4.T1.87.87.87.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.87.87.87.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T1.87.87.87.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T1.88.88.88.2.1">2</sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.88.88.88.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.88.88.88.5" style="padding-left:2.0pt;padding-right:2.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.88.88.88.6" style="padding-left:2.0pt;padding-right:2.0pt;">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.88.88.88.7" style="padding-left:2.0pt;padding-right:2.0pt;">78.2</td>
<td class="ltx_td ltx_align_center" id="S4.T1.88.88.88.8" style="padding-left:2.0pt;padding-right:2.0pt;">82.9</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.101">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.101.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r ltx_border_t" id="S4.T1.92.92.101.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.101.2.1">Avg</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.101.3" style="padding-left:2.0pt;padding-right:2.0pt;">85.6</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.101.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.101.5" style="padding-left:2.0pt;padding-right:2.0pt;">82.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.101.6" style="padding-left:2.0pt;padding-right:2.0pt;">78.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.101.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.102">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.102.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T1.92.92.102.2" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.102.2.1">Max</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.102.3" style="padding-left:2.0pt;padding-right:2.0pt;">85.7</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.102.4" style="padding-left:2.0pt;padding-right:2.0pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.102.5" style="padding-left:2.0pt;padding-right:2.0pt;">83.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.92.92.102.6" style="padding-left:2.0pt;padding-right:2.0pt;">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.92.92.102.7" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.92">
<td class="ltx_td ltx_border_r" id="S4.T1.92.92.92.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.89.89.89.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.89.89.89.1.m1.1"><semantics id="S4.T1.89.89.89.1.m1.1a"><mo id="S4.T1.89.89.89.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.89.89.89.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.89.89.89.1.m1.1b"><ci id="S4.T1.89.89.89.1.m1.1.1.cmml" xref="S4.T1.89.89.89.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.89.89.89.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.89.89.89.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.89.89.89.1.1" style="color:#5C946E;">0.7</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.90.90.90.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.90.90.90.2.m1.1"><semantics id="S4.T1.90.90.90.2.m1.1a"><mo id="S4.T1.90.90.90.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.90.90.90.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.90.90.90.2.m1.1b"><ci id="S4.T1.90.90.90.2.m1.1.1.cmml" xref="S4.T1.90.90.90.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.90.90.90.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.90.90.90.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.90.90.90.2.1" style="color:#5C946E;">1.0</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.91.91.91.3" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.91.91.91.3.m1.1"><semantics id="S4.T1.91.91.91.3.m1.1a"><mo id="S4.T1.91.91.91.3.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.91.91.91.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.91.91.91.3.m1.1b"><ci id="S4.T1.91.91.91.3.m1.1.1.cmml" xref="S4.T1.91.91.91.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.91.91.91.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.91.91.91.3.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.91.91.91.3.1" style="color:#5C946E;">1.6</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.92.92.92.4" style="padding-left:2.0pt;padding-right:2.0pt;">
<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.92.92.92.4.m1.1"><semantics id="S4.T1.92.92.92.4.m1.1a"><mo id="S4.T1.92.92.92.4.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T1.92.92.92.4.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.92.92.92.4.m1.1b"><ci id="S4.T1.92.92.92.4.m1.1.1.cmml" xref="S4.T1.92.92.92.4.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.92.92.92.4.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.92.92.92.4.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.92.92.92.4.1" style="color:#5C946E;">7.5</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.92.92.92.6" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T1.92.92.103">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T1.92.92.103.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T1.92.92.103.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T1.92.92.103.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T1.92.92.103.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T1.92.92.103.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T1.92.92.103.6" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T1.92.92.103.7" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents the results of applying Flux-Tuning, a novel video augmentation method, directly to the state-of-the-art InternVideo2-S model on the K400 dataset.  The experiment evaluates the model's performance on the K400 dataset using different input sizes (e.g., 2x224², 4x224², etc.) with a fixed token count and compares it to the performance of a directly tuned InternVideo2-S model. The results demonstrate that Flux acts as an advanced augmentation technique, enhancing the performance of the pre-trained model through flexible sampling and token selection, and further improving results through the optimization of the test-time token selection process. Results are reported using a 1clip x 1crop evaluation setting, which shows consistent improvements across input settings.
> <details>
> <summary>read the caption</summary>
> Table 1: Directly use Flux-Tuning with the previsou SOTA InternVideo2-S on K400. Results are reported on K400 using 1clip×\times×1crop. It shows that Flux can be used as an advanced augmentation tool directly in supervised tuning scenario.
> </details>





### In-depth insights


#### Flexible Token
The concept of a "Flexible Token" represents a pivotal shift in how video models are trained and deployed. **Traditional methods rely on a fixed number of tokens**, sampled from a predetermined grid, which often leads to suboptimal accuracy-computation trade-offs. Flexible tokens aim to address this by **allowing the model to adapt to varying computational budgets** and downstream task requirements. This adaptability is achieved through techniques such as token selection, where the most informative tokens are prioritized, and flexible sampling, where the sampling grid is adjusted based on the available resources. By embracing flexibility, models can achieve **better performance with fewer tokens**, leading to deployment-efficient solutions that are suitable for real-world applications with limited computational resources and diverse operational constraints. This represents a move towards more robust and adaptable video understanding systems.

#### Flux: Key Augment
**Flux fundamentally alters video model training.** By introducing flexible sampling and token selection, it allows models to adapt to varying computational budgets, addressing a critical limitation of fixed-grid approaches. This flexibility enhances robustness and efficiency, enabling models to capture more relevant information with fewer tokens. **The key insight is that not all tokens are equally important**, and a smart selection process can significantly improve performance while reducing computational costs. This augmentation strategy can be integrated into existing frameworks, improving training efficiency and deployment adaptability in real-world applications.

#### Token Optimize
Token Optimization, as presented, is a novel perspective focusing on maximizing information gleaned from input tokens given computational constraints. It advocates for intelligently selecting a subset of tokens from videos, rather than relying on a fixed, predefined sampling grid. This approach seeks to address the inherent redundancy in video data and enhance adaptability to varying computational budgets. The core idea revolves around optimizing the choice of input tokens to achieve the best trade-off between computational cost and accuracy. **Flexible sampling** is promoted, using denser sampling for higher computation and sparser sampling for lower budgets, further enabling spatial and temporal trade-offs. This dynamic adjustment of token selection offers a pathway to more efficient and robust video processing, particularly in resource-constrained deployment scenarios. **The approach differs from existing methods**, which often apply token reduction techniques after dense sampling. It enhances model generalization by exposing it to a wider range of sparse, masked tokens, improving performance and robustness across diverse settings.

#### FluxViT: SOTA
While the paper doesn't explicitly have a section titled 'FluxViT: SOTA', the results presented showcase FluxViT's **state-of-the-art performance** across various video understanding tasks. The model achieves **competitive accuracy** on Kinetics-400, SSv2, and COIN datasets, often surpassing existing methods with significantly **reduced computational cost**, demonstrating efficient token utilization. Ablation studies validate the effectiveness of Flux's core components like **flexible sampling** and the **group-dynamic token selector**, establishing FluxViT as a highly competitive approach for deployment-efficient video models.

#### Chat-Centric ViT
While "Chat-Centric ViT" isn't a direct heading, we can infer its purpose from the broader context of deployment-efficient video models. It likely refers to adapting Vision Transformers (ViTs) specifically for video understanding within a conversational AI framework. This involves optimizing ViTs for tasks like **video captioning**, **question answering about video content**, or enabling a chat assistant to **reason about video scenes**. Key optimizations might focus on **reducing computational cost** to enable real-time interaction, such as through **token selection** strategies as discussed elsewhere in the paper. Furthermore, adapting ViTs for this setting may also require incorporating **cross-modal learning** approaches to align video features with language embeddings to enable effective interactions. Performance on metrics like MVbench and Dream1k should improve. Finally, it necessitates training strategies emphasizing the **relevance and coherence** of video-related textual responses to ensure a natural and informative conversational experience.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14237/x2.png)

> 🔼 Figure 2 presents a comparison of the performance between FluxViT and InternVideo2 models. Both models were pre-trained using the same InternVideo2-1b model as a teacher and the same dataset.  The key difference is that FluxViT incorporates the proposed Flux method, which enables flexible sampling and token selection. The chart showcases the performance of both models at different computational budgets (GFLOPs).  The 'FluxViT+' line represents the results when using Token Optimization during the testing phase to optimize the selected input tokens within the same GFLOPs constraint, highlighting the effectiveness of Flux in optimizing video models for resource-constrained settings.
> <details>
> <summary>read the caption</summary>
> Figure 2:  Overview of our Flux method. The same-scaled FluxViT and InternVideo2 [87] series models are both pre-trained with the InternVideo2-1b model as the teacher using the same dataset. The “FluxViT+” refers to the results using Token Optimization at test time with the same GFLOPS.
> </details>



![](https://arxiv.org/html/2503.14237/x3.png)

> 🔼 This figure illustrates how the proposed Flux method integrates with the Unmasked Teacher (UMT) framework for video training.  Flux introduces flexible sampling and token selection to address the computational redundancy in standard video models.  The diagram shows how a raw video is processed through flexible sampling with varying frame counts and resolutions, followed by token selection to produce a reduced set of tokens. These tokens are then fed into the UMT framework, enabling training of more efficient video models.  The figure highlights the ease of integrating Flux into existing video training pipelines.
> <details>
> <summary>read the caption</summary>
> Figure 3:  Our proposed Flux method with UMT framework. We show that our proposed Flux training is easy to integrate with mainstream video training frameworks.
> </details>



![](https://arxiv.org/html/2503.14237/x4.png)

> 🔼 Figure 4 illustrates the core components of the Flux module, a novel data augmentation technique designed to enhance the flexibility of video models during training.  The Flux module consists of three key components: a Group-dynamic token selector which intelligently selects a subset of the most informative tokens from the input video; dual patch normalization which enhances the robustness of the patch embedding process across varying resolutions; and a Global-Local positional embedding method that incorporates both global and fine-grained positional information to handle the variable token lengths and resolutions inherent in the flexible sampling process.
> <details>
> <summary>read the caption</summary>
> Figure 4:  Our proposed essential modules for Flux. From the model side, Flux modules include Group-dynamic token selector, dual patch norm, and Global-Local positional embedding.
> </details>



![](https://arxiv.org/html/2503.14237/x5.png)

> 🔼 This figure compares the performance of three different video model training methods on the Kinetics-400 dataset. All methods use a fixed number of 2048 tokens. The x-axis represents the number of frames, and the y-axis represents the top-1 accuracy.  The three methods are: 1) FixRes Distilled FixRes Tuned (trained and tested at a fixed spatial resolution of 224); 2) AnyRes Distilled FixRes Tuned (trained at a fixed spatial resolution of 224, but tested at resolutions between 196 and 252); and 3) AnyRes Distilled AnyRes Tuned (trained and tested with spatial resolutions between 196 and 252). The shaded region highlights the performance of the AnyRes Distilled AnyRes Tuned model, demonstrating its superior performance across different frame counts. Notably, all three methods share similar training and inference costs, making this a fair comparison of model training approaches.
> <details>
> <summary>read the caption</summary>
> Figure 5:  Comparison between different training methods on K400 using a fixed number of 2048 tokens. Note the three lines and all the points share similar training and inference costs. The shaded part shows results for the AnyRes Distilled AnyRes Tuned model with spatial resolution in range (196, 252), while others use a fixed spatial resolution at 224.
> </details>



![](https://arxiv.org/html/2503.14237/x6.png)

> 🔼 This figure illustrates the process of Flux-Multi Tuning, a method used to enhance the flexibility and robustness of video models.  It shows how multiple token counts are processed concurrently (e.g., 3072, 2048, 1024) within the same training batch.  Each token count is processed through the model, and the resulting representations are compared to representations generated from the teacher model using knowledge distillation. This process allows the model to adapt to a wider range of input sizes and computational constraints.
> <details>
> <summary>read the caption</summary>
> Figure 6:  Overview of Flux-Multi Tuning.
> </details>



![](https://arxiv.org/html/2503.14237/x7.png)

> 🔼 This figure visualizes the L2 gradient norms for the main projector modules in the Flux-Multi trained InternVideo2 model, evaluated on the K400 dataset.  The batch size (bs) used for the calculation was 32.  The plot likely shows the gradient norm across various layers of the network (e.g., different ViT blocks), providing insights into training stability and potential issues like exploding or vanishing gradients.  Analyzing gradient norms helps in debugging training processes, assessing the effectiveness of regularization techniques, and understanding the impact of changes in the model architecture, such as those introduced by Flux.
> <details>
> <summary>read the caption</summary>
> Figure 7:  Gradient norms of main projector modules of Flux-Multi trained InternVideo2 on K400. We report the L2 gradient norm using bs=32.
> </details>



![](https://arxiv.org/html/2503.14237/x8.png)

> 🔼 This figure shows the convergence curves during the fine-tuning stage of the Flux-Single method. The experiment uses a fixed number of 3072 tokens as input for all training runs. However, it varies the number of frames used to generate those tokens, ranging from 10 to 24. The y-axis represents the top-1 accuracy on the K400 dataset, while the x-axis shows the training epoch. The plot visually demonstrates how the model's performance changes based on different frame counts during training.  This helps to analyze the impact of varying the input data's temporal resolution on the final model accuracy. Different curves represent different number of frames.
> <details>
> <summary>read the caption</summary>
> Figure 8:  Convergence analysis of Flux-Single tuning using 3072 tokens but different frame counts directly on K400.
> </details>



![](https://arxiv.org/html/2503.14237/x9.png)

> 🔼 Figure 9 illustrates the overall gradient norm during the pre-training phase of the Flux-UMT model.  The graph plots the gradient norm over training epochs, comparing a standard UMT model to one augmented with the FluxViT modules (Global-Local Positional Embedding and Dual Patch Normalization). The results show that the FluxViT modules contribute to a lower overall gradient norm, indicating improved training stability and potentially better generalization.
> <details>
> <summary>read the caption</summary>
> Figure 9:  Overall gradient norm trend during Flux-UMT per-training. We report the overall training dynamics with our ablation setting. The FluxViT modules can lower the overall norm.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.13.13">
<tr class="ltx_tr" id="S4.T2.13.13.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.14.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="S4.T2.13.13.14.1.1">Mask Type</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.14.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.14.2.1">K400</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.14.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.13.13.14.3.1">w/<span class="ltx_text ltx_font_upright" id="S4.T2.13.13.14.3.1.1"> TO</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.14.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.14.4.1">SSv2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.14.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T2.13.13.14.5.1">w/<span class="ltx_text ltx_font_upright" id="S4.T2.13.13.14.5.1.1"> TO</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mi id="S4.T2.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T2.1.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><emptyset id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">∅</annotation></semantics></math> (single res)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.1.2" style="padding-left:3.0pt;padding-right:3.0pt;">78.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.1.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.1.1.1.4" style="padding-left:3.0pt;padding-right:3.0pt;">65.4</td>
<td class="ltx_td ltx_align_left" id="S4.T2.1.1.1.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.4</td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.3.3" style="padding-left:3.0pt;padding-right:3.0pt;">Random</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.3.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.6</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.2.2.2.1" style="padding-left:3.0pt;padding-right:3.0pt;">79.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1.1" style="font-size:80%;color:#5C946E;">0.6</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.3.3.3.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.3</td>
<td class="ltx_td ltx_align_left" id="S4.T2.3.3.3.2" style="padding-left:3.0pt;padding-right:3.0pt;">65.9
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.2.m1.1"><semantics id="S4.T2.3.3.3.2.m1.1a"><mo id="S4.T2.3.3.3.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.3.3.3.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.2.m1.1b"><ci id="S4.T2.3.3.3.2.m1.1.1.cmml" xref="S4.T2.3.3.3.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.2.1" style="font-size:80%;color:#5C946E;">0.5</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.5.5.3" style="padding-left:3.0pt;padding-right:3.0pt;">Tube</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.5.5.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.8</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.4.4.4.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.4.4.4.1.m1.1"><semantics id="S4.T2.4.4.4.1.m1.1a"><mo id="S4.T2.4.4.4.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.4.4.4.1.m1.1b"><ci id="S4.T2.4.4.4.1.m1.1.1.cmml" xref="S4.T2.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.4.4.4.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.4.4.4.1.1" style="font-size:80%;color:#5C946E;">1.6</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.5.5.5.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.7</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.5.5.5.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.7
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.5.5.5.2.m1.1"><semantics id="S4.T2.5.5.5.2.m1.1a"><mo id="S4.T2.5.5.5.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.5.5.5.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.5.5.5.2.m1.1b"><ci id="S4.T2.5.5.5.2.m1.1.1.cmml" xref="S4.T2.5.5.5.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.5.5.5.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.5.5.5.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.5.5.5.2.1" style="font-size:80%;color:#5C946E;">1.3</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.7.7.7.3" style="padding-left:3.0pt;padding-right:3.0pt;">Dynamic(L1)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.7.7.7.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.7</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.6.6.6.1" style="padding-left:3.0pt;padding-right:3.0pt;">79.8
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.6.6.6.1.m1.1"><semantics id="S4.T2.6.6.6.1.m1.1a"><mo id="S4.T2.6.6.6.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.6.6.6.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.6.6.6.1.m1.1b"><ci id="S4.T2.6.6.6.1.m1.1.1.cmml" xref="S4.T2.6.6.6.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.6.6.6.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.6.6.6.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.6.6.6.1.1" style="font-size:80%;color:#5C946E;">1.4</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.7.7.7.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.7</td>
<td class="ltx_td ltx_align_left" id="S4.T2.7.7.7.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.6
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.7.7.7.2.m1.1"><semantics id="S4.T2.7.7.7.2.m1.1a"><mo id="S4.T2.7.7.7.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.7.7.7.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.7.7.7.2.m1.1b"><ci id="S4.T2.7.7.7.2.m1.1.1.cmml" xref="S4.T2.7.7.7.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.7.7.7.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.7.7.7.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.7.7.7.2.1" style="font-size:80%;color:#5C946E;">1.2</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.9.9.9.3" style="padding-left:3.0pt;padding-right:3.0pt;">Dynamic(L2)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.9.9.9.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.8.8.8.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.8.8.8.1.m1.1"><semantics id="S4.T2.8.8.8.1.m1.1a"><mo id="S4.T2.8.8.8.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.8.8.8.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.8.8.8.1.m1.1b"><ci id="S4.T2.8.8.8.1.m1.1.1.cmml" xref="S4.T2.8.8.8.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.8.8.8.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.8.8.8.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.8.8.8.1.1" style="font-size:80%;color:#5C946E;">1.6</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.9.9.9.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.8</td>
<td class="ltx_td ltx_align_left" id="S4.T2.9.9.9.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.7
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.9.9.9.2.m1.1"><semantics id="S4.T2.9.9.9.2.m1.1a"><mo id="S4.T2.9.9.9.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.9.9.9.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.9.9.9.2.m1.1b"><ci id="S4.T2.9.9.9.2.m1.1.1.cmml" xref="S4.T2.9.9.9.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.9.9.9.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.9.9.9.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.9.9.9.2.1" style="font-size:80%;color:#5C946E;">1.3</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.11.11.11">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.11.11.11.3" style="padding-left:3.0pt;padding-right:3.0pt;">Group-Dynamic(L2)-2</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.11.11.11.4" style="padding-left:3.0pt;padding-right:3.0pt;">78.8</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.10.10.10.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.2
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.10.10.10.1.m1.1"><semantics id="S4.T2.10.10.10.1.m1.1a"><mo id="S4.T2.10.10.10.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.10.10.10.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.10.10.10.1.m1.1b"><ci id="S4.T2.10.10.10.1.m1.1.1.cmml" xref="S4.T2.10.10.10.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.10.10.10.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.10.10.10.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.10.10.10.1.1" style="font-size:80%;color:#5C946E;">1.8</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T2.11.11.11.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.0</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.11.11.11.2" style="padding-left:3.0pt;padding-right:3.0pt;">67.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.11.11.11.2.m1.1"><semantics id="S4.T2.11.11.11.2.m1.1a"><mo id="S4.T2.11.11.11.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T2.11.11.11.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.11.11.11.2.m1.1b"><ci id="S4.T2.11.11.11.2.m1.1.1.cmml" xref="S4.T2.11.11.11.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.11.11.11.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.11.11.11.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.11.11.11.2.1" style="font-size:80%;color:#5C946E;">1.6</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.13" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.13.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.13.13.13.3.1" style="background-color:#E6E6FF;">Group-Dynamic(L2)-4</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.13.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.13.13.13.4.1" style="background-color:#E6E6FF;">79.2</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.12.12.12.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.12.12.12.1.1" style="background-color:#E6E6FF;">80.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.12.12.12.1.1.m1.1"><semantics id="S4.T2.12.12.12.1.1.m1.1a"><mo id="S4.T2.12.12.12.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T2.12.12.12.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.12.12.12.1.1.m1.1b"><ci id="S4.T2.12.12.12.1.1.m1.1.1.cmml" xref="S4.T2.12.12.12.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.12.12.12.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.12.12.12.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.12.12.12.1.1.1" style="font-size:80%;color:#5C946E;">1.9</span>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.13.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.13.13.13.5.1" style="background-color:#E6E6FF;">66.3</span></td>
<td class="ltx_td ltx_align_left" id="S4.T2.13.13.13.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T2.13.13.13.2.1" style="background-color:#E6E6FF;">67.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.13.13.13.2.1.m1.1"><semantics id="S4.T2.13.13.13.2.1.m1.1a"><mo id="S4.T2.13.13.13.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T2.13.13.13.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.13.13.13.2.1.m1.1b"><ci id="S4.T2.13.13.13.2.1.m1.1.1.cmml" xref="S4.T2.13.13.13.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.13.13.13.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.13.13.13.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T2.13.13.13.2.1.1" style="font-size:80%;color:#5C946E;">1.9</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.13.13.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T2.13.13.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T2.13.13.15.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T2.13.13.15.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T2.13.13.15.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T2.13.13.15.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating different token selection strategies within the Flux-Single pre-training and tuning method for Vision Transformers (ViTs).  The study assesses the impact of various strategies on model performance, comparing random token selection, a tube-based method, and dynamic selection methods using different L1 and L2 norms.  The results demonstrate the effectiveness of a group-dynamic selection strategy, specifically with a group size of 4, showing improvements in performance metrics.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation on using token selection strategies We validate the effect of different token selection methods on Flux-Single-Pre-training and Tuning on ViT. A group size of 4 works well.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.18.18">
<tr class="ltx_tr" id="S4.T3.18.18.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.19.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="S4.T3.18.18.19.1.1">Method &amp; Arch</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.19.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.19.2.1">K400</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.19.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.19.3.1">w/<span class="ltx_text ltx_font_upright" id="S4.T3.18.18.19.3.1.1"> TO</span></span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.19.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.19.4.1">SSv2</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.18.18.19.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T3.18.18.19.5.1">w/<span class="ltx_text ltx_font_upright" id="S4.T3.18.18.19.5.1.1"> TO</span></span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.20.1" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> Vanilla + ViT</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.20.2" style="padding-left:3.0pt;padding-right:3.0pt;">78.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.20.3" style="padding-left:3.0pt;padding-right:3.0pt;">78.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.20.4" style="padding-left:3.0pt;padding-right:3.0pt;">65.4</td>
<td class="ltx_td ltx_align_left" id="S4.T3.18.18.20.5" style="padding-left:3.0pt;padding-right:3.0pt;">65.4</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.2.2.3" style="padding-left:3.0pt;padding-right:3.0pt;">Vanilla + FluxViT</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.2.2.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.3</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.1.1.1.1" style="padding-left:3.0pt;padding-right:3.0pt;">79.6
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T3.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1.1" style="font-size:80%;color:#5C946E;">1.2</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.2.2.2.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.0</td>
<td class="ltx_td ltx_align_left" id="S4.T3.2.2.2.2" style="padding-left:3.0pt;padding-right:3.0pt;">66.4
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T3.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.2.1" style="font-size:80%;color:#5C946E;">1.0</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.4.4.4.3" style="padding-left:3.0pt;padding-right:3.0pt;">Flux-Single + ViT</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.4.4.4.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.2</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.3.3.3.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.1.m1.1"><semantics id="S4.T3.3.3.3.1.m1.1a"><mo id="S4.T3.3.3.3.1.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T3.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.1.m1.1b"><ci id="S4.T3.3.3.3.1.m1.1.1.cmml" xref="S4.T3.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1.1" style="font-size:80%;color:#5C946E;">1.9</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.4.4.4.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.3</td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.4.4.4.2" style="padding-left:3.0pt;padding-right:3.0pt;">67.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.4.4.4.2.m1.1"><semantics id="S4.T3.4.4.4.2.m1.1a"><mo id="S4.T3.4.4.4.2.m1.1.1" mathcolor="#5C946E" stretchy="false" xref="S4.T3.4.4.4.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.4.2.m1.1b"><ci id="S4.T3.4.4.4.2.m1.1.1.cmml" xref="S4.T3.4.4.4.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.4.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.4.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.4.4.4.2.1" style="font-size:80%;color:#5C946E;">1.9</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.21">
<td class="ltx_td ltx_align_left" colspan="5" id="S4.T3.18.18.21.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.18.18.21.1.1" style="color:#5C946E;">With new positional embeddings</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.6.6.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T3.6.6.6.3.1">w/</span> RoPE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.6.6.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.5</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.5.5.5.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.7
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.5.5.5.1.m1.1"><semantics id="S4.T3.5.5.5.1.m1.1a"><mo id="S4.T3.5.5.5.1.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.5.5.5.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.5.1.m1.1b"><ci id="S4.T3.5.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.5.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.5.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.5.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.5.5.5.1.1" style="font-size:80%;color:#5E6EBA;">0.4</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.6.6.6.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.5</td>
<td class="ltx_td ltx_align_left" id="S4.T3.6.6.6.2" style="padding-left:3.0pt;padding-right:3.0pt;">67.5
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.6.6.6.2.m1.1"><semantics id="S4.T3.6.6.6.2.m1.1a"><mo id="S4.T3.6.6.6.2.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.6.6.6.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.6.2.m1.1b"><ci id="S4.T3.6.6.6.2.m1.1.1.cmml" xref="S4.T3.6.6.6.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.6.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.6.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.6.6.6.2.1" style="font-size:80%;color:#5E6EBA;">0.2</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.8.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T3.8.8.8.3.1">w/</span> GPE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.8.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.4</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.7.7.7.1" style="padding-left:3.0pt;padding-right:3.0pt;">80.5
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.7.7.7.1.m1.1"><semantics id="S4.T3.7.7.7.1.m1.1a"><mo id="S4.T3.7.7.7.1.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.7.7.7.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.7.1.m1.1b"><ci id="S4.T3.7.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.7.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.7.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.7.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.7.1.1" style="font-size:80%;color:#5E6EBA;">0.2</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.8.8.8.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.4</td>
<td class="ltx_td ltx_align_left" id="S4.T3.8.8.8.2" style="padding-left:3.0pt;padding-right:3.0pt;">67.4
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.8.8.8.2.m1.1"><semantics id="S4.T3.8.8.8.2.m1.1a"><mo id="S4.T3.8.8.8.2.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.8.8.8.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.8.8.8.2.m1.1b"><ci id="S4.T3.8.8.8.2.m1.1.1.cmml" xref="S4.T3.8.8.8.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.8.8.8.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.8.8.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.8.8.8.2.1" style="font-size:80%;color:#5E6EBA;">0.1</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.10.10.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.10.10.10.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T3.10.10.10.3.1">w/</span> LPE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.10.10.10.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.7</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.9.9.9.1" style="padding-left:3.0pt;padding-right:3.0pt;">81.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.9.9.9.1.m1.1"><semantics id="S4.T3.9.9.9.1.m1.1a"><mo id="S4.T3.9.9.9.1.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.9.9.9.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.9.9.9.1.m1.1b"><ci id="S4.T3.9.9.9.1.m1.1.1.cmml" xref="S4.T3.9.9.9.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.9.9.9.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.9.9.9.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.9.9.9.1.1" style="font-size:80%;color:#5E6EBA;">0.7</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.10.10.10.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.8</td>
<td class="ltx_td ltx_align_left" id="S4.T3.10.10.10.2" style="padding-left:3.0pt;padding-right:3.0pt;">68.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.10.10.10.2.m1.1"><semantics id="S4.T3.10.10.10.2.m1.1a"><mo id="S4.T3.10.10.10.2.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.10.10.10.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.10.10.10.2.m1.1b"><ci id="S4.T3.10.10.10.2.m1.1.1.cmml" xref="S4.T3.10.10.10.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.10.10.10.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.10.10.10.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.10.10.10.2.1" style="font-size:80%;color:#5E6EBA;">1.0</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.12.12.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.12.12.12.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T3.12.12.12.3.1">w/</span> GLPE</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.12.12.12.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.9</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.11.11.11.1" style="padding-left:3.0pt;padding-right:3.0pt;">81.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.11.11.11.1.m1.1"><semantics id="S4.T3.11.11.11.1.m1.1a"><mo id="S4.T3.11.11.11.1.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.11.11.11.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.11.11.11.1.m1.1b"><ci id="S4.T3.11.11.11.1.m1.1.1.cmml" xref="S4.T3.11.11.11.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.11.11.11.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.11.11.11.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.11.11.11.1.1" style="font-size:80%;color:#5E6EBA;">1.0</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.12.12.12.5" style="padding-left:3.0pt;padding-right:3.0pt;">67.0</td>
<td class="ltx_td ltx_align_left" id="S4.T3.12.12.12.2" style="padding-left:3.0pt;padding-right:3.0pt;">68.6
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.12.12.12.2.m1.1"><semantics id="S4.T3.12.12.12.2.m1.1a"><mo id="S4.T3.12.12.12.2.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.12.12.12.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.12.12.12.2.m1.1b"><ci id="S4.T3.12.12.12.2.m1.1.1.cmml" xref="S4.T3.12.12.12.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.12.12.12.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.12.12.12.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.12.12.12.2.1" style="font-size:80%;color:#5E6EBA;">1.3</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.22">
<td class="ltx_td ltx_align_left" colspan="5" id="S4.T3.18.18.22.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.18.18.22.1.1" style="color:#5C946E;">With DPN</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.14.14.14.3" style="padding-left:3.0pt;padding-right:3.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T3.14.14.14.3.1">w/</span> DPN</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.14.14.14.4" style="padding-left:3.0pt;padding-right:3.0pt;">79.8</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.13.13.13.1" style="padding-left:3.0pt;padding-right:3.0pt;">81.2
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.13.13.13.1.m1.1"><semantics id="S4.T3.13.13.13.1.m1.1a"><mo id="S4.T3.13.13.13.1.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.13.13.13.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.13.13.13.1.m1.1b"><ci id="S4.T3.13.13.13.1.m1.1.1.cmml" xref="S4.T3.13.13.13.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.13.13.13.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.13.13.13.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.13.13.13.1.1" style="font-size:80%;color:#5E6EBA;">0.9</span>)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.14.14.14.5" style="padding-left:3.0pt;padding-right:3.0pt;">66.9</td>
<td class="ltx_td ltx_align_left" id="S4.T3.14.14.14.2" style="padding-left:3.0pt;padding-right:3.0pt;">68.4
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.14.14.14.2.m1.1"><semantics id="S4.T3.14.14.14.2.m1.1a"><mo id="S4.T3.14.14.14.2.m1.1.1" mathcolor="#5E6EBA" stretchy="false" xref="S4.T3.14.14.14.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.14.14.14.2.m1.1b"><ci id="S4.T3.14.14.14.2.m1.1.1.cmml" xref="S4.T3.14.14.14.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.14.14.14.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.14.14.14.2.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.14.14.14.2.1" style="font-size:80%;color:#5E6EBA;">1.1</span>)</td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.23">
<td class="ltx_td ltx_align_left" colspan="5" id="S4.T3.18.18.23.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T3.18.18.23.1.1" style="color:#5C946E;">Combining the two modules</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.16.16.16" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.16.16.16.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.16.16.16.3.1" style="background-color:#E6E6FF;">Flux-Single + FluxViT</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.16.16.16.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.16.16.16.4.1" style="background-color:#E6E6FF;">80.5</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.15.15.15.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.15.15.15.1.1" style="background-color:#E6E6FF;">81.7
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.15.15.15.1.1.m1.1"><semantics id="S4.T3.15.15.15.1.1.m1.1a"><mo id="S4.T3.15.15.15.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T3.15.15.15.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.15.15.15.1.1.m1.1b"><ci id="S4.T3.15.15.15.1.1.m1.1.1.cmml" xref="S4.T3.15.15.15.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.15.15.15.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.15.15.15.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.15.15.15.1.1.1" style="font-size:80%;color:#5C946E;">3.3</span>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.16.16.16.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.16.16.16.5.1" style="background-color:#E6E6FF;">67.6</span></td>
<td class="ltx_td ltx_align_left" id="S4.T3.16.16.16.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.16.16.16.2.1" style="background-color:#E6E6FF;">69.3
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.16.16.16.2.1.m1.1"><semantics id="S4.T3.16.16.16.2.1.m1.1a"><mo id="S4.T3.16.16.16.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T3.16.16.16.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.16.16.16.2.1.m1.1b"><ci id="S4.T3.16.16.16.2.1.m1.1.1.cmml" xref="S4.T3.16.16.16.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.16.16.16.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.16.16.16.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.16.16.16.2.1.1" style="font-size:80%;color:#5C946E;">3.9</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.18" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.18.18.18.3" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.18.18.18.3.1" style="background-color:#E6E6FF;">Flux-Multi + FluxViT</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.18.18.18.4" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.18.18.18.4.1" style="background-color:#E6E6FF;">81.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.17.17.17.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.17.17.17.1.1" style="background-color:#E6E6FF;">82.4
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.17.17.17.1.1.m1.1"><semantics id="S4.T3.17.17.17.1.1.m1.1a"><mo id="S4.T3.17.17.17.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T3.17.17.17.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.17.17.17.1.1.m1.1b"><ci id="S4.T3.17.17.17.1.1.m1.1.1.cmml" xref="S4.T3.17.17.17.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.17.17.17.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.17.17.17.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.17.17.17.1.1.1" style="font-size:80%;color:#5C946E;">4.0</span>)</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T3.18.18.18.5" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.18.18.18.5.1" style="background-color:#E6E6FF;">68.4</span></td>
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.18.18.18.2" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_text" id="S4.T3.18.18.18.2.1" style="background-color:#E6E6FF;">70.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.18.18.18.2.1.m1.1"><semantics id="S4.T3.18.18.18.2.1.m1.1a"><mo id="S4.T3.18.18.18.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T3.18.18.18.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.18.18.18.2.1.m1.1b"><ci id="S4.T3.18.18.18.2.1.m1.1.1.cmml" xref="S4.T3.18.18.18.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.18.18.18.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.18.18.18.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T3.18.18.18.2.1.1" style="font-size:80%;color:#5C946E;">4.6</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.18.18.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T3.18.18.24.1" style="padding-left:3.0pt;padding-right:3.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T3.18.18.24.2" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T3.18.18.24.3" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T3.18.18.24.4" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
<td class="ltx_td" id="S4.T3.18.18.24.5" style="padding-left:3.0pt;padding-right:3.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various models on the K400 and SSV2 datasets.  The models are trained using different methods, including standard training (Vanilla) and training with the proposed Flux method.  The table shows the top-1 accuracy for each model, and the absolute and relative improvements achieved by using Flux. The results are presented for models trained with a fixed number of input tokens (2048), equivalent to that produced by a fixed 8x224x224 spatiotemporal grid, for consistent comparison.
> <details>
> <summary>read the caption</summary>
> Table 3: Results with 8×2242absentsuperscript2242\times 224^{2}× 224 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT(and TO w/ 2048 tokens, which is the same token count as in 8×2242absentsuperscript2242\times 224^{2}× 224 start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT) on K400 and SSv2.  (↑↑\uparrow↑)  for absolute improvement and  (↑↑\uparrow↑)  for relative gain. Vanilla means PT and FT without Flux augmentation.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T4.5.5">
<tr class="ltx_tr" id="S4.T4.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.2.2.2.3" rowspan="2" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.3.1">Settings</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T4.2.2.2.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.2.2">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.m1.1.1" xref="S4.T4.1.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.m1.1b"><times id="S4.T4.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="S4.T4.2.2.2.2.2.1"><span class="ltx_text ltx_font_medium" id="S4.T4.2.2.2.2.2.1.1">2</span></sup></span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T4.2.2.2.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.4.1">2048 + TO</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.6">
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.6.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.1.1">K400</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.6.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.2.1">SSv2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.6.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.3.1">K400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.6.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.6.4.1">SSv2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.7" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.7.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text" id="S4.T4.5.5.7.1.1" style="background-color:#E6E6FF;">
Baseline</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.7.2.1" style="background-color:#E6E6FF;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.7.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text" id="S4.T4.5.5.7.3.1" style="background-color:#E6E6FF;">67.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.4" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.7.4.1" style="background-color:#E6E6FF;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.7.5" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.7.5.1" style="background-color:#E6E6FF;">69.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.3.3.3.1" style="padding-left:4.0pt;padding-right:4.0pt;">Change <math alttext="T_{thres}" class="ltx_Math" display="inline" id="S4.T4.3.3.3.1.m1.1"><semantics id="S4.T4.3.3.3.1.m1.1a"><msub id="S4.T4.3.3.3.1.m1.1.1" xref="S4.T4.3.3.3.1.m1.1.1.cmml"><mi id="S4.T4.3.3.3.1.m1.1.1.2" xref="S4.T4.3.3.3.1.m1.1.1.2.cmml">T</mi><mrow id="S4.T4.3.3.3.1.m1.1.1.3" xref="S4.T4.3.3.3.1.m1.1.1.3.cmml"><mi id="S4.T4.3.3.3.1.m1.1.1.3.2" xref="S4.T4.3.3.3.1.m1.1.1.3.2.cmml">t</mi><mo id="S4.T4.3.3.3.1.m1.1.1.3.1" xref="S4.T4.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.1.m1.1.1.3.3" xref="S4.T4.3.3.3.1.m1.1.1.3.3.cmml">h</mi><mo id="S4.T4.3.3.3.1.m1.1.1.3.1a" xref="S4.T4.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.1.m1.1.1.3.4" xref="S4.T4.3.3.3.1.m1.1.1.3.4.cmml">r</mi><mo id="S4.T4.3.3.3.1.m1.1.1.3.1b" xref="S4.T4.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.1.m1.1.1.3.5" xref="S4.T4.3.3.3.1.m1.1.1.3.5.cmml">e</mi><mo id="S4.T4.3.3.3.1.m1.1.1.3.1c" xref="S4.T4.3.3.3.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.3.3.3.1.m1.1.1.3.6" xref="S4.T4.3.3.3.1.m1.1.1.3.6.cmml">s</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.1.m1.1b"><apply id="S4.T4.3.3.3.1.m1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.3.3.3.1.m1.1.1.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1">subscript</csymbol><ci id="S4.T4.3.3.3.1.m1.1.1.2.cmml" xref="S4.T4.3.3.3.1.m1.1.1.2">𝑇</ci><apply id="S4.T4.3.3.3.1.m1.1.1.3.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3"><times id="S4.T4.3.3.3.1.m1.1.1.3.1.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.1"></times><ci id="S4.T4.3.3.3.1.m1.1.1.3.2.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.2">𝑡</ci><ci id="S4.T4.3.3.3.1.m1.1.1.3.3.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.3">ℎ</ci><ci id="S4.T4.3.3.3.1.m1.1.1.3.4.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.4">𝑟</ci><ci id="S4.T4.3.3.3.1.m1.1.1.3.5.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.5">𝑒</ci><ci id="S4.T4.3.3.3.1.m1.1.1.3.6.cmml" xref="S4.T4.3.3.3.1.m1.1.1.3.6">𝑠</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.1.m1.1c">T_{thres}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.1.m1.1d">italic_T start_POSTSUBSCRIPT italic_t italic_h italic_r italic_e italic_s end_POSTSUBSCRIPT</annotation></semantics></math> to (2048, 6144)</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.2" style="padding-left:4.0pt;padding-right:4.0pt;">80.1</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.3.3.3.3" style="padding-left:4.0pt;padding-right:4.0pt;">67.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.2</td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.3.3.5" style="padding-left:4.0pt;padding-right:4.0pt;">68.7</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.8.1" style="padding-left:4.0pt;padding-right:4.0pt;">
<span class="ltx_text ltx_font_italic" id="S4.T4.5.5.8.1.1">w/o</span> varied spatial resolution</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.2" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.8.2.1">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.8.3" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T4.5.5.8.3.1">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.8.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.4.4.4.1" style="padding-left:4.0pt;padding-right:4.0pt;">enlarge <math alttext="F_{max}" class="ltx_Math" display="inline" id="S4.T4.4.4.4.1.m1.1"><semantics id="S4.T4.4.4.4.1.m1.1a"><msub id="S4.T4.4.4.4.1.m1.1.1" xref="S4.T4.4.4.4.1.m1.1.1.cmml"><mi id="S4.T4.4.4.4.1.m1.1.1.2" xref="S4.T4.4.4.4.1.m1.1.1.2.cmml">F</mi><mrow id="S4.T4.4.4.4.1.m1.1.1.3" xref="S4.T4.4.4.4.1.m1.1.1.3.cmml"><mi id="S4.T4.4.4.4.1.m1.1.1.3.2" xref="S4.T4.4.4.4.1.m1.1.1.3.2.cmml">m</mi><mo id="S4.T4.4.4.4.1.m1.1.1.3.1" xref="S4.T4.4.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.1.m1.1.1.3.3" xref="S4.T4.4.4.4.1.m1.1.1.3.3.cmml">a</mi><mo id="S4.T4.4.4.4.1.m1.1.1.3.1a" xref="S4.T4.4.4.4.1.m1.1.1.3.1.cmml">⁢</mo><mi id="S4.T4.4.4.4.1.m1.1.1.3.4" xref="S4.T4.4.4.4.1.m1.1.1.3.4.cmml">x</mi></mrow></msub><annotation-xml encoding="MathML-Content" id="S4.T4.4.4.4.1.m1.1b"><apply id="S4.T4.4.4.4.1.m1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T4.4.4.4.1.m1.1.1.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1">subscript</csymbol><ci id="S4.T4.4.4.4.1.m1.1.1.2.cmml" xref="S4.T4.4.4.4.1.m1.1.1.2">𝐹</ci><apply id="S4.T4.4.4.4.1.m1.1.1.3.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3"><times id="S4.T4.4.4.4.1.m1.1.1.3.1.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.1"></times><ci id="S4.T4.4.4.4.1.m1.1.1.3.2.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.2">𝑚</ci><ci id="S4.T4.4.4.4.1.m1.1.1.3.3.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.3">𝑎</ci><ci id="S4.T4.4.4.4.1.m1.1.1.3.4.cmml" xref="S4.T4.4.4.4.1.m1.1.1.3.4">𝑥</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.4.4.4.1.m1.1c">F_{max}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.4.4.4.1.m1.1d">italic_F start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math> to 32</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.2" style="padding-left:4.0pt;padding-right:4.0pt;">80.4</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.4.4.4.3" style="padding-left:4.0pt;padding-right:4.0pt;">67.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.6</td>
<td class="ltx_td ltx_align_center" id="S4.T4.4.4.4.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.1</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.5.1" style="padding-left:4.0pt;padding-right:4.0pt;">enlarge <math alttext="Res_{max}" class="ltx_Math" display="inline" id="S4.T4.5.5.5.1.m1.1"><semantics id="S4.T4.5.5.5.1.m1.1a"><mrow id="S4.T4.5.5.5.1.m1.1.1" xref="S4.T4.5.5.5.1.m1.1.1.cmml"><mi id="S4.T4.5.5.5.1.m1.1.1.2" xref="S4.T4.5.5.5.1.m1.1.1.2.cmml">R</mi><mo id="S4.T4.5.5.5.1.m1.1.1.1" xref="S4.T4.5.5.5.1.m1.1.1.1.cmml">⁢</mo><mi id="S4.T4.5.5.5.1.m1.1.1.3" xref="S4.T4.5.5.5.1.m1.1.1.3.cmml">e</mi><mo id="S4.T4.5.5.5.1.m1.1.1.1a" xref="S4.T4.5.5.5.1.m1.1.1.1.cmml">⁢</mo><msub id="S4.T4.5.5.5.1.m1.1.1.4" xref="S4.T4.5.5.5.1.m1.1.1.4.cmml"><mi id="S4.T4.5.5.5.1.m1.1.1.4.2" xref="S4.T4.5.5.5.1.m1.1.1.4.2.cmml">s</mi><mrow id="S4.T4.5.5.5.1.m1.1.1.4.3" xref="S4.T4.5.5.5.1.m1.1.1.4.3.cmml"><mi id="S4.T4.5.5.5.1.m1.1.1.4.3.2" xref="S4.T4.5.5.5.1.m1.1.1.4.3.2.cmml">m</mi><mo id="S4.T4.5.5.5.1.m1.1.1.4.3.1" xref="S4.T4.5.5.5.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T4.5.5.5.1.m1.1.1.4.3.3" xref="S4.T4.5.5.5.1.m1.1.1.4.3.3.cmml">a</mi><mo id="S4.T4.5.5.5.1.m1.1.1.4.3.1a" xref="S4.T4.5.5.5.1.m1.1.1.4.3.1.cmml">⁢</mo><mi id="S4.T4.5.5.5.1.m1.1.1.4.3.4" xref="S4.T4.5.5.5.1.m1.1.1.4.3.4.cmml">x</mi></mrow></msub></mrow><annotation-xml encoding="MathML-Content" id="S4.T4.5.5.5.1.m1.1b"><apply id="S4.T4.5.5.5.1.m1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1"><times id="S4.T4.5.5.5.1.m1.1.1.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1.1"></times><ci id="S4.T4.5.5.5.1.m1.1.1.2.cmml" xref="S4.T4.5.5.5.1.m1.1.1.2">𝑅</ci><ci id="S4.T4.5.5.5.1.m1.1.1.3.cmml" xref="S4.T4.5.5.5.1.m1.1.1.3">𝑒</ci><apply id="S4.T4.5.5.5.1.m1.1.1.4.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4"><csymbol cd="ambiguous" id="S4.T4.5.5.5.1.m1.1.1.4.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4">subscript</csymbol><ci id="S4.T4.5.5.5.1.m1.1.1.4.2.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.2">𝑠</ci><apply id="S4.T4.5.5.5.1.m1.1.1.4.3.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.3"><times id="S4.T4.5.5.5.1.m1.1.1.4.3.1.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.3.1"></times><ci id="S4.T4.5.5.5.1.m1.1.1.4.3.2.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.3.2">𝑚</ci><ci id="S4.T4.5.5.5.1.m1.1.1.4.3.3.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.3.3">𝑎</ci><ci id="S4.T4.5.5.5.1.m1.1.1.4.3.4.cmml" xref="S4.T4.5.5.5.1.m1.1.1.4.3.4">𝑥</ci></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.5.5.5.1.m1.1c">Res_{max}</annotation><annotation encoding="application/x-llamapun" id="S4.T4.5.5.5.1.m1.1d">italic_R italic_e italic_s start_POSTSUBSCRIPT italic_m italic_a italic_x end_POSTSUBSCRIPT</annotation></semantics></math> to 336</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.2" style="padding-left:4.0pt;padding-right:4.0pt;">80.2</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T4.5.5.5.3" style="padding-left:4.0pt;padding-right:4.0pt;">67.3</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.4" style="padding-left:4.0pt;padding-right:4.0pt;">81.4</td>
<td class="ltx_td ltx_align_center" id="S4.T4.5.5.5.5" style="padding-left:4.0pt;padding-right:4.0pt;">69.0</td>
</tr>
<tr class="ltx_tr" id="S4.T4.5.5.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T4.5.5.9.1" style="padding-left:4.0pt;padding-right:4.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T4.5.5.9.2" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S4.T4.5.5.9.3" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S4.T4.5.5.9.4" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
<td class="ltx_td" id="S4.T4.5.5.9.5" style="padding-left:4.0pt;padding-right:4.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents ablation study results on the hyperparameters used in the flexible sampling process of Flux-Single training with the FluxViT model.  The results show the impact of varying several parameters (Fmin, Fmax, ts, Rmin, Rmax, rs, and Tthres) on the model's performance.  It highlights that while many parameters have a minimal effect, the parameter Tthres (a threshold for keeping a reasonable size of the visual token pool) significantly impacts the performance.
> <details>
> <summary>read the caption</summary>
> Table 4:  Ablations on hyper-parameter on sampling designs for Flux-Single training with FluxViT. Most settings regarding flexible sampling cause only minor influences except Tt⁢h⁢r⁢e⁢ssubscript𝑇𝑡ℎ𝑟𝑒𝑠T_{thres}italic_T start_POSTSUBSCRIPT italic_t italic_h italic_r italic_e italic_s end_POSTSUBSCRIPT.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T5.2.2">
<tr class="ltx_tr" id="S4.T5.2.2.3">
<td class="ltx_td ltx_align_left" colspan="5" id="S4.T5.2.2.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>    <span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.1.1">Pre-training</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.2.1">Fine-tuning</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.3.3" style="padding-left:4.5pt;padding-right:4.5pt;">        <span class="ltx_text ltx_font_bold" id="S4.T5.2.2.3.3.1">Test Length</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.4.1.1">Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.4.2.1">Length</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.3" style="padding-left:4.5pt;padding-right:4.5pt;">2048</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">1024</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.4.5" style="padding-left:4.5pt;padding-right:4.5pt;">512</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.1.1.1.1" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mi id="S4.T5.1.1.1.1.m1.1.1" mathvariant="normal" xref="S4.T5.1.1.1.1.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><emptyset id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">∅</annotation></semantics></math>(<span class="ltx_text ltx_font_italic" id="S4.T5.1.1.1.1.1">w/o</span> Flux)</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mi id="S4.T5.2.2.2.2.m1.1.1" mathvariant="normal" xref="S4.T5.2.2.2.2.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><emptyset id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.2.3" style="padding-left:4.5pt;padding-right:4.5pt;">79.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.2.4" style="padding-left:4.5pt;padding-right:4.5pt;">74.7</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">62.1</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.2.2.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">Single</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.2.2.5.2" style="padding-left:4.5pt;padding-right:4.5pt;">Single</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.5.3" style="padding-left:4.5pt;padding-right:4.5pt;">80.5</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.5.4" style="padding-left:4.5pt;padding-right:4.5pt;">77.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">65.8</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.6.1" style="padding-left:4.5pt;padding-right:4.5pt;">Single</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.6.2" style="padding-left:4.5pt;padding-right:4.5pt;">Multi(<span class="ltx_text ltx_font_italic" id="S4.T5.2.2.6.2.1">w/</span> align)</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.6.3" style="padding-left:4.5pt;padding-right:4.5pt;">80.3</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.6.4" style="padding-left:4.5pt;padding-right:4.5pt;">79.0</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.6.5" style="padding-left:4.5pt;padding-right:4.5pt;">75.0</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.7">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.2.2.7.1" style="padding-left:4.5pt;padding-right:4.5pt;">Multi</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T5.2.2.7.2" style="padding-left:4.5pt;padding-right:4.5pt;">Single</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.7.3" style="padding-left:4.5pt;padding-right:4.5pt;">81.0</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T5.2.2.7.4" style="padding-left:4.5pt;padding-right:4.5pt;">78.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.2.2.7.5" style="padding-left:4.5pt;padding-right:4.5pt;">70.2</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.8.1" style="padding-left:4.5pt;padding-right:4.5pt;">Multi</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.8.2" style="padding-left:4.5pt;padding-right:4.5pt;">Multi</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.8.3" style="padding-left:4.5pt;padding-right:4.5pt;">80.9</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.8.4" style="padding-left:4.5pt;padding-right:4.5pt;">79.1</td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.8.5" style="padding-left:4.5pt;padding-right:4.5pt;">73.3</td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.9" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.9.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.2.9.1.1" style="background-color:#E6E6FF;">Multi</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text" id="S4.T5.2.2.9.2.1" style="background-color:#E6E6FF;">Multi(<span class="ltx_text ltx_font_italic" id="S4.T5.2.2.9.2.1.1">w/</span> align)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.9.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.3.1" style="background-color:#E6E6FF;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T5.2.2.9.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.4.1" style="background-color:#E6E6FF;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.2.2.9.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S4.T5.2.2.9.5.1" style="background-color:#E6E6FF;">76.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.2.2.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T5.2.2.10.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T5.2.2.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td" id="S4.T5.2.2.10.3" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td" id="S4.T5.2.2.10.4" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td" id="S4.T5.2.2.10.5" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of using varied input lengths during the training of the FluxViT model on the K400 dataset.  Specifically, it investigates the effect of varying the number of input tokens at test time while maintaining a fixed input resolution of 8x2242 during training. The table shows the results for different input sizes (2x2242, 4x2242, 8x2242, 12x2242, 16x2242, 20x2242, 24x2242) and various token counts at test time (3072, 2048, 1024, 512).  The results are reported in terms of top-1 accuracy on the K400 dataset.  This helps to understand how flexible the model is to changes in input length during inference. The table compares the performance of direct tuning (without Flux) and Flux-tuning with both single and multiple input lengths during training.
> <details>
> <summary>read the caption</summary>
> Table 5: Ablation on using varied input lengths in training FluxViT on K400. Results are tested with fixed 8×\times×2242 input but varied test token lengths based on our selector.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T6.39.39">
<tr class="ltx_tr" id="S4.T6.39.39.40">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.39.39.40.1" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T6.39.39.40.1.1">Model</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.39.39.40.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.39.39.40.2.1">Extra Data</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.39.39.40.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.39.39.40.3.1">#P(M)</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.39.39.40.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.39.39.40.4.1">GFLOPs</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.39.39.40.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.39.39.40.5.1">Top-1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.1.1.1.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> TimeSformer-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.1.1.1.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.1.1.1.4" style="padding-left:1.0pt;padding-right:1.0pt;">121</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.1.1.1.1" style="padding-left:1.0pt;padding-right:1.0pt;">2380<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><times id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.1.1.1.5" style="padding-left:1.0pt;padding-right:1.0pt;">80.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.2.2.2.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoSwin-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.2.2.2.3" style="padding-left:1.0pt;padding-right:1.0pt;">IN-21K</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.2.2.2.4" style="padding-left:1.0pt;padding-right:1.0pt;">197</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.2.2.2.1" style="padding-left:1.0pt;padding-right:1.0pt;">604<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.2.2.2.1.m1.1"><semantics id="S4.T6.2.2.2.1.m1.1a"><mo id="S4.T6.2.2.2.1.m1.1.1" xref="S4.T6.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.1.m1.1b"><times id="S4.T6.2.2.2.1.m1.1.1.cmml" xref="S4.T6.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.2.2.2.5" style="padding-left:1.0pt;padding-right:1.0pt;">83.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.3.3.3.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoMAE-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.3.3.3.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.3.3.3.4" style="padding-left:1.0pt;padding-right:1.0pt;">305</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.3.3.3.1" style="padding-left:1.0pt;padding-right:1.0pt;">3958<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.3.3.3.1.m1.1"><semantics id="S4.T6.3.3.3.1.m1.1a"><mo id="S4.T6.3.3.3.1.m1.1.1" xref="S4.T6.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.1.m1.1b"><times id="S4.T6.3.3.3.1.m1.1.1.cmml" xref="S4.T6.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.1.m1.1d">×</annotation></semantics></math>21</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.3.3.3.5" style="padding-left:1.0pt;padding-right:1.0pt;">86.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.4.4.4.2" style="padding-left:1.0pt;padding-right:1.0pt;">CoVeR-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib97" title=""><span class="ltx_text" style="font-size:90%;">97</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.4.4.4.3" style="padding-left:1.0pt;padding-right:1.0pt;">JFT-3B+SMI</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.4.4.4.4" style="padding-left:1.0pt;padding-right:1.0pt;">431</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.4.4.4.1" style="padding-left:1.0pt;padding-right:1.0pt;">5860<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.4.4.4.1.m1.1"><semantics id="S4.T6.4.4.4.1.m1.1a"><mo id="S4.T6.4.4.4.1.m1.1.1" xref="S4.T6.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.1.m1.1b"><times id="S4.T6.4.4.4.1.m1.1.1.cmml" xref="S4.T6.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.4.4.4.5" style="padding-left:1.0pt;padding-right:1.0pt;">87.1</td>
</tr>
<tr class="ltx_tr" id="S4.T6.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.5.5.5.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.5.5.5.2.1" style="font-size:90%;">UniFormerV2-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.5.5.5.3" style="padding-left:1.0pt;padding-right:1.0pt;">CLIP-400M+K710</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.5.5.5.4" style="padding-left:1.0pt;padding-right:1.0pt;">354</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.5.5.5.1" style="padding-left:1.0pt;padding-right:1.0pt;">12550<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.5.5.5.1.m1.1"><semantics id="S4.T6.5.5.5.1.m1.1a"><mo id="S4.T6.5.5.5.1.m1.1.1" xref="S4.T6.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.5.1.m1.1b"><times id="S4.T6.5.5.5.1.m1.1.1.cmml" xref="S4.T6.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.5.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.5.5.5.5" style="padding-left:1.0pt;padding-right:1.0pt;">90.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.6.6.6.2" style="padding-left:1.0pt;padding-right:1.0pt;">UMT-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.6.6.6.3" style="padding-left:1.0pt;padding-right:1.0pt;">K710</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.6.6.6.4" style="padding-left:1.0pt;padding-right:1.0pt;">431</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.6.6.6.1" style="padding-left:1.0pt;padding-right:1.0pt;">5860<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.6.6.6.1.m1.1"><semantics id="S4.T6.6.6.6.1.m1.1a"><mo id="S4.T6.6.6.6.1.m1.1.1" xref="S4.T6.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.6.6.6.1.m1.1b"><times id="S4.T6.6.6.6.1.m1.1.1.cmml" xref="S4.T6.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.6.6.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.6.6.6.5" style="padding-left:1.0pt;padding-right:1.0pt;">90.6</td>
</tr>
<tr class="ltx_tr" id="S4.T6.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.7.7.7.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.7.7.7.2.1" style="font-size:90%;">VideoMAE2-H  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a>]</cite></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.7.7.7.3" style="padding-left:1.0pt;padding-right:1.0pt;">UnlabeledHybrid</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.7.7.7.4" style="padding-left:1.0pt;padding-right:1.0pt;">633</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.7.7.7.1" style="padding-left:1.0pt;padding-right:1.0pt;">1192<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.7.7.7.1.m1.1"><semantics id="S4.T6.7.7.7.1.m1.1a"><mo id="S4.T6.7.7.7.1.m1.1.1" xref="S4.T6.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.7.7.7.1.m1.1b"><times id="S4.T6.7.7.7.1.m1.1.1.cmml" xref="S4.T6.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.7.7.7.1.m1.1d">×</annotation></semantics></math>15</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="S4.T6.7.7.7.5" style="padding-left:1.0pt;padding-right:1.0pt;">88.6</td>
</tr>
<tr class="ltx_tr" id="S4.T6.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.8.8.8.2" style="padding-left:1.0pt;padding-right:1.0pt;">ViViT-H  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.8.8.8.3" style="padding-left:1.0pt;padding-right:1.0pt;">JFT-300M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.8.8.8.4" style="padding-left:1.0pt;padding-right:1.0pt;">654</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.8.8.8.1" style="padding-left:1.0pt;padding-right:1.0pt;">3981<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.8.8.8.1.m1.1"><semantics id="S4.T6.8.8.8.1.m1.1a"><mo id="S4.T6.8.8.8.1.m1.1.1" xref="S4.T6.8.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.8.8.8.1.m1.1b"><times id="S4.T6.8.8.8.1.m1.1.1.cmml" xref="S4.T6.8.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.8.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.8.8.8.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.8.8.8.5" style="padding-left:1.0pt;padding-right:1.0pt;">84.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.9.9.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.9.9.9.2" style="padding-left:1.0pt;padding-right:1.0pt;">MTV-H <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.9.9.9.3" style="padding-left:1.0pt;padding-right:1.0pt;">IN-21K+WTS-60M</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.9.9.9.4" style="padding-left:1.0pt;padding-right:1.0pt;">1000+</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.9.9.9.1" style="padding-left:1.0pt;padding-right:1.0pt;">6130<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.9.9.9.1.m1.1"><semantics id="S4.T6.9.9.9.1.m1.1a"><mo id="S4.T6.9.9.9.1.m1.1.1" xref="S4.T6.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.9.9.9.1.m1.1b"><times id="S4.T6.9.9.9.1.m1.1.1.cmml" xref="S4.T6.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.9.9.9.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.9.9.9.5" style="padding-left:1.0pt;padding-right:1.0pt;">89.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.10.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.10.10.10.2" style="padding-left:1.0pt;padding-right:1.0pt;">CoCa-G  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib95" title=""><span class="ltx_text" style="font-size:90%;">95</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.10.10.10.3" style="padding-left:1.0pt;padding-right:1.0pt;">JFT-3B+ALIGN-1.8B</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.10.10.10.4" style="padding-left:1.0pt;padding-right:1.0pt;">1000+</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.10.10.10.1" style="padding-left:1.0pt;padding-right:1.0pt;">N/A<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.10.10.10.1.m1.1"><semantics id="S4.T6.10.10.10.1.m1.1a"><mo id="S4.T6.10.10.10.1.m1.1.1" xref="S4.T6.10.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.10.10.10.1.m1.1b"><times id="S4.T6.10.10.10.1.m1.1.1.cmml" xref="S4.T6.10.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.10.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.10.10.10.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.10.10.10.5" style="padding-left:1.0pt;padding-right:1.0pt;">88.9</td>
</tr>
<tr class="ltx_tr" id="S4.T6.11.11.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.11.11.11.2" style="padding-left:1.0pt;padding-right:1.0pt;">MViTv1-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="S4.T6.11.11.11.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.11.11.11.4" style="padding-left:1.0pt;padding-right:1.0pt;">37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.11.11.11.1" style="padding-left:1.0pt;padding-right:1.0pt;">70<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.11.11.11.1.m1.1"><semantics id="S4.T6.11.11.11.1.m1.1a"><mo id="S4.T6.11.11.11.1.m1.1.1" xref="S4.T6.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.11.11.11.1.m1.1b"><times id="S4.T6.11.11.11.1.m1.1.1.cmml" xref="S4.T6.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.11.11.11.1.m1.1d">×</annotation></semantics></math>5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="S4.T6.11.11.11.5" style="padding-left:1.0pt;padding-right:1.0pt;">80.2</td>
</tr>
<tr class="ltx_tr" id="S4.T6.12.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.12.12.12.2" style="padding-left:1.0pt;padding-right:1.0pt;">MViTv2-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.12.12.12.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.12.12.12.4" style="padding-left:1.0pt;padding-right:1.0pt;">37</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.12.12.12.1" style="padding-left:1.0pt;padding-right:1.0pt;">255<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.12.12.12.1.m1.1"><semantics id="S4.T6.12.12.12.1.m1.1a"><mo id="S4.T6.12.12.12.1.m1.1.1" xref="S4.T6.12.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.12.12.12.1.m1.1b"><times id="S4.T6.12.12.12.1.m1.1.1.cmml" xref="S4.T6.12.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.12.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.12.12.12.1.m1.1d">×</annotation></semantics></math>5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.12.12.12.5" style="padding-left:1.0pt;padding-right:1.0pt;">81.2</td>
</tr>
<tr class="ltx_tr" id="S4.T6.13.13.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.13.13.13.2" style="padding-left:1.0pt;padding-right:1.0pt;">ST-MAE-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.13.13.13.3" style="padding-left:1.0pt;padding-right:1.0pt;">K600</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.13.13.13.4" style="padding-left:1.0pt;padding-right:1.0pt;">87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.13.13.13.1" style="padding-left:1.0pt;padding-right:1.0pt;">180<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.13.13.13.1.m1.1"><semantics id="S4.T6.13.13.13.1.m1.1a"><mo id="S4.T6.13.13.13.1.m1.1.1" xref="S4.T6.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.13.13.13.1.m1.1b"><times id="S4.T6.13.13.13.1.m1.1.1.cmml" xref="S4.T6.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.13.13.13.1.m1.1d">×</annotation></semantics></math>21</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.13.13.13.5" style="padding-left:1.0pt;padding-right:1.0pt;">81.3</td>
</tr>
<tr class="ltx_tr" id="S4.T6.14.14.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.14.14.14.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoMAE-B  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.14.14.14.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.14.14.14.4" style="padding-left:1.0pt;padding-right:1.0pt;">87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.14.14.14.1" style="padding-left:1.0pt;padding-right:1.0pt;">180<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.14.14.14.1.m1.1"><semantics id="S4.T6.14.14.14.1.m1.1a"><mo id="S4.T6.14.14.14.1.m1.1.1" xref="S4.T6.14.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.14.14.14.1.m1.1b"><times id="S4.T6.14.14.14.1.m1.1.1.cmml" xref="S4.T6.14.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.14.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.14.14.14.1.m1.1d">×</annotation></semantics></math>15</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.14.14.14.5" style="padding-left:1.0pt;padding-right:1.0pt;">81.5</td>
</tr>
<tr class="ltx_tr" id="S4.T6.15.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.15.15.15.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoSwin-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.15.15.15.3" style="padding-left:1.0pt;padding-right:1.0pt;">IN-21k</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.15.15.15.4" style="padding-left:1.0pt;padding-right:1.0pt;">88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.15.15.15.1" style="padding-left:1.0pt;padding-right:1.0pt;">282<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.15.15.15.1.m1.1"><semantics id="S4.T6.15.15.15.1.m1.1a"><mo id="S4.T6.15.15.15.1.m1.1.1" xref="S4.T6.15.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.15.15.15.1.m1.1b"><times id="S4.T6.15.15.15.1.m1.1.1.cmml" xref="S4.T6.15.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.15.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.15.15.15.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.15.15.15.5" style="padding-left:1.0pt;padding-right:1.0pt;">82.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.16.16.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.16.16.16.2" style="padding-left:1.0pt;padding-right:1.0pt;">UniFormer-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.16.16.16.3" style="padding-left:1.0pt;padding-right:1.0pt;">IN-1k</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.16.16.16.4" style="padding-left:1.0pt;padding-right:1.0pt;">50</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.16.16.16.1" style="padding-left:1.0pt;padding-right:1.0pt;">259<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.16.16.16.1.m1.1"><semantics id="S4.T6.16.16.16.1.m1.1a"><mo id="S4.T6.16.16.16.1.m1.1.1" xref="S4.T6.16.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.16.16.16.1.m1.1b"><times id="S4.T6.16.16.16.1.m1.1.1.cmml" xref="S4.T6.16.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.16.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.16.16.16.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.16.16.16.5" style="padding-left:1.0pt;padding-right:1.0pt;">83.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.17.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.17.17.17.2" style="padding-left:1.0pt;padding-right:1.0pt;">UMT-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.17.17.17.3" style="padding-left:1.0pt;padding-right:1.0pt;">K710</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.17.17.17.4" style="padding-left:1.0pt;padding-right:1.0pt;">87</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.17.17.17.1" style="padding-left:1.0pt;padding-right:1.0pt;">180<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.17.17.17.1.m1.1"><semantics id="S4.T6.17.17.17.1.m1.1a"><mo id="S4.T6.17.17.17.1.m1.1.1" xref="S4.T6.17.17.17.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.17.17.17.1.m1.1b"><times id="S4.T6.17.17.17.1.m1.1.1.cmml" xref="S4.T6.17.17.17.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.17.17.17.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.17.17.17.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.17.17.17.5" style="padding-left:1.0pt;padding-right:1.0pt;">87.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.18.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.18.18.18.2" style="padding-left:1.0pt;padding-right:1.0pt;">InternVideo2-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.18.18.18.3" style="padding-left:1.0pt;padding-right:1.0pt;">K710+MASH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.18.18.18.4" style="padding-left:1.0pt;padding-right:1.0pt;">96</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.18.18.18.1" style="padding-left:1.0pt;padding-right:1.0pt;">440<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.18.18.18.1.m1.1"><semantics id="S4.T6.18.18.18.1.m1.1a"><mo id="S4.T6.18.18.18.1.m1.1.1" xref="S4.T6.18.18.18.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.18.18.18.1.m1.1b"><times id="S4.T6.18.18.18.1.m1.1.1.cmml" xref="S4.T6.18.18.18.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.18.18.18.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.18.18.18.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.18.18.18.5" style="padding-left:1.0pt;padding-right:1.0pt;">88.4</td>
</tr>
<tr class="ltx_tr" id="S4.T6.19.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.19.19.19.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.19.19.19.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.19.19.19.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.19.19.19.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.19.19.19.1.1" style="background-color:#E6E6FF;">440<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.19.19.19.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.19.19.19.1.1.m1.1a"><mo id="S4.T6.19.19.19.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.19.19.19.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.19.19.19.1.1.m1.1b"><times id="S4.T6.19.19.19.1.1.m1.1.1.cmml" xref="S4.T6.19.19.19.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.19.19.19.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.19.19.19.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.19.19.19.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.19.19.19.5.1" style="background-color:#E6E6FF;">88.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.19.19.19.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.19.19.19.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">89.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.21.21.21" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.20.20.20.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.20.20.20.1.1" style="background-color:#E6E6FF;">FluxViT-B<sub class="ltx_sub" id="S4.T6.20.20.20.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T6.20.20.20.1.1.2.1" style="background-color:#E6E6FF;">e200</span></sub></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.21.21.21.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.21.21.21.3.1" style="background-color:#E6E6FF;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.21.21.21.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.21.21.21.4.1" style="background-color:#E6E6FF;">97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.21.21.21.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.21.21.21.2.1" style="background-color:#E6E6FF;">49<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.21.21.21.2.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.21.21.21.2.1.m1.1a"><mo id="S4.T6.21.21.21.2.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.21.21.21.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.21.21.21.2.1.m1.1b"><times id="S4.T6.21.21.21.2.1.m1.1.1.cmml" xref="S4.T6.21.21.21.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.21.21.21.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.21.21.21.2.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.21.21.21.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.21.21.21.5.1" style="background-color:#E6E6FF;">84.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.21.21.21.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.21.21.21.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">86.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.22.22.22">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.22.22.22.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.22.22.22.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.22.22.22.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.22.22.22.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.22.22.22.1.1" style="background-color:#E6E6FF;">440<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.22.22.22.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.22.22.22.1.1.m1.1a"><mo id="S4.T6.22.22.22.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.22.22.22.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.22.22.22.1.1.m1.1b"><times id="S4.T6.22.22.22.1.1.m1.1.1.cmml" xref="S4.T6.22.22.22.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.22.22.22.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.22.22.22.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.22.22.22.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.22.22.22.5.1" style="background-color:#E6E6FF;">89.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.22.22.22.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.22.22.22.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">90.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.23.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.23.23.23.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.23.23.23.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.23.23.23.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.23.23.23.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.23.23.23.1.1" style="background-color:#E6E6FF;">255<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.23.23.23.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.23.23.23.1.1.m1.1a"><mo id="S4.T6.23.23.23.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.23.23.23.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.23.23.23.1.1.m1.1b"><times id="S4.T6.23.23.23.1.1.m1.1.1.cmml" xref="S4.T6.23.23.23.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.23.23.23.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.23.23.23.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.23.23.23.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.23.23.23.5.1" style="background-color:#E6E6FF;">89.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.23.23.23.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.23.23.23.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">89.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.24.24.24">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.24.24.24.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.24.24.24.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.24.24.24.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.24.24.24.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.24.24.24.1.1" style="background-color:#E6E6FF;">108<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.24.24.24.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.24.24.24.1.1.m1.1a"><mo id="S4.T6.24.24.24.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.24.24.24.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.24.24.24.1.1.m1.1b"><times id="S4.T6.24.24.24.1.1.m1.1.1.cmml" xref="S4.T6.24.24.24.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.24.24.24.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.24.24.24.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.24.24.24.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.24.24.24.5.1" style="background-color:#E6E6FF;">87.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.24.24.24.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.24.24.24.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">88.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.26.26.26" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.25.25.25.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.25.25.25.1.1" style="background-color:#E6E6FF;">FluxViT-B<sub class="ltx_sub" id="S4.T6.25.25.25.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T6.25.25.25.1.1.2.1" style="background-color:#E6E6FF;">e100</span></sub></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.26.26.26.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.26.26.26.3.1" style="background-color:#E6E6FF;">K710+MASH</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.26.26.26.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.26.26.26.4.1" style="background-color:#E6E6FF;">97</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.26.26.26.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.26.26.26.2.1" style="background-color:#E6E6FF;">49<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.26.26.26.2.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.26.26.26.2.1.m1.1a"><mo id="S4.T6.26.26.26.2.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.26.26.26.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.26.26.26.2.1.m1.1b"><times id="S4.T6.26.26.26.2.1.m1.1.1.cmml" xref="S4.T6.26.26.26.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.26.26.26.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.26.26.26.2.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.26.26.26.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.26.26.26.5.1" style="background-color:#E6E6FF;">84.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.26.26.26.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.26.26.26.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">87.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.27.27.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.27.27.27.2" style="padding-left:1.0pt;padding-right:1.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
UniFormer-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.27.27.27.3" style="padding-left:1.0pt;padding-right:1.0pt;">IN-1k</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.27.27.27.4" style="padding-left:1.0pt;padding-right:1.0pt;">21</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.27.27.27.1" style="padding-left:1.0pt;padding-right:1.0pt;">42<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.27.27.27.1.m1.1"><semantics id="S4.T6.27.27.27.1.m1.1a"><mo id="S4.T6.27.27.27.1.m1.1.1" xref="S4.T6.27.27.27.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.27.27.27.1.m1.1b"><times id="S4.T6.27.27.27.1.m1.1.1.cmml" xref="S4.T6.27.27.27.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.27.27.27.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.27.27.27.1.m1.1d">×</annotation></semantics></math>4</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.27.27.27.5" style="padding-left:1.0pt;padding-right:1.0pt;">80.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.28.28.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.28.28.28.2" style="padding-left:1.0pt;padding-right:1.0pt;">MViTv2-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.28.28.28.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.28.28.28.4" style="padding-left:1.0pt;padding-right:1.0pt;">35</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.28.28.28.1" style="padding-left:1.0pt;padding-right:1.0pt;">64<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.28.28.28.1.m1.1"><semantics id="S4.T6.28.28.28.1.m1.1a"><mo id="S4.T6.28.28.28.1.m1.1.1" xref="S4.T6.28.28.28.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.28.28.28.1.m1.1b"><times id="S4.T6.28.28.28.1.m1.1.1.cmml" xref="S4.T6.28.28.28.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.28.28.28.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.28.28.28.1.m1.1d">×</annotation></semantics></math>5</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.28.28.28.5" style="padding-left:1.0pt;padding-right:1.0pt;">81.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.29.29.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.29.29.29.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoMAE-S  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.29.29.29.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.29.29.29.4" style="padding-left:1.0pt;padding-right:1.0pt;">22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.29.29.29.1" style="padding-left:1.0pt;padding-right:1.0pt;">57<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.29.29.29.1.m1.1"><semantics id="S4.T6.29.29.29.1.m1.1a"><mo id="S4.T6.29.29.29.1.m1.1.1" xref="S4.T6.29.29.29.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.29.29.29.1.m1.1b"><times id="S4.T6.29.29.29.1.m1.1.1.cmml" xref="S4.T6.29.29.29.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.29.29.29.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.29.29.29.1.m1.1d">×</annotation></semantics></math>15</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.29.29.29.5" style="padding-left:1.0pt;padding-right:1.0pt;">79.0</td>
</tr>
<tr class="ltx_tr" id="S4.T6.30.30.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.30.30.30.2" style="padding-left:1.0pt;padding-right:1.0pt;">VideoMAE2-S  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib82" title=""><span class="ltx_text" style="font-size:90%;">82</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.30.30.30.3" style="padding-left:1.0pt;padding-right:1.0pt;">-</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.30.30.30.4" style="padding-left:1.0pt;padding-right:1.0pt;">22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.30.30.30.1" style="padding-left:1.0pt;padding-right:1.0pt;">57<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.30.30.30.1.m1.1"><semantics id="S4.T6.30.30.30.1.m1.1a"><mo id="S4.T6.30.30.30.1.m1.1.1" xref="S4.T6.30.30.30.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.30.30.30.1.m1.1b"><times id="S4.T6.30.30.30.1.m1.1.1.cmml" xref="S4.T6.30.30.30.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.30.30.30.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.30.30.30.1.m1.1d">×</annotation></semantics></math>15</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.30.30.30.5" style="padding-left:1.0pt;padding-right:1.0pt;">83.7</td>
</tr>
<tr class="ltx_tr" id="S4.T6.31.31.31">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.31.31.31.2" style="padding-left:1.0pt;padding-right:1.0pt;">InternVideo2-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.31.31.31.3" style="padding-left:1.0pt;padding-right:1.0pt;">K710+MASH</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.31.31.31.4" style="padding-left:1.0pt;padding-right:1.0pt;">23</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.31.31.31.1" style="padding-left:1.0pt;padding-right:1.0pt;">154<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.31.31.31.1.m1.1"><semantics id="S4.T6.31.31.31.1.m1.1a"><mo id="S4.T6.31.31.31.1.m1.1.1" xref="S4.T6.31.31.31.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.31.31.31.1.m1.1b"><times id="S4.T6.31.31.31.1.m1.1.1.cmml" xref="S4.T6.31.31.31.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.31.31.31.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.31.31.31.1.m1.1d">×</annotation></semantics></math>12</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="S4.T6.31.31.31.5" style="padding-left:1.0pt;padding-right:1.0pt;">85.8</td>
</tr>
<tr class="ltx_tr" id="S4.T6.32.32.32">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.32.32.32.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.32.32.32.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.32.32.32.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.32.32.32.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.32.32.32.1.1" style="background-color:#E6E6FF;">154<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.32.32.32.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.32.32.32.1.1.m1.1a"><mo id="S4.T6.32.32.32.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.32.32.32.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.32.32.32.1.1.m1.1b"><times id="S4.T6.32.32.32.1.1.m1.1.1.cmml" xref="S4.T6.32.32.32.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.32.32.32.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.32.32.32.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.32.32.32.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.32.32.32.5.1" style="background-color:#E6E6FF;">86.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.32.32.32.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.32.32.32.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">87.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.34.34.34" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.33.33.33.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.33.33.33.1.1" style="background-color:#E6E6FF;">FluxViT-S<sub class="ltx_sub" id="S4.T6.33.33.33.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T6.33.33.33.1.1.2.1" style="background-color:#E6E6FF;">e200</span></sub></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.34.34.34.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.34.34.34.3.1" style="background-color:#E6E6FF;">-</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.34.34.34.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.34.34.34.4.1" style="background-color:#E6E6FF;">24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.34.34.34.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.34.34.34.2.1" style="background-color:#E6E6FF;">13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.34.34.34.2.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.34.34.34.2.1.m1.1a"><mo id="S4.T6.34.34.34.2.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.34.34.34.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.34.34.34.2.1.m1.1b"><times id="S4.T6.34.34.34.2.1.m1.1.1.cmml" xref="S4.T6.34.34.34.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.34.34.34.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.34.34.34.2.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.34.34.34.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.34.34.34.5.1" style="background-color:#E6E6FF;">79.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.34.34.34.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.34.34.34.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">84.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.35.35.35">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.35.35.35.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.35.35.35.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r ltx_border_t" id="S4.T6.35.35.35.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="S4.T6.35.35.35.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.35.35.35.1.1" style="background-color:#E6E6FF;">154<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.35.35.35.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.35.35.35.1.1.m1.1a"><mo id="S4.T6.35.35.35.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.35.35.35.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.35.35.35.1.1.m1.1b"><times id="S4.T6.35.35.35.1.1.m1.1.1.cmml" xref="S4.T6.35.35.35.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.35.35.35.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.35.35.35.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.35.35.35.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.35.35.35.5.1" style="background-color:#E6E6FF;">87.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S4.T6.35.35.35.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.35.35.35.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">88.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.36.36.36">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.36.36.36.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.36.36.36.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.36.36.36.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.36.36.36.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.36.36.36.1.1" style="background-color:#E6E6FF;">83<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.36.36.36.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.36.36.36.1.1.m1.1a"><mo id="S4.T6.36.36.36.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.36.36.36.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.36.36.36.1.1.m1.1b"><times id="S4.T6.36.36.36.1.1.m1.1.1.cmml" xref="S4.T6.36.36.36.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.36.36.36.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.36.36.36.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.36.36.36.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.36.36.36.5.1" style="background-color:#E6E6FF;">87.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.36.36.36.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.36.36.36.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">87.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.37.37.37">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.37.37.37.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.37.37.37.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_r" id="S4.T6.37.37.37.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.37.37.37.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.37.37.37.1.1" style="background-color:#E6E6FF;">32<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.37.37.37.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.37.37.37.1.1.m1.1a"><mo id="S4.T6.37.37.37.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.37.37.37.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.37.37.37.1.1.m1.1b"><times id="S4.T6.37.37.37.1.1.m1.1.1.cmml" xref="S4.T6.37.37.37.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.37.37.37.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.37.37.37.1.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.37.37.37.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.37.37.37.5.1" style="background-color:#E6E6FF;">84.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.37.37.37.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.37.37.37.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">86.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.39.39.39" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.38.38.38.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.38.38.38.1.1" style="background-color:#E6E6FF;">FluxViT-S<sub class="ltx_sub" id="S4.T6.38.38.38.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T6.38.38.38.1.1.2.1" style="background-color:#E6E6FF;">e100</span></sub></span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.39.39.39.3" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.39.39.39.3.1" style="background-color:#E6E6FF;">K710+MASH</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.39.39.39.4" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.39.39.39.4.1" style="background-color:#E6E6FF;">24</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="S4.T6.39.39.39.2" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.39.39.39.2.1" style="background-color:#E6E6FF;">13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T6.39.39.39.2.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T6.39.39.39.2.1.m1.1a"><mo id="S4.T6.39.39.39.2.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T6.39.39.39.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T6.39.39.39.2.1.m1.1b"><times id="S4.T6.39.39.39.2.1.m1.1.1.cmml" xref="S4.T6.39.39.39.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.39.39.39.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T6.39.39.39.2.1.m1.1d">×</annotation></semantics></math>12</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.39.39.39.5" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text" id="S4.T6.39.39.39.5.1" style="background-color:#E6E6FF;">80.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S4.T6.39.39.39.6" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T6.39.39.39.6.1" style="color:#5E6EBA;background-color:#E6E6FF;">84.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.39.39.41">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="S4.T6.39.39.41.1" style="padding-left:1.0pt;padding-right:1.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T6.39.39.41.2" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="S4.T6.39.39.41.3" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="S4.T6.39.39.41.4" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="S4.T6.39.39.41.5" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
<td class="ltx_td" id="S4.T6.39.39.41.6" style="padding-left:1.0pt;padding-right:1.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 6 presents a comparison of FluxViT's performance against state-of-the-art models on the scene-related Kinetics-400 dataset.  The table highlights the impact of FluxViT's flexible sampling and token selection strategies by showing results for different model sizes and computational budgets. The key finding is that FluxViT can achieve competitive or superior performance while using significantly fewer tokens than comparable models, demonstrating its efficiency and adaptability.  The table includes model name, additional training data used, the number of parameters (#P), GFLOPS (a measure of computational cost), and top-1 accuracy.  Blue values for FluxViT indicate results obtained by using higher spatiotemporal resolutions while maintaining a fixed number of input tokens (3072, 2048, 1024, 512), illustrating the model's flexibility.  Abbreviations used: SMI (SSv2, MiT, and ImageNet training data) and MASH (MiT, ANet, SSv2, and HACS training data).
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with the state-of-the-art methods with on scene-related Kinetics-400. #P is short for the number of parameters. The blue values of FluxViT show results using larger spatiotemporal resolutions but keeping fixed input token count to 3072, 2048, 1024, and 512 respectively, corresponding to the four GFLOPs listed. SMI is short for the train set of SSv2, MiT and ImageNet and MASH for MiT, ANet, SSv2 and HACS.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T7.20.20">
<tr class="ltx_tr" id="S4.T7.20.20.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.20.20.21.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T7.20.20.21.1.1">Model</span>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.20.20.21.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.21.2.1">Extra Data</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.20.20.21.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.21.3.1">GFLOPs</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.20.20.21.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.21.4.1">Top-1</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.20.20.21.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.21.5.1">Top-5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> TimeSformer-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">IN-21k</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">2380<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.m1.1.1" xref="S4.T7.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.m1.1b"><times id="S4.T7.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">62.3</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">-</td>
</tr>
<tr class="ltx_tr" id="S4.T7.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">MViTv1-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">K400</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">455<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.2.2.2.1.m1.1"><semantics id="S4.T7.2.2.2.1.m1.1a"><mo id="S4.T7.2.2.2.1.m1.1.1" xref="S4.T7.2.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.1.m1.1b"><times id="S4.T7.2.2.2.1.m1.1.1.cmml" xref="S4.T7.2.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">67.7</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;">70.9</td>
</tr>
<tr class="ltx_tr" id="S4.T7.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">MViTv2-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">K400</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">255<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.3.3.3.1.m1.1"><semantics id="S4.T7.3.3.3.1.m1.1a"><mo id="S4.T7.3.3.3.1.m1.1.1" xref="S4.T7.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.1.m1.1b"><times id="S4.T7.3.3.3.1.m1.1.1.cmml" xref="S4.T7.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">70.5</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">92.7</td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMAE-B  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">K400</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">180<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.4.4.4.1.m1.1"><semantics id="S4.T7.4.4.4.1.m1.1a"><mo id="S4.T7.4.4.4.1.m1.1.1" xref="S4.T7.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.4.4.4.1.m1.1b"><times id="S4.T7.4.4.4.1.m1.1.1.cmml" xref="S4.T7.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.4.4.4.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">69.7</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">92.3</td>
</tr>
<tr class="ltx_tr" id="S4.T7.5.5.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMAE-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;">K400</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">596<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.5.5.5.1.m1.1"><semantics id="S4.T7.5.5.5.1.m1.1a"><mo id="S4.T7.5.5.5.1.m1.1.1" xref="S4.T7.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.5.5.5.1.m1.1b"><times id="S4.T7.5.5.5.1.m1.1.1.cmml" xref="S4.T7.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.5.5.5.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;">74.0</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;">94.6</td>
</tr>
<tr class="ltx_tr" id="S4.T7.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">UniFormerV2-B  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;">CLIP-400M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;">375<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.6.6.6.1.m1.1"><semantics id="S4.T7.6.6.6.1.m1.1a"><mo id="S4.T7.6.6.6.1.m1.1.1" xref="S4.T7.6.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.6.6.6.1.m1.1b"><times id="S4.T7.6.6.6.1.m1.1.1.cmml" xref="S4.T7.6.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.6.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.6.6.6.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">70.7</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">93.2</td>
</tr>
<tr class="ltx_tr" id="S4.T7.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">UniFormerV2-L  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;">CLIP-400M</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">1718<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.7.7.7.1.m1.1"><semantics id="S4.T7.7.7.7.1.m1.1a"><mo id="S4.T7.7.7.7.1.m1.1.1" xref="S4.T7.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.7.7.7.1.m1.1b"><times id="S4.T7.7.7.7.1.m1.1.1.cmml" xref="S4.T7.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.7.7.7.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">73.0</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">94.5</td>
</tr>
<tr class="ltx_tr" id="S4.T7.8.8.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;">UMT-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;">K710</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">180<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.8.8.8.1.m1.1"><semantics id="S4.T7.8.8.8.1.m1.1a"><mo id="S4.T7.8.8.8.1.m1.1.1" xref="S4.T7.8.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.8.8.8.1.m1.1b"><times id="S4.T7.8.8.8.1.m1.1.1.cmml" xref="S4.T7.8.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.8.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.8.8.8.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;">70.8</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;">92.4</td>
</tr>
<tr class="ltx_tr" id="S4.T7.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;">InternVideo2-B <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;">K710+MASH</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">253<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.9.9.9.1.m1.1"><semantics id="S4.T7.9.9.9.1.m1.1a"><mo id="S4.T7.9.9.9.1.m1.1.1" xref="S4.T7.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.9.9.9.1.m1.1b"><times id="S4.T7.9.9.9.1.m1.1.1.cmml" xref="S4.T7.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.9.9.9.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;">73.5</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;">94.4</td>
</tr>
<tr class="ltx_tr" id="S4.T7.10.10.10">
<td class="ltx_td ltx_border_r" id="S4.T7.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.10.10.10.1.1" style="background-color:#E6E6FF;">440<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.10.10.10.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.10.10.10.1.1.m1.1a"><mo id="S4.T7.10.10.10.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.10.10.10.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.10.10.10.1.1.m1.1b"><times id="S4.T7.10.10.10.1.1.m1.1.1.cmml" xref="S4.T7.10.10.10.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.10.10.10.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.10.10.10.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.10.10.10.4.1" style="background-color:#E6E6FF;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.10.10.10.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.10.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.10.10.10.6.1" style="background-color:#E6E6FF;">95.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.10.10.10.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.10.10.10.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">95.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.11.11.11">
<td class="ltx_td ltx_border_r" id="S4.T7.11.11.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.11.11.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.11.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.11.11.11.1.1" style="background-color:#E6E6FF;">255<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.11.11.11.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.11.11.11.1.1.m1.1a"><mo id="S4.T7.11.11.11.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.11.11.11.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.11.11.11.1.1.m1.1b"><times id="S4.T7.11.11.11.1.1.m1.1.1.cmml" xref="S4.T7.11.11.11.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.11.11.11.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.11.11.11.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.11.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.11.11.11.4.1" style="background-color:#E6E6FF;">75.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.11.11.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.11.11.11.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.11.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.11.11.11.6.1" style="background-color:#E6E6FF;">94.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.11.11.11.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.11.11.11.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">95.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.12.12.12">
<td class="ltx_td ltx_border_r" id="S4.T7.12.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.12.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.12.12.12.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.12.12.12.1.1" style="background-color:#E6E6FF;">108<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.12.12.12.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.12.12.12.1.1.m1.1a"><mo id="S4.T7.12.12.12.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.12.12.12.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.12.12.12.1.1.m1.1b"><times id="S4.T7.12.12.12.1.1.m1.1.1.cmml" xref="S4.T7.12.12.12.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.12.12.12.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.12.12.12.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.12.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.12.12.12.4.1" style="background-color:#E6E6FF;">72.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.12.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.12.12.12.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.12.12.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.12.12.12.6.1" style="background-color:#E6E6FF;">93.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.12.12.12.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.12.12.12.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">94.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.13.13.13" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.13.13.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.13.13.13.2.1" style="background-color:#E6E6FF;">FluxViT-B</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.13.13.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.13.13.13.3.1" style="background-color:#E6E6FF;">K710+MASH</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.13.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.13.13.13.1.1" style="background-color:#E6E6FF;">49<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.13.13.13.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.13.13.13.1.1.m1.1a"><mo id="S4.T7.13.13.13.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.13.13.13.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.13.13.13.1.1.m1.1b"><times id="S4.T7.13.13.13.1.1.m1.1.1.cmml" xref="S4.T7.13.13.13.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.13.13.13.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.13.13.13.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.13.13.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.13.13.13.4.1" style="background-color:#E6E6FF;">56.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.13.13.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.13.13.13.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.13.13.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.13.13.13.6.1" style="background-color:#E6E6FF;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.13.13.13.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.13.13.13.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">94.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.14.14.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.14.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
UniFormer-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib45" title=""><span class="ltx_text" style="font-size:90%;">45</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.14.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;">IN-1K</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.14.14.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">42<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.14.14.14.1.m1.1"><semantics id="S4.T7.14.14.14.1.m1.1a"><mo id="S4.T7.14.14.14.1.m1.1.1" xref="S4.T7.14.14.14.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.14.14.14.1.m1.1b"><times id="S4.T7.14.14.14.1.m1.1.1.cmml" xref="S4.T7.14.14.14.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.14.14.14.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.14.14.14.1.m1.1d">×</annotation></semantics></math>3</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.14.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;">67.7</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.14.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;">91.4</td>
</tr>
<tr class="ltx_tr" id="S4.T7.15.15.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.15.15.15.2" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMAE-S  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.15.15.15.3" style="padding-left:2.0pt;padding-right:2.0pt;">K600</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.15.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">57<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.15.15.15.1.m1.1"><semantics id="S4.T7.15.15.15.1.m1.1a"><mo id="S4.T7.15.15.15.1.m1.1.1" xref="S4.T7.15.15.15.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.15.15.15.1.m1.1b"><times id="S4.T7.15.15.15.1.m1.1.1.cmml" xref="S4.T7.15.15.15.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.15.15.15.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.15.15.15.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.15.15.15.4" style="padding-left:2.0pt;padding-right:2.0pt;">66.8</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.15.15.15.5" style="padding-left:2.0pt;padding-right:2.0pt;">90.3</td>
</tr>
<tr class="ltx_tr" id="S4.T7.16.16.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.16.16.16.2" style="padding-left:2.0pt;padding-right:2.0pt;">InternVideo2-S <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.16.16.16.3" style="padding-left:2.0pt;padding-right:2.0pt;">K710+MASH</td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.16.16.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">83<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.16.16.16.1.m1.1"><semantics id="S4.T7.16.16.16.1.m1.1a"><mo id="S4.T7.16.16.16.1.m1.1.1" xref="S4.T7.16.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.16.16.16.1.m1.1b"><times id="S4.T7.16.16.16.1.m1.1.1.cmml" xref="S4.T7.16.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.16.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.16.16.16.1.m1.1d">×</annotation></semantics></math>6</td>
<td class="ltx_td ltx_align_center ltx_border_r" colspan="2" id="S4.T7.16.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;">71.5</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T7.16.16.16.5" style="padding-left:2.0pt;padding-right:2.0pt;">93.4</td>
</tr>
<tr class="ltx_tr" id="S4.T7.17.17.17">
<td class="ltx_td ltx_border_r" id="S4.T7.17.17.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.17.17.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.17.17.17.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.17.17.17.1.1" style="background-color:#E6E6FF;">154<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.17.17.17.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.17.17.17.1.1.m1.1a"><mo id="S4.T7.17.17.17.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.17.17.17.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.17.17.17.1.1.m1.1b"><times id="S4.T7.17.17.17.1.1.m1.1.1.cmml" xref="S4.T7.17.17.17.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.17.17.17.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.17.17.17.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.17.17.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.17.17.17.4.1" style="background-color:#E6E6FF;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.17.17.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.17.17.17.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.17.17.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.17.17.17.6.1" style="background-color:#E6E6FF;">94.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.17.17.17.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.17.17.17.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">94.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.18.18.18">
<td class="ltx_td ltx_border_r" id="S4.T7.18.18.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.18.18.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.18.18.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.18.18.18.1.1" style="background-color:#E6E6FF;">83<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.18.18.18.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.18.18.18.1.1.m1.1a"><mo id="S4.T7.18.18.18.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.18.18.18.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.18.18.18.1.1.m1.1b"><times id="S4.T7.18.18.18.1.1.m1.1.1.cmml" xref="S4.T7.18.18.18.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.18.18.18.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.18.18.18.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.18.18.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.18.18.18.4.1" style="background-color:#E6E6FF;">72.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.18.18.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.18.18.18.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.18.18.18.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.18.18.18.6.1" style="background-color:#E6E6FF;">94.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.18.18.18.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.18.18.18.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">94.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.19.19.19">
<td class="ltx_td ltx_border_r" id="S4.T7.19.19.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T7.19.19.19.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.19.19.19.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.19.19.19.1.1" style="background-color:#E6E6FF;">32<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.19.19.19.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.19.19.19.1.1.m1.1a"><mo id="S4.T7.19.19.19.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.19.19.19.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.19.19.19.1.1.m1.1b"><times id="S4.T7.19.19.19.1.1.m1.1.1.cmml" xref="S4.T7.19.19.19.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.19.19.19.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.19.19.19.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.19.19.19.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.19.19.19.4.1" style="background-color:#E6E6FF;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.19.19.19.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.19.19.19.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.19.19.19.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.19.19.19.6.1" style="background-color:#E6E6FF;">93.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.19.19.19.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.19.19.19.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">93.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.20.20.20" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.20.20.20.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.20.2.1" style="background-color:#E6E6FF;">FluxViT-S</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.20.20.20.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.20.20.20.3.1" style="background-color:#E6E6FF;">K710+MASH</span></td>
<td class="ltx_td ltx_align_right ltx_border_r" id="S4.T7.20.20.20.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.20.20.20.1.1" style="background-color:#E6E6FF;">13<math alttext="\times" class="ltx_Math" display="inline" id="S4.T7.20.20.20.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T7.20.20.20.1.1.m1.1a"><mo id="S4.T7.20.20.20.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T7.20.20.20.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T7.20.20.20.1.1.m1.1b"><times id="S4.T7.20.20.20.1.1.m1.1.1.cmml" xref="S4.T7.20.20.20.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.20.20.20.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T7.20.20.20.1.1.m1.1d">×</annotation></semantics></math>6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.20.20.20.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.20.20.20.4.1" style="background-color:#E6E6FF;">55.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T7.20.20.20.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.20.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.20.20.20.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T7.20.20.20.6.1" style="background-color:#E6E6FF;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.20.20.20.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T7.20.20.20.7.1" style="color:#5E6EBA;background-color:#E6E6FF;">93.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.20.20.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T7.20.20.22.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T7.20.20.22.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T7.20.20.22.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T7.20.20.22.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T7.20.20.22.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T7.20.20.22.6" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T7.20.20.22.7" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents a comparison of the proposed FluxViT model's performance against state-of-the-art methods on the SSv2 dataset, which is specifically designed for motion-intensive video understanding tasks.  The table highlights the superior performance of FluxViT, demonstrating its effectiveness in handling challenging video content with significant motion.
> <details>
> <summary>read the caption</summary>
> Table 7: Comparison with the state-of-the-art methods with on motion-intensive SSv2. Our model achieves far better results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T8.10.10">
<tr class="ltx_tr" id="S4.T8.10.10.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T8.10.10.11.1.1">Model</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.10.10.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T8.10.10.11.2.1">e2e</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.10.10.11.3.1">BackBone</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.10.10.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.10.10.11.4.1">Top-1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> Distant Supervision <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.10.10.12.2" style="padding-left:2.0pt;padding-right:2.0pt;">✗</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.12.3" style="padding-left:2.0pt;padding-right:2.0pt;">TimeSformer</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.10.10.12.4" style="padding-left:2.0pt;padding-right:2.0pt;">90.0</td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">ViS4mer <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib36" title=""><span class="ltx_text" style="font-size:90%;">36</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.10.10.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">✗</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.13.3" style="padding-left:2.0pt;padding-right:2.0pt;">Swin-B</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.10.10.13.4" style="padding-left:2.0pt;padding-right:2.0pt;">88.4</td>
</tr>
<tr class="ltx_tr" id="S4.T8.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Turbo<sub class="ltx_sub" id="S4.T8.1.1.1.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.1.1.1.1.1.1">f32</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">✓</td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMAE-B</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T8.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">87.5</td>
</tr>
<tr class="ltx_tr" id="S4.T8.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMamba<sub class="ltx_sub" id="S4.T8.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.2.2.2.1.1.1">f64</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">✓</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMamba-S</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;">88.7</td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMamba<sub class="ltx_sub" id="S4.T8.3.3.3.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.3.3.3.1.1.1">f64</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">✓</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">VideoMamba-M</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">90.4</td>
</tr>
<tr class="ltx_tr" id="S4.T8.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">InternVideo2<sub class="ltx_sub" id="S4.T8.4.4.4.1.1"><span class="ltx_text ltx_font_italic" id="S4.T8.4.4.4.1.1.1">f12</span></sub> <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">✓</td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">InternVideo2-S</td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">90.0</td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.14">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.10.10.14.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.14.1.1" style="color:#808080;">MA-LMM  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.10.10.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.14.2.1" style="color:#808080;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.10.10.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.14.3.1" style="color:#808080;">MLLM</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T8.10.10.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.14.4.1" style="color:#808080;">93.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.15.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.15.1.1" style="color:#808080;">HERMES  <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib37" title=""><span class="ltx_text" style="font-size:90%;">37</span></a>]</cite></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.10.10.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.15.2.1" style="color:#808080;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.15.3.1" style="color:#808080;">MLLM</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T8.10.10.15.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.15.4.1" style="color:#808080;">93.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.5.5.5" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span> <span class="ltx_text" id="S4.T8.5.5.5.1.1" style="background-color:#E6E6FF;"> <span class="ltx_text ltx_font_bold" id="S4.T8.5.5.5.1.1.1">FluxViT<sub class="ltx_sub" id="S4.T8.5.5.5.1.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.5.5.5.1.1.1.1.1" style="background-color:#E6E6FF;">3072</span></sub></span></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.3.1" style="background-color:#E6E6FF;">FluxViT-S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.5.5.5.4.1" style="background-color:#E6E6FF;">91.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.5.5.5.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">92.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.6.6.6" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.1.1" style="background-color:#E6E6FF;">FluxViT<sub class="ltx_sub" id="S4.T8.6.6.6.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.6.6.6.1.1.1.1" style="background-color:#E6E6FF;">2048</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.6.6.6.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.6.6.6.3.1" style="background-color:#E6E6FF;">FluxViT-S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.6.6.6.4.1" style="background-color:#E6E6FF;">91.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.6.6.6.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">91.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.7.7.7" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.7.7.1.1" style="background-color:#E6E6FF;">FluxViT<sub class="ltx_sub" id="S4.T8.7.7.7.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.7.7.7.1.1.1.1" style="background-color:#E6E6FF;">1024</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.7.7.7.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.7.7.7.3.1" style="background-color:#E6E6FF;">FluxViT-S</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.7.7.7.4.1" style="background-color:#E6E6FF;">89.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.7.7.7.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">91.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.8.8.8" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.8.8.8.1.1" style="background-color:#E6E6FF;">FluxViT<sub class="ltx_sub" id="S4.T8.8.8.8.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.8.8.8.1.1.1.1" style="background-color:#E6E6FF;">3072</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T8.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.8.8.8.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T8.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.8.8.8.3.1" style="background-color:#E6E6FF;">FluxViT-B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.8.8.8.4.1" style="background-color:#E6E6FF;">93.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.8.8.8.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">94.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.9.9.9" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.9.9.9.1.1" style="background-color:#E6E6FF;">FluxViT<sub class="ltx_sub" id="S4.T8.9.9.9.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.9.9.9.1.1.1.1" style="background-color:#E6E6FF;">2048</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.9.9.9.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.9.9.9.3.1" style="background-color:#E6E6FF;">FluxViT-B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.9.9.9.4.1" style="background-color:#E6E6FF;">93.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.9.9.9.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">93.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.10" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.10.10.10.1.1" style="background-color:#E6E6FF;">FluxViT<sub class="ltx_sub" id="S4.T8.10.10.10.1.1.1"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T8.10.10.10.1.1.1.1" style="background-color:#E6E6FF;">1024</span></sub></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T8.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.10.2.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.10.3.1" style="background-color:#E6E6FF;">FluxViT-B</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.10.10.10.4.1" style="background-color:#E6E6FF;">92.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.10.10.10.5.1" style="color:#5E6EBA;background-color:#E6E6FF;">93.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.10.10.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T8.10.10.16.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T8.10.10.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T8.10.10.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T8.10.10.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T8.10.10.16.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 8 presents a comparison of the model's performance on the COIN dataset against state-of-the-art methods for long-form video classification.  The results are organized by the number of tokens used and the training strategy.  The left column shows results obtained using a standard approach (unmasked 12, 8, and 4 frames at 224 spatial resolution). The blue values represent performance improvements achieved by utilizing a more optimized token selection process, effectively leveraging more informative tokens. This demonstrates the efficacy of the proposed approach in improving performance with the same computational cost.
> <details>
> <summary>read the caption</summary>
> Table 8: Comparison with the state-of-the-art on long-form video classification COIN dataset. We report the results based on our preset token number, with the left line using unmasked 12, 8, 4 frames, and 224 spatial resolution while the blue values show results that can be achieved using more informative tokens.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T9.8.8">
<tr class="ltx_tr" id="S4.T9.8.8.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.9.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T9.8.8.9.1.1" style="font-size:90%;">
</span><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.1.2" style="font-size:90%;">Model</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.2.1" style="font-size:90%;">MSR</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.3.1" style="font-size:90%;">DDM</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.4.1" style="font-size:90%;">ANet</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.5.1" style="font-size:90%;">LSMDC</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.9.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.9.6.1" style="font-size:90%;">MSVD</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S4.T9.1.1.1.1.1" style="font-size:90%;"> Internvideo2-S</span><sub class="ltx_sub" id="S4.T9.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T9.1.1.1.1.2.1" style="font-size:90%;">2048</span></sub><span class="ltx_text" id="S4.T9.1.1.1.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.1.1.1.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S4.T9.1.1.1.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.1.1.1.2.1" style="font-size:90%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.1.1.1.3.1" style="font-size:90%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.1.1.1.4.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.1.1.1.5.1" style="font-size:90%;">14.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.1.1.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.1.1.1.6.1" style="font-size:90%;">41.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.10">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T9.8.8.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.10.1.1" style="font-size:90%;">Frozen-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="S4.T9.8.8.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.10.2.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.10.3.1" style="font-size:90%;">20.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.10.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.10.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.10.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.11.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.11.1.1" style="font-size:90%;">VIOLET-B  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S4.T9.8.8.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.11.2.1" style="font-size:90%;">25.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.11.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.11.3.1" style="font-size:90%;">23.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.11.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.11.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.11.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.11.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.12.1.1" style="font-size:90%;">Singularity-B  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib42" title=""><span class="ltx_text" style="font-size:90%;">42</span></a><span class="ltx_text" id="S4.T9.8.8.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.12.2.1" style="font-size:90%;">34.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.12.3.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.12.4.1" style="font-size:90%;">30.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.12.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.12.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.12.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.13.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.13.1.1" style="font-size:90%;">OmniVL-B  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib79" title=""><span class="ltx_text" style="font-size:90%;">79</span></a><span class="ltx_text" id="S4.T9.8.8.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.13.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.13.2.1" style="font-size:90%;">34.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.13.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.13.3.1" style="font-size:90%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.13.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.13.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.13.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.13.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.13.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.13.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.14.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.14.1.1" style="font-size:90%;">CLIP4Clip-B  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a><span class="ltx_text" id="S4.T9.8.8.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.14.2.1" style="font-size:90%;">30.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.14.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.14.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.14.5.1" style="font-size:90%;">13.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.14.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.14.6.1" style="font-size:90%;">36.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.15.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.15.1.1" style="font-size:90%;">UMT-B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T9.8.8.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.15.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.15.2.1" style="font-size:90%;">35.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.15.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.15.3.1" style="font-size:90%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.15.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.15.4.1" style="font-size:90%;">35.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.15.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.15.5.1" style="font-size:90%;">19.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.15.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.15.6.1" style="font-size:90%;">42.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.2.2.2.1.1" style="font-size:90%;">Internvideo2-B</span><sub class="ltx_sub" id="S4.T9.2.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T9.2.2.2.1.2.1" style="font-size:90%;">2048</span></sub><span class="ltx_text" id="S4.T9.2.2.2.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.2.2.2.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S4.T9.2.2.2.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.2.2.2.2.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.2.2.2.3.1" style="font-size:90%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.2.2.2.4.1" style="font-size:90%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.2.2.2.5.1" style="font-size:90%;">18.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.2.2.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.2.2.2.6.1" style="font-size:90%;">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.16">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T9.8.8.16.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.16.1.1" style="font-size:90%;">VINDLU-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T9.8.8.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.16.2.1" style="font-size:90%;">32.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.16.3.1" style="font-size:90%;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.16.4.1" style="font-size:90%;">30.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.16.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.16.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.16.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.16.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.17.1.1" style="font-size:90%;">InternVideo-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib85" title=""><span class="ltx_text" style="font-size:90%;">85</span></a><span class="ltx_text" id="S4.T9.8.8.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.17.2.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.17.3.1" style="font-size:90%;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.17.4.1" style="font-size:90%;">30.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.17.5.1" style="font-size:90%;">17.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.17.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.17.6.1" style="font-size:90%;">43.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.18.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.18.1.1" style="font-size:90%;">UMT-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T9.8.8.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.18.2.1" style="font-size:90%;">40.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.18.3.1" style="font-size:90%;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.18.4.1" style="font-size:90%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.18.5.1" style="font-size:90%;">24.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.18.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.18.6.1" style="font-size:90%;">49.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.19">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.19.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.19.1.1" style="font-size:90%;">ViClip-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="S4.T9.8.8.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.19.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.19.2.1" style="font-size:90%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.19.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.19.3.1" style="font-size:90%;">18.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.19.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.19.4.1" style="font-size:90%;">15.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.19.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.19.5.1" style="font-size:90%;">20.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.19.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.19.6.1" style="font-size:90%;">49.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.20">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.20.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.20.1.1" style="font-size:90%;">InternVideo2-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="S4.T9.8.8.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.20.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.20.2.1" style="font-size:90%;">42.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.20.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.20.3.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.20.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.20.4.1" style="font-size:90%;">43.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.20.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.20.5.1" style="font-size:90%;">21.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.20.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.20.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.21">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.21.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.21.1.1" style="font-size:90%;">LanguageBind-L  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.21.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a><span class="ltx_text" id="S4.T9.8.8.21.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.21.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.21.2.1" style="font-size:90%;">42.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.21.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.21.3.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.21.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.21.4.1" style="font-size:90%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.21.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.21.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.21.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.21.6.1" style="font-size:90%;">54.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.22">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.22.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.22.1.1" style="font-size:90%;">LanguageBind-H  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.22.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib101" title=""><span class="ltx_text" style="font-size:90%;">101</span></a><span class="ltx_text" id="S4.T9.8.8.22.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.22.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.22.2.1" style="font-size:90%;">44.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.22.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.22.3.1" style="font-size:90%;">39.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.22.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.22.4.1" style="font-size:90%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.22.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.22.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.22.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.22.6.1" style="font-size:90%;">53.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.23">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.23.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.23.1.1" style="font-size:90%;">VideoCoCa-G  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.23.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="S4.T9.8.8.23.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.23.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.23.2.1" style="font-size:90%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.23.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.23.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.23.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.23.4.1" style="font-size:90%;">34.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.23.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.23.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.23.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.23.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.24">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.24.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.24.1.1" style="font-size:90%;">VideoPrism-G  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.24.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib93" title=""><span class="ltx_text" style="font-size:90%;">93</span></a><span class="ltx_text" id="S4.T9.8.8.24.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.24.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.24.2.1" style="font-size:90%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.24.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.24.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.24.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.24.4.1" style="font-size:90%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.24.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.24.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.24.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.24.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.25">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.25.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T9.8.8.25.1.1" style="font-size:90%;">VAST-G  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T9.8.8.25.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T9.8.8.25.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.25.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.25.2.1" style="font-size:90%;">49.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.25.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.25.3.1" style="font-size:90%;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.25.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.25.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.25.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.25.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.25.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.25.6.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.26" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.26.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.26.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.26.2.1" style="font-size:90%;background-color:#E6E6FF;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.26.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.26.3.1" style="font-size:90%;background-color:#E6E6FF;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.26.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.26.4.1" style="font-size:90%;background-color:#E6E6FF;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.26.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.26.5.1" style="font-size:90%;background-color:#E6E6FF;">20.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.26.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.26.6.1" style="font-size:90%;background-color:#E6E6FF;">49.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.3.3.3" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.3.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-S<sub class="ltx_sub" id="S4.T9.3.3.3.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.3.3.3.1.1.2.1">2048</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.2.1" style="font-size:90%;background-color:#E6E6FF;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.3.1" style="font-size:90%;background-color:#E6E6FF;">49.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.4.1" style="font-size:90%;background-color:#E6E6FF;">52.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.5.1" style="font-size:90%;background-color:#E6E6FF;">22.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.3.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.3.3.3.6.1" style="font-size:90%;background-color:#E6E6FF;">49.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.27">
<td class="ltx_td ltx_border_r" id="S4.T9.8.8.27.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.27.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.27.2.1" style="font-size:90%;background-color:#E6E6FF;">42.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.27.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.27.3.1" style="font-size:90%;background-color:#E6E6FF;">45.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.27.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.27.4.1" style="font-size:90%;background-color:#E6E6FF;">47.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.27.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.27.5.1" style="font-size:90%;background-color:#E6E6FF;">18.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.27.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.27.6.1" style="font-size:90%;background-color:#E6E6FF;">48.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.4.4.4" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-S<sub class="ltx_sub" id="S4.T9.4.4.4.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.4.4.4.1.1.2.1">1024</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.2.1" style="font-size:90%;background-color:#E6E6FF;">44.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.3.1" style="font-size:90%;background-color:#E6E6FF;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.4.1" style="font-size:90%;background-color:#E6E6FF;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.5.1" style="font-size:90%;background-color:#E6E6FF;">20.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.4.4.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.4.4.4.6.1" style="font-size:90%;background-color:#E6E6FF;">48.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.28">
<td class="ltx_td ltx_border_r" id="S4.T9.8.8.28.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.28.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.28.2.1" style="font-size:90%;background-color:#E6E6FF;">36.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.28.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.28.3.1" style="font-size:90%;background-color:#E6E6FF;">38.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.28.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.28.4.1" style="font-size:90%;background-color:#E6E6FF;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.28.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.28.5.1" style="font-size:90%;background-color:#E6E6FF;">17.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.28.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.28.6.1" style="font-size:90%;background-color:#E6E6FF;">45.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.5.5.5" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-S<sub class="ltx_sub" id="S4.T9.5.5.5.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.5.5.5.1.1.2.1">512</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.5.5.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.2.1" style="font-size:90%;background-color:#E6E6FF;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.5.5.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.3.1" style="font-size:90%;background-color:#E6E6FF;">45.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.5.5.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.4.1" style="font-size:90%;background-color:#E6E6FF;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.5.5.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.5.1" style="font-size:90%;background-color:#E6E6FF;">19.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.5.5.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.5.5.5.6.1" style="font-size:90%;background-color:#E6E6FF;">46.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.29">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T9.8.8.29.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.29.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.29.2.1" style="font-size:90%;background-color:#E6E6FF;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.29.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.29.3.1" style="font-size:90%;background-color:#E6E6FF;">52.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.29.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.29.4.1" style="font-size:90%;background-color:#E6E6FF;">56.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.29.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.29.5.1" style="font-size:90%;background-color:#E6E6FF;">23.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.29.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.29.6.1" style="font-size:90%;background-color:#E6E6FF;">53.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.6.6.6" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.6.6.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-B<sub class="ltx_sub" id="S4.T9.6.6.6.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.6.6.6.1.1.2.1">2048</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.2.1" style="font-size:90%;background-color:#E6E6FF;">49.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.3.1" style="font-size:90%;background-color:#E6E6FF;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.4.1" style="font-size:90%;background-color:#E6E6FF;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.5.1" style="font-size:90%;background-color:#E6E6FF;">25.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.6.6.6.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.6.6.6.6.1" style="font-size:90%;background-color:#E6E6FF;">54.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.30">
<td class="ltx_td ltx_border_r" id="S4.T9.8.8.30.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.30.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.30.2.1" style="font-size:90%;background-color:#E6E6FF;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.30.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.30.3.1" style="font-size:90%;background-color:#E6E6FF;">48.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.30.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.30.4.1" style="font-size:90%;background-color:#E6E6FF;">51.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.30.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.30.5.1" style="font-size:90%;background-color:#E6E6FF;">22.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.30.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.30.6.1" style="font-size:90%;background-color:#E6E6FF;">52.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.7.7.7" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-B<sub class="ltx_sub" id="S4.T9.7.7.7.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.7.7.7.1.1.2.1">1024</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.2.1" style="font-size:90%;background-color:#E6E6FF;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.3.1" style="font-size:90%;background-color:#E6E6FF;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.4.1" style="font-size:90%;background-color:#E6E6FF;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.5.1" style="font-size:90%;background-color:#E6E6FF;">24.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.7.7.7.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.7.7.7.6.1" style="font-size:90%;background-color:#E6E6FF;">53.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.31">
<td class="ltx_td ltx_border_r" id="S4.T9.8.8.31.1" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.31.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.31.2.1" style="font-size:90%;background-color:#E6E6FF;">42.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.31.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.31.3.1" style="font-size:90%;background-color:#E6E6FF;">42.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.31.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.31.4.1" style="font-size:90%;background-color:#E6E6FF;">42.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.31.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.31.5.1" style="font-size:90%;background-color:#E6E6FF;">20.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T9.8.8.31.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T9.8.8.31.6.1" style="font-size:90%;background-color:#E6E6FF;">50.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.8" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.1.1" style="font-size:90%;background-color:#E6E6FF;">FluxViT-B<sub class="ltx_sub" id="S4.T9.8.8.8.1.1.2"><span class="ltx_text ltx_font_medium ltx_font_italic" id="S4.T9.8.8.8.1.1.2.1">512</span></sub></span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.2.1" style="font-size:90%;background-color:#E6E6FF;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.3.1" style="font-size:90%;background-color:#E6E6FF;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.4.1" style="font-size:90%;background-color:#E6E6FF;">50.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.5.1" style="font-size:90%;background-color:#E6E6FF;">22.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T9.8.8.8.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T9.8.8.8.6.1" style="font-size:90%;background-color:#E6E6FF;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T9.8.8.32">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T9.8.8.32.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T9.8.8.32.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T9.8.8.32.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T9.8.8.32.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T9.8.8.32.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T9.8.8.32.6" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents zero-shot text-to-video retrieval results on five benchmark datasets: MSRVTT, DiDeMo, ActivityNet, LSMDC, and MSVD.  The metric used is R@1 (recall at 1), measuring the accuracy of retrieving the correct video given a text query.  The table is structured to compare different variants of the FluxViT model with varying input token numbers (2048, 1024, 512), which correspond to different spatiotemporal resolutions of the input video. For each token count, results are shown for the model using standard training (without masking) and the model using the Flux method's more informative token selection strategy.  The 'Type' column indicates whether the task is text-to-video (T2V) or video-to-text (V2T),  The dual softmax loss function is employed in all evaluations.
> <details>
> <summary>read the caption</summary>
> Table 9: Zero-shot text-to-video retrieval on MSRVTT (“MSR”), DiDeMo (“DDM”), AcitivityNet (“ANet”), LSMDC, and MSVD. We only report the R@1 accuracy. The upper line regarding FluxViT shows results with non-masked 8×\times×2242, 4×\times×2242 and 2×\times×2242 input setting as indicated by the token count while each lower bold line shows results further using more informative tokens. We employ Dual Softmax Loss for the results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T10.16.16">
<tr class="ltx_tr" id="S4.T10.16.16.17">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.16.16.17.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T10.16.16.17.1.1">Encoder</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.16.16.17.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.16.16.17.2.1">#Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.16.16.17.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T10.16.16.17.3.1">w/<span class="ltx_text ltx_font_upright" id="S4.T10.16.16.17.3.1.1"> TO</span></span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.16.16.17.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.16.16.17.4.1">MVbench</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.16.16.17.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.16.16.17.5.1">Dream1k-F1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
Clip-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib68" title=""><span class="ltx_text" style="font-size:90%;">68</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.1.1.1.1.m1.1"><semantics id="S4.T10.1.1.1.1.m1.1a"><mo id="S4.T10.1.1.1.1.m1.1.1" xref="S4.T10.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.1.1.1.1.m1.1b"><times id="S4.T10.1.1.1.1.m1.1.1.cmml" xref="S4.T10.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.1.1.1.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.1.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.1.1.1.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.1.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">45.6</td>
<td class="ltx_td ltx_align_center" id="S4.T10.1.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">28.4</td>
</tr>
<tr class="ltx_tr" id="S4.T10.3.3.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">SigLIP<sub class="ltx_sub" id="S4.T10.2.2.2.1.1"><span class="ltx_text ltx_font_italic" id="S4.T10.2.2.2.1.1.1">336</span></sub>-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.3.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.3.3.3.2.m1.1"><semantics id="S4.T10.3.3.3.2.m1.1a"><mo id="S4.T10.3.3.3.2.m1.1.1" xref="S4.T10.3.3.3.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.3.3.3.2.m1.1b"><times id="S4.T10.3.3.3.2.m1.1.1.cmml" xref="S4.T10.3.3.3.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.3.3.3.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.3.3.3.2.m1.1d">×</annotation></semantics></math>576</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.3.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.3.3.3.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.3.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S4.T10.3.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">29.2</td>
</tr>
<tr class="ltx_tr" id="S4.T10.4.4.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.4.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">InternVideo2-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.4.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.4.4.4.1.m1.1"><semantics id="S4.T10.4.4.4.1.m1.1a"><mo id="S4.T10.4.4.4.1.m1.1.1" xref="S4.T10.4.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.4.4.4.1.m1.1b"><times id="S4.T10.4.4.4.1.m1.1.1.cmml" xref="S4.T10.4.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.4.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.4.4.4.1.m1.1d">×</annotation></semantics></math>224</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.4.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.4.4.4.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.4.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">47.0</td>
<td class="ltx_td ltx_align_center" id="S4.T10.4.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">28.7</td>
</tr>
<tr class="ltx_tr" id="S4.T10.6.6.6">
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S4.T10.5.5.5.1" style="padding-left:2.0pt;padding-right:2.0pt;">SigLIP<sub class="ltx_sub" id="S4.T10.5.5.5.1.1"><span class="ltx_text ltx_font_italic" id="S4.T10.5.5.5.1.1.1">336</span></sub>-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib96" title=""><span class="ltx_text" style="font-size:90%;">96</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.6.6.6.2" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.6.6.6.2.m1.1"><semantics id="S4.T10.6.6.6.2.m1.1a"><mo id="S4.T10.6.6.6.2.m1.1.1" xref="S4.T10.6.6.6.2.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.6.6.6.2.m1.1b"><times id="S4.T10.6.6.6.2.m1.1.1.cmml" xref="S4.T10.6.6.6.2.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.6.6.6.2.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.6.6.6.2.m1.1d">×</annotation></semantics></math>576</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.6.6.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.6.6.6.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.6.6.6.4" style="padding-left:2.0pt;padding-right:2.0pt;">44.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.6.6.6.5" style="padding-left:2.0pt;padding-right:2.0pt;">25.4</td>
</tr>
<tr class="ltx_tr" id="S4.T10.7.7.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.7.7.7.2" style="padding-left:2.0pt;padding-right:2.0pt;">UMT-L <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a>]</cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.7.7.7.1" style="padding-left:2.0pt;padding-right:2.0pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.7.7.7.1.m1.1"><semantics id="S4.T10.7.7.7.1.m1.1a"><mo id="S4.T10.7.7.7.1.m1.1.1" xref="S4.T10.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.7.7.7.1.m1.1b"><times id="S4.T10.7.7.7.1.m1.1.1.cmml" xref="S4.T10.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.7.7.7.1.m1.1d">×</annotation></semantics></math>256</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.7.7.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.7.7.7.3.1">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.7.7.7.4" style="padding-left:2.0pt;padding-right:2.0pt;">45.0</td>
<td class="ltx_td ltx_align_center" id="S4.T10.7.7.7.5" style="padding-left:2.0pt;padding-right:2.0pt;">24.6</td>
</tr>
<tr class="ltx_tr" id="S4.T10.8.8.8" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.8.8.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.8.8.8.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.8.8.8.1.1" style="background-color:#E6E6FF;">8<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.8.8.8.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T10.8.8.8.1.1.m1.1a"><mo id="S4.T10.8.8.8.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T10.8.8.8.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.8.8.8.1.1.m1.1b"><times id="S4.T10.8.8.8.1.1.m1.1.1.cmml" xref="S4.T10.8.8.8.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.8.8.8.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.8.8.8.1.1.m1.1d">×</annotation></semantics></math>256</span></td>
<td class="ltx_td ltx_border_r" id="S4.T10.8.8.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.8.8.8.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.8.8.8.4.1" style="background-color:#E6E6FF;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.8.8.8.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.8.8.8.5.1" style="background-color:#E6E6FF;">29.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.9.9.9">
<td class="ltx_td ltx_border_r" id="S4.T10.9.9.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.9.9.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.9.9.9.1.1" style="background-color:#E6E6FF;">4<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.9.9.9.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T10.9.9.9.1.1.m1.1a"><mo id="S4.T10.9.9.9.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T10.9.9.9.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.9.9.9.1.1.m1.1b"><times id="S4.T10.9.9.9.1.1.m1.1.1.cmml" xref="S4.T10.9.9.9.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.9.9.9.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.9.9.9.1.1.m1.1d">×</annotation></semantics></math>256</span></td>
<td class="ltx_td ltx_border_r" id="S4.T10.9.9.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.9.9.9.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.9.9.9.4.1" style="background-color:#E6E6FF;">46.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.9.9.9.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.9.9.9.5.1" style="background-color:#E6E6FF;">27.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.10.10.10" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.10.10.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.10.10.10.2.1" style="background-color:#E6E6FF;">FluxViT-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.10.10.10.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.10.10.10.1.1" style="background-color:#E6E6FF;">2<math alttext="\times" class="ltx_Math" display="inline" id="S4.T10.10.10.10.1.1.m1.1" style="background-color:#E6E6FF;"><semantics id="S4.T10.10.10.10.1.1.m1.1a"><mo id="S4.T10.10.10.10.1.1.m1.1.1" mathbackground="#E6E6FF" xref="S4.T10.10.10.10.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S4.T10.10.10.10.1.1.m1.1b"><times id="S4.T10.10.10.10.1.1.m1.1.1.cmml" xref="S4.T10.10.10.10.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.10.10.10.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S4.T10.10.10.10.1.1.m1.1d">×</annotation></semantics></math>256</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.10.10.10.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.10.10.10.3.1" style="background-color:#E6E6FF;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.10.10.10.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.10.10.10.4.1" style="background-color:#E6E6FF;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.10.10.10.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.10.10.10.5.1" style="background-color:#E6E6FF;">25.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.12.12.12">
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T10.12.12.12.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.12.12.12.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.12.12.12.4.1" style="background-color:#E6E6FF;">2048</span></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T10.12.12.12.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T10.11.11.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.11.11.11.1.1" style="background-color:#E6E6FF;">49.0
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.11.11.11.1.1.m1.1"><semantics id="S4.T10.11.11.11.1.1.m1.1a"><mo id="S4.T10.11.11.11.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.11.11.11.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.11.11.11.1.1.m1.1b"><ci id="S4.T10.11.11.11.1.1.m1.1.1.cmml" xref="S4.T10.11.11.11.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.11.11.11.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.11.11.11.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.11.11.11.1.1.1" style="font-size:80%;color:#5C946E;">0.7</span>)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T10.12.12.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.12.12.12.2.1" style="background-color:#E6E6FF;">29.5
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.12.12.12.2.1.m1.1"><semantics id="S4.T10.12.12.12.2.1.m1.1a"><mo id="S4.T10.12.12.12.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.12.12.12.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.12.12.12.2.1.m1.1b"><ci id="S4.T10.12.12.12.2.1.m1.1.1.cmml" xref="S4.T10.12.12.12.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.12.12.12.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.12.12.12.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.12.12.12.2.1.1" style="font-size:80%;color:#5C946E;">0.5</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.14.14.14">
<td class="ltx_td ltx_border_r" id="S4.T10.14.14.14.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.14.14.14.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.14.14.14.4.1" style="background-color:#E6E6FF;">1024</span></td>
<td class="ltx_td ltx_border_r" id="S4.T10.14.14.14.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.13.13.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.13.13.13.1.1" style="background-color:#E6E6FF;">47.7
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.13.13.13.1.1.m1.1"><semantics id="S4.T10.13.13.13.1.1.m1.1a"><mo id="S4.T10.13.13.13.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.13.13.13.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.13.13.13.1.1.m1.1b"><ci id="S4.T10.13.13.13.1.1.m1.1.1.cmml" xref="S4.T10.13.13.13.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.13.13.13.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.13.13.13.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.13.13.13.1.1.1" style="font-size:80%;color:#5C946E;">0.8</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.14.14.14.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.14.14.14.2.1" style="background-color:#E6E6FF;">28.5
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.14.14.14.2.1.m1.1"><semantics id="S4.T10.14.14.14.2.1.m1.1a"><mo id="S4.T10.14.14.14.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.14.14.14.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.14.14.14.2.1.m1.1b"><ci id="S4.T10.14.14.14.2.1.m1.1.1.cmml" xref="S4.T10.14.14.14.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.14.14.14.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.14.14.14.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.14.14.14.2.1.1" style="font-size:80%;color:#5C946E;">0.6</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.16.16.16" style="background-color:#E6E6FF;">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.16.16.16.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T10.16.16.16.3.1" style="background-color:#E6E6FF;">FluxViT-L</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.16.16.16.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.16.16.16.4.1" style="background-color:#E6E6FF;">512</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.16.16.16.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="S4.T10.16.16.16.5.1" style="background-color:#E6E6FF;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T10.15.15.15.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.15.15.15.1.1" style="background-color:#E6E6FF;">47.6
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.15.15.15.1.1.m1.1"><semantics id="S4.T10.15.15.15.1.1.m1.1a"><mo id="S4.T10.15.15.15.1.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.15.15.15.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.15.15.15.1.1.m1.1b"><ci id="S4.T10.15.15.15.1.1.m1.1.1.cmml" xref="S4.T10.15.15.15.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.15.15.15.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.15.15.15.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.15.15.15.1.1.1" style="font-size:80%;color:#5C946E;">1.6</span>)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T10.16.16.16.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T10.16.16.16.2.1" style="background-color:#E6E6FF;">27.5
(<math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T10.16.16.16.2.1.m1.1"><semantics id="S4.T10.16.16.16.2.1.m1.1a"><mo id="S4.T10.16.16.16.2.1.m1.1.1" mathbackground="#E6E6FF" mathcolor="#5C946E" stretchy="false" xref="S4.T10.16.16.16.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T10.16.16.16.2.1.m1.1b"><ci id="S4.T10.16.16.16.2.1.m1.1.1.cmml" xref="S4.T10.16.16.16.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T10.16.16.16.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T10.16.16.16.2.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T10.16.16.16.2.1.1" style="font-size:80%;color:#5C946E;">1.9</span>)</span></td>
</tr>
<tr class="ltx_tr" id="S4.T10.16.16.18">
<td class="ltx_td ltx_align_left ltx_border_r" id="S4.T10.16.16.18.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T10.16.16.18.2" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T10.16.16.18.3" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T10.16.16.18.4" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
<td class="ltx_td" id="S4.T10.16.16.18.5" style="padding-left:2.0pt;padding-right:2.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents the performance of various models on two chat-centric benchmark datasets: MVbench (evaluating general perception capabilities) and Dream1k (assessing fine-grained captioning abilities).  A key aspect of this experiment is that both the vision encoder (the model being evaluated) and the language model (LLM) remain frozen during training; only a projection layer between them is trained. This setup, referred to as the 'linear prob' setting, isolates the performance of the vision encoder. The '#Tokens' column indicates the number of visual tokens processed by the vision encoder in each model.
> <details>
> <summary>read the caption</summary>
> Table 10: Results on Chat-Centric benchmarks MVbench (General perception) and Dream1k(Fine-grained caption). Models are trained in a multimodal ‘linear prob’ setting where both the Encoder and the LLM are frozen. #Tokens for the number of visual tokens by the vision encoder.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T11.4.1">
<tr class="ltx_tr" id="A1.T11.4.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.1.1" rowspan="2" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="A1.T11.4.1.1.1.1">#Frame</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" colspan="5" id="A1.T11.4.1.1.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.1.2.1">Spatial Resolution</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.1.3" rowspan="2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.1.3.1">Max</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.2.1" style="padding-left:1.2pt;padding-right:1.2pt;">168</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.2.2" style="padding-left:1.2pt;padding-right:1.2pt;">196</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.2.3" style="padding-left:1.2pt;padding-right:1.2pt;">224</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.2.4" style="padding-left:1.2pt;padding-right:1.2pt;">252</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.2.5" style="padding-left:1.2pt;padding-right:1.2pt;">280</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.3.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.3.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T11.4.1.3.2.1" style="color:#808080;">80.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.3.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T11.4.1.3.3.1" style="color:#808080;">81.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.3.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T11.4.1.3.4.1" style="color:#5E6EBA;">82.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.3.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.3.5.1">82.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.3.6" style="padding-left:1.2pt;padding-right:1.2pt;">82.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.3.7" style="padding-left:1.2pt;padding-right:1.2pt;">82.6</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.4.1" style="padding-left:1.2pt;padding-right:1.2pt;">6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.4.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T11.4.1.4.2.1" style="color:#808080;">83.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.4.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.4.3.1">84.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.4.4" style="padding-left:1.2pt;padding-right:1.2pt;">84.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.4.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.4.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.4.7" style="padding-left:1.2pt;padding-right:1.2pt;">84.5</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.5.1" style="padding-left:1.2pt;padding-right:1.2pt;">8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.5.2" style="padding-left:1.2pt;padding-right:1.2pt;">84.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.5.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.5.3.1">84.8</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.5.4" style="padding-left:1.2pt;padding-right:1.2pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.5.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.5.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.5.7" style="padding-left:1.2pt;padding-right:1.2pt;">84.8</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.6.1" style="padding-left:1.2pt;padding-right:1.2pt;">10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.6.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.6.2.1">85.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.6.3" style="padding-left:1.2pt;padding-right:1.2pt;">85.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.6.4" style="padding-left:1.2pt;padding-right:1.2pt;">85.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.6.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.6.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.6.7" style="padding-left:1.2pt;padding-right:1.2pt;">85.2</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.7.1" style="padding-left:1.2pt;padding-right:1.2pt;">12</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.7.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.7.2.1">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.7.3" style="padding-left:1.2pt;padding-right:1.2pt;">85.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.7.4" style="padding-left:1.2pt;padding-right:1.2pt;">84.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.7.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.7.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.7.7" style="padding-left:1.2pt;padding-right:1.2pt;">85.3</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.8.1" style="padding-left:1.2pt;padding-right:1.2pt;">16</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.8.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.8.2.1">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.8.3" style="padding-left:1.2pt;padding-right:1.2pt;">85.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.8.4" style="padding-left:1.2pt;padding-right:1.2pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.8.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.8.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.8.7" style="padding-left:1.2pt;padding-right:1.2pt;">85.3</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.9.1" style="padding-left:1.2pt;padding-right:1.2pt;">20</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.9.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.9.2.1">85.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.9.3" style="padding-left:1.2pt;padding-right:1.2pt;">85.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.9.4" style="padding-left:1.2pt;padding-right:1.2pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.9.5" style="padding-left:1.2pt;padding-right:1.2pt;">84.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T11.4.1.9.6" style="padding-left:1.2pt;padding-right:1.2pt;">83.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T11.4.1.9.7" style="padding-left:1.2pt;padding-right:1.2pt;">85.1</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r ltx_border_t" id="A1.T11.4.1.10.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.1.1">Max</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.4.1.10.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.2.1">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.4.1.10.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.3.1">85.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.4.1.10.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.4.1">85.0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.4.1.10.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.5.1">84.5</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.4.1.10.6" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T11.4.1.10.6.1">83.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T11.4.1.10.7" style="padding-left:1.2pt;padding-right:1.2pt;">-</td>
</tr>
<tr class="ltx_tr" id="A1.T11.4.1.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T11.4.1.11.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="A1.T11.4.1.11.2" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
<td class="ltx_td" id="A1.T11.4.1.11.3" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
<td class="ltx_td" id="A1.T11.4.1.11.4" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
<td class="ltx_td" id="A1.T11.4.1.11.5" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
<td class="ltx_td" id="A1.T11.4.1.11.6" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
<td class="ltx_td" id="A1.T11.4.1.11.7" style="padding-left:1.2pt;padding-right:1.2pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of the FluxViT-S model on the K400 dataset.  It investigates the impact of varying spatiotemporal resolutions (frame counts and spatial resolutions) while keeping the number of input tokens constant at 1024. The results highlight the optimal balance between frame counts and resolution for achieving the best performance. Each row shows the top-1 accuracy for different settings, with the best accuracy for each frame count shown in bold. The results using the standard, unmasked setting (without the Flux module) are also included in blue for comparison.
> <details>
> <summary>read the caption</summary>
> Table 11: Results of FluxViT-S on K400 using 1024 tokens and different spatiotemporal resolutions. We use 1clip ×\times× 1crop for testing. The blue value marks the results of the unmasked setting. The values in bold show the best resolution for each frame count.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T12.25.25">
<tr class="ltx_tr" id="A1.T12.25.25.26">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.25.25.26.1" rowspan="2" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span> <span class="ltx_text ltx_font_bold" id="A1.T12.25.25.26.1.1">Method</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.25.25.26.2" rowspan="2" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.25.25.26.2.1">Input Size</span></td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="3" id="A1.T12.25.25.26.3" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.25.25.26.3.1">#Token</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.25.25.27">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.25.25.27.1" style="padding-left:1.1pt;padding-right:1.1pt;">1024</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.25.25.27.2" style="padding-left:1.1pt;padding-right:1.1pt;">512</td>
</tr>
<tr class="ltx_tr" id="A1.T12.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.2.2.2.3" rowspan="7" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="A1.T12.2.2.2.3.1">Our selector</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.2.2.2.2" style="padding-left:1.1pt;padding-right:1.1pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.1.1.1.1.m1.1"><semantics id="A1.T12.1.1.1.1.m1.1a"><mo id="A1.T12.1.1.1.1.m1.1.1" xref="A1.T12.1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.1.1.1.1.m1.1b"><times id="A1.T12.1.1.1.1.m1.1.1.cmml" xref="A1.T12.1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.1.1.1.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.2.2.2.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.2.2.2.4" style="padding-left:1.1pt;padding-right:1.1pt;">82.3</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.2.2.2.5" style="padding-left:1.1pt;padding-right:1.1pt;">79.5</td>
</tr>
<tr class="ltx_tr" id="A1.T12.4.4.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.4.4.4.2" style="padding-left:1.1pt;padding-right:1.1pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.3.3.3.1.m1.1"><semantics id="A1.T12.3.3.3.1.m1.1a"><mo id="A1.T12.3.3.3.1.m1.1.1" xref="A1.T12.3.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.3.3.3.1.m1.1b"><times id="A1.T12.3.3.3.1.m1.1.1.cmml" xref="A1.T12.3.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.3.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.3.3.3.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.4.4.4.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.4.4.4.3" style="padding-left:1.1pt;padding-right:1.1pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.4.4.4.4" style="padding-left:1.1pt;padding-right:1.1pt;">81.3</td>
</tr>
<tr class="ltx_tr" id="A1.T12.6.6.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.6.6.6.2" style="padding-left:1.1pt;padding-right:1.1pt;">12<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.5.5.5.1.m1.1"><semantics id="A1.T12.5.5.5.1.m1.1a"><mo id="A1.T12.5.5.5.1.m1.1.1" xref="A1.T12.5.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.5.5.5.1.m1.1b"><times id="A1.T12.5.5.5.1.m1.1.1.cmml" xref="A1.T12.5.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.5.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.5.5.5.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.6.6.6.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.6.6.6.3" style="padding-left:1.1pt;padding-right:1.1pt;">84.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.6.6.6.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.7</td>
</tr>
<tr class="ltx_tr" id="A1.T12.8.8.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.8.8.8.2" style="padding-left:1.1pt;padding-right:1.1pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.7.7.7.1.m1.1"><semantics id="A1.T12.7.7.7.1.m1.1a"><mo id="A1.T12.7.7.7.1.m1.1.1" xref="A1.T12.7.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.7.7.7.1.m1.1b"><times id="A1.T12.7.7.7.1.m1.1.1.cmml" xref="A1.T12.7.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.7.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.7.7.7.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.8.8.8.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.8.8.8.3" style="padding-left:1.1pt;padding-right:1.1pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.8.8.8.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.7</td>
</tr>
<tr class="ltx_tr" id="A1.T12.10.10.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.10.10.10.2" style="padding-left:1.1pt;padding-right:1.1pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.9.9.9.1.m1.1"><semantics id="A1.T12.9.9.9.1.m1.1a"><mo id="A1.T12.9.9.9.1.m1.1.1" xref="A1.T12.9.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.9.9.9.1.m1.1b"><times id="A1.T12.9.9.9.1.m1.1.1.cmml" xref="A1.T12.9.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.9.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.9.9.9.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.10.10.10.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.10.10.10.3" style="padding-left:1.1pt;padding-right:1.1pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.10.10.10.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.3</td>
</tr>
<tr class="ltx_tr" id="A1.T12.12.12.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.12.12.12.2" style="padding-left:1.1pt;padding-right:1.1pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.11.11.11.1.m1.1"><semantics id="A1.T12.11.11.11.1.m1.1a"><mo id="A1.T12.11.11.11.1.m1.1.1" xref="A1.T12.11.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.11.11.11.1.m1.1b"><times id="A1.T12.11.11.11.1.m1.1.1.cmml" xref="A1.T12.11.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.11.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.11.11.11.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.12.12.12.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.12.12.12.3" style="padding-left:1.1pt;padding-right:1.1pt;">84.6</td>
<td class="ltx_td ltx_nopad_l ltx_align_center" colspan="2" id="A1.T12.12.12.12.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.3</td>
</tr>
<tr class="ltx_tr" id="A1.T12.25.25.28">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T12.25.25.28.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.25.25.28.1.1">Max</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T12.25.25.28.2" style="padding-left:1.1pt;padding-right:1.1pt;">84.9</td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_t" colspan="2" id="A1.T12.25.25.28.3" style="padding-left:1.1pt;padding-right:1.1pt;">81.3</td>
</tr>
<tr class="ltx_tr" id="A1.T12.15.15.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.15.15.15.4" rowspan="7" style="padding-left:1.1pt;padding-right:1.1pt;">
<span class="ltx_rule" style="width:100%;height:0.8pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold ltx_font_italic" id="A1.T12.15.15.15.4.1">w/<span class="ltx_text ltx_font_upright" id="A1.T12.15.15.15.4.1.1"> Vid-TLDR</span></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.14.14.14.2" style="padding-left:1.1pt;padding-right:1.1pt;">4<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.13.13.13.1.m1.1"><semantics id="A1.T12.13.13.13.1.m1.1a"><mo id="A1.T12.13.13.13.1.m1.1.1" xref="A1.T12.13.13.13.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.13.13.13.1.m1.1b"><times id="A1.T12.13.13.13.1.m1.1.1.cmml" xref="A1.T12.13.13.13.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.13.13.13.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.13.13.13.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.14.14.14.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.15.15.15.3" style="padding-left:1.1pt;padding-right:1.1pt;"><math alttext="\varnothing" class="ltx_Math" display="inline" id="A1.T12.15.15.15.3.m1.1"><semantics id="A1.T12.15.15.15.3.m1.1a"><mi id="A1.T12.15.15.15.3.m1.1.1" mathvariant="normal" xref="A1.T12.15.15.15.3.m1.1.1.cmml">∅</mi><annotation-xml encoding="MathML-Content" id="A1.T12.15.15.15.3.m1.1b"><emptyset id="A1.T12.15.15.15.3.m1.1.1.cmml" xref="A1.T12.15.15.15.3.m1.1.1"></emptyset></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.15.15.15.3.m1.1c">\varnothing</annotation><annotation encoding="application/x-llamapun" id="A1.T12.15.15.15.3.m1.1d">∅</annotation></semantics></math></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.15.15.15.5" style="padding-left:1.1pt;padding-right:1.1pt;">77.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.15.15.15.6" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.15.15.15.6.1" style="color:#808080;">78.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.17.17.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.17.17.17.2" style="padding-left:1.1pt;padding-right:1.1pt;">8<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.16.16.16.1.m1.1"><semantics id="A1.T12.16.16.16.1.m1.1a"><mo id="A1.T12.16.16.16.1.m1.1.1" xref="A1.T12.16.16.16.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.16.16.16.1.m1.1b"><times id="A1.T12.16.16.16.1.m1.1.1.cmml" xref="A1.T12.16.16.16.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.16.16.16.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.16.16.16.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.17.17.17.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.17.17.17.3" style="padding-left:1.1pt;padding-right:1.1pt;">83.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.17.17.17.4" style="padding-left:1.1pt;padding-right:1.1pt;">81.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.17.17.17.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.17.17.17.5.1" style="color:#808080;">79.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.19.19.19">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.19.19.19.2" style="padding-left:1.1pt;padding-right:1.1pt;">12<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.18.18.18.1.m1.1"><semantics id="A1.T12.18.18.18.1.m1.1a"><mo id="A1.T12.18.18.18.1.m1.1.1" xref="A1.T12.18.18.18.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.18.18.18.1.m1.1b"><times id="A1.T12.18.18.18.1.m1.1.1.cmml" xref="A1.T12.18.18.18.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.18.18.18.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.18.18.18.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.19.19.19.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.19.19.19.3" style="padding-left:1.1pt;padding-right:1.1pt;">85.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.19.19.19.4" style="padding-left:1.1pt;padding-right:1.1pt;">81.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.19.19.19.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.19.19.19.5.1" style="color:#808080;">80.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.21.21.21">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.21.21.21.2" style="padding-left:1.1pt;padding-right:1.1pt;">16<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.20.20.20.1.m1.1"><semantics id="A1.T12.20.20.20.1.m1.1a"><mo id="A1.T12.20.20.20.1.m1.1.1" xref="A1.T12.20.20.20.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.20.20.20.1.m1.1b"><times id="A1.T12.20.20.20.1.m1.1.1.cmml" xref="A1.T12.20.20.20.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.20.20.20.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.20.20.20.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.21.21.21.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.21.21.21.3" style="padding-left:1.1pt;padding-right:1.1pt;">85.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.21.21.21.4" style="padding-left:1.1pt;padding-right:1.1pt;">81.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.21.21.21.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.21.21.21.5.1" style="color:#808080;">80.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.23.23.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.23.23.23.2" style="padding-left:1.1pt;padding-right:1.1pt;">20<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.22.22.22.1.m1.1"><semantics id="A1.T12.22.22.22.1.m1.1a"><mo id="A1.T12.22.22.22.1.m1.1.1" xref="A1.T12.22.22.22.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.22.22.22.1.m1.1b"><times id="A1.T12.22.22.22.1.m1.1.1.cmml" xref="A1.T12.22.22.22.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.22.22.22.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.22.22.22.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.23.23.23.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.23.23.23.3" style="padding-left:1.1pt;padding-right:1.1pt;">85.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.23.23.23.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.23.23.23.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.23.23.23.5.1" style="color:#808080;">80.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.25.25.25">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r" id="A1.T12.25.25.25.2" style="padding-left:1.1pt;padding-right:1.1pt;">24<math alttext="\times" class="ltx_Math" display="inline" id="A1.T12.24.24.24.1.m1.1"><semantics id="A1.T12.24.24.24.1.m1.1a"><mo id="A1.T12.24.24.24.1.m1.1.1" xref="A1.T12.24.24.24.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="A1.T12.24.24.24.1.m1.1b"><times id="A1.T12.24.24.24.1.m1.1.1.cmml" xref="A1.T12.24.24.24.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="A1.T12.24.24.24.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="A1.T12.24.24.24.1.m1.1d">×</annotation></semantics></math>224<sup class="ltx_sup" id="A1.T12.25.25.25.2.1">2</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.25.25.25.3" style="padding-left:1.1pt;padding-right:1.1pt;">85.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r" id="A1.T12.25.25.25.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T12.25.25.25.5" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text" id="A1.T12.25.25.25.5.1" style="color:#808080;">80.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T12.25.25.29">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_right ltx_border_r ltx_border_t" id="A1.T12.25.25.29.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_text ltx_font_bold" id="A1.T12.25.25.29.1.1">Max</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T12.25.25.29.2" style="padding-left:1.1pt;padding-right:1.1pt;">85.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_r ltx_border_t" id="A1.T12.25.25.29.3" style="padding-left:1.1pt;padding-right:1.1pt;">81.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T12.25.25.29.4" style="padding-left:1.1pt;padding-right:1.1pt;">80.9</td>
</tr>
<tr class="ltx_tr" id="A1.T12.25.25.30">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_r" id="A1.T12.25.25.30.1" style="padding-left:1.1pt;padding-right:1.1pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="A1.T12.25.25.30.2" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td" id="A1.T12.25.25.30.3" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td" id="A1.T12.25.25.30.4" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
<td class="ltx_td" id="A1.T12.25.25.30.5" style="padding-left:1.1pt;padding-right:1.1pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 12 presents an ablation study on the impact of integrating the Vid-TLDR token merging technique [16] within the FluxViT model, specifically during testing on the K400 dataset.  The primary goal is to evaluate the effect of different token reduction strategies on the model's performance. The table compares the top-1 accuracy of FluxViT with varying input spatial and temporal resolutions (indicated by the number of tokens).  It showcases that the performance gains obtained by using Vid-TLDR are significantly influenced by the specific hyperparameters employed (particularly the number of tokens reduced in specific layers of the network).  This highlights the sensitivity and complexity of adjusting the Vid-TLDR technique for optimal performance.
> <details>
> <summary>read the caption</summary>
> Table 12: Use token merging strategy Vid-TLDR [16] on FluxViT K400 testing. The increment achieved by ViD-TLDR is sensitive to the hyper-parameter setting, like how many tokens are to be reduced in certain layers.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T14.1.1">
<tr class="ltx_tr" id="A1.T14.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.2.1"><span class="ltx_text" id="A1.T14.1.1.2.1.1" style="font-size:90%;">config</span></td>
<td class="ltx_td ltx_align_center" id="A1.T14.1.1.2.2"><span class="ltx_text" id="A1.T14.1.1.2.2.1" style="font-size:90%;">SthSth V2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T14.1.1.2.3"><span class="ltx_text" id="A1.T14.1.1.2.3.1" style="font-size:90%;">Others</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.3.1">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A1.T14.1.1.3.1.1" style="font-size:90%;">
optimizer</span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.3.2">
<span class="ltx_text" id="A1.T14.1.1.3.2.1" style="font-size:90%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T14.1.1.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A1.T14.1.1.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.1.2"><span class="ltx_text" id="A1.T14.1.1.1.2.1" style="font-size:90%;">optimizer momentum</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.1.1"><math alttext="\beta_{1},\beta_{2}{=}0.9,0.98" class="ltx_Math" display="inline" id="A1.T14.1.1.1.1.m1.2"><semantics id="A1.T14.1.1.1.1.m1.2a"><mrow id="A1.T14.1.1.1.1.m1.2.2.1" xref="A1.T14.1.1.1.1.m1.2.2.2.cmml"><mrow id="A1.T14.1.1.1.1.m1.2.2.1.1" xref="A1.T14.1.1.1.1.m1.2.2.1.1.cmml"><mrow id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.3.cmml"><msub id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.cmml"><mi id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.2" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml">β</mi><mn id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.3" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.3" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.3.cmml">,</mo><msub id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.cmml"><mi id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.2" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml">β</mi><mn id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.3" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml">2</mn></msub></mrow><mo id="A1.T14.1.1.1.1.m1.2.2.1.1.3" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.3.cmml">=</mo><mn id="A1.T14.1.1.1.1.m1.2.2.1.1.4" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.1.1.4.cmml">0.9</mn></mrow><mo id="A1.T14.1.1.1.1.m1.2.2.1.2" mathsize="90%" xref="A1.T14.1.1.1.1.m1.2.2.2a.cmml">,</mo><mn id="A1.T14.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T14.1.1.1.1.m1.1.1.cmml">0.98</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T14.1.1.1.1.m1.2b"><apply id="A1.T14.1.1.1.1.m1.2.2.2.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T14.1.1.1.1.m1.2.2.2a.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.2">formulae-sequence</csymbol><apply id="A1.T14.1.1.1.1.m1.2.2.1.1.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1"><eq id="A1.T14.1.1.1.1.m1.2.2.1.1.3.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.3"></eq><list id="A1.T14.1.1.1.1.m1.2.2.1.1.2.3.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2"><apply id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.1.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1">subscript</csymbol><ci id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.2">𝛽</ci><cn id="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml" type="integer" xref="A1.T14.1.1.1.1.m1.2.2.1.1.1.1.1.3">1</cn></apply><apply id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2"><csymbol cd="ambiguous" id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.1.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2">subscript</csymbol><ci id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.2">𝛽</ci><cn id="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml" type="integer" xref="A1.T14.1.1.1.1.m1.2.2.1.1.2.2.2.3">2</cn></apply></list><cn id="A1.T14.1.1.1.1.m1.2.2.1.1.4.cmml" type="float" xref="A1.T14.1.1.1.1.m1.2.2.1.1.4">0.9</cn></apply><cn id="A1.T14.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T14.1.1.1.1.m1.1.1">0.98</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T14.1.1.1.1.m1.2c">\beta_{1},\beta_{2}{=}0.9,0.98</annotation><annotation encoding="application/x-llamapun" id="A1.T14.1.1.1.1.m1.2d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.9 , 0.98</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.4.1"><span class="ltx_text" id="A1.T14.1.1.4.1.1" style="font-size:90%;">weight decay</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.4.2"><span class="ltx_text" id="A1.T14.1.1.4.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.5.1"><span class="ltx_text" id="A1.T14.1.1.5.1.1" style="font-size:90%;">learning rate schedule</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.5.2">
<span class="ltx_text" id="A1.T14.1.1.5.2.1" style="font-size:90%;">cosine decay </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T14.1.1.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A1.T14.1.1.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.6.1"><span class="ltx_text" id="A1.T14.1.1.6.1.1" style="font-size:90%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.6.2"><span class="ltx_text" id="A1.T14.1.1.6.2.1" style="font-size:90%;">1e-3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.7.1"><span class="ltx_text" id="A1.T14.1.1.7.1.1" style="font-size:90%;">batch size</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.7.2"><span class="ltx_text" id="A1.T14.1.1.7.2.1" style="font-size:90%;">2048</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.8.1">
<span class="ltx_text" id="A1.T14.1.1.8.1.1" style="font-size:90%;">warmup epochs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T14.1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A1.T14.1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.8.2"><span class="ltx_text" id="A1.T14.1.1.8.2.1" style="font-size:90%;">20</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.9.1"><span class="ltx_text" id="A1.T14.1.1.9.1.1" style="font-size:90%;">total epochs</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.9.2"><span class="ltx_text" id="A1.T14.1.1.9.2.1" style="font-size:90%;">100</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.10.1"><span class="ltx_text" id="A1.T14.1.1.10.1.1" style="font-size:90%;">teacher input token</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.10.2"><span class="ltx_text" id="A1.T14.1.1.10.2.1" style="font-size:90%;">2048</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.11.1"><span class="ltx_text" id="A1.T14.1.1.11.1.1" style="font-size:90%;">student input tokens</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.11.2"><span class="ltx_text" id="A1.T14.1.1.11.2.1" style="font-size:90%;">2048, 1536, 1024</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.12.1"><span class="ltx_text" id="A1.T14.1.1.12.1.1" style="font-size:90%;">input frame</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.12.2"><span class="ltx_text" id="A1.T14.1.1.12.2.1" style="font-size:90%;">(4, 26, stride=2)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.13.1"><span class="ltx_text" id="A1.T14.1.1.13.1.1" style="font-size:90%;">spatial resolution</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.13.2"><span class="ltx_text" id="A1.T14.1.1.13.2.1" style="font-size:90%;">(168, 280, stride=28)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.14">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.14.1">
<span class="ltx_text" id="A1.T14.1.1.14.1.1" style="font-size:90%;">drop path </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T14.1.1.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="A1.T14.1.1.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.14.2"><span class="ltx_text" id="A1.T14.1.1.14.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.15">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.15.1"><span class="ltx_text" id="A1.T14.1.1.15.1.1" style="font-size:90%;">flip augmentation</span></td>
<td class="ltx_td ltx_align_center" id="A1.T14.1.1.15.2"><span class="ltx_text ltx_font_italic" id="A1.T14.1.1.15.2.1" style="font-size:90%;">no</span></td>
<td class="ltx_td ltx_align_center" id="A1.T14.1.1.15.3"><span class="ltx_text ltx_font_italic" id="A1.T14.1.1.15.3.1" style="font-size:90%;">yes</span></td>
</tr>
<tr class="ltx_tr" id="A1.T14.1.1.16">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T14.1.1.16.1"><span class="ltx_text" id="A1.T14.1.1.16.1.1" style="font-size:90%;">augmentation</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T14.1.1.16.2"><span class="ltx_text" id="A1.T14.1.1.16.2.1" style="font-size:90%;">MultiScaleCrop [0.66, 0.75, 0.875, 1]</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of zero-shot action recognition experiments.  It shows the performance of the FluxViT model, with various configurations (different numbers of input tokens and whether or not advanced Flux modules were used), on several standard action recognition datasets (UCF101 and MiTv1).  The results are displayed as Top-1 and Top-5 accuracy rates, providing a comprehensive comparison of the model's performance across different settings.
> <details>
> <summary>read the caption</summary>
> Table 13: Full Zero-shot Action Recognition Results.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T15.1.1">
<tr class="ltx_tr" id="A1.T15.1.1.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.2.1.1" style="font-size:90%;">config</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.2.2.1" style="font-size:90%;">Kinetics</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.2.3.1" style="font-size:90%;">COIN</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A1.T15.1.1.3.1.1" style="font-size:90%;">
optimizer</span>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.3.2.1" style="font-size:90%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.3.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A1.T15.1.1.3.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.1.2.1" style="font-size:90%;">optimizer momentum</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\beta_{1},\beta_{2}{=}0.9,0.999" class="ltx_Math" display="inline" id="A1.T15.1.1.1.1.m1.2"><semantics id="A1.T15.1.1.1.1.m1.2a"><mrow id="A1.T15.1.1.1.1.m1.2.2.1" xref="A1.T15.1.1.1.1.m1.2.2.2.cmml"><mrow id="A1.T15.1.1.1.1.m1.2.2.1.1" xref="A1.T15.1.1.1.1.m1.2.2.1.1.cmml"><mrow id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.3.cmml"><msub id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.cmml"><mi id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.2" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml">β</mi><mn id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.3" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.3" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.3.cmml">,</mo><msub id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.cmml"><mi id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.2" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml">β</mi><mn id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.3" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml">2</mn></msub></mrow><mo id="A1.T15.1.1.1.1.m1.2.2.1.1.3" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.3.cmml">=</mo><mn id="A1.T15.1.1.1.1.m1.2.2.1.1.4" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.1.1.4.cmml">0.9</mn></mrow><mo id="A1.T15.1.1.1.1.m1.2.2.1.2" mathsize="90%" xref="A1.T15.1.1.1.1.m1.2.2.2a.cmml">,</mo><mn id="A1.T15.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T15.1.1.1.1.m1.1.1.cmml">0.999</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T15.1.1.1.1.m1.2b"><apply id="A1.T15.1.1.1.1.m1.2.2.2.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T15.1.1.1.1.m1.2.2.2a.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.2">formulae-sequence</csymbol><apply id="A1.T15.1.1.1.1.m1.2.2.1.1.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1"><eq id="A1.T15.1.1.1.1.m1.2.2.1.1.3.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.3"></eq><list id="A1.T15.1.1.1.1.m1.2.2.1.1.2.3.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2"><apply id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.1.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1">subscript</csymbol><ci id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.2">𝛽</ci><cn id="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml" type="integer" xref="A1.T15.1.1.1.1.m1.2.2.1.1.1.1.1.3">1</cn></apply><apply id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2"><csymbol cd="ambiguous" id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.1.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2">subscript</csymbol><ci id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.2">𝛽</ci><cn id="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml" type="integer" xref="A1.T15.1.1.1.1.m1.2.2.1.1.2.2.2.3">2</cn></apply></list><cn id="A1.T15.1.1.1.1.m1.2.2.1.1.4.cmml" type="float" xref="A1.T15.1.1.1.1.m1.2.2.1.1.4">0.9</cn></apply><cn id="A1.T15.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T15.1.1.1.1.m1.1.1">0.999</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T15.1.1.1.1.m1.2c">\beta_{1},\beta_{2}{=}0.9,0.999</annotation><annotation encoding="application/x-llamapun" id="A1.T15.1.1.1.1.m1.2d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.9 , 0.999</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.4.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.4.1.1" style="font-size:90%;">weight decay</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.4.2.1" style="font-size:90%;">0.05</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.5.1.1" style="font-size:90%;">learning rate schedule</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.5.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.5.2.1" style="font-size:90%;">cosine decay </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A1.T15.1.1.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.6.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.6.1.1" style="font-size:90%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.6.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.6.2.1" style="font-size:90%;">2e-4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.6.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.6.3.1" style="font-size:90%;">5e-4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.7.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.7.1.1" style="font-size:90%;">batch size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.7.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.7.2.1" style="font-size:90%;">1024+512</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.7.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.7.3.1" style="font-size:90%;">512</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.8.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.8.1.1" style="font-size:90%;">warmup epochs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A1.T15.1.1.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.8.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.8.2.1" style="font-size:90%;">5+1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.8.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.8.3.1" style="font-size:90%;">5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.9.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.9.1.1" style="font-size:90%;">total epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.9.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.9.2.1" style="font-size:90%;">35+5 (S), 20+3 (B)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T15.1.1.9.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.9.3.1" style="font-size:90%;">40(S), 25 (B)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.10.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.10.1.1" style="font-size:90%;">drop path </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="A1.T15.1.1.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.10.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.10.2.1" style="font-size:90%;">0.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.11.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.11.1.1" style="font-size:90%;">flip augmentation</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.11.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T15.1.1.11.2.1" style="font-size:90%;">yes</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.12.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.12.1.1" style="font-size:90%;">label smoothing </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib73" title=""><span class="ltx_text" style="font-size:90%;">73</span></a><span class="ltx_text" id="A1.T15.1.1.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.12.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.12.2.1" style="font-size:90%;">0.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T15.1.1.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T15.1.1.13.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="A1.T15.1.1.13.1.1" style="font-size:90%;">augmentation</span></td>
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T15.1.1.13.2" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="A1.T15.1.1.13.2.1" style="font-size:90%;">RandAug(9, 0.5) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T15.1.1.13.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib17" title=""><span class="ltx_text" style="font-size:90%;">17</span></a><span class="ltx_text" id="A1.T15.1.1.13.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for pre-training the video models using the Unmasked Teacher (UMT) framework with the proposed Flux method.  It includes settings for the optimizer, weight decay, learning rate schedule and its initial value, batch size, warm-up epochs, total training epochs, dropout rate, data augmentation techniques, and other relevant parameters. These settings are crucial for achieving robust and efficient pre-training of the video models, especially when using the flexible sampling strategy introduced by the Flux method.
> <details>
> <summary>read the caption</summary>
> Table 14:  Flux-UMT pre-training settings.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T16.2.2">
<tr class="ltx_tr" id="A1.T16.2.2.3">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.3.1"><span class="ltx_text" id="A1.T16.2.2.3.1.1" style="font-size:90%;">config</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.3.2"><span class="ltx_text" id="A1.T16.2.2.3.2.1" style="font-size:90%;">25M+2.5M</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.4">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.4.1">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="A1.T16.2.2.4.1.1" style="font-size:90%;">
optimizer</span>
</td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.4.2">
<span class="ltx_text" id="A1.T16.2.2.4.2.1" style="font-size:90%;">AdamW </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T16.2.2.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="A1.T16.2.2.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T16.1.1.1">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.1.1.1.2"><span class="ltx_text" id="A1.T16.1.1.1.2.1" style="font-size:90%;">optimizer momentum</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.1.1.1.1"><math alttext="\beta_{1},\beta_{2}{=}0.9,0.98" class="ltx_Math" display="inline" id="A1.T16.1.1.1.1.m1.2"><semantics id="A1.T16.1.1.1.1.m1.2a"><mrow id="A1.T16.1.1.1.1.m1.2.2.1" xref="A1.T16.1.1.1.1.m1.2.2.2.cmml"><mrow id="A1.T16.1.1.1.1.m1.2.2.1.1" xref="A1.T16.1.1.1.1.m1.2.2.1.1.cmml"><mrow id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.3.cmml"><msub id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.cmml"><mi id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.2" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml">β</mi><mn id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.3" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml">1</mn></msub><mo id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.3" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.3.cmml">,</mo><msub id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.cmml"><mi id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.2" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml">β</mi><mn id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.3" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml">2</mn></msub></mrow><mo id="A1.T16.1.1.1.1.m1.2.2.1.1.3" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.3.cmml">=</mo><mn id="A1.T16.1.1.1.1.m1.2.2.1.1.4" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.1.1.4.cmml">0.9</mn></mrow><mo id="A1.T16.1.1.1.1.m1.2.2.1.2" mathsize="90%" xref="A1.T16.1.1.1.1.m1.2.2.2a.cmml">,</mo><mn id="A1.T16.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T16.1.1.1.1.m1.1.1.cmml">0.98</mn></mrow><annotation-xml encoding="MathML-Content" id="A1.T16.1.1.1.1.m1.2b"><apply id="A1.T16.1.1.1.1.m1.2.2.2.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1"><csymbol cd="ambiguous" id="A1.T16.1.1.1.1.m1.2.2.2a.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.2">formulae-sequence</csymbol><apply id="A1.T16.1.1.1.1.m1.2.2.1.1.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1"><eq id="A1.T16.1.1.1.1.m1.2.2.1.1.3.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.3"></eq><list id="A1.T16.1.1.1.1.m1.2.2.1.1.2.3.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2"><apply id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1"><csymbol cd="ambiguous" id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.1.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1">subscript</csymbol><ci id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.2.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.2">𝛽</ci><cn id="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.3.cmml" type="integer" xref="A1.T16.1.1.1.1.m1.2.2.1.1.1.1.1.3">1</cn></apply><apply id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2"><csymbol cd="ambiguous" id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.1.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2">subscript</csymbol><ci id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.2.cmml" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.2">𝛽</ci><cn id="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.3.cmml" type="integer" xref="A1.T16.1.1.1.1.m1.2.2.1.1.2.2.2.3">2</cn></apply></list><cn id="A1.T16.1.1.1.1.m1.2.2.1.1.4.cmml" type="float" xref="A1.T16.1.1.1.1.m1.2.2.1.1.4">0.9</cn></apply><cn id="A1.T16.1.1.1.1.m1.1.1.cmml" type="float" xref="A1.T16.1.1.1.1.m1.1.1">0.98</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A1.T16.1.1.1.1.m1.2c">\beta_{1},\beta_{2}{=}0.9,0.98</annotation><annotation encoding="application/x-llamapun" id="A1.T16.1.1.1.1.m1.2d">italic_β start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT , italic_β start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT = 0.9 , 0.98</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.5">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.5.1"><span class="ltx_text" id="A1.T16.2.2.5.1.1" style="font-size:90%;">weight decay</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.5.2"><span class="ltx_text" id="A1.T16.2.2.5.2.1" style="font-size:90%;">0.02</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.6">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.6.1"><span class="ltx_text" id="A1.T16.2.2.6.1.1" style="font-size:90%;">learning rate schedule</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.6.2">
<span class="ltx_text" id="A1.T16.2.2.6.2.1" style="font-size:90%;">cosine decay </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T16.2.2.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="A1.T16.2.2.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.7">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.7.1"><span class="ltx_text" id="A1.T16.2.2.7.1.1" style="font-size:90%;">learning rate</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.7.2"><span class="ltx_text" id="A1.T16.2.2.7.2.1" style="font-size:90%;">4e-4 (25M), 2e-5 (2.5M)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.2">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.2.2"><span class="ltx_text" id="A1.T16.2.2.2.2.1" style="font-size:90%;">batch size</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.2.1">
<span class="ltx_text" id="A1.T16.2.2.2.1.1" style="font-size:90%;">4096 (image), 4096 (video)</span><math alttext="{\dagger}" class="ltx_Math" display="inline" id="A1.T16.2.2.2.1.m1.1"><semantics id="A1.T16.2.2.2.1.m1.1a"><mo id="A1.T16.2.2.2.1.m1.1.1" mathcolor="#FF0000" mathsize="90%" xref="A1.T16.2.2.2.1.m1.1.1.cmml">†</mo><annotation-xml encoding="MathML-Content" id="A1.T16.2.2.2.1.m1.1b"><ci id="A1.T16.2.2.2.1.m1.1.1.cmml" xref="A1.T16.2.2.2.1.m1.1.1">†</ci></annotation-xml><annotation encoding="application/x-tex" id="A1.T16.2.2.2.1.m1.1c">{\dagger}</annotation><annotation encoding="application/x-llamapun" id="A1.T16.2.2.2.1.m1.1d">†</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.8">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.8.1">
<span class="ltx_text" id="A1.T16.2.2.8.1.1" style="font-size:90%;">warmup epochs </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T16.2.2.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="A1.T16.2.2.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.8.2"><span class="ltx_text" id="A1.T16.2.2.8.2.1" style="font-size:90%;">0.6 (25M), 0 (2.5M)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.9">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.9.1"><span class="ltx_text" id="A1.T16.2.2.9.1.1" style="font-size:90%;">total epochs</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.9.2"><span class="ltx_text" id="A1.T16.2.2.9.2.1" style="font-size:90%;">3 (25M), 1 (2.5M)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.10">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.10.1"><span class="ltx_text" id="A1.T16.2.2.10.1.1" style="font-size:90%;">input frame</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.10.2"><span class="ltx_text" id="A1.T16.2.2.10.2.1" style="font-size:90%;">(4, 26, stride=2)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.11">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.11.1"><span class="ltx_text" id="A1.T16.2.2.11.1.1" style="font-size:90%;">spatial resolution</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.11.2"><span class="ltx_text" id="A1.T16.2.2.11.2.1" style="font-size:90%;">(168, 280, stride=28)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.12">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.12.1"><span class="ltx_text" id="A1.T16.2.2.12.1.1" style="font-size:90%;">token threshold</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.12.2"><span class="ltx_text" id="A1.T16.2.2.12.2.1" style="font-size:90%;">(2048, 4096)</span></td>
</tr>
<tr class="ltx_tr" id="A1.T16.2.2.13">
<td class="ltx_td ltx_align_left ltx_border_r" id="A1.T16.2.2.13.1"><span class="ltx_text" id="A1.T16.2.2.13.1.1" style="font-size:90%;">augmentation</span></td>
<td class="ltx_td ltx_align_center" id="A1.T16.2.2.13.2"><span class="ltx_text" id="A1.T16.2.2.13.2.1" style="font-size:90%;">MultiScaleCrop [0.5, 1]</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 15 details the hyperparameters used for fine-tuning the model on the action recognition task.  Specifically, it shows the optimizer used (AdamW), optimizer momentum, weight decay, learning rate schedule (cosine decay), learning rate, batch size, warmup epochs, total training epochs, dropout rate, data augmentation techniques used (flip augmentation and RandAugment), and label smoothing. The training epochs are broken down into two phases: A epochs on the Kinetics-710 dataset and B epochs on the Kinetics-400 dataset. Warmup epochs and batch sizes follow the same A/B breakdown.
> <details>
> <summary>read the caption</summary>
> Table 15:  Action recognition fine-tuning settings. The training epochs A+B on Kinetics include A epochs on K710 and B epochs on K400, the same notation for warmup-epochs and batch size.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T17.7.7">
<tr class="ltx_tr" id="A1.T17.7.7.8">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_tt" id="A1.T17.7.7.8.1" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T17.7.7.8.1.1" style="font-size:90%;">Dataset</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T17.7.7.8.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T17.7.7.8.2.1" style="font-size:90%;">#image/video</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T17.7.7.8.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T17.7.7.8.3.1" style="font-size:90%;">#text</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="A1.T17.7.7.8.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text ltx_font_bold" id="A1.T17.7.7.8.4.1" style="font-size:90%;">Type</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.9">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T17.7.7.9.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.9.1.1" style="font-size:90%;">Kinetics-710 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="A1.T17.7.7.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.7.7.9.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.9.2.1" style="font-size:90%;">658K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.7.7.9.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.9.3.1" style="font-size:90%;">0</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.7.7.9.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.9.4.1" style="font-size:90%;">Video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.10.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.10.1.1" style="font-size:90%;">COCO </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib52" title=""><span class="ltx_text" style="font-size:90%;">52</span></a><span class="ltx_text" id="A1.T17.7.7.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.10.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.10.2.1" style="font-size:90%;">113K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.10.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.10.3.1" style="font-size:90%;">567K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.10.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.10.4.1" style="font-size:90%;">image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.11.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.11.1.1" style="font-size:90%;">Visual Genome </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib39" title=""><span class="ltx_text" style="font-size:90%;">39</span></a><span class="ltx_text" id="A1.T17.7.7.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.11.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.11.2.1" style="font-size:90%;">100K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.11.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.11.3.1" style="font-size:90%;">768K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.11.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.11.4.1" style="font-size:90%;">image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.12.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.12.1.1" style="font-size:90%;">SBU Captions </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="A1.T17.7.7.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.12.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.12.2.1" style="font-size:90%;">860K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.12.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.12.3.1" style="font-size:90%;">860K</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.12.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.12.4.1" style="font-size:90%;">image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.13">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.13.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.13.1.1" style="font-size:90%;">CC3M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a><span class="ltx_text" id="A1.T17.7.7.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.13.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.13.2.1" style="font-size:90%;">2.88M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.13.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.13.3.1" style="font-size:90%;">2.88M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.13.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.13.4.1" style="font-size:90%;">image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.14">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.14.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.14.1.1" style="font-size:90%;">CC12M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.14.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib12" title=""><span class="ltx_text" style="font-size:90%;">12</span></a><span class="ltx_text" id="A1.T17.7.7.14.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.14.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.14.2.1" style="font-size:90%;">11.00M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.14.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.14.3.1" style="font-size:90%;">11.00M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.14.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.14.4.1" style="font-size:90%;">image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.15">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.15.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.15.1.1" style="font-size:90%;">S-MiT0.5M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="A1.T17.7.7.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.15.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.15.2.1" style="font-size:90%;">0.5M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.15.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.15.3.1" style="font-size:90%;">0.5M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.15.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.15.4.1" style="font-size:90%;">video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.16">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.16.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.16.1.1" style="font-size:90%;">WebVid-2M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="A1.T17.7.7.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.16.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.16.2.1" style="font-size:90%;">2.49M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.16.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.16.3.1" style="font-size:90%;">2.49M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.16.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.16.4.1" style="font-size:90%;">video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.17">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.17.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.17.1.1" style="font-size:90%;">WebVid-10M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib3" title=""><span class="ltx_text" style="font-size:90%;">3</span></a><span class="ltx_text" id="A1.T17.7.7.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.17.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.17.2.1" style="font-size:90%;">10.73M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.17.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.17.3.1" style="font-size:90%;">10.73M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.17.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.17.4.1" style="font-size:90%;">video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.7.7.18.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.18.1.1" style="font-size:90%;">InternVid2M </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A1.T17.7.7.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14237v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="A1.T17.7.7.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.18.2" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.18.2.1" style="font-size:90%;">2.0M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.18.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.18.3.1" style="font-size:90%;">2.0M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A1.T17.7.7.18.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.18.4.1" style="font-size:90%;">video</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A1.T17.1.1.1.1" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.1.1.1.1.1" style="font-size:90%;">25M corpus = CC3M</span><math alttext="+" class="ltx_Math" display="inline" id="A1.T17.1.1.1.1.m1.1"><semantics id="A1.T17.1.1.1.1.m1.1a"><mo id="A1.T17.1.1.1.1.m1.1.1" mathsize="90%" xref="A1.T17.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.1.1.1.1.m1.1b"><plus id="A1.T17.1.1.1.1.m1.1.1.cmml" xref="A1.T17.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.1.1.1.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.1.1.1.1.2" style="font-size:90%;">CC12M</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.1.1.1.2" rowspan="3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.1.1.1.2.1" style="font-size:90%;">25.68M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.1.1.1.3" rowspan="3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.1.1.1.3.1" style="font-size:90%;">26.81M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A1.T17.1.1.1.4" rowspan="3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.1.1.1.4.1" style="font-size:90%;">video + image</span></td>
</tr>
<tr class="ltx_tr" id="A1.T17.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.3.3.3.2" style="padding-left:1.2pt;padding-right:1.2pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A1.T17.2.2.2.1.m1.1"><semantics id="A1.T17.2.2.2.1.m1.1a"><mo id="A1.T17.2.2.2.1.m1.1.1" mathsize="90%" xref="A1.T17.2.2.2.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.2.2.2.1.m1.1b"><plus id="A1.T17.2.2.2.1.m1.1.1.cmml" xref="A1.T17.2.2.2.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.2.2.2.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.2.2.2.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.3.3.3.2.1" style="font-size:90%;">WebVid-10M</span><math alttext="+" class="ltx_Math" display="inline" id="A1.T17.3.3.3.2.m2.1"><semantics id="A1.T17.3.3.3.2.m2.1a"><mo id="A1.T17.3.3.3.2.m2.1.1" mathsize="90%" xref="A1.T17.3.3.3.2.m2.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.3.3.3.2.m2.1b"><plus id="A1.T17.3.3.3.2.m2.1.1.cmml" xref="A1.T17.3.3.3.2.m2.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.3.3.3.2.m2.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.3.3.3.2.m2.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.3.3.3.2.2" style="font-size:90%;">Visual Genome</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T17.5.5.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A1.T17.5.5.5.2" style="padding-left:1.2pt;padding-right:1.2pt;">
<math alttext="+" class="ltx_Math" display="inline" id="A1.T17.4.4.4.1.m1.1"><semantics id="A1.T17.4.4.4.1.m1.1a"><mo id="A1.T17.4.4.4.1.m1.1.1" mathsize="90%" xref="A1.T17.4.4.4.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.4.4.4.1.m1.1b"><plus id="A1.T17.4.4.4.1.m1.1.1.cmml" xref="A1.T17.4.4.4.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.4.4.4.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.4.4.4.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.5.5.5.2.1" style="font-size:90%;">SBU</span><math alttext="+" class="ltx_Math" display="inline" id="A1.T17.5.5.5.2.m2.1"><semantics id="A1.T17.5.5.5.2.m2.1a"><mo id="A1.T17.5.5.5.2.m2.1.1" mathsize="90%" xref="A1.T17.5.5.5.2.m2.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.5.5.5.2.m2.1b"><plus id="A1.T17.5.5.5.2.m2.1.1.cmml" xref="A1.T17.5.5.5.2.m2.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.5.5.5.2.m2.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.5.5.5.2.m2.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.5.5.5.2.2" style="font-size:90%;">COCO</span>
</td>
</tr>
<tr class="ltx_tr" id="A1.T17.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A1.T17.7.7.7.2" style="padding-left:1.2pt;padding-right:1.2pt;">
<span class="ltx_text" id="A1.T17.7.7.7.2.1" style="font-size:90%;">2.5M corpus = S-MiT</span><math alttext="+" class="ltx_Math" display="inline" id="A1.T17.6.6.6.1.m1.1"><semantics id="A1.T17.6.6.6.1.m1.1a"><mo id="A1.T17.6.6.6.1.m1.1.1" mathsize="90%" xref="A1.T17.6.6.6.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.6.6.6.1.m1.1b"><plus id="A1.T17.6.6.6.1.m1.1.1.cmml" xref="A1.T17.6.6.6.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.6.6.6.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.6.6.6.1.m1.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.7.7.7.2.2" style="font-size:90%;">InternVid2M</span><math alttext="+" class="ltx_Math" display="inline" id="A1.T17.7.7.7.2.m2.1"><semantics id="A1.T17.7.7.7.2.m2.1a"><mo id="A1.T17.7.7.7.2.m2.1.1" mathsize="90%" xref="A1.T17.7.7.7.2.m2.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="A1.T17.7.7.7.2.m2.1b"><plus id="A1.T17.7.7.7.2.m2.1.1.cmml" xref="A1.T17.7.7.7.2.m2.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="A1.T17.7.7.7.2.m2.1c">+</annotation><annotation encoding="application/x-llamapun" id="A1.T17.7.7.7.2.m2.1d">+</annotation></semantics></math><span class="ltx_text" id="A1.T17.7.7.7.2.3" style="font-size:90%;">COCO</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T17.7.7.7.3" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.7.3.1" style="font-size:90%;">2.56M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T17.7.7.7.4" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.7.4.1" style="font-size:90%;">2.62M</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A1.T17.7.7.7.5" style="padding-left:1.2pt;padding-right:1.2pt;"><span class="ltx_text" id="A1.T17.7.7.7.5.1" style="font-size:90%;">video + image</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used during the pre-training phase of the Flux-CLIP model. It outlines the optimizer used (AdamW), its momentum, weight decay, learning rate schedule, learning rate itself, batch size, warmup epochs, total training epochs, dropout rate, data augmentation techniques (flip augmentation and MultiScaleCrop), and the specific handling of batch size for the FluxViT-B model during training with the 2.5M dataset.  The note clarifies that the batch size was reduced to 2048 for FluxViT-B model when training with the 2.5M dataset.
> <details>
> <summary>read the caption</summary>
> Table 16:  Flux-CLIP pre-training settings. ††{\dagger}†: For FluxViT-B, we lower the batch size to 2048 for the 2.5M data training.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14237/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14237/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}