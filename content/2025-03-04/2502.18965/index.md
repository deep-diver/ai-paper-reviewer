---
title: "OneRec: Unifying Retrieve and Rank with Generative Recommender and Iterative Preference Alignment"
summary: "OneRec: A unified generative model that replaces the traditional retrieve-and-rank strategy, significantly improving recommendation quality in real-world scenarios."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Machine Learning", "Recommender Systems", "🏢 KuaiShou Inc.",]
showSummary: true
date: 2025-02-26
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2502.18965 {{< /keyword >}}
{{< keyword icon="writer" >}} Jiaxin Deng et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-04 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2502.18965" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2502.18965" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2502.18965/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional recommendation systems use a multi-stage approach: retrieving potential items then ranking them. Generative retrieval-based recommendation systems (GRs) directly generate items, but haven't matched the accuracy of multi-stage systems. This paper tackles the challenge of creating a single model that can handle item recommendations effectively. 



The paper introduces **OneRec**, an end-to-end generative framework. **OneRec** replaces the traditional cascaded learning with a unified generative model, which includes an encoder-decoder structure and an iterative preference alignment module. The method surpasses current complex recommendation systems, showing a substantial improvement in a real-world short video platform.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} OneRec, a unified generative model, outperforms traditional recommender systems by directly generating candidate videos. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Session-wise generation and iterative preference alignment enhance the quality and coherence of recommendations. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Deployment of OneRec in a large-scale platform demonstrates substantial improvements in user engagement, achieving a 1.6% increase in watch time. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a novel generative recommendation framework, paving the way for more effective and personalized content delivery. It offers new insights for building end-to-end recommendation systems and preference learning, inspiring future work to explore generative models for various real-world applications and user experience enhancements.

------
#### Visual Insights



![](https://arxiv.org/html/2502.18965/x1.png)

> 🔼 Figure 1 illustrates two different recommendation system architectures. (a) shows the proposed OneRec model, which is a unified end-to-end architecture for generating recommendations. This model directly generates a list of recommended items, unlike traditional systems.  (b) depicts a typical cascade ranking system, which uses a three-stage pipeline: Retrieval (identifying a large set of candidates), Pre-ranking (filtering the candidates to a smaller subset), and Ranking (ordering the remaining candidates). This figure visually contrasts the simplicity and directness of OneRec with the complexity of the traditional approach.
> <details>
> <summary>read the caption</summary>
> Figure 1. (a) Our proposed unified architecture for end-to-end generation. (b) A typical cascade ranking system, which includes three stages from the bottom to the top: Retrieval, Pre-ranking, and Ranking.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S3.SS3.SSS2.136.136.132">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.133.1">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S3.SS3.SSS2.136.136.132.133.1.1" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.133.1.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.133.1.1.1.1" style="width:74.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.136.136.132.133.1.1.1.1.1">Model</span></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.SS3.SSS2.136.136.132.133.1.2" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.133.1.2.1">Watching-Time Metrics</span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S3.SS3.SSS2.136.136.132.133.1.3" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.133.1.3.1">Interaction Metrics</span></th>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.8.8.4.4">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row" id="S3.SS3.SSS2.8.8.4.4.5" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.8.8.4.4.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.8.8.4.4.5.1.1" style="width:74.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column" colspan="2" id="S3.SS3.SSS2.5.5.1.1.1" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.5.5.1.1.1.1">swt<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1.1" stretchy="false" xref="S3.SS3.SSS2.5.5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1b"><ci id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.5.5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.5.5.1.1.1.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column" colspan="2" id="S3.SS3.SSS2.6.6.2.2.2" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.6.6.2.2.2.1">vtr<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1"><semantics id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1a"><mo id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1.1" stretchy="false" xref="S3.SS3.SSS2.6.6.2.2.2.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1b"><ci id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1.1.cmml" xref="S3.SS3.SSS2.6.6.2.2.2.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.6.6.2.2.2.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column" colspan="2" id="S3.SS3.SSS2.7.7.3.3.3" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.7.7.3.3.3.1">wtr<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1"><semantics id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1a"><mo id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1.1" stretchy="false" xref="S3.SS3.SSS2.7.7.3.3.3.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1b"><ci id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1.1.cmml" xref="S3.SS3.SSS2.7.7.3.3.3.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.7.7.3.3.3.1.m1.1d">↑</annotation></semantics></math></span></th>
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column" colspan="2" id="S3.SS3.SSS2.8.8.4.4.4" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.8.8.4.4.4.1">ltr<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1"><semantics id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1a"><mo id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1.1" stretchy="false" xref="S3.SS3.SSS2.8.8.4.4.4.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1b"><ci id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1.1.cmml" xref="S3.SS3.SSS2.8.8.4.4.4.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.8.8.4.4.4.1.m1.1d">↑</annotation></semantics></math></span></th>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.134.2">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column ltx_th_row" id="S3.SS3.SSS2.136.136.132.134.2.1" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.1.1.1" style="width:74.0pt;"></span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.2" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.2.1.1" style="width:51.2pt;">mean</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.3" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.3.1.1" style="width:51.2pt;">max</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.4" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.4.1.1" style="width:51.2pt;">mean</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.5" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.5.1.1" style="width:51.2pt;">max</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.6" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.6.1.1" style="width:56.9pt;">mean</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.7" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.7.1.1" style="width:56.9pt;">max</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.8" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.8.1.1" style="width:51.2pt;">mean</span>
</span>
</th>
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_column" id="S3.SS3.SSS2.136.136.132.134.2.9" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.134.2.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.134.2.9.1.1" style="width:51.2pt;">max</span>
</span>
</th>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.135.3">
<th class="ltx_td ltx_align_center ltx_align_top ltx_th ltx_th_column ltx_th_row ltx_border_t" colspan="9" id="S3.SS3.SSS2.136.136.132.135.3.1" style="padding:-0.5pt 2.0pt;"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.135.3.1.1">Pointwise Discriminative Method</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S3.SS3.SSS2.16.16.12.12">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.16.16.12.12.9" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.16.16.12.12.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.16.16.12.12.9.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.16.16.12.12.9.1.1.1">\cdashline</span>1-9
 <span class="ltx_text ltx_align_left" id="S3.SS3.SSS2.16.16.12.12.9.1.1.2" style="background-color:#F5ECE2;">SASRec</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.9.9.5.5.1" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.9.9.5.5.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.9.9.5.5.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1" style="background-color:#F5ECE2;"> 0.0375<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.9.9.5.5.1.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.10.10.6.6.2" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.10.10.6.6.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.10.10.6.6.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1" style="background-color:#F5ECE2;"> 0.0803<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.10.10.6.6.2.1.1.1.m1.1d">±</annotation></semantics></math>0.005</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.11.11.7.7.3" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.11.11.7.7.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.11.11.7.7.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1" style="background-color:#F5ECE2;">0.4313<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.11.11.7.7.3.1.1.1.m1.1d">±</annotation></semantics></math>0.013</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.12.12.8.8.4" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.12.12.8.8.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.12.12.8.8.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1" style="background-color:#F5ECE2;">0.5801<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.12.12.8.8.4.1.1.1.m1.1d">±</annotation></semantics></math>0.013</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.13.13.9.9.5" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.13.13.9.9.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.13.13.9.9.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1" style="background-color:#F5ECE2;">0.00294<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.13.13.9.9.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.14.14.10.10.6" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.14.14.10.10.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.14.14.10.10.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1" style="background-color:#F5ECE2;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1">0.00978<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.14.14.10.10.6.1.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.15.15.11.11.7" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.15.15.11.11.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.15.15.11.11.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1" style="background-color:#F5ECE2;"> 0.0314<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.15.15.11.11.7.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.16.16.12.12.8" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.16.16.12.12.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.16.16.12.12.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1" style="background-color:#F5ECE2;">0.0604<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.16.16.12.12.8.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.24.24.20.20">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.24.24.20.20.9" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.24.24.20.20.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.24.24.20.20.9.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.24.24.20.20.9.1.1.1" style="background-color:#F5ECE2;">BERT4Rec</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.17.17.13.13.1" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.17.17.13.13.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.17.17.13.13.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1" style="background-color:#F5ECE2;"> 0.0336<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.17.17.13.13.1.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.18.18.14.14.2" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.18.18.14.14.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.18.18.14.14.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1" style="background-color:#F5ECE2;"> 0.0706<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.18.18.14.14.2.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.19.19.15.15.3" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.19.19.15.15.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.19.19.15.15.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1" style="background-color:#F5ECE2;"> 0.4192<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.19.19.15.15.3.1.1.1.m1.1d">±</annotation></semantics></math>0.014</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.20.20.16.16.4" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.20.20.16.16.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.20.20.16.16.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1" style="background-color:#F5ECE2;">0.5633<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.20.20.16.16.4.1.1.1.m1.1d">±</annotation></semantics></math>0.013</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.21.21.17.17.5" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.21.21.17.17.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.21.21.17.17.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1" style="background-color:#F5ECE2;">0.00281<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.21.21.17.17.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.22.22.18.18.6" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.22.22.18.18.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.22.22.18.18.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1" style="background-color:#F5ECE2;">0.00932<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.22.22.18.18.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.23.23.19.19.7" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.23.23.19.19.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.23.23.19.19.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1" style="background-color:#F5ECE2;"> 0.0316<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.23.23.19.19.7.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.24.24.20.20.8" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.24.24.20.20.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.24.24.20.20.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1" style="background-color:#F5ECE2;">0.0606<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.24.24.20.20.8.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.32.32.28.28">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.32.32.28.28.9" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.32.32.28.28.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.32.32.28.28.9.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.32.32.28.28.9.1.1.1" style="background-color:#F5ECE2;">FDSA</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.25.25.21.21.1" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.25.25.21.21.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.25.25.21.21.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1" style="background-color:#F5ECE2;"> 0.0325<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.25.25.21.21.1.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.26.26.22.22.2" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.26.26.22.22.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.26.26.22.22.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1" style="background-color:#F5ECE2;"> 0.0683<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.26.26.22.22.2.1.1.1.m1.1d">±</annotation></semantics></math>0.005</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.27.27.23.23.3" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.27.27.23.23.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.27.27.23.23.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1" style="background-color:#F5ECE2;">0.4145<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.27.27.23.23.3.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.28.28.24.24.4" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.28.28.24.24.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.28.28.24.24.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1" style="background-color:#F5ECE2;">0.5588<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.28.28.24.24.4.1.1.1.m1.1d">±</annotation></semantics></math>0.014</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.29.29.25.25.5" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.29.29.25.25.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.29.29.25.25.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1" style="background-color:#F5ECE2;">0.00271<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.29.29.25.25.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.30.30.26.26.6" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.30.30.26.26.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.30.30.26.26.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1" style="background-color:#F5ECE2;">0.00921<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.30.30.26.26.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.31.31.27.27.7" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.31.31.27.27.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.31.31.27.27.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1" style="background-color:#F5ECE2;">0.0313<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.31.31.27.27.7.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.32.32.28.28.8" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.32.32.28.28.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.32.32.28.28.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1" style="background-color:#F5ECE2;">0.0604<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.32.32.28.28.8.1.1.1.m1.1d">±</annotation></semantics></math>0.003</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.136.1">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.136.136.132.136.1.1" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.136.1.1.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.136.136.132.136.1.1.1.1.1">\cdashline</span>1-9</span>
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.136.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.136.1.1.1.2.1">Pointwise Generative Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.2" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.3" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.4" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.5" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.6" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.7" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.8" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.136.1.9" style="padding:-0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.40.40.36.36">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.40.40.36.36.9" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.40.40.36.36.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.40.40.36.36.9.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.40.40.36.36.9.1.1.1">\cdashline</span>1-9

<span class="ltx_text ltx_align_left" id="S3.SS3.SSS2.40.40.36.36.9.1.1.2" style="background-color:#F5ECE2;">TIGER-0.1B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.33.33.29.29.1" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.33.33.29.29.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.33.33.29.29.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1" style="background-color:#F5ECE2;"> 0.0879<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.33.33.29.29.1.1.1.1.m1.1d">±</annotation></semantics></math>0.007</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.34.34.30.30.2" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.34.34.30.30.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.34.34.30.30.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1" style="background-color:#F5ECE2;"> 0.1286<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.34.34.30.30.2.1.1.1.m1.1d">±</annotation></semantics></math>0.010</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.35.35.31.31.3" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.35.35.31.31.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.35.35.31.31.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1" style="background-color:#F5ECE2;">0.5826<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.35.35.31.31.3.1.1.1.m1.1d">±</annotation></semantics></math>0.016</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.36.36.32.32.4" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.36.36.32.32.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.36.36.32.32.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1" style="background-color:#F5ECE2;">0.6625<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.36.36.32.32.4.1.1.1.m1.1d">±</annotation></semantics></math>0.017</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.37.37.33.33.5" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.37.37.33.33.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.37.37.33.33.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1" style="background-color:#F5ECE2;">0.00277<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.37.37.33.33.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.38.38.34.34.6" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.38.38.34.34.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.38.38.34.34.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1" style="background-color:#F5ECE2;">0.00671<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.38.38.34.34.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.39.39.35.35.7" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.39.39.35.35.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.39.39.35.35.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1" style="background-color:#F5ECE2;"> 0.0316<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.39.39.35.35.7.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.40.40.36.36.8" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.40.40.36.36.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.40.40.36.36.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1" style="background-color:#F5ECE2;"> 0.0541<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.40.40.36.36.8.1.1.1.m1.1d">±</annotation></semantics></math>0.007</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.48.48.44.44">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.48.48.44.44.9" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.48.48.44.44.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.48.48.44.44.9.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.48.48.44.44.9.1.1.1" style="background-color:#F5ECE2;">TIGER-1B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.41.41.37.37.1" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.41.41.37.37.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.41.41.37.37.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1" style="background-color:#F5ECE2;"> 0.0873<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.41.41.37.37.1.1.1.1.m1.1d">±</annotation></semantics></math>0.006</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.42.42.38.38.2" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.42.42.38.38.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.42.42.38.38.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1" style="background-color:#F5ECE2;"> 0.1368<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.42.42.38.38.2.1.1.1.m1.1d">±</annotation></semantics></math>0.010</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.43.43.39.39.3" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.43.43.39.39.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.43.43.39.39.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1" style="background-color:#F5ECE2;">0.5827<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.43.43.39.39.3.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.44.44.40.40.4" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.44.44.40.40.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.44.44.40.40.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1" style="background-color:#F5ECE2;">0.6776<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.44.44.40.40.4.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.45.45.41.41.5" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.45.45.41.41.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.45.45.41.41.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1" style="background-color:#F5ECE2;">0.00292<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.45.45.41.41.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.46.46.42.42.6" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.46.46.42.42.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.46.46.42.42.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1" style="background-color:#F5ECE2;">0.00758<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.46.46.42.42.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.47.47.43.43.7" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.47.47.43.43.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.47.47.43.43.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1" style="background-color:#F5ECE2;"> 0.0323<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.47.47.43.43.7.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.48.48.44.44.8" style="background-color:#F5ECE2;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.48.48.44.44.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.48.48.44.44.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1" style="background-color:#F5ECE2;">0.0579<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1.1" mathbackground="#F5ECE2" xref="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.48.48.44.44.8.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.137.2">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.136.136.132.137.2.1" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.137.2.1.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.136.136.132.137.2.1.1.1.1">\cdashline</span>1-9</span>
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.137.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.137.2.1.1.2.1">Listwise Generative Method</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.2" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.3" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.4" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.5" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.6" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.7" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.8" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.137.2.9" style="padding:-0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.56.56.52.52">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.56.56.52.52.9" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.56.56.52.52.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.56.56.52.52.9.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.56.56.52.52.9.1.1.1">\cdashline</span>1-9

<span class="ltx_text ltx_align_left" id="S3.SS3.SSS2.56.56.52.52.9.1.1.2" style="background-color:#ECF3FE;">OneRec-0.1B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.49.49.45.45.1" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.49.49.45.45.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.49.49.45.45.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1" style="background-color:#ECF3FE;">0.0973<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.49.49.45.45.1.1.1.1.m1.1d">±</annotation></semantics></math>0.010</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.50.50.46.46.2" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.50.50.46.46.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.50.50.46.46.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1" style="background-color:#ECF3FE;">0.1501<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.50.50.46.46.2.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.51.51.47.47.3" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.51.51.47.47.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.51.51.47.47.3.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1" style="background-color:#ECF3FE;">0.6001<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.51.51.47.47.3.1.1.1.m1.1d">±</annotation></semantics></math>0.021</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.52.52.48.48.4" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.52.52.48.48.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.52.52.48.48.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1" style="background-color:#ECF3FE;">0.6981<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.52.52.48.48.4.1.1.1.m1.1d">±</annotation></semantics></math>0.021</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.53.53.49.49.5" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.53.53.49.49.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.53.53.49.49.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1" style="background-color:#ECF3FE;">0.00326<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.53.53.49.49.5.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.54.54.50.50.6" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.54.54.50.50.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.54.54.50.50.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1" style="background-color:#ECF3FE;">0.00870<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.54.54.50.50.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.55.55.51.51.7" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.55.55.51.51.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.55.55.51.51.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1" style="background-color:#ECF3FE;">0.0349<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.55.55.51.51.7.1.1.1.m1.1d">±</annotation></semantics></math>0.009</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.56.56.52.52.8" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.56.56.52.52.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.56.56.52.52.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1" style="background-color:#ECF3FE;">0.0642<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.56.56.52.52.8.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.64.64.60.60">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.64.64.60.60.9" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.64.64.60.60.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.64.64.60.60.9.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.64.64.60.60.9.1.1.1" style="background-color:#ECF3FE;">OneRec-1B</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.57.57.53.53.1" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.57.57.53.53.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.57.57.53.53.1.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1" style="background-color:#ECF3FE;">0.0991<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.57.57.53.53.1.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.58.58.54.54.2" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.58.58.54.54.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.58.58.54.54.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1" style="background-color:#ECF3FE;">0.1529<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.58.58.54.54.2.1.1.1.m1.1d">±</annotation></semantics></math>0.012</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.59.59.55.55.3" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.59.59.55.55.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.59.59.55.55.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1" style="background-color:#ECF3FE;"> 0.6039<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.59.59.55.55.3.1.1.1.m1.1d">±</annotation></semantics></math>0.020</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.60.60.56.56.4" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.60.60.56.56.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.60.60.56.56.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1" style="background-color:#ECF3FE;">0.7013<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.60.60.56.56.4.1.1.1.m1.1d">±</annotation></semantics></math>0.020</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.61.61.57.57.5" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.61.61.57.57.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.61.61.57.57.5.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1" style="background-color:#ECF3FE;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1">0.00349<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.61.61.57.57.5.1.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.62.62.58.58.6" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.62.62.58.58.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.62.62.58.58.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1" style="background-color:#ECF3FE;">0.00919<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.62.62.58.58.6.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.63.63.59.59.7" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.63.63.59.59.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.63.63.59.59.7.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1" style="background-color:#ECF3FE;"> 0.0360<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.63.63.59.59.7.1.1.1.m1.1d">±</annotation></semantics></math>0.005</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.64.64.60.60.8" style="background-color:#ECF3FE;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.64.64.60.60.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.64.64.60.60.8.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1" style="background-color:#ECF3FE;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1">0.0660<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1.1" mathbackground="#ECF3FE" xref="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.64.64.60.60.8.1.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.138.3">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.136.136.132.138.3.1" style="padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.138.3.1.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.136.136.132.138.3.1.1.1.1">\cdashline</span>1-9</span>
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.138.3.1.1.2"><span class="ltx_text ltx_font_italic" id="S3.SS3.SSS2.136.136.132.138.3.1.1.2.1">Listwise Generative Method with Preference Alignment</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.2" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.3" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.4" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.5" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.6" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.7" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.8" style="padding:-0.5pt 2.0pt;"></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.136.136.132.138.3.9" style="padding:-0.5pt 2.0pt;"></td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.73.73.69.69">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.65.65.61.61.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.65.65.61.61.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.65.65.61.61.1.1.1" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.65.65.61.61.1.1.1.2">\cdashline</span>1-9

<span class="ltx_text ltx_align_left" id="S3.SS3.SSS2.65.65.61.61.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.65.65.61.61.1.1.1.1.m1.1d">+</annotation></semantics></math>DPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.66.66.62.62.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.66.66.62.62.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.66.66.62.62.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1" style="background-color:#FFFFEB;"> 0.1014<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.66.66.62.62.2.1.1.1.m1.1d">±</annotation></semantics></math>0.010</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.67.67.63.63.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.67.67.63.63.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.67.67.63.63.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1" style="background-color:#FFFFEB;"> <span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1">0.1595<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.67.67.63.63.3.1.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.68.68.64.64.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.68.68.64.64.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.68.68.64.64.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1" style="background-color:#FFFFEB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1">0.6127<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.68.68.64.64.4.1.1.1.1.m1.1d">±</annotation></semantics></math>0.017</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.69.69.65.65.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.69.69.65.65.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.69.69.65.65.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1" style="background-color:#FFFFEB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1">0.7116<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.69.69.65.65.5.1.1.1.1.m1.1d">±</annotation></semantics></math>0.016</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.70.70.66.66.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.70.70.66.66.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.70.70.66.66.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1" style="background-color:#FFFFEB;">0.00339<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.70.70.66.66.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.71.71.67.67.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.71.71.67.67.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.71.71.67.67.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1" style="background-color:#FFFFEB;">0.00896<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.71.71.67.67.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.72.72.68.68.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.72.72.68.68.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.72.72.68.68.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1" style="background-color:#FFFFEB;"> 0.0351<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.72.72.68.68.8.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.73.73.69.69.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.73.73.69.69.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.73.73.69.69.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1" style="background-color:#FFFFEB;">0.0644<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.73.73.69.69.9.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.82.82.78.78">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.74.74.70.70.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.74.74.70.70.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.74.74.70.70.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.74.74.70.70.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.74.74.70.70.1.1.1.1.m1.1d">+</annotation></semantics></math>IPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.75.75.71.71.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.75.75.71.71.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.75.75.71.71.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1" style="background-color:#FFFFEB;"> 0.0979<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.75.75.71.71.2.1.1.1.m1.1d">±</annotation></semantics></math>0.003</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.76.76.72.72.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.76.76.72.72.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.76.76.72.72.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1" style="background-color:#FFFFEB;"> 0.1528<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.76.76.72.72.3.1.1.1.m1.1d">±</annotation></semantics></math>0.005</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.77.77.73.73.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.77.77.73.73.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.77.77.73.73.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1" style="background-color:#FFFFEB;">0.6000<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.77.77.73.73.4.1.1.1.m1.1d">±</annotation></semantics></math>0.007</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.78.78.74.74.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.78.78.74.74.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.78.78.74.74.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1" style="background-color:#FFFFEB;">0.7012<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.78.78.74.74.5.1.1.1.m1.1d">±</annotation></semantics></math>0.007</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.79.79.75.75.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.79.79.75.75.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.79.79.75.75.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1" style="background-color:#FFFFEB;">0.00335<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.79.79.75.75.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.80.80.76.76.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.80.80.76.76.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.80.80.76.76.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1" style="background-color:#FFFFEB;">0.00905<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.80.80.76.76.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.81.81.77.77.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.81.81.77.77.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.81.81.77.77.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1" style="background-color:#FFFFEB;"> 0.0350<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.81.81.77.77.8.1.1.1.m1.1d">±</annotation></semantics></math>0.003</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.82.82.78.78.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.82.82.78.78.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.82.82.78.78.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1" style="background-color:#FFFFEB;">0.0654<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.82.82.78.78.9.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.91.91.87.87">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.83.83.79.79.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.83.83.79.79.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.83.83.79.79.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.83.83.79.79.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.83.83.79.79.1.1.1.1.m1.1d">+</annotation></semantics></math>cDPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.84.84.80.80.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.84.84.80.80.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.84.84.80.80.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1" style="background-color:#FFFFEB;"> 0.0993<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.84.84.80.80.2.1.1.1.m1.1d">±</annotation></semantics></math>0.006</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.85.85.81.81.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.85.85.81.81.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.85.85.81.81.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1" style="background-color:#FFFFEB;"> 0.1547<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.85.85.81.81.3.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.86.86.82.82.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.86.86.82.82.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.86.86.82.82.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1" style="background-color:#FFFFEB;">0.6030<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.86.86.82.82.4.1.1.1.m1.1d">±</annotation></semantics></math>0.011</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.87.87.83.83.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.87.87.83.83.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.87.87.83.83.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1" style="background-color:#FFFFEB;">0.7030<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.87.87.83.83.5.1.1.1.m1.1d">±</annotation></semantics></math>0.009</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.88.88.84.84.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.88.88.84.84.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.88.88.84.84.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1" style="background-color:#FFFFEB;">0.00339<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.88.88.84.84.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.89.89.85.85.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.89.89.85.85.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.89.89.85.85.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1" style="background-color:#FFFFEB;">0.00901<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.89.89.85.85.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.90.90.86.86.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.90.90.86.86.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.90.90.86.86.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1" style="background-color:#FFFFEB;"> 0.0355<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.90.90.86.86.8.1.1.1.m1.1d">±</annotation></semantics></math>0.006</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.91.91.87.87.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.91.91.87.87.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.91.91.87.87.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1" style="background-color:#FFFFEB;">0.0652<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.91.91.87.87.9.1.1.1.m1.1d">±</annotation></semantics></math>0.009</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.100.100.96.96">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.92.92.88.88.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.92.92.88.88.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.92.92.88.88.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.92.92.88.88.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.92.92.88.88.1.1.1.1.m1.1d">+</annotation></semantics></math>rDPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.93.93.89.89.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.93.93.89.89.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.93.93.89.89.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1" style="background-color:#FFFFEB;"> 0.1005<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.93.93.89.89.2.1.1.1.m1.1d">±</annotation></semantics></math>0.006</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.94.94.90.90.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.94.94.90.90.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.94.94.90.90.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1" style="background-color:#FFFFEB;"> 0.1555<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.94.94.90.90.3.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.95.95.91.91.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.95.95.91.91.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.95.95.91.91.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1" style="background-color:#FFFFEB;">0.6071<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.95.95.91.91.4.1.1.1.m1.1d">±</annotation></semantics></math>0.014</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.96.96.92.92.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.96.96.92.92.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.96.96.92.92.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1" style="background-color:#FFFFEB;">0.7059<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.96.96.92.92.5.1.1.1.m1.1d">±</annotation></semantics></math>0.011</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.97.97.93.93.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.97.97.93.93.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.97.97.93.93.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1" style="background-color:#FFFFEB;">0.00339<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.97.97.93.93.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.98.98.94.94.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.98.98.94.94.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.98.98.94.94.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1" style="background-color:#FFFFEB;">0.00899<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.98.98.94.94.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.99.99.95.95.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.99.99.95.95.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.99.99.95.95.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1" style="background-color:#FFFFEB;"> 0.0357<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.99.99.95.95.8.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.100.100.96.96.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.100.100.96.96.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.100.100.96.96.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1" style="background-color:#FFFFEB;">0.0657<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.100.100.96.96.9.1.1.1.m1.1d">±</annotation></semantics></math>0.006</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.109.109.105.105">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.101.101.97.97.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.101.101.97.97.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.101.101.97.97.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.101.101.97.97.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.101.101.97.97.1.1.1.1.m1.1d">+</annotation></semantics></math>CPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.102.102.98.98.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.102.102.98.98.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.102.102.98.98.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1" style="background-color:#FFFFEB;"> 0.0993<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.102.102.98.98.2.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.103.103.99.99.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.103.103.99.99.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.103.103.99.99.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1" style="background-color:#FFFFEB;"> 0.1538<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.103.103.99.99.3.1.1.1.m1.1d">±</annotation></semantics></math>0.012</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.104.104.100.100.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.104.104.100.100.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.104.104.100.100.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1" style="background-color:#FFFFEB;">0.6045<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.104.104.100.100.4.1.1.1.m1.1d">±</annotation></semantics></math>0.021</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.105.105.101.101.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.105.105.101.101.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.105.105.101.101.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1" style="background-color:#FFFFEB;">0.7029<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.105.105.101.101.5.1.1.1.m1.1d">±</annotation></semantics></math>0.018</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.106.106.102.102.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.106.106.102.102.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.106.106.102.102.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1" style="background-color:#FFFFEB;">0.00343<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.106.106.102.102.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.107.107.103.103.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.107.107.103.103.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.107.107.103.103.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1" style="background-color:#FFFFEB;">0.00911<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.107.107.103.103.7.1.1.1.m1.1d">±</annotation></semantics></math>0.002</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.108.108.104.104.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.108.108.104.104.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.108.108.104.104.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1" style="background-color:#FFFFEB;"> 0.0357<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.108.108.104.104.8.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.109.109.105.105.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.109.109.105.105.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.109.109.105.105.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1" style="background-color:#FFFFEB;">0.0659<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.109.109.105.105.9.1.1.1.m1.1d">±</annotation></semantics></math>0.014</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.118.118.114.114">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.110.110.106.106.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.110.110.106.106.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.110.110.106.106.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.110.110.106.106.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.110.110.106.106.1.1.1.1.m1.1d">+</annotation></semantics></math>simPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.111.111.107.107.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.111.111.107.107.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.111.111.107.107.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1" style="background-color:#FFFFEB;"> 0.0995<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.111.111.107.107.2.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.112.112.108.108.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.112.112.108.108.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.112.112.108.108.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1" style="background-color:#FFFFEB;"> 0.1536<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.112.112.108.108.3.1.1.1.m1.1d">±</annotation></semantics></math>0.013</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.113.113.109.109.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.113.113.109.109.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.113.113.109.109.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1" style="background-color:#FFFFEB;">0.6047<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.113.113.109.109.4.1.1.1.m1.1d">±</annotation></semantics></math>0.016</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.114.114.110.110.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.114.114.110.110.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.114.114.110.110.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1" style="background-color:#FFFFEB;">0.7022<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.114.114.110.110.5.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.115.115.111.111.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.115.115.111.111.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.115.115.111.111.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1" style="background-color:#FFFFEB;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1">0.00349<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.115.115.111.111.6.1.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.116.116.112.112.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.116.116.112.112.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.116.116.112.112.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1" style="background-color:#FFFFEB;">0.00918<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.116.116.112.112.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.117.117.113.113.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.117.117.113.113.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.117.117.113.113.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1" style="background-color:#FFFFEB;"> 0.0360<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.117.117.113.113.8.1.1.1.m1.1d">±</annotation></semantics></math>0.005</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.118.118.114.114.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.118.118.114.114.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.118.118.114.114.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1" style="background-color:#FFFFEB;">0.0659<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.118.118.114.114.9.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.127.127.123.123">
<th class="ltx_td ltx_align_justify ltx_align_top ltx_th ltx_th_row" id="S3.SS3.SSS2.119.119.115.115.1" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.119.119.115.115.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.119.119.115.115.1.1.1" style="width:74.0pt;"><span class="ltx_text" id="S3.SS3.SSS2.119.119.115.115.1.1.1.1" style="background-color:#FFFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.119.119.115.115.1.1.1.1.m1.1d">+</annotation></semantics></math>S-DPO</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.120.120.116.116.2" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.120.120.116.116.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.120.120.116.116.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1" style="background-color:#FFFFEB;"> <span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1">0.1021<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.120.120.116.116.2.1.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.121.121.117.117.3" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.121.121.117.117.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.121.121.117.117.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1" style="background-color:#FFFFEB;"> 0.1575<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.121.121.117.117.3.1.1.1.m1.1d">±</annotation></semantics></math>0.013</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.122.122.118.118.4" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.122.122.118.118.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.122.122.118.118.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1" style="background-color:#FFFFEB;">0.6096<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.122.122.118.118.4.1.1.1.m1.1d">±</annotation></semantics></math>0.016</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.123.123.119.119.5" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.123.123.119.119.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.123.123.119.119.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1" style="background-color:#FFFFEB;">0.7070<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.123.123.119.119.5.1.1.1.m1.1d">±</annotation></semantics></math>0.015</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.124.124.120.120.6" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.124.124.120.120.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.124.124.120.120.6.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1" style="background-color:#FFFFEB;">0.00345<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.124.124.120.120.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.125.125.121.121.7" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.125.125.121.121.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.125.125.121.121.7.1.1" style="width:56.9pt;"><span class="ltx_text" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1" style="background-color:#FFFFEB;">0.00909<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.125.125.121.121.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.126.126.122.122.8" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.126.126.122.122.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.126.126.122.122.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1" style="background-color:#FFFFEB;"> <span class="ltx_text ltx_framed ltx_framed_underline" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1">0.0361<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.126.126.122.122.8.1.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.SS3.SSS2.127.127.123.123.9" style="background-color:#FFFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.127.127.123.123.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.127.127.123.123.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1" style="background-color:#FFFFEB;">0.0659<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1.1" mathbackground="#FFFFEB" xref="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.127.127.123.123.9.1.1.1.m1.1d">±</annotation></semantics></math>0.008</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.SS3.SSS2.136.136.132.132">
<th class="ltx_td ltx_nopad_r ltx_align_justify ltx_align_top ltx_th ltx_th_row ltx_border_bb" id="S3.SS3.SSS2.128.128.124.124.1" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.128.128.124.124.1.1">
<span class="ltx_p" id="S3.SS3.SSS2.128.128.124.124.1.1.2" style="width:74.0pt;"><span class="ltx_ERROR undefined" id="S3.SS3.SSS2.128.128.124.124.1.1.2.1">\cdashline</span>1-9</span>
<span class="ltx_p" id="S3.SS3.SSS2.128.128.124.124.1.1.1"><span class="ltx_text" id="S3.SS3.SSS2.128.128.124.124.1.1.1.1" style="background-color:#EBFFEB;">OneRec-1B<math alttext="+" class="ltx_Math" display="inline" id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1.1.cmml">+</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1b"><plus id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1.1"></plus></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1c">+</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.128.128.124.124.1.1.1.1.m1.1d">+</annotation></semantics></math>IPA</span></span>
</span>
</th>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.129.129.125.125.2" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.129.129.125.125.2.1">
<span class="ltx_p" id="S3.SS3.SSS2.129.129.125.125.2.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1" style="background-color:#EBFFEB;"> <span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1">0.1025<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.129.129.125.125.2.1.1.1.1.m1.1d">±</annotation></semantics></math>0.009</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.130.130.126.126.3" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.130.130.126.126.3.1">
<span class="ltx_p" id="S3.SS3.SSS2.130.130.126.126.3.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1" style="background-color:#EBFFEB;"> <span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1">0.1933<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.130.130.126.126.3.1.1.1.1.m1.1d">±</annotation></semantics></math>0.017</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.131.131.127.127.4" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.131.131.127.127.4.1">
<span class="ltx_p" id="S3.SS3.SSS2.131.131.127.127.4.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1" style="background-color:#EBFFEB;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1">0.6141<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.131.131.127.127.4.1.1.1.1.m1.1d">±</annotation></semantics></math>0.020</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.132.132.128.128.5" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.132.132.128.128.5.1">
<span class="ltx_p" id="S3.SS3.SSS2.132.132.128.128.5.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1" style="background-color:#EBFFEB;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1">0.7646<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.132.132.128.128.5.1.1.1.1.m1.1d">±</annotation></semantics></math>0.021</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.133.133.129.129.6" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.133.133.129.129.6.1">
<span class="ltx_p" id="S3.SS3.SSS2.133.133.129.129.6.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1" style="background-color:#EBFFEB;">0.00354<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.133.133.129.129.6.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.134.134.130.130.7" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.134.134.130.130.7.1">
<span class="ltx_p" id="S3.SS3.SSS2.134.134.130.130.7.1.1" style="width:56.9pt;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1" style="background-color:#EBFFEB;">0.00992<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.134.134.130.130.7.1.1.1.m1.1d">±</annotation></semantics></math>0.001</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.135.135.131.131.8" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.135.135.131.131.8.1">
<span class="ltx_p" id="S3.SS3.SSS2.135.135.131.131.8.1.1" style="width:51.2pt;"><span class="ltx_text ltx_align_center" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1" style="background-color:#EBFFEB;"> <span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1">0.0397<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.135.135.131.131.8.1.1.1.1.m1.1d">±</annotation></semantics></math>0.004</span></span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.SS3.SSS2.136.136.132.132.9" style="background-color:#EBFFEB;padding:-0.5pt 2.0pt;">
<span class="ltx_inline-block ltx_align_top" id="S3.SS3.SSS2.136.136.132.132.9.1">
<span class="ltx_p" id="S3.SS3.SSS2.136.136.132.132.9.1.1" style="width:51.2pt;"><span class="ltx_text" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1" style="background-color:#EBFFEB;"><span class="ltx_text ltx_font_bold" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1">0.1203<math alttext="\pm" class="ltx_Math" display="inline" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1"><semantics id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1a"><mo id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1.1" mathbackground="#EBFFEB" xref="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1.1.cmml">±</mo><annotation-xml encoding="MathML-Content" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1b"><csymbol cd="latexml" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1.1.cmml" xref="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1.1">plus-or-minus</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1c">\pm</annotation><annotation encoding="application/x-llamapun" id="S3.SS3.SSS2.136.136.132.132.9.1.1.1.1.m1.1d">±</annotation></semantics></math>0.010</span></span></span>
</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparison of the offline performance of the proposed OneRec model against various baseline methods.  These baselines are categorized into pointwise methods, listwise methods, and preference alignment methods, each representing different approaches to recommendation.  The OneRec model is highlighted in green, pointwise methods in brown, listwise methods in blue, and preference alignment methods in yellow.  The best performance for each metric is shown in bold, while near-optimal results are underlined.  Metrics are evaluated according to whether a higher or lower value is preferable, indicated by arrows (↑ for higher is better, ↓ for lower is better).  The metrics used assess both watching time (e.g., total watch time) and user interaction (e.g., likes, follows).
> <details>
> <summary>read the caption</summary>
> Table 1.  Offline performance of our proposed OneRec (green) with pointwise methods (brown), listwise methods (blue) and preference alignment methods (yellow). Best results are in bold, sub-optimal results are underlined. Metrics with ↑↑\uparrow↑ indicate higher is better, while ↓↓\downarrow↓ indicates lower is better.
> </details>





### In-depth insights


#### Generative Rec
Generative recommendation (GR) systems represent a paradigm shift, moving away from traditional methods that rely on two-tower models and nearest neighbor searches. GR **directly generates item identifiers in an autoregressive manner**, leveraging semantic IDs to encode item information. This approach harnesses the power of sequence generation, enabling the model to produce more diverse and contextually relevant recommendations. However, GR models have limitations in accuracy compared to cascade ranking. Addressing these limitations is crucial for realizing the full potential of GR in real-world recommendation scenarios, requiring innovations in model architecture, training strategies, and integration with existing ranking pipelines. Future research can address the challenges by exploring novel techniques to improve the accuracy, diversity, and scalability of generative recommendation systems. These advancements can potentially lead to a new generation of recommenders.

#### OneRec Model
The OneRec model introduces a **unified approach** to recommendation, replacing traditional cascaded systems with a single generative framework. This shift aims to overcome limitations where each stage's effectiveness caps the subsequent one. OneRec leverages an **encoder-decoder structure**, capturing user history to predict item interest. A key innovation is the use of **sparse Mixture-of-Experts (MoE)**, scaling capacity without proportional FLOPs increase. The model adopts a **session-wise generation approach**, predicting item lists for contextual coherence, contrasting point-by-point methods. An **Iterative Preference Alignment (IPA)** module, combined with Direct Preference Optimization (DPO), enhances generated content quality. IPA tackles sparse user-item data by using a reward model to simulate user generation, customizing sampling based on online learning attributes, thus **aligning recommendations with user preferences** efficiently.

#### Iterative Align
Iterative alignment, in the context of recommendation systems, represents a crucial strategy for refining model behavior to better reflect user preferences. This process involves **repeatedly adjusting the model's parameters** based on feedback, aiming to minimize the discrepancy between predicted and desired outcomes. Such alignment often leverages techniques like **reinforcement learning or preference optimization**, where the model learns from user interactions or explicit feedback signals to iteratively improve its recommendations. The iterative nature allows the model to **adapt to evolving user tastes and preferences**, ensuring long-term relevance and satisfaction. By continuously refining its understanding of user needs, the system becomes more adept at delivering personalized and engaging content.

#### Offline vs Online
The distinction between offline and online methodologies is crucial in evaluating recommender systems. **Offline evaluation** allows for controlled experimentation and rapid iteration using historical data, enabling the assessment of various models and hyperparameter tuning. However, it often suffers from a **disconnect from real-world user behavior**, as it cannot capture the dynamic nature of user preferences and the impact of the recommendation system itself on user interactions. **Online A/B testing**, on the other hand, provides a more realistic assessment by deploying the system to a subset of real users and measuring its impact on key metrics such as click-through rate, conversion rate, and user engagement. While online testing offers higher fidelity, it is often **more expensive and time-consuming**, and may be subject to confounding factors such as seasonality and external events. Therefore, a **balanced approach** that combines offline and online evaluation is often the most effective strategy for developing and deploying successful recommender systems. 

#### Scaling OneRec
Based on the text, it seems scaling the OneRec model leads to **significant and consistent accuracy gains**. The experiments reveal that expanding OneRec from 0.05B to 1B parameters demonstrably improves performance, showcasing the benefits of larger model capacity. OneRec-0.1B shows a maximum accuracy gain of 14.45%, when compared to the OneRec-0.05B model. Further scaling to 0.2B, 0.5B, and 1B continues to produce accuracy gains of 5.09%, 5.70%, and 5.69% respectively. This suggests that the OneRec architecture **effectively leverages increased model size**, indicating a well-designed framework capable of capturing complex user preferences and item relationships. It's likely that with more parameters, the model becomes more adept at discerning subtle patterns and contextual nuances, leading to more relevant and accurate recommendations.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2502.18965/x2.png)

> 🔼 This figure illustrates the two-stage training process of the OneRec model. The first stage focuses on training OneRec using session-wise data, which means that the model learns to generate relevant sequences of videos for each user session. The second stage employs an Iterative Preference Alignment (IPA) module which leverages iterative direct preference optimization using self-hard negatives to improve the quality of generated recommendations.  Self-hard negatives are generated from the beam search results, ensuring high-quality preference pairs are used to refine the model's preferences. This iterative refinement process aims to align the model's generated recommendations more closely with actual user preferences.
> <details>
> <summary>read the caption</summary>
> Figure 2. The overall framework of OneRec, consists of two stages: (i) the session training stage which train OneRec with session-wise data; (ii) the IPA stage which utilizes iterative direct preference optimization with self-hard negatives.
> </details>



![](https://arxiv.org/html/2502.18965/x3.png)

> 🔼 This figure illustrates the online deployment architecture of the OneRec model. It shows how the trained model parameters are synchronized to both an online inference model and a DPO sample server.  The online inference model serves user requests in real-time, while the DPO sample server provides preference data for model updates. The system also includes modules for log collection, preprocessing, and distributed training. The architecture is optimized for efficiency and stability, using techniques like key-value caching, float16 quantization, and beam search.
> <details>
> <summary>read the caption</summary>
> Figure 3. Framework of Online Deployment of OneRec.
> </details>



![](https://arxiv.org/html/2502.18965/x4.png)

> 🔼 This ablation study investigates the impact of varying the DPO (Direct Preference Optimization) sample ratio on model performance. The x-axis represents the DPO sample ratio, ranging from 1% to 5%.  The y-axis displays the resulting performance metrics for different aspects of the recommendation system (e.g., session watch time, view probability, follow probability, like probability).  The results demonstrate that increasing the sample ratio from 1% yields only marginal performance improvements, indicating a diminishing return.  A 1% sample ratio is identified as the optimal balance between performance gain and computational efficiency.  Beyond this point, the additional computational cost outweighs any minor performance increases.
> <details>
> <summary>read the caption</summary>
> Figure 4. The ablation study on DPO sample ratio rDPOsubscript𝑟DPOr_{\rm DPO}italic_r start_POSTSUBSCRIPT roman_DPO end_POSTSUBSCRIPT. The results indicate that a 1% ratio of DPO training leads to significant gains but further increase the sample ratio results in limited improvements.
> </details>



![](https://arxiv.org/html/2502.18965/x5.png)

> 🔼 Figure 5 presents a detailed visualization of the probability distributions generated by the softmax layer for each level of semantic IDs within the OneRec model.  The probability distributions show how the model assigns probabilities to different semantic IDs at various stages of processing. Each plot displays the distribution for a particular layer, illustrating how the model's confidence in certain semantic IDs evolves as it processes the data across different layers. The red star highlights the specific semantic ID that receives the highest reward value from the reward model, indicating the model's top choice at that layer. This visualization effectively demonstrates the hierarchical refinement process within the model as it progresses towards a final prediction, providing insight into how the uncertainty and confidence of the model change as more context is considered.
> <details>
> <summary>read the caption</summary>
> Figure 5. The visualization of the probability distribution of the softmax output for each layer of the semantic ID. The red star represents the sematic ID of item which has the highest reward value.
> </details>



![](https://arxiv.org/html/2502.18965/extracted/6233922/figs/fig5.jpg)

> 🔼 Figure 6 demonstrates the impact of model size on OneRec's performance.  Multiple lines graph the performance against increasing model parameters (x-axis) for various metrics, including accuracy on different layers (Layer 1, Layer 2, Layer 3) and training loss.  The results show a consistent positive correlation between model size and performance across all metrics, indicating OneRec effectively leverages increased model capacity to improve accuracy and reduce loss.
> <details>
> <summary>read the caption</summary>
> Figure 6. Scalability of OneRec on model scaling. The results show that OneRec constantly benefits from performance improvement when the parameters are scaled up.
> </details>



</details>






### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2502.18965/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2502.18965/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}