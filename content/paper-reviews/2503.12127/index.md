---
title: "Hyperbolic Safety-Aware Vision-Language Models"
summary: "HySAC: A hyperbolic framework for safety-aware vision-language models, improving content moderation and interpretability."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 University of Modena and Reggio Emilia, Italy",]
showSummary: true
date: 2025-03-15
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.12127 {{< /keyword >}}
{{< keyword icon="writer" >}} Tobia Poppi et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-19 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.12127" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.12127" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.12127/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Large vision-language models(VLMs) face challenges in managing unsafe content** from web data, raising ethical and practical concerns. Current mitigation relies on "unlearning," which reduces unwanted outputs, it also limits the model's ability to distinguish between safe and unsafe content.This paper addresses the critical issue of safety by shifting from "unlearning" to awareness in VLMs. By doing that, this work leverages hierarchical properties of hyperbolic space to encode safe and unsafe data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} HySAC, uses the hyperbolic space properties, creates a hierarchical structure for safe and unsafe content. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} It employs entailment loss functions, enabling it to serve as a multimodal unsafe classifier and a flexible content retriever. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Demonstrates enhanced safety recognition, adaptable content moderation, and controlled access to unsafe content. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important for researchers because it addresses the critical need for **safer VLMs in real-world applications**. The HySAC framework provides a new approach to content moderation that **enhances safety recognition and interpretability**, paving the way for more responsible and reliable AI systems. It opens avenues for further research in hyperbolic learning and safety-aware architectures, impacting the broader fields of CV and NLP.

------
#### Visual Insights



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/hysac_method.png)

> 🔼 This figure illustrates the HySAC model's architecture and workflow. HySAC leverages the hierarchical nature of hyperbolic space to represent safe and unsafe content. Safe text and image embeddings are located near the origin, while unsafe ones are projected further away.  A contrastive loss function aligns safe and unsafe image-text pairs, while an entailment loss enforces hierarchical relationships within the embedding space.  The model allows for safety-aware retrieval; unsafe queries can be dynamically redirected towards safer alternatives or the original (unsafe) results can be returned.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of our approach. HySAC builds a hyperbolic embedding that manages content safety through an entailment hierarchy. Unsafe text and images are projected to dedicated regions of hyperbolic space, allowing for safety-aware retrieval and classification.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T1.10.10">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.8.8.8">
<td class="ltx_td ltx_border_tt" id="S5.T1.8.8.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_border_tt" id="S5.T1.8.8.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T1.2.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T1.2.2.2.2.1">Text-to-Image</span> (<math alttext="T" class="ltx_Math" display="inline" id="S5.T1.1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.1.m1.1a"><mi id="S5.T1.1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.1.m1.1b"><ci id="S5.T1.1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.1.m1.1d">italic_T</annotation></semantics></math>-to-<math alttext="I" class="ltx_Math" display="inline" id="S5.T1.2.2.2.2.m2.1"><semantics id="S5.T1.2.2.2.2.m2.1a"><mi id="S5.T1.2.2.2.2.m2.1.1" xref="S5.T1.2.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.2.m2.1b"><ci id="S5.T1.2.2.2.2.m2.1.1.cmml" xref="S5.T1.2.2.2.2.m2.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.2.m2.1c">I</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.2.m2.1d">italic_I</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T1.8.8.8.11" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T1.4.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T1.4.4.4.4.1">Image-to-Text</span> (<math alttext="I" class="ltx_Math" display="inline" id="S5.T1.3.3.3.3.m1.1"><semantics id="S5.T1.3.3.3.3.m1.1a"><mi id="S5.T1.3.3.3.3.m1.1.1" xref="S5.T1.3.3.3.3.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.3.m1.1b"><ci id="S5.T1.3.3.3.3.m1.1.1.cmml" xref="S5.T1.3.3.3.3.m1.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.3.m1.1c">I</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.3.m1.1d">italic_I</annotation></semantics></math>-to-<math alttext="T" class="ltx_Math" display="inline" id="S5.T1.4.4.4.4.m2.1"><semantics id="S5.T1.4.4.4.4.m2.1a"><mi id="S5.T1.4.4.4.4.m2.1.1" xref="S5.T1.4.4.4.4.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.4.m2.1b"><ci id="S5.T1.4.4.4.4.m2.1.1.cmml" xref="S5.T1.4.4.4.4.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.4.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.4.m2.1d">italic_T</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T1.8.8.8.12" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T1.6.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T1.6.6.6.6.1">Text-to-Image</span> (<math alttext="T^{\star}" class="ltx_Math" display="inline" id="S5.T1.5.5.5.5.m1.1"><semantics id="S5.T1.5.5.5.5.m1.1a"><msup id="S5.T1.5.5.5.5.m1.1.1" xref="S5.T1.5.5.5.5.m1.1.1.cmml"><mi id="S5.T1.5.5.5.5.m1.1.1.2" xref="S5.T1.5.5.5.5.m1.1.1.2.cmml">T</mi><mo id="S5.T1.5.5.5.5.m1.1.1.3" xref="S5.T1.5.5.5.5.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.5.m1.1b"><apply id="S5.T1.5.5.5.5.m1.1.1.cmml" xref="S5.T1.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.5.5.5.5.m1.1.1.1.cmml" xref="S5.T1.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S5.T1.5.5.5.5.m1.1.1.2.cmml" xref="S5.T1.5.5.5.5.m1.1.1.2">𝑇</ci><ci id="S5.T1.5.5.5.5.m1.1.1.3.cmml" xref="S5.T1.5.5.5.5.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.5.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I\cup I^{\star}" class="ltx_Math" display="inline" id="S5.T1.6.6.6.6.m2.1"><semantics id="S5.T1.6.6.6.6.m2.1a"><mrow id="S5.T1.6.6.6.6.m2.1.1" xref="S5.T1.6.6.6.6.m2.1.1.cmml"><mi id="S5.T1.6.6.6.6.m2.1.1.2" xref="S5.T1.6.6.6.6.m2.1.1.2.cmml">I</mi><mo id="S5.T1.6.6.6.6.m2.1.1.1" xref="S5.T1.6.6.6.6.m2.1.1.1.cmml">∪</mo><msup id="S5.T1.6.6.6.6.m2.1.1.3" xref="S5.T1.6.6.6.6.m2.1.1.3.cmml"><mi id="S5.T1.6.6.6.6.m2.1.1.3.2" xref="S5.T1.6.6.6.6.m2.1.1.3.2.cmml">I</mi><mo id="S5.T1.6.6.6.6.m2.1.1.3.3" xref="S5.T1.6.6.6.6.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.6.m2.1b"><apply id="S5.T1.6.6.6.6.m2.1.1.cmml" xref="S5.T1.6.6.6.6.m2.1.1"><union id="S5.T1.6.6.6.6.m2.1.1.1.cmml" xref="S5.T1.6.6.6.6.m2.1.1.1"></union><ci id="S5.T1.6.6.6.6.m2.1.1.2.cmml" xref="S5.T1.6.6.6.6.m2.1.1.2">𝐼</ci><apply id="S5.T1.6.6.6.6.m2.1.1.3.cmml" xref="S5.T1.6.6.6.6.m2.1.1.3"><csymbol cd="ambiguous" id="S5.T1.6.6.6.6.m2.1.1.3.1.cmml" xref="S5.T1.6.6.6.6.m2.1.1.3">superscript</csymbol><ci id="S5.T1.6.6.6.6.m2.1.1.3.2.cmml" xref="S5.T1.6.6.6.6.m2.1.1.3.2">𝐼</ci><ci id="S5.T1.6.6.6.6.m2.1.1.3.3.cmml" xref="S5.T1.6.6.6.6.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.6.m2.1c">I\cup I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.6.m2.1d">italic_I ∪ italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T1.8.8.8.13" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T1.8.8.8.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T1.8.8.8.8.1">Image-to-Text</span> (<math alttext="I^{\star}" class="ltx_Math" display="inline" id="S5.T1.7.7.7.7.m1.1"><semantics id="S5.T1.7.7.7.7.m1.1a"><msup id="S5.T1.7.7.7.7.m1.1.1" xref="S5.T1.7.7.7.7.m1.1.1.cmml"><mi id="S5.T1.7.7.7.7.m1.1.1.2" xref="S5.T1.7.7.7.7.m1.1.1.2.cmml">I</mi><mo id="S5.T1.7.7.7.7.m1.1.1.3" xref="S5.T1.7.7.7.7.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.7.m1.1b"><apply id="S5.T1.7.7.7.7.m1.1.1.cmml" xref="S5.T1.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S5.T1.7.7.7.7.m1.1.1.1.cmml" xref="S5.T1.7.7.7.7.m1.1.1">superscript</csymbol><ci id="S5.T1.7.7.7.7.m1.1.1.2.cmml" xref="S5.T1.7.7.7.7.m1.1.1.2">𝐼</ci><ci id="S5.T1.7.7.7.7.m1.1.1.3.cmml" xref="S5.T1.7.7.7.7.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.7.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.7.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T\cup T^{\star}" class="ltx_Math" display="inline" id="S5.T1.8.8.8.8.m2.1"><semantics id="S5.T1.8.8.8.8.m2.1a"><mrow id="S5.T1.8.8.8.8.m2.1.1" xref="S5.T1.8.8.8.8.m2.1.1.cmml"><mi id="S5.T1.8.8.8.8.m2.1.1.2" xref="S5.T1.8.8.8.8.m2.1.1.2.cmml">T</mi><mo id="S5.T1.8.8.8.8.m2.1.1.1" xref="S5.T1.8.8.8.8.m2.1.1.1.cmml">∪</mo><msup id="S5.T1.8.8.8.8.m2.1.1.3" xref="S5.T1.8.8.8.8.m2.1.1.3.cmml"><mi id="S5.T1.8.8.8.8.m2.1.1.3.2" xref="S5.T1.8.8.8.8.m2.1.1.3.2.cmml">T</mi><mo id="S5.T1.8.8.8.8.m2.1.1.3.3" xref="S5.T1.8.8.8.8.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.8.8.8.8.m2.1b"><apply id="S5.T1.8.8.8.8.m2.1.1.cmml" xref="S5.T1.8.8.8.8.m2.1.1"><union id="S5.T1.8.8.8.8.m2.1.1.1.cmml" xref="S5.T1.8.8.8.8.m2.1.1.1"></union><ci id="S5.T1.8.8.8.8.m2.1.1.2.cmml" xref="S5.T1.8.8.8.8.m2.1.1.2">𝑇</ci><apply id="S5.T1.8.8.8.8.m2.1.1.3.cmml" xref="S5.T1.8.8.8.8.m2.1.1.3"><csymbol cd="ambiguous" id="S5.T1.8.8.8.8.m2.1.1.3.1.cmml" xref="S5.T1.8.8.8.8.m2.1.1.3">superscript</csymbol><ci id="S5.T1.8.8.8.8.m2.1.1.3.2.cmml" xref="S5.T1.8.8.8.8.m2.1.1.3.2">𝑇</ci><ci id="S5.T1.8.8.8.8.m2.1.1.3.3.cmml" xref="S5.T1.8.8.8.8.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.8.8.8.8.m2.1c">T\cup T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T1.8.8.8.8.m2.1d">italic_T ∪ italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.11.1">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.11.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.11.1.1.1">Model</span></td>
<td class="ltx_td" id="S5.T1.10.10.11.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.3" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.4" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.5" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T1.10.10.11.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.7" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.8" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.9" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T1.10.10.11.1.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.11" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.12" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.13" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T1.10.10.11.1.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.15" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.16" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.11.1.17" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.12.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.10.10.12.2.1" style="padding-left:4.5pt;padding-right:4.5pt;">CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T1.10.10.12.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.3" style="padding-left:4.5pt;padding-right:4.5pt;">36.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.4" style="padding-left:4.5pt;padding-right:4.5pt;">71.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">81.5</td>
<td class="ltx_td ltx_border_t" id="S5.T1.10.10.12.2.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.7" style="padding-left:4.5pt;padding-right:4.5pt;">39.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.8" style="padding-left:4.5pt;padding-right:4.5pt;">74.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.9" style="padding-left:4.5pt;padding-right:4.5pt;">83.5</td>
<td class="ltx_td ltx_border_t" id="S5.T1.10.10.12.2.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.11" style="padding-left:4.5pt;padding-right:4.5pt;">2.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.12" style="padding-left:4.5pt;padding-right:4.5pt;">24.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.13" style="padding-left:4.5pt;padding-right:4.5pt;">33.2</td>
<td class="ltx_td ltx_border_t" id="S5.T1.10.10.12.2.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.15" style="padding-left:4.5pt;padding-right:4.5pt;">4.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.16" style="padding-left:4.5pt;padding-right:4.5pt;">32.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.10.10.12.2.17" style="padding-left:4.5pt;padding-right:4.5pt;">40.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.13.3">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.13.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">MERU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T1.10.10.13.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.3" style="padding-left:4.5pt;padding-right:4.5pt;">14.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.4" style="padding-left:4.5pt;padding-right:4.5pt;">43.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.5" style="padding-left:4.5pt;padding-right:4.5pt;">54.2</td>
<td class="ltx_td" id="S5.T1.10.10.13.3.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.7" style="padding-left:4.5pt;padding-right:4.5pt;">14.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.8" style="padding-left:4.5pt;padding-right:4.5pt;">42.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.9" style="padding-left:4.5pt;padding-right:4.5pt;">53.8</td>
<td class="ltx_td" id="S5.T1.10.10.13.3.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.11" style="padding-left:4.5pt;padding-right:4.5pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.12" style="padding-left:4.5pt;padding-right:4.5pt;">15.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.13" style="padding-left:4.5pt;padding-right:4.5pt;">21.5</td>
<td class="ltx_td" id="S5.T1.10.10.13.3.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.15" style="padding-left:4.5pt;padding-right:4.5pt;">4.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.16" style="padding-left:4.5pt;padding-right:4.5pt;">22.6</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.13.3.17" style="padding-left:4.5pt;padding-right:4.5pt;">29.4</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.14.4">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.14.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">HyCoCLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T1.10.10.14.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.3" style="padding-left:4.5pt;padding-right:4.5pt;">34.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">71.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.5" style="padding-left:4.5pt;padding-right:4.5pt;">80.6</td>
<td class="ltx_td" id="S5.T1.10.10.14.4.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.7" style="padding-left:4.5pt;padding-right:4.5pt;">34.4</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.8" style="padding-left:4.5pt;padding-right:4.5pt;">71.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.9" style="padding-left:4.5pt;padding-right:4.5pt;">82.2</td>
<td class="ltx_td" id="S5.T1.10.10.14.4.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.11" style="padding-left:4.5pt;padding-right:4.5pt;">2.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.12" style="padding-left:4.5pt;padding-right:4.5pt;">25.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.13" style="padding-left:4.5pt;padding-right:4.5pt;">33.2</td>
<td class="ltx_td" id="S5.T1.10.10.14.4.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.15" style="padding-left:4.5pt;padding-right:4.5pt;">8.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.16" style="padding-left:4.5pt;padding-right:4.5pt;">37.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.14.4.17" style="padding-left:4.5pt;padding-right:4.5pt;">45.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.15.5">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.15.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">Safe-CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T1.10.10.15.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.3" style="padding-left:4.5pt;padding-right:4.5pt;">45.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.4" style="padding-left:4.5pt;padding-right:4.5pt;">81.8</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">89.7</td>
<td class="ltx_td" id="S5.T1.10.10.15.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.7" style="padding-left:4.5pt;padding-right:4.5pt;">45.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.8" style="padding-left:4.5pt;padding-right:4.5pt;">82.3</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.9" style="padding-left:4.5pt;padding-right:4.5pt;">89.8</td>
<td class="ltx_td" id="S5.T1.10.10.15.5.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.11" style="padding-left:4.5pt;padding-right:4.5pt;">8.0</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.12" style="padding-left:4.5pt;padding-right:4.5pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.13" style="padding-left:4.5pt;padding-right:4.5pt;">58.0</td>
<td class="ltx_td" id="S5.T1.10.10.15.5.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.15" style="padding-left:4.5pt;padding-right:4.5pt;">19.1</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.16" style="padding-left:4.5pt;padding-right:4.5pt;">62.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.15.5.17" style="padding-left:4.5pt;padding-right:4.5pt;">71.1</td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T1.9.9.9.1" style="padding-left:4.5pt;padding-right:4.5pt;">MERU<sup class="ltx_sup" id="S5.T1.9.9.9.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_border_t" id="S5.T1.9.9.9.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.3" style="padding-left:4.5pt;padding-right:4.5pt;">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.4" style="padding-left:4.5pt;padding-right:4.5pt;">84.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.5" style="padding-left:4.5pt;padding-right:4.5pt;">91.1</td>
<td class="ltx_td ltx_border_t" id="S5.T1.9.9.9.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.7" style="padding-left:4.5pt;padding-right:4.5pt;">51.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.8" style="padding-left:4.5pt;padding-right:4.5pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.9" style="padding-left:4.5pt;padding-right:4.5pt;">92.3</td>
<td class="ltx_td ltx_border_t" id="S5.T1.9.9.9.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.11" style="padding-left:4.5pt;padding-right:4.5pt;">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.12" style="padding-left:4.5pt;padding-right:4.5pt;">39.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.13" style="padding-left:4.5pt;padding-right:4.5pt;">49.4</td>
<td class="ltx_td ltx_border_t" id="S5.T1.9.9.9.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.15" style="padding-left:4.5pt;padding-right:4.5pt;">5.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.16" style="padding-left:4.5pt;padding-right:4.5pt;">47.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.9.9.9.17" style="padding-left:4.5pt;padding-right:4.5pt;">54.7</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.10">
<td class="ltx_td ltx_align_left" id="S5.T1.10.10.10.1" style="padding-left:4.5pt;padding-right:4.5pt;">HyCoCLIP<sup class="ltx_sup" id="S5.T1.10.10.10.1.1">⋆</sup>
</td>
<td class="ltx_td" id="S5.T1.10.10.10.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.3" style="padding-left:4.5pt;padding-right:4.5pt;">47.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.4" style="padding-left:4.5pt;padding-right:4.5pt;">81.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.5" style="padding-left:4.5pt;padding-right:4.5pt;">89.1</td>
<td class="ltx_td" id="S5.T1.10.10.10.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.7" style="padding-left:4.5pt;padding-right:4.5pt;">46.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.8" style="padding-left:4.5pt;padding-right:4.5pt;">82.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.9" style="padding-left:4.5pt;padding-right:4.5pt;">90.4</td>
<td class="ltx_td" id="S5.T1.10.10.10.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.11" style="padding-left:4.5pt;padding-right:4.5pt;">1.5</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.12" style="padding-left:4.5pt;padding-right:4.5pt;">32.7</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.13" style="padding-left:4.5pt;padding-right:4.5pt;">42.3</td>
<td class="ltx_td" id="S5.T1.10.10.10.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.15" style="padding-left:4.5pt;padding-right:4.5pt;">6.9</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.16" style="padding-left:4.5pt;padding-right:4.5pt;">45.2</td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.10.17" style="padding-left:4.5pt;padding-right:4.5pt;">53.6</td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10.16.6" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.3.1" style="background-color:#E3DAF0;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.4.1" style="background-color:#E3DAF0;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.5.1" style="background-color:#E3DAF0;">90.7</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.7.1" style="background-color:#E3DAF0;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.8.1" style="background-color:#E3DAF0;">84.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.9.1" style="background-color:#E3DAF0;">91.2</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.11.1" style="background-color:#E3DAF0;">30.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.12.1" style="background-color:#E3DAF0;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.13.1" style="background-color:#E3DAF0;">71.8</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.15" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.15.1" style="background-color:#E3DAF0;">42.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.16" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.16.1" style="background-color:#E3DAF0;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T1.10.10.16.6.17" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.16.6.17.1" style="background-color:#E3DAF0;">79.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comprehensive evaluation of safe content retrieval performance on the ViSU test set, comparing HySAC against several baseline models, including the original CLIP, MERU, and HyCoCLIP.  It assesses performance across different retrieval tasks (text-to-image and image-to-text), along with various recall rates (R@1, R@10, R@20).  The results showcase HySAC's superior ability to retrieve safe content, particularly when dealing with unsafe inputs.  The table also includes results for CLIP models fine-tuned in hyperbolic space using MERU and HyCoCLIP losses, demonstrating the benefits of HySAC's approach over existing methods in navigating unsafe content queries towards safe and relevant outputs.
> <details>
> <summary>read the caption</summary>
> Table 1: Safe content retrieval performance on ViSU test set. Across all tasks and recall rates, HySAC improves over existing safety unlearning CLIP and hyperbolic CLIP models, highlighting that our approach is able to navigate unsafe image or text inputs towards relevant but safe retrieval outputs. ⋆ CLIP fine-tuned in hyperbolic space on ViSU training set with MERU/HyCoCLIP losses.
> </details>





### In-depth insights


#### HySAC:  Awareness
While the paper doesn't have a section titled "HySAC: Awareness" verbatim, the core idea revolves around imbuing VLMs with **safety awareness** rather than simply unlearning unsafe content. This is a significant shift in paradigm. The goal is to enable models to **distinguish between safe and unsafe content**, offering users agency and control. HySAC achieves this by leveraging the hierarchical properties of hyperbolic space, organizing data into **radius-based safe and unsafe regions**.  This approach contrasts with methods that aim to erase knowledge of NSFW content, which can inadvertently limit the model's ability to understand and reason about the nuances of potentially harmful concepts. HySAC's safety awareness allows for **dynamic redirection** of unsafe queries toward safer alternatives or, when necessary, controlled access to unsafe content, promoting both safety and responsible use.

#### Entailment Hierarchy
The entailment hierarchy is a key concept for structuring relationships between different levels of safety. **It allows creating an ordered structure where safe concepts are more general and unsafe concepts are more specific.** In vision-language models, such a hierarchy can be modeled using techniques that ensure safe embeddings encompass unsafe representations, creating a conical structure in the embedding space. **The entailment forces the model to understand the nuanced relationship between safe and unsafe content**, rather than merely 'unlearning' unsafe concepts, allowing it to differentiate and prioritize safety while still retaining knowledge of unsafe content. This ensures a more robust and adaptable approach to content moderation, allowing controlled access or redirection when necessary.

#### Hyperbolic Safety
The concept of "Hyperbolic Safety," likely inspired by hyperbolic geometry's hierarchical representation capabilities, suggests a novel approach to AI safety. Instead of merely **unlearning unsafe concepts**, models are designed to **understand and categorize content safety**. This involves mapping safe and unsafe content to distinct regions within a hyperbolic space, leveraging its properties to establish clear boundaries. Such safety framework enables dynamic query adjustments, prioritizing safe retrievals or, when necessary, exposing relevant unsafe content under controlled conditions. It moves towards interpretable content moderation in vision-language models.

#### Dynamic Traversal
The concept of "Dynamic Traversal," absent as a direct heading in the provided research paper, evokes compelling ideas within vision-language models' (VLMs) safety. Such traversal suggests **actively maneuvering through the embedding space** to mitigate risks associated with unsafe content. One approach would be **dynamically adjusting query embeddings** based on content safety awareness. By redirecting unsafe queries toward safer, yet relevant alternatives or retaining the output offers a customizable safety mechanism. In hyperbolic space, **entailment hierarchies would guide these dynamic adjustments**, ensuring traversal adheres to established safety boundaries. A system equipped with dynamic traversal capabilities demonstrates **heightened control, adaptability, and interpretability** in content moderation, moving beyond mere unlearning.

#### Beyond Unlearning
The concept of 'Beyond Unlearning' suggests a shift from simply erasing knowledge of unsafe content in AI models to a more sophisticated approach. **Instead of 'forgetting', the focus is on awareness** and nuanced understanding. This involves enabling models to **discern between safe and unsafe content**, allowing for controlled exposure or redirection. **This paradigm prioritizes user agency**, understanding, and interpretability, fostering responsible AI practices and building more adaptable and ethically sound systems. Ultimately, it is about moving towards a model that acknowledges and manages unsafe information responsibly.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.12127/extracted/6282813/images/chart_distribution_full.png)

> 🔼 Figure 2 presents the distribution of distances of embeddings from the root in the hyperbolic space for four different models: CLIP, Safe-CLIP, MERU, and HySAC.  The x-axis represents the distance from the root, and the y-axis represents the frequency of embeddings at that distance.  The ViSU dataset was used to generate these distributions.  The figure highlights that CLIP and Safe-CLIP fail to distinguish between text and image embeddings.  MERU shows some separation between text and image embeddings, but HySAC demonstrates a clear separation not only between text and image embeddings but also between safe and unsafe content. This visual representation effectively illustrates the key difference between HySAC and previous approaches to safety-aware content management in vision-language models.
> <details>
> <summary>read the caption</summary>
> Figure 2: Distributions of embedding distances from the root. We embed all ViSU training samples and visualize their distance distribution from the root. While CLIP and Safe-CLIP do not separate between texts and images, MERU does. HySAC, instead, also differentiates between safe and unsafe content.
> </details>



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/traversal_qual.png)

> 🔼 Figure 3 visualizes the safety traversal mechanism in HySAC. Starting with an unsafe image query, HySAC iteratively moves the embedding towards the root node of the hyperbolic space. At each step, the closest (top-1) text caption is retrieved and displayed.  The figure showcases how HySAC transitions from unsafe to safe captions as the embedding approaches the root, demonstrating its ability to prioritize safe content retrieval while maintaining semantic relevance.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative traversal results. HySAC traverses towards the root feature, retrieving the top-1 text at each interpolation point. This traversal effectively transitions from unsafe to safe captions, demonstrating the model’s ability to ensure safety-aware content retrieval.
> </details>



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/supplementary/chart_distribution_full_euc.png)

> 🔼 Figure 4 presents a comparison of embedding distance distributions from the root (origin) of the embedding space for both Euclidean and hyperbolic versions of the HySAC model.  The distributions are shown as histograms for safe text, safe images, unsafe text, and unsafe images. The key observation is that the Euclidean version of HySAC fails to clearly separate the safe and unsafe content in its embedding space. Conversely, the hyperbolic version of HySAC shows distinct, non-overlapping distributions for safe and unsafe content, indicating a successful hierarchical organization of the data according to safety levels.
> <details>
> <summary>read the caption</summary>
> Figure 4: Distributions of embedding distances from the root. Comparison of the distance distributions of Euclidean and hyperbolic embeddings from the root. Euclidean version of HySAC does not separate between safe and unsafe content, while HySAC does.
> </details>



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/supplementary/qual_unsafe_supp.png)

> 🔼 This figure showcases HySAC's ability to steer image queries towards safer textual descriptions. Starting with unsafe images, the model traverses the hyperbolic embedding space towards the origin (root). Along this path, the model uses intermediate points as queries to retrieve captions from a dataset containing both safe and unsafe content. The captions change from unsafe to safe as the traversal progresses, demonstrating HySAC's capacity to redirect unsafe inputs toward safer outputs while maintaining relevance.
> <details>
> <summary>read the caption</summary>
> Figure 5: Traversals from unsafe image queries towards safe captions. We present qualitative results of HySAC, showing the traversals from unsafe image queries toward the root feature. Interpolation points along this path are used as new queries to retrieve captions from a pool of both safe and unsafe texts.
> </details>



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/supplementary/qual_unsafe_i2i_supp.png)

> 🔼 This figure visualizes the process of guiding unsafe image queries towards safer alternatives using HySAC. It demonstrates how intermediate steps along a traversal path in the embedding space can smoothly transition from unsafe to safe image content. Each image in the grid represents a point along this path, illustrating the gradual shift towards safer visual representations.
> <details>
> <summary>read the caption</summary>
> Figure 6: Traversals from unsafe image queries towards safe images. We illustrate how HySAC can guide the transition from unsafe image queries to corresponding safe images, utilizing intermediate interpolation steps along the traversal path.
> </details>



![](https://arxiv.org/html/2503.12127/extracted/6282813/images/supplementary/qual_safe_supp.png)

> 🔼 Figure 7 showcases the results of using HySAC with safe image queries to exclusively retrieve safe text captions.  This demonstrates HySAC's ability to maintain its performance on safe data while also incorporating its safety-awareness mechanisms.  The figure visually depicts the retrieval process by showing several safe images and their corresponding safe text captions. The captions are selected from a pool that contains only safe text to further isolate the effect of using HySAC's safety-aware mechanisms.
> <details>
> <summary>read the caption</summary>
> Figure 7: Traversals from safe image queries to safe text. We demonstrate how HySAC effectively maintains its performance on safe data by using safe image queries to retrieve captions exclusively from a pool of safe text.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T2.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.8.8.8">
<td class="ltx_td ltx_border_tt" id="S5.T2.8.8.8.9" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_border_tt" id="S5.T2.8.8.8.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.2.2.2.2" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T2.2.2.2.2.1">Text-to-Image</span> (<math alttext="T^{\star}" class="ltx_Math" display="inline" id="S5.T2.1.1.1.1.m1.1"><semantics id="S5.T2.1.1.1.1.m1.1a"><msup id="S5.T2.1.1.1.1.m1.1.1" xref="S5.T2.1.1.1.1.m1.1.1.cmml"><mi id="S5.T2.1.1.1.1.m1.1.1.2" xref="S5.T2.1.1.1.1.m1.1.1.2.cmml">T</mi><mo id="S5.T2.1.1.1.1.m1.1.1.3" xref="S5.T2.1.1.1.1.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.1.1.1.1.m1.1b"><apply id="S5.T2.1.1.1.1.m1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.1.1.1.1.m1.1.1.1.cmml" xref="S5.T2.1.1.1.1.m1.1.1">superscript</csymbol><ci id="S5.T2.1.1.1.1.m1.1.1.2.cmml" xref="S5.T2.1.1.1.1.m1.1.1.2">𝑇</ci><ci id="S5.T2.1.1.1.1.m1.1.1.3.cmml" xref="S5.T2.1.1.1.1.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.1.1.1.1.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.1.1.1.1.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I^{\star}" class="ltx_Math" display="inline" id="S5.T2.2.2.2.2.m2.1"><semantics id="S5.T2.2.2.2.2.m2.1a"><msup id="S5.T2.2.2.2.2.m2.1.1" xref="S5.T2.2.2.2.2.m2.1.1.cmml"><mi id="S5.T2.2.2.2.2.m2.1.1.2" xref="S5.T2.2.2.2.2.m2.1.1.2.cmml">I</mi><mo id="S5.T2.2.2.2.2.m2.1.1.3" xref="S5.T2.2.2.2.2.m2.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.2.2.2.2.m2.1b"><apply id="S5.T2.2.2.2.2.m2.1.1.cmml" xref="S5.T2.2.2.2.2.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.2.2.2.2.m2.1.1.1.cmml" xref="S5.T2.2.2.2.2.m2.1.1">superscript</csymbol><ci id="S5.T2.2.2.2.2.m2.1.1.2.cmml" xref="S5.T2.2.2.2.2.m2.1.1.2">𝐼</ci><ci id="S5.T2.2.2.2.2.m2.1.1.3.cmml" xref="S5.T2.2.2.2.2.m2.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.2.2.2.2.m2.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.2.2.2.2.m2.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T2.8.8.8.11" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.4.4.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T2.4.4.4.4.1">Image-to-Text</span> (<math alttext="I^{\star}" class="ltx_Math" display="inline" id="S5.T2.3.3.3.3.m1.1"><semantics id="S5.T2.3.3.3.3.m1.1a"><msup id="S5.T2.3.3.3.3.m1.1.1" xref="S5.T2.3.3.3.3.m1.1.1.cmml"><mi id="S5.T2.3.3.3.3.m1.1.1.2" xref="S5.T2.3.3.3.3.m1.1.1.2.cmml">I</mi><mo id="S5.T2.3.3.3.3.m1.1.1.3" xref="S5.T2.3.3.3.3.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.3.3.3.3.m1.1b"><apply id="S5.T2.3.3.3.3.m1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.3.3.3.3.m1.1.1.1.cmml" xref="S5.T2.3.3.3.3.m1.1.1">superscript</csymbol><ci id="S5.T2.3.3.3.3.m1.1.1.2.cmml" xref="S5.T2.3.3.3.3.m1.1.1.2">𝐼</ci><ci id="S5.T2.3.3.3.3.m1.1.1.3.cmml" xref="S5.T2.3.3.3.3.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.3.3.3.3.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.3.3.3.3.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T^{\star}" class="ltx_Math" display="inline" id="S5.T2.4.4.4.4.m2.1"><semantics id="S5.T2.4.4.4.4.m2.1a"><msup id="S5.T2.4.4.4.4.m2.1.1" xref="S5.T2.4.4.4.4.m2.1.1.cmml"><mi id="S5.T2.4.4.4.4.m2.1.1.2" xref="S5.T2.4.4.4.4.m2.1.1.2.cmml">T</mi><mo id="S5.T2.4.4.4.4.m2.1.1.3" xref="S5.T2.4.4.4.4.m2.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.4.4.4.4.m2.1b"><apply id="S5.T2.4.4.4.4.m2.1.1.cmml" xref="S5.T2.4.4.4.4.m2.1.1"><csymbol cd="ambiguous" id="S5.T2.4.4.4.4.m2.1.1.1.cmml" xref="S5.T2.4.4.4.4.m2.1.1">superscript</csymbol><ci id="S5.T2.4.4.4.4.m2.1.1.2.cmml" xref="S5.T2.4.4.4.4.m2.1.1.2">𝑇</ci><ci id="S5.T2.4.4.4.4.m2.1.1.3.cmml" xref="S5.T2.4.4.4.4.m2.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.4.4.4.4.m2.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.4.4.4.4.m2.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T2.8.8.8.12" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.6.6.6.6" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T2.6.6.6.6.1">Text-to-Image</span> (<math alttext="T^{\star}" class="ltx_Math" display="inline" id="S5.T2.5.5.5.5.m1.1"><semantics id="S5.T2.5.5.5.5.m1.1a"><msup id="S5.T2.5.5.5.5.m1.1.1" xref="S5.T2.5.5.5.5.m1.1.1.cmml"><mi id="S5.T2.5.5.5.5.m1.1.1.2" xref="S5.T2.5.5.5.5.m1.1.1.2.cmml">T</mi><mo id="S5.T2.5.5.5.5.m1.1.1.3" xref="S5.T2.5.5.5.5.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.5.5.5.5.m1.1b"><apply id="S5.T2.5.5.5.5.m1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.5.5.5.5.m1.1.1.1.cmml" xref="S5.T2.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S5.T2.5.5.5.5.m1.1.1.2.cmml" xref="S5.T2.5.5.5.5.m1.1.1.2">𝑇</ci><ci id="S5.T2.5.5.5.5.m1.1.1.3.cmml" xref="S5.T2.5.5.5.5.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.5.5.5.5.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I^{\star}\cup I" class="ltx_Math" display="inline" id="S5.T2.6.6.6.6.m2.1"><semantics id="S5.T2.6.6.6.6.m2.1a"><mrow id="S5.T2.6.6.6.6.m2.1.1" xref="S5.T2.6.6.6.6.m2.1.1.cmml"><msup id="S5.T2.6.6.6.6.m2.1.1.2" xref="S5.T2.6.6.6.6.m2.1.1.2.cmml"><mi id="S5.T2.6.6.6.6.m2.1.1.2.2" xref="S5.T2.6.6.6.6.m2.1.1.2.2.cmml">I</mi><mo id="S5.T2.6.6.6.6.m2.1.1.2.3" xref="S5.T2.6.6.6.6.m2.1.1.2.3.cmml">⋆</mo></msup><mo id="S5.T2.6.6.6.6.m2.1.1.1" xref="S5.T2.6.6.6.6.m2.1.1.1.cmml">∪</mo><mi id="S5.T2.6.6.6.6.m2.1.1.3" xref="S5.T2.6.6.6.6.m2.1.1.3.cmml">I</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.6.6.6.6.m2.1b"><apply id="S5.T2.6.6.6.6.m2.1.1.cmml" xref="S5.T2.6.6.6.6.m2.1.1"><union id="S5.T2.6.6.6.6.m2.1.1.1.cmml" xref="S5.T2.6.6.6.6.m2.1.1.1"></union><apply id="S5.T2.6.6.6.6.m2.1.1.2.cmml" xref="S5.T2.6.6.6.6.m2.1.1.2"><csymbol cd="ambiguous" id="S5.T2.6.6.6.6.m2.1.1.2.1.cmml" xref="S5.T2.6.6.6.6.m2.1.1.2">superscript</csymbol><ci id="S5.T2.6.6.6.6.m2.1.1.2.2.cmml" xref="S5.T2.6.6.6.6.m2.1.1.2.2">𝐼</ci><ci id="S5.T2.6.6.6.6.m2.1.1.2.3.cmml" xref="S5.T2.6.6.6.6.m2.1.1.2.3">⋆</ci></apply><ci id="S5.T2.6.6.6.6.m2.1.1.3.cmml" xref="S5.T2.6.6.6.6.m2.1.1.3">𝐼</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.6.6.6.6.m2.1c">I^{\star}\cup I</annotation><annotation encoding="application/x-llamapun" id="S5.T2.6.6.6.6.m2.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT ∪ italic_I</annotation></semantics></math>)</td>
<td class="ltx_td ltx_border_tt" id="S5.T2.8.8.8.13" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T2.8.8.8.8" style="padding-left:4.5pt;padding-right:4.5pt;">
<span class="ltx_text ltx_font_bold" id="S5.T2.8.8.8.8.1">Image-to-Text</span> (<math alttext="I^{\star}" class="ltx_Math" display="inline" id="S5.T2.7.7.7.7.m1.1"><semantics id="S5.T2.7.7.7.7.m1.1a"><msup id="S5.T2.7.7.7.7.m1.1.1" xref="S5.T2.7.7.7.7.m1.1.1.cmml"><mi id="S5.T2.7.7.7.7.m1.1.1.2" xref="S5.T2.7.7.7.7.m1.1.1.2.cmml">I</mi><mo id="S5.T2.7.7.7.7.m1.1.1.3" xref="S5.T2.7.7.7.7.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T2.7.7.7.7.m1.1b"><apply id="S5.T2.7.7.7.7.m1.1.1.cmml" xref="S5.T2.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S5.T2.7.7.7.7.m1.1.1.1.cmml" xref="S5.T2.7.7.7.7.m1.1.1">superscript</csymbol><ci id="S5.T2.7.7.7.7.m1.1.1.2.cmml" xref="S5.T2.7.7.7.7.m1.1.1.2">𝐼</ci><ci id="S5.T2.7.7.7.7.m1.1.1.3.cmml" xref="S5.T2.7.7.7.7.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.7.7.7.7.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T2.7.7.7.7.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T^{\star}\cup T" class="ltx_Math" display="inline" id="S5.T2.8.8.8.8.m2.1"><semantics id="S5.T2.8.8.8.8.m2.1a"><mrow id="S5.T2.8.8.8.8.m2.1.1" xref="S5.T2.8.8.8.8.m2.1.1.cmml"><msup id="S5.T2.8.8.8.8.m2.1.1.2" xref="S5.T2.8.8.8.8.m2.1.1.2.cmml"><mi id="S5.T2.8.8.8.8.m2.1.1.2.2" xref="S5.T2.8.8.8.8.m2.1.1.2.2.cmml">T</mi><mo id="S5.T2.8.8.8.8.m2.1.1.2.3" xref="S5.T2.8.8.8.8.m2.1.1.2.3.cmml">⋆</mo></msup><mo id="S5.T2.8.8.8.8.m2.1.1.1" xref="S5.T2.8.8.8.8.m2.1.1.1.cmml">∪</mo><mi id="S5.T2.8.8.8.8.m2.1.1.3" xref="S5.T2.8.8.8.8.m2.1.1.3.cmml">T</mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T2.8.8.8.8.m2.1b"><apply id="S5.T2.8.8.8.8.m2.1.1.cmml" xref="S5.T2.8.8.8.8.m2.1.1"><union id="S5.T2.8.8.8.8.m2.1.1.1.cmml" xref="S5.T2.8.8.8.8.m2.1.1.1"></union><apply id="S5.T2.8.8.8.8.m2.1.1.2.cmml" xref="S5.T2.8.8.8.8.m2.1.1.2"><csymbol cd="ambiguous" id="S5.T2.8.8.8.8.m2.1.1.2.1.cmml" xref="S5.T2.8.8.8.8.m2.1.1.2">superscript</csymbol><ci id="S5.T2.8.8.8.8.m2.1.1.2.2.cmml" xref="S5.T2.8.8.8.8.m2.1.1.2.2">𝑇</ci><ci id="S5.T2.8.8.8.8.m2.1.1.2.3.cmml" xref="S5.T2.8.8.8.8.m2.1.1.2.3">⋆</ci></apply><ci id="S5.T2.8.8.8.8.m2.1.1.3.cmml" xref="S5.T2.8.8.8.8.m2.1.1.3">𝑇</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T2.8.8.8.8.m2.1c">T^{\star}\cup T</annotation><annotation encoding="application/x-llamapun" id="S5.T2.8.8.8.8.m2.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT ∪ italic_T</annotation></semantics></math>)</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.9.1">
<td class="ltx_td ltx_align_left" id="S5.T2.8.8.9.1.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.9.1.1.1">Model</span></td>
<td class="ltx_td" id="S5.T2.8.8.9.1.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.3" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.4" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.5" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T2.8.8.9.1.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.7" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.8" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.9" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T2.8.8.9.1.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.11" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.12" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.13" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
<td class="ltx_td" id="S5.T2.8.8.9.1.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.15" style="padding-left:4.5pt;padding-right:4.5pt;">R@1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.16" style="padding-left:4.5pt;padding-right:4.5pt;">R@10</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.9.1.17" style="padding-left:4.5pt;padding-right:4.5pt;">R@20</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.10.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T2.8.8.10.2.1" style="padding-left:4.5pt;padding-right:4.5pt;">CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib69" title=""><span class="ltx_text" style="font-size:90%;">69</span></a>]</cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.8.10.2.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.3" style="padding-left:4.5pt;padding-right:4.5pt;">73.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.4" style="padding-left:4.5pt;padding-right:4.5pt;">94.9</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.5" style="padding-left:4.5pt;padding-right:4.5pt;">97.6</td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.8.10.2.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.7" style="padding-left:4.5pt;padding-right:4.5pt;">72.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.8" style="padding-left:4.5pt;padding-right:4.5pt;">95.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.9" style="padding-left:4.5pt;padding-right:4.5pt;">97.7</td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.8.10.2.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.11" style="padding-left:4.5pt;padding-right:4.5pt;">68.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.12" style="padding-left:4.5pt;padding-right:4.5pt;">92.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.13" style="padding-left:4.5pt;padding-right:4.5pt;">95.9</td>
<td class="ltx_td ltx_border_t" id="S5.T2.8.8.10.2.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.15" style="padding-left:4.5pt;padding-right:4.5pt;">67.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.16" style="padding-left:4.5pt;padding-right:4.5pt;">93.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T2.8.8.10.2.17" style="padding-left:4.5pt;padding-right:4.5pt;">96.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.11.3">
<td class="ltx_td ltx_align_left" id="S5.T2.8.8.11.3.1" style="padding-left:4.5pt;padding-right:4.5pt;">MERU <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T2.8.8.11.3.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.3" style="padding-left:4.5pt;padding-right:4.5pt;">29.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.4" style="padding-left:4.5pt;padding-right:4.5pt;">62.4</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.5" style="padding-left:4.5pt;padding-right:4.5pt;">72.2</td>
<td class="ltx_td" id="S5.T2.8.8.11.3.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.7" style="padding-left:4.5pt;padding-right:4.5pt;">25.8</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.8" style="padding-left:4.5pt;padding-right:4.5pt;">57.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.9" style="padding-left:4.5pt;padding-right:4.5pt;">67.8</td>
<td class="ltx_td" id="S5.T2.8.8.11.3.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.11" style="padding-left:4.5pt;padding-right:4.5pt;">23.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.12" style="padding-left:4.5pt;padding-right:4.5pt;">54.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.13" style="padding-left:4.5pt;padding-right:4.5pt;">64.3</td>
<td class="ltx_td" id="S5.T2.8.8.11.3.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.15" style="padding-left:4.5pt;padding-right:4.5pt;">19.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.16" style="padding-left:4.5pt;padding-right:4.5pt;">51.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.11.3.17" style="padding-left:4.5pt;padding-right:4.5pt;">61.2</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.12.4">
<td class="ltx_td ltx_align_left" id="S5.T2.8.8.12.4.1" style="padding-left:4.5pt;padding-right:4.5pt;">HyCoCLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T2.8.8.12.4.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.3" style="padding-left:4.5pt;padding-right:4.5pt;">69.5</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.4" style="padding-left:4.5pt;padding-right:4.5pt;">93.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.5" style="padding-left:4.5pt;padding-right:4.5pt;">95.8</td>
<td class="ltx_td" id="S5.T2.8.8.12.4.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.7" style="padding-left:4.5pt;padding-right:4.5pt;">65.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.8" style="padding-left:4.5pt;padding-right:4.5pt;">91.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.9" style="padding-left:4.5pt;padding-right:4.5pt;">95.0</td>
<td class="ltx_td" id="S5.T2.8.8.12.4.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.11" style="padding-left:4.5pt;padding-right:4.5pt;">63.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.12" style="padding-left:4.5pt;padding-right:4.5pt;">89.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.13" style="padding-left:4.5pt;padding-right:4.5pt;">93.7</td>
<td class="ltx_td" id="S5.T2.8.8.12.4.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.15" style="padding-left:4.5pt;padding-right:4.5pt;">55.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.16" style="padding-left:4.5pt;padding-right:4.5pt;">88.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.12.4.17" style="padding-left:4.5pt;padding-right:4.5pt;">92.7</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.13.5">
<td class="ltx_td ltx_align_left" id="S5.T2.8.8.13.5.1" style="padding-left:4.5pt;padding-right:4.5pt;">Safe-CLIP <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T2.8.8.13.5.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.3" style="padding-left:4.5pt;padding-right:4.5pt;">58.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.4" style="padding-left:4.5pt;padding-right:4.5pt;">86.2</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.5" style="padding-left:4.5pt;padding-right:4.5pt;">91.4</td>
<td class="ltx_td" id="S5.T2.8.8.13.5.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.7" style="padding-left:4.5pt;padding-right:4.5pt;">56.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.8" style="padding-left:4.5pt;padding-right:4.5pt;">85.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.9" style="padding-left:4.5pt;padding-right:4.5pt;">91.0</td>
<td class="ltx_td" id="S5.T2.8.8.13.5.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.11" style="padding-left:4.5pt;padding-right:4.5pt;">47.7</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.12" style="padding-left:4.5pt;padding-right:4.5pt;">80.0</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.13" style="padding-left:4.5pt;padding-right:4.5pt;">85.8</td>
<td class="ltx_td" id="S5.T2.8.8.13.5.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.15" style="padding-left:4.5pt;padding-right:4.5pt;">32.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.16" style="padding-left:4.5pt;padding-right:4.5pt;">77.1</td>
<td class="ltx_td ltx_align_center" id="S5.T2.8.8.13.5.17" style="padding-left:4.5pt;padding-right:4.5pt;">84.6</td>
</tr>
<tr class="ltx_tr" id="S5.T2.8.8.14.6" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.1" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.2" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.3" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.3.1" style="background-color:#E3DAF0;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.4" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.4.1" style="background-color:#E3DAF0;">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.5" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.5.1" style="background-color:#E3DAF0;">99.4</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.6" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.7" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.7.1" style="background-color:#E3DAF0;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.8" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.8.1" style="background-color:#E3DAF0;">97.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.9" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.9.1" style="background-color:#E3DAF0;">99.2</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.10" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.11" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.11.1" style="background-color:#E3DAF0;">81.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.12" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.12.1" style="background-color:#E3DAF0;">98.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.13" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.13.1" style="background-color:#E3DAF0;">99.4</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.14" style="padding-left:4.5pt;padding-right:4.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.15" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.15.1" style="background-color:#E3DAF0;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.16" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.16.1" style="background-color:#E3DAF0;">97.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S5.T2.8.8.14.6.17" style="padding-left:4.5pt;padding-right:4.5pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.8.8.14.6.17.1" style="background-color:#E3DAF0;">98.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents the results of the unsafe content retrieval task using the ViSU test set.  The table evaluates the model's ability to retrieve unsafe content when given unsafe queries.  The results demonstrate that HySAC significantly outperforms existing methods, such as CLIP and Safe-CLIP, in its ability to correctly identify and retrieve unsafe content. This superior performance stems from the core objective of HySAC—distinguishing and separating safe and unsafe content in different regions of the embedding space, thereby preserving valuable safety-related information.
> <details>
> <summary>read the caption</summary>
> Table 2: Unsafe content retrieval performance on ViSU test set. Akin to safe content retrieval, our approach performs best. This is a result of our objective, as we assign different content to different regions, enabling us to maintain valuable safety information.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T3.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.8.8.8">
<td class="ltx_td ltx_border_tt" id="S5.T3.8.8.8.9" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T3.8.8.8.10" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.2.2.2.2" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T" class="ltx_Math" display="inline" id="S5.T3.1.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.1.m1.1a"><mi id="S5.T3.1.1.1.1.m1.1.1" xref="S5.T3.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.1.m1.1d">italic_T</annotation></semantics></math>-to-<math alttext="I" class="ltx_Math" display="inline" id="S5.T3.2.2.2.2.m2.1"><semantics id="S5.T3.2.2.2.2.m2.1a"><mi id="S5.T3.2.2.2.2.m2.1.1" xref="S5.T3.2.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.2.m2.1b"><ci id="S5.T3.2.2.2.2.m2.1.1.cmml" xref="S5.T3.2.2.2.2.m2.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.2.m2.1c">I</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.2.m2.1d">italic_I</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T3.8.8.8.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.4.4.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I" class="ltx_Math" display="inline" id="S5.T3.3.3.3.3.m1.1"><semantics id="S5.T3.3.3.3.3.m1.1a"><mi id="S5.T3.3.3.3.3.m1.1.1" xref="S5.T3.3.3.3.3.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="S5.T3.3.3.3.3.m1.1b"><ci id="S5.T3.3.3.3.3.m1.1.1.cmml" xref="S5.T3.3.3.3.3.m1.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.3.3.3.3.m1.1c">I</annotation><annotation encoding="application/x-llamapun" id="S5.T3.3.3.3.3.m1.1d">italic_I</annotation></semantics></math>-to-<math alttext="T" class="ltx_Math" display="inline" id="S5.T3.4.4.4.4.m2.1"><semantics id="S5.T3.4.4.4.4.m2.1a"><mi id="S5.T3.4.4.4.4.m2.1.1" xref="S5.T3.4.4.4.4.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="S5.T3.4.4.4.4.m2.1b"><ci id="S5.T3.4.4.4.4.m2.1.1.cmml" xref="S5.T3.4.4.4.4.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.4.4.4.4.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="S5.T3.4.4.4.4.m2.1d">italic_T</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T3.8.8.8.12" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.6.6.6.6" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T^{\star}" class="ltx_Math" display="inline" id="S5.T3.5.5.5.5.m1.1"><semantics id="S5.T3.5.5.5.5.m1.1a"><msup id="S5.T3.5.5.5.5.m1.1.1" xref="S5.T3.5.5.5.5.m1.1.1.cmml"><mi id="S5.T3.5.5.5.5.m1.1.1.2" xref="S5.T3.5.5.5.5.m1.1.1.2.cmml">T</mi><mo id="S5.T3.5.5.5.5.m1.1.1.3" xref="S5.T3.5.5.5.5.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T3.5.5.5.5.m1.1b"><apply id="S5.T3.5.5.5.5.m1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.5.5.5.5.m1.1.1.1.cmml" xref="S5.T3.5.5.5.5.m1.1.1">superscript</csymbol><ci id="S5.T3.5.5.5.5.m1.1.1.2.cmml" xref="S5.T3.5.5.5.5.m1.1.1.2">𝑇</ci><ci id="S5.T3.5.5.5.5.m1.1.1.3.cmml" xref="S5.T3.5.5.5.5.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.5.5.5.5.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I\cup I^{\star}" class="ltx_Math" display="inline" id="S5.T3.6.6.6.6.m2.1"><semantics id="S5.T3.6.6.6.6.m2.1a"><mrow id="S5.T3.6.6.6.6.m2.1.1" xref="S5.T3.6.6.6.6.m2.1.1.cmml"><mi id="S5.T3.6.6.6.6.m2.1.1.2" xref="S5.T3.6.6.6.6.m2.1.1.2.cmml">I</mi><mo id="S5.T3.6.6.6.6.m2.1.1.1" xref="S5.T3.6.6.6.6.m2.1.1.1.cmml">∪</mo><msup id="S5.T3.6.6.6.6.m2.1.1.3" xref="S5.T3.6.6.6.6.m2.1.1.3.cmml"><mi id="S5.T3.6.6.6.6.m2.1.1.3.2" xref="S5.T3.6.6.6.6.m2.1.1.3.2.cmml">I</mi><mo id="S5.T3.6.6.6.6.m2.1.1.3.3" xref="S5.T3.6.6.6.6.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.6.6.6.6.m2.1b"><apply id="S5.T3.6.6.6.6.m2.1.1.cmml" xref="S5.T3.6.6.6.6.m2.1.1"><union id="S5.T3.6.6.6.6.m2.1.1.1.cmml" xref="S5.T3.6.6.6.6.m2.1.1.1"></union><ci id="S5.T3.6.6.6.6.m2.1.1.2.cmml" xref="S5.T3.6.6.6.6.m2.1.1.2">𝐼</ci><apply id="S5.T3.6.6.6.6.m2.1.1.3.cmml" xref="S5.T3.6.6.6.6.m2.1.1.3"><csymbol cd="ambiguous" id="S5.T3.6.6.6.6.m2.1.1.3.1.cmml" xref="S5.T3.6.6.6.6.m2.1.1.3">superscript</csymbol><ci id="S5.T3.6.6.6.6.m2.1.1.3.2.cmml" xref="S5.T3.6.6.6.6.m2.1.1.3.2">𝐼</ci><ci id="S5.T3.6.6.6.6.m2.1.1.3.3.cmml" xref="S5.T3.6.6.6.6.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.6.6.6.6.m2.1c">I\cup I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.6.6.6.6.m2.1d">italic_I ∪ italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T3.8.8.8.13" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T3.8.8.8.8" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I^{\star}" class="ltx_Math" display="inline" id="S5.T3.7.7.7.7.m1.1"><semantics id="S5.T3.7.7.7.7.m1.1a"><msup id="S5.T3.7.7.7.7.m1.1.1" xref="S5.T3.7.7.7.7.m1.1.1.cmml"><mi id="S5.T3.7.7.7.7.m1.1.1.2" xref="S5.T3.7.7.7.7.m1.1.1.2.cmml">I</mi><mo id="S5.T3.7.7.7.7.m1.1.1.3" xref="S5.T3.7.7.7.7.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="S5.T3.7.7.7.7.m1.1b"><apply id="S5.T3.7.7.7.7.m1.1.1.cmml" xref="S5.T3.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="S5.T3.7.7.7.7.m1.1.1.1.cmml" xref="S5.T3.7.7.7.7.m1.1.1">superscript</csymbol><ci id="S5.T3.7.7.7.7.m1.1.1.2.cmml" xref="S5.T3.7.7.7.7.m1.1.1.2">𝐼</ci><ci id="S5.T3.7.7.7.7.m1.1.1.3.cmml" xref="S5.T3.7.7.7.7.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.7.7.7.7.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.7.7.7.7.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T\cup T^{\star}" class="ltx_Math" display="inline" id="S5.T3.8.8.8.8.m2.1"><semantics id="S5.T3.8.8.8.8.m2.1a"><mrow id="S5.T3.8.8.8.8.m2.1.1" xref="S5.T3.8.8.8.8.m2.1.1.cmml"><mi id="S5.T3.8.8.8.8.m2.1.1.2" xref="S5.T3.8.8.8.8.m2.1.1.2.cmml">T</mi><mo id="S5.T3.8.8.8.8.m2.1.1.1" xref="S5.T3.8.8.8.8.m2.1.1.1.cmml">∪</mo><msup id="S5.T3.8.8.8.8.m2.1.1.3" xref="S5.T3.8.8.8.8.m2.1.1.3.cmml"><mi id="S5.T3.8.8.8.8.m2.1.1.3.2" xref="S5.T3.8.8.8.8.m2.1.1.3.2.cmml">T</mi><mo id="S5.T3.8.8.8.8.m2.1.1.3.3" xref="S5.T3.8.8.8.8.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="S5.T3.8.8.8.8.m2.1b"><apply id="S5.T3.8.8.8.8.m2.1.1.cmml" xref="S5.T3.8.8.8.8.m2.1.1"><union id="S5.T3.8.8.8.8.m2.1.1.1.cmml" xref="S5.T3.8.8.8.8.m2.1.1.1"></union><ci id="S5.T3.8.8.8.8.m2.1.1.2.cmml" xref="S5.T3.8.8.8.8.m2.1.1.2">𝑇</ci><apply id="S5.T3.8.8.8.8.m2.1.1.3.cmml" xref="S5.T3.8.8.8.8.m2.1.1.3"><csymbol cd="ambiguous" id="S5.T3.8.8.8.8.m2.1.1.3.1.cmml" xref="S5.T3.8.8.8.8.m2.1.1.3">superscript</csymbol><ci id="S5.T3.8.8.8.8.m2.1.1.3.2.cmml" xref="S5.T3.8.8.8.8.m2.1.1.3.2">𝑇</ci><ci id="S5.T3.8.8.8.8.m2.1.1.3.3.cmml" xref="S5.T3.8.8.8.8.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.8.8.8.8.m2.1c">T\cup T^{\star}</annotation><annotation encoding="application/x-llamapun" id="S5.T3.8.8.8.8.m2.1d">italic_T ∪ italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S5.T3.8.8.9.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.9.1.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T3.8.8.9.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.3" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.4" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T3.8.8.9.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.6" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.7" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T3.8.8.9.1.8" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.9" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.10" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T3.8.8.9.1.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.12" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T3.8.8.9.1.13" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.10.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T3.8.8.10.2.1" style="padding-left:2.2pt;padding-right:2.2pt;">w/o Ent</td>
<td class="ltx_td ltx_border_t" id="S5.T3.8.8.10.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.3" style="padding-left:2.2pt;padding-right:2.2pt;">52.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">84.9</td>
<td class="ltx_td ltx_border_t" id="S5.T3.8.8.10.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.6" style="padding-left:2.2pt;padding-right:2.2pt;">50.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.7" style="padding-left:2.2pt;padding-right:2.2pt;">84.7</td>
<td class="ltx_td ltx_border_t" id="S5.T3.8.8.10.2.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.9" style="padding-left:2.2pt;padding-right:2.2pt;">4.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.10" style="padding-left:2.2pt;padding-right:2.2pt;">49.0</td>
<td class="ltx_td ltx_border_t" id="S5.T3.8.8.10.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.12" style="padding-left:2.2pt;padding-right:2.2pt;">5.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.8.8.10.2.13" style="padding-left:2.2pt;padding-right:2.2pt;">64.5</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.11.3">
<td class="ltx_td ltx_align_left" id="S5.T3.8.8.11.3.1" style="padding-left:2.2pt;padding-right:2.2pt;">w/o S-Ent</td>
<td class="ltx_td" id="S5.T3.8.8.11.3.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.3" style="padding-left:2.2pt;padding-right:2.2pt;">51.0</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.4" style="padding-left:2.2pt;padding-right:2.2pt;">84.2</td>
<td class="ltx_td" id="S5.T3.8.8.11.3.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.6" style="padding-left:2.2pt;padding-right:2.2pt;">49.8</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.7" style="padding-left:2.2pt;padding-right:2.2pt;">84.3</td>
<td class="ltx_td" id="S5.T3.8.8.11.3.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.9" style="padding-left:2.2pt;padding-right:2.2pt;">1.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.10" style="padding-left:2.2pt;padding-right:2.2pt;">39.1</td>
<td class="ltx_td" id="S5.T3.8.8.11.3.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.12" style="padding-left:2.2pt;padding-right:2.2pt;">7.4</td>
<td class="ltx_td ltx_align_center" id="S5.T3.8.8.11.3.13" style="padding-left:2.2pt;padding-right:2.2pt;">63.7</td>
</tr>
<tr class="ltx_tr" id="S5.T3.8.8.12.4" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T3.8.8.12.4.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.12.4.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T3.8.8.12.4.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="S5.T3.8.8.12.4.3.1" style="background-color:#E3DAF0;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="S5.T3.8.8.12.4.4.1" style="background-color:#E3DAF0;">84.1</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T3.8.8.12.4.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.6" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="S5.T3.8.8.12.4.6.1" style="background-color:#E3DAF0;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="S5.T3.8.8.12.4.7.1" style="background-color:#E3DAF0;">84.2</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T3.8.8.12.4.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.12.4.9.1" style="background-color:#E3DAF0;">30.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.12.4.10.1" style="background-color:#E3DAF0;">62.8</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T3.8.8.12.4.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.12" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.12.4.12.1" style="background-color:#E3DAF0;">42.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.8.8.12.4.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T3.8.8.12.4.13.1" style="background-color:#E3DAF0;">73.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different loss components in the HySAC model.  Two variants of the HySAC model are created: one without the entailment loss (removing the hierarchical relationship modeling between safe and unsafe content), and one without the safety entailment loss (removing the specific relationship between safe and unsafe pairs). The results of these ablated models are compared to the full HySAC model using the same evaluation metrics and dataset (ViSU test set) as in Table 1.  This allows for a quantitative assessment of the contributions of each loss component to the overall performance of the model in terms of safe and unsafe content retrieval.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on loss components. We evaluate HySAC against two ablations that remove loss components. Results are in the same setting of Table 1.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T4.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T4.2.1.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T4.2.1.1.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T4.2.1.1.1.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.3.1">% Safe (Text-to-Image)</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T4.2.1.1.1.4" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T4.2.1.1.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.1.1.5.1">% Safe (Image-to-Text)</span></th>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S5.T4.2.1.2.2.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.2.2.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T4.2.1.2.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.3" style="padding-left:2.2pt;padding-right:2.2pt;">NudeNet</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">NSFW URLs</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.5" style="padding-left:2.2pt;padding-right:2.2pt;">SMID</th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T4.2.1.2.2.6" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.7" style="padding-left:2.2pt;padding-right:2.2pt;">NudeNet</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.8" style="padding-left:2.2pt;padding-right:2.2pt;">NSFW URLs</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T4.2.1.2.2.9" style="padding-left:2.2pt;padding-right:2.2pt;">SMID</th>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T4.2.1.3.3.1" style="padding-left:2.2pt;padding-right:2.2pt;">CLIP</td>
<td class="ltx_td ltx_border_t" id="S5.T4.2.1.3.3.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.3" style="padding-left:2.2pt;padding-right:2.2pt;">78.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.4" style="padding-left:2.2pt;padding-right:2.2pt;">79.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.5" style="padding-left:2.2pt;padding-right:2.2pt;">55.2</td>
<td class="ltx_td ltx_border_t" id="S5.T4.2.1.3.3.6" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.7" style="padding-left:2.2pt;padding-right:2.2pt;">33.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.8" style="padding-left:2.2pt;padding-right:2.2pt;">44.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.2.1.3.3.9" style="padding-left:2.2pt;padding-right:2.2pt;">59.1</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.4.4">
<td class="ltx_td ltx_align_left" id="S5.T4.2.1.4.4.1" style="padding-left:2.2pt;padding-right:2.2pt;">Safe-CLIP</td>
<td class="ltx_td" id="S5.T4.2.1.4.4.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.3" style="padding-left:2.2pt;padding-right:2.2pt;">92.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">92.6</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.4.4.5.1">83.4</span></td>
<td class="ltx_td" id="S5.T4.2.1.4.4.6" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.7" style="padding-left:2.2pt;padding-right:2.2pt;">75.2</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.8" style="padding-left:2.2pt;padding-right:2.2pt;">76.4</td>
<td class="ltx_td ltx_align_center" id="S5.T4.2.1.4.4.9" style="padding-left:2.2pt;padding-right:2.2pt;">65.6</td>
</tr>
<tr class="ltx_tr" id="S5.T4.2.1.5.5" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T4.2.1.5.5.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T4.2.1.5.5.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.3.1" style="background-color:#E3DAF0;">96.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.4.1" style="background-color:#E3DAF0;">93.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="S5.T4.2.1.5.5.5.1" style="background-color:#E3DAF0;">80.1</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T4.2.1.5.5.6" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.7.1" style="background-color:#E3DAF0;">84.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.8" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.8.1" style="background-color:#E3DAF0;">95.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.2.1.5.5.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="S5.T4.2.1.5.5.9.1" style="background-color:#E3DAF0;">97.9</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a retrieval experiment using real-world NSFW images.  The goal was to assess the models' ability to retrieve safe images when given unsafe prompts (queries). Unsafe prompts were selected from the ViSU test set, while the images used for retrieval included a mix of safe images (sourced from various NSFW image datasets) and unsafe images (sourced from the LAION-400M dataset). The table shows the percentage of safe images retrieved for each model, indicating their success rate in redirecting unsafe queries to safer content.
> <details>
> <summary>read the caption</summary>
> Table 4: Retrieval performance on real NSFW images. Rate of safe images retrieved using unsafe prompts from the ViSU test set. The retrievable set includes safe and unsafe real images, with the latter from LAION-400M and the former from NSFW sources.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T5.2.1">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T5.2.1.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T5.2.1.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.2.1.1.1.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.3.1">NudeNet</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="S5.T5.2.1.1.1.4" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S5.T5.2.1.1.1.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.1.1.5.1">Mixed NSFW</span></th>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.2.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="S5.T5.2.1.2.2.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.2.2.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T5.2.1.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.3" style="padding-left:7.0pt;padding-right:7.0pt;">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.4" style="padding-left:7.0pt;padding-right:7.0pt;">FPR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.5" style="padding-left:7.0pt;padding-right:7.0pt;">FNR</th>
<th class="ltx_td ltx_th ltx_th_column" id="S5.T5.2.1.2.2.6" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.7" style="padding-left:7.0pt;padding-right:7.0pt;">Acc</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.8" style="padding-left:7.0pt;padding-right:7.0pt;">FPR</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T5.2.1.2.2.9" style="padding-left:7.0pt;padding-right:7.0pt;">FNR</th>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.3.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S5.T5.2.1.3.3.1" style="padding-left:7.0pt;padding-right:7.0pt;">NSFW-CNN <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib46" title=""><span class="ltx_text" style="font-size:90%;">46</span></a>]</cite>
</td>
<td class="ltx_td ltx_border_t" id="S5.T5.2.1.3.3.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;">85.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.5" style="padding-left:7.0pt;padding-right:7.0pt;">14.7</td>
<td class="ltx_td ltx_border_t" id="S5.T5.2.1.3.3.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.7" style="padding-left:7.0pt;padding-right:7.0pt;">66.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.8" style="padding-left:7.0pt;padding-right:7.0pt;">4.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.2.1.3.3.9" style="padding-left:7.0pt;padding-right:7.0pt;">35.9</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.4.4">
<td class="ltx_td ltx_align_left" id="S5.T5.2.1.4.4.1" style="padding-left:7.0pt;padding-right:7.0pt;">CLIP-classifier <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib76" title=""><span class="ltx_text" style="font-size:90%;">76</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T5.2.1.4.4.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.3" style="padding-left:7.0pt;padding-right:7.0pt;">97.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.5" style="padding-left:7.0pt;padding-right:7.0pt;">2.7</td>
<td class="ltx_td" id="S5.T5.2.1.4.4.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.7" style="padding-left:7.0pt;padding-right:7.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.4.4.8.1">0.1</span></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.4.4.9" style="padding-left:7.0pt;padding-right:7.0pt;">11.0</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.5.5">
<td class="ltx_td ltx_align_left" id="S5.T5.2.1.5.5.1" style="padding-left:7.0pt;padding-right:7.0pt;">CLIP-distance <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T5.2.1.5.5.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.3" style="padding-left:7.0pt;padding-right:7.0pt;">86.4</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">13.6</td>
<td class="ltx_td" id="S5.T5.2.1.5.5.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.7" style="padding-left:7.0pt;padding-right:7.0pt;">77.8</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.8" style="padding-left:7.0pt;padding-right:7.0pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.5.5.9" style="padding-left:7.0pt;padding-right:7.0pt;">22.1</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.6.6">
<td class="ltx_td ltx_align_left" id="S5.T5.2.1.6.6.1" style="padding-left:7.0pt;padding-right:7.0pt;">NudeNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T5.2.1.6.6.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.3" style="padding-left:7.0pt;padding-right:7.0pt;">91.2</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.5" style="padding-left:7.0pt;padding-right:7.0pt;">8.8</td>
<td class="ltx_td" id="S5.T5.2.1.6.6.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.7" style="padding-left:7.0pt;padding-right:7.0pt;">76.9</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.8" style="padding-left:7.0pt;padding-right:7.0pt;">4.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.6.6.9" style="padding-left:7.0pt;padding-right:7.0pt;">24.6</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.7.7">
<td class="ltx_td ltx_align_left" id="S5.T5.2.1.7.7.1" style="padding-left:7.0pt;padding-right:7.0pt;">Q16 <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2503.12127v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a>]</cite>
</td>
<td class="ltx_td" id="S5.T5.2.1.7.7.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.3" style="padding-left:7.0pt;padding-right:7.0pt;">28.5</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.5" style="padding-left:7.0pt;padding-right:7.0pt;">71.5</td>
<td class="ltx_td" id="S5.T5.2.1.7.7.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.7" style="padding-left:7.0pt;padding-right:7.0pt;">65.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.8" style="padding-left:7.0pt;padding-right:7.0pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="S5.T5.2.1.7.7.9" style="padding-left:7.0pt;padding-right:7.0pt;">29.4</td>
</tr>
<tr class="ltx_tr" id="S5.T5.2.1.8.8" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S5.T5.2.1.8.8.1" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.8.8.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T5.2.1.8.8.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.8.8.3.1" style="background-color:#E3DAF0;">99.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.8.4.1" style="background-color:#E3DAF0;">0.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.8.8.5.1" style="background-color:#E3DAF0;">0.5</span></td>
<td class="ltx_td ltx_border_bb" id="S5.T5.2.1.8.8.6" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.8.8.7.1" style="background-color:#E3DAF0;">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="S5.T5.2.1.8.8.8.1" style="background-color:#E3DAF0;">16.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.2.1.8.8.9" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T5.2.1.8.8.9.1" style="background-color:#E3DAF0;">6.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 5 presents a comparison of HySAC's NSFW classification performance against several other established NSFW classifiers.  It shows the accuracy, false positive rate (FPR), and false negative rate (FNR) for each model on two datasets: NudeNet (containing only nudity) and Mixed NSFW (a broader range of NSFW content). The metrics are reported as percentages, allowing for easy comparison of the models' effectiveness in correctly identifying and classifying NSFW content.
> <details>
> <summary>read the caption</summary>
> Table 5: NSFW classification. Comparison between HySAC and other NSFW classifiers. Metrics reported in percentages.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A3.T6.5.5">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T6.5.5.6.1">
<td class="ltx_td ltx_border_tt" id="A3.T6.5.5.6.1.1" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A3.T6.5.5.6.1.2" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A3.T6.5.5.6.1.3" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.6.1.3.1">NudeNet</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A3.T6.5.5.6.1.4" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="A3.T6.5.5.6.1.5" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.6.1.5.1">Mixed NSFW</span></th>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A3.T6.5.5.5.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.5.6.1">Thresh.</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="A3.T6.5.5.5.7" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.1.1.1.1" style="padding-left:7.0pt;padding-right:7.0pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.1.1.1.1.m1.1"><semantics id="A3.T6.1.1.1.1.m1.1a"><mo id="A3.T6.1.1.1.1.m1.1.1" stretchy="false" xref="A3.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.1.1.1.1.m1.1b"><ci id="A3.T6.1.1.1.1.m1.1.1.cmml" xref="A3.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.2.2.2.2" style="padding-left:7.0pt;padding-right:7.0pt;">FNR <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.2.2.2.2.m1.1"><semantics id="A3.T6.2.2.2.2.m1.1a"><mo id="A3.T6.2.2.2.2.m1.1.1" stretchy="false" xref="A3.T6.2.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.2.2.2.2.m1.1b"><ci id="A3.T6.2.2.2.2.m1.1.1.cmml" xref="A3.T6.2.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.2.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.2.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_th ltx_th_column" id="A3.T6.5.5.5.8" style="padding-left:7.0pt;padding-right:7.0pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.3.3.3.3" style="padding-left:7.0pt;padding-right:7.0pt;">Acc <math alttext="\uparrow" class="ltx_Math" display="inline" id="A3.T6.3.3.3.3.m1.1"><semantics id="A3.T6.3.3.3.3.m1.1a"><mo id="A3.T6.3.3.3.3.m1.1.1" stretchy="false" xref="A3.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="A3.T6.3.3.3.3.m1.1b"><ci id="A3.T6.3.3.3.3.m1.1.1.cmml" xref="A3.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.4.4.4.4" style="padding-left:7.0pt;padding-right:7.0pt;">FPR <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.4.4.4.4.m1.1"><semantics id="A3.T6.4.4.4.4.m1.1a"><mo id="A3.T6.4.4.4.4.m1.1.1" stretchy="false" xref="A3.T6.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.4.4.4.4.m1.1b"><ci id="A3.T6.4.4.4.4.m1.1.1.cmml" xref="A3.T6.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A3.T6.5.5.5.5" style="padding-left:7.0pt;padding-right:7.0pt;">FNR <math alttext="\downarrow" class="ltx_Math" display="inline" id="A3.T6.5.5.5.5.m1.1"><semantics id="A3.T6.5.5.5.5.m1.1a"><mo id="A3.T6.5.5.5.5.m1.1.1" stretchy="false" xref="A3.T6.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="A3.T6.5.5.5.5.m1.1b"><ci id="A3.T6.5.5.5.5.m1.1.1.cmml" xref="A3.T6.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T6.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="A3.T6.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.7.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A3.T6.5.5.7.2.1" style="padding-left:7.0pt;padding-right:7.0pt;">0.51</td>
<td class="ltx_td ltx_border_t" id="A3.T6.5.5.7.2.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.7.2.3" style="padding-left:7.0pt;padding-right:7.0pt;">100</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.7.2.4" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
<td class="ltx_td ltx_border_t" id="A3.T6.5.5.7.2.5" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.7.2.6" style="padding-left:7.0pt;padding-right:7.0pt;">50.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.7.2.7" style="padding-left:7.0pt;padding-right:7.0pt;">53.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T6.5.5.7.2.8" style="padding-left:7.0pt;padding-right:7.0pt;">0.0</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.8.3">
<td class="ltx_td ltx_align_left" id="A3.T6.5.5.8.3.1" style="padding-left:7.0pt;padding-right:7.0pt;">0.52</td>
<td class="ltx_td" id="A3.T6.5.5.8.3.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.8.3.3" style="background-color:#E3DAF0;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A3.T6.5.5.8.3.3.1" style="background-color:#E3DAF0;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.8.3.3.1.1">99.5</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.8.3.4" style="background-color:#E3DAF0;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A3.T6.5.5.8.3.4.1" style="background-color:#E3DAF0;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.8.3.4.1.1">0.5</span></span></td>
<td class="ltx_td" id="A3.T6.5.5.8.3.5" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.8.3.6" style="padding-left:7.0pt;padding-right:7.0pt;">59.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.8.3.7" style="padding-left:7.0pt;padding-right:7.0pt;">43.7</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.8.3.8" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.8.3.8.1">0.2</span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.9.4">
<td class="ltx_td ltx_align_left" id="A3.T6.5.5.9.4.1" style="padding-left:7.0pt;padding-right:7.0pt;">0.53</td>
<td class="ltx_td" id="A3.T6.5.5.9.4.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.9.4.3" style="padding-left:7.0pt;padding-right:7.0pt;">89.2</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.9.4.4" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T6.5.5.9.4.4.1">10.8</span></td>
<td class="ltx_td" id="A3.T6.5.5.9.4.5" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.9.4.6" style="background-color:#E3DAF0;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A3.T6.5.5.9.4.6.1" style="background-color:#E3DAF0;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.9.4.6.1.1">78.5</span></span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.9.4.7" style="background-color:#E3DAF0;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A3.T6.5.5.9.4.7.1" style="background-color:#E3DAF0;">16.5</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.9.4.8" style="background-color:#E3DAF0;padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text" id="A3.T6.5.5.9.4.8.1" style="background-color:#E3DAF0;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T6.5.5.9.4.8.1.1">6.8</span></span></td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.10.5">
<td class="ltx_td ltx_align_left" id="A3.T6.5.5.10.5.1" style="padding-left:7.0pt;padding-right:7.0pt;">0.54</td>
<td class="ltx_td" id="A3.T6.5.5.10.5.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.10.5.3" style="padding-left:7.0pt;padding-right:7.0pt;">59.6</td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.10.5.4" style="padding-left:7.0pt;padding-right:7.0pt;">40.4</td>
<td class="ltx_td" id="A3.T6.5.5.10.5.5" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.10.5.6" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T6.5.5.10.5.6.1">75.4</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.10.5.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T6.5.5.10.5.7.1">3.6</span></td>
<td class="ltx_td ltx_align_center" id="A3.T6.5.5.10.5.8" style="padding-left:7.0pt;padding-right:7.0pt;">23.1</td>
</tr>
<tr class="ltx_tr" id="A3.T6.5.5.11.6">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A3.T6.5.5.11.6.1" style="padding-left:7.0pt;padding-right:7.0pt;">0.55</td>
<td class="ltx_td ltx_border_bb" id="A3.T6.5.5.11.6.2" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11.6.3" style="padding-left:7.0pt;padding-right:7.0pt;">59.6</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11.6.4" style="padding-left:7.0pt;padding-right:7.0pt;">40.4</td>
<td class="ltx_td ltx_border_bb" id="A3.T6.5.5.11.6.5" style="padding-left:7.0pt;padding-right:7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11.6.6" style="padding-left:7.0pt;padding-right:7.0pt;">62.8</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11.6.7" style="padding-left:7.0pt;padding-right:7.0pt;"><span class="ltx_text ltx_font_bold" id="A3.T6.5.5.11.6.7.1">2.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T6.5.5.11.6.8" style="padding-left:7.0pt;padding-right:7.0pt;">38.4</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the threshold parameter used in HySAC for NSFW classification.  It analyzes the trade-off between correctly classifying safe and unsafe content (accuracy) and the rates of false positives (FPR, classifying safe content as unsafe) and false negatives (FNR, classifying unsafe content as safe) at different threshold values. The best overall performance across accuracy, FPR, and FNR is highlighted in bold.  Threshold values that result in the best FNR (fewest unsafe images incorrectly identified as safe) but also have a high FPR (many safe images incorrectly identified as unsafe) are underlined, but not bolded, to show that these are not the best overall. Results from specific thresholds which were also reported in Table 5 are highlighted in purple for easy comparison.
> <details>
> <summary>read the caption</summary>
> Table 6: Ablation of NSFW Classification Threshold for HySAC. This table shows the trade-off between safe and unsafe classification performance as the threshold varies. Accuracy, FPR, and FNR are reported in percentages. The bold values indicate the best performance, and the underlined values indicate the second best. Values corresponding to the threshold of 0.51, although best for FNR (i.e., NSFW classification), come at the cost of higher misclassification of safe content and are thus not bolded. Rows highlighted in purple correspond to the results reported in Table 5.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A4.T7.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T7.2.2.3.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="A4.T7.2.2.3.1.1" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="A4.T7.2.2.3.1.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A4.T7.2.2.3.1.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.3.1.3.1">Flickr8k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="A4.T7.2.2.3.1.4" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A4.T7.2.2.3.1.5" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.3.1.5.1">Flickr30k</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="A4.T7.2.2.3.1.6" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_align_center ltx_border_tt" colspan="2" id="A4.T7.2.2.3.1.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.3.1.7.1">MS COCO</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_tt" id="A4.T7.2.2.3.1.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" colspan="5" id="A4.T7.2.2.3.1.9" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.3.1.9.1">Zero-Shot Classification</span></td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.4.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T7.2.2.4.2.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.4.2.1.1">Model</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.4.2.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.3" style="padding-left:1.7pt;padding-right:1.7pt;">T2I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.4" style="padding-left:1.7pt;padding-right:1.7pt;">I2T</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.4.2.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.6" style="padding-left:1.7pt;padding-right:1.7pt;">T2I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.7" style="padding-left:1.7pt;padding-right:1.7pt;">I2T</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.4.2.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.9" style="padding-left:1.7pt;padding-right:1.7pt;">T2I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.10" style="padding-left:1.7pt;padding-right:1.7pt;">I2T</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.4.2.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.12" style="padding-left:1.7pt;padding-right:1.7pt;">C10</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.13" style="padding-left:1.7pt;padding-right:1.7pt;">VOC</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.14" style="padding-left:1.7pt;padding-right:1.7pt;">C101</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.15" style="padding-left:1.7pt;padding-right:1.7pt;">KT</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.4.2.16" style="padding-left:1.7pt;padding-right:1.7pt;">CL</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.5.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T7.2.2.5.3.1" style="padding-left:1.7pt;padding-right:1.7pt;">CLIP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.2.2.5.3.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.3" style="padding-left:1.7pt;padding-right:1.7pt;">86.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.4" style="padding-left:1.7pt;padding-right:1.7pt;">94.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.2.2.5.3.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.6" style="padding-left:1.7pt;padding-right:1.7pt;">87.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.7" style="padding-left:1.7pt;padding-right:1.7pt;">97.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.2.2.5.3.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.9" style="padding-left:1.7pt;padding-right:1.7pt;">61.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.10" style="padding-left:1.7pt;padding-right:1.7pt;">79.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.2.2.5.3.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.12" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.5.3.12.1">95.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.13" style="padding-left:1.7pt;padding-right:1.7pt;">78.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.14" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.5.3.14.1">83.3</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.15" style="padding-left:1.7pt;padding-right:1.7pt;">21.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.2.2.5.3.16" style="padding-left:1.7pt;padding-right:1.7pt;">19.4</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.6.4">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T7.2.2.6.4.1" style="padding-left:1.7pt;padding-right:1.7pt;">MERU</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.6.4.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.3" style="padding-left:1.7pt;padding-right:1.7pt;">44.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.4" style="padding-left:1.7pt;padding-right:1.7pt;">53.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.6.4.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.6" style="padding-left:1.7pt;padding-right:1.7pt;">37.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.7" style="padding-left:1.7pt;padding-right:1.7pt;">45.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.6.4.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.9" style="padding-left:1.7pt;padding-right:1.7pt;">32.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.10" style="padding-left:1.7pt;padding-right:1.7pt;">40.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.6.4.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.12" style="padding-left:1.7pt;padding-right:1.7pt;">67.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.13" style="padding-left:1.7pt;padding-right:1.7pt;">58.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.14" style="padding-left:1.7pt;padding-right:1.7pt;">70.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.15" style="padding-left:1.7pt;padding-right:1.7pt;">10.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.6.4.16" style="padding-left:1.7pt;padding-right:1.7pt;">18.4</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.7.5">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T7.2.2.7.5.1" style="padding-left:1.7pt;padding-right:1.7pt;">HyCoCLIP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.7.5.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.3" style="padding-left:1.7pt;padding-right:1.7pt;">83.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.4" style="padding-left:1.7pt;padding-right:1.7pt;">92.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.7.5.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.6" style="padding-left:1.7pt;padding-right:1.7pt;">86.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.7" style="padding-left:1.7pt;padding-right:1.7pt;">93.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.7.5.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.9" style="padding-left:1.7pt;padding-right:1.7pt;">60.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.10" style="padding-left:1.7pt;padding-right:1.7pt;">71.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.7.5.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.12" style="padding-left:1.7pt;padding-right:1.7pt;">90.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.13" style="padding-left:1.7pt;padding-right:1.7pt;">70.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.14" style="padding-left:1.7pt;padding-right:1.7pt;">79.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.15" style="padding-left:1.7pt;padding-right:1.7pt;">26.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.7.5.16" style="padding-left:1.7pt;padding-right:1.7pt;">16.6</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.8.6">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T7.2.2.8.6.1" style="padding-left:1.7pt;padding-right:1.7pt;">Safe-CLIP</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.8.6.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.3" style="padding-left:1.7pt;padding-right:1.7pt;">87.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.4" style="padding-left:1.7pt;padding-right:1.7pt;">93.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.8.6.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.6" style="padding-left:1.7pt;padding-right:1.7pt;">89.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.7" style="padding-left:1.7pt;padding-right:1.7pt;">96.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.8.6.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.9" style="padding-left:1.7pt;padding-right:1.7pt;">72.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.10" style="padding-left:1.7pt;padding-right:1.7pt;">84.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.8.6.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.12" style="padding-left:1.7pt;padding-right:1.7pt;">88.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.13" style="padding-left:1.7pt;padding-right:1.7pt;">76.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.14" style="padding-left:1.7pt;padding-right:1.7pt;">81.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.15" style="padding-left:1.7pt;padding-right:1.7pt;">29.4</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.8.6.16" style="padding-left:1.7pt;padding-right:1.7pt;">22.8</td>
</tr>
<tr class="ltx_tr" id="A4.T7.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_t" id="A4.T7.1.1.1.1" style="padding-left:1.7pt;padding-right:1.7pt;">MERU<sup class="ltx_sup" id="A4.T7.1.1.1.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.1.1.1.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.3" style="padding-left:1.7pt;padding-right:1.7pt;">93.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.4" style="padding-left:1.7pt;padding-right:1.7pt;">96.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.1.1.1.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.6" style="padding-left:1.7pt;padding-right:1.7pt;">94.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.7" style="padding-left:1.7pt;padding-right:1.7pt;">98.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.1.1.1.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.9" style="padding-left:1.7pt;padding-right:1.7pt;">75.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.10" style="padding-left:1.7pt;padding-right:1.7pt;">87.5</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_t" id="A4.T7.1.1.1.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.12" style="padding-left:1.7pt;padding-right:1.7pt;">93.6</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.13" style="padding-left:1.7pt;padding-right:1.7pt;">82.0</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.14" style="padding-left:1.7pt;padding-right:1.7pt;">85.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.15" style="padding-left:1.7pt;padding-right:1.7pt;">24.3</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="A4.T7.1.1.1.16" style="padding-left:1.7pt;padding-right:1.7pt;">27.7</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.2">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="A4.T7.2.2.2.1" style="padding-left:1.7pt;padding-right:1.7pt;">HyCoCLIP<sup class="ltx_sup" id="A4.T7.2.2.2.1.1">⋆</sup>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.2.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.3" style="padding-left:1.7pt;padding-right:1.7pt;">92.2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.4" style="padding-left:1.7pt;padding-right:1.7pt;">95.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.2.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.6" style="padding-left:1.7pt;padding-right:1.7pt;">93.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.7" style="padding-left:1.7pt;padding-right:1.7pt;">98.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.2.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.9" style="padding-left:1.7pt;padding-right:1.7pt;">73.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.10" style="padding-left:1.7pt;padding-right:1.7pt;">84.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r" id="A4.T7.2.2.2.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.12" style="padding-left:1.7pt;padding-right:1.7pt;">92.8</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.13" style="padding-left:1.7pt;padding-right:1.7pt;">67.9</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.14" style="padding-left:1.7pt;padding-right:1.7pt;">83.7</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.15" style="padding-left:1.7pt;padding-right:1.7pt;">23.1</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="A4.T7.2.2.2.16" style="padding-left:1.7pt;padding-right:1.7pt;">21.5</td>
</tr>
<tr class="ltx_tr" id="A4.T7.2.2.9.7" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_border_bb" id="A4.T7.2.2.9.7.1" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A4.T7.2.2.9.7.2" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.3" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.3.1" style="background-color:#E3DAF0;">92.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.4" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.4.1" style="background-color:#E3DAF0;">96.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A4.T7.2.2.9.7.5" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.6" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.6.1" style="background-color:#E3DAF0;">93.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.7" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.7.1" style="background-color:#E3DAF0;">97.9</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A4.T7.2.2.9.7.8" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.9" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.9.1" style="background-color:#E3DAF0;">75.1</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.10" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.10.1" style="background-color:#E3DAF0;">85.4</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_border_bb" id="A4.T7.2.2.9.7.11" style="padding-left:1.7pt;padding-right:1.7pt;"></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.12" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="A4.T7.2.2.9.7.12.1" style="background-color:#E3DAF0;">93.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.13" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.13.1" style="background-color:#E3DAF0;">81.7</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.14" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text" id="A4.T7.2.2.9.7.14.1" style="background-color:#E3DAF0;">82.2</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.15" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.15.1" style="background-color:#E3DAF0;">32.6</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="A4.T7.2.2.9.7.16" style="padding-left:1.7pt;padding-right:1.7pt;"><span class="ltx_text ltx_font_bold" id="A4.T7.2.2.9.7.16.1" style="background-color:#E3DAF0;">23.2</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 7 presents the results of evaluating CLIP's robustness across various datasets after being fine-tuned using different methods, including the proposed HySAC method and other hyperbolic vision-language models.  It assesses performance on both zero-shot image retrieval (using R@5 as the metric) and zero-shot image classification (using top-1 accuracy). The goal is to show how the different approaches impact the model's ability to generalize to unseen data while maintaining its performance on well-known datasets.
> <details>
> <summary>read the caption</summary>
> Table 7: CLIP robustness preservation results. Metrics: R@5 for zero-shot retrieval, top-1 accuracy for zero-shot classification.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T8.2.2">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T8.2.2.3.1">
<td class="ltx_td ltx_border_tt" id="A4.T8.2.2.3.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.3.1">Hate</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.4" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.5.1">Harassment</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.6" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.7.1">Violence</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.8" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.9.1">Self-harm</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.10" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.11" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.11.1">Sexual</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.12" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.13.1">Shocking</span></th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T8.2.2.3.1.14" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T8.2.2.3.1.15" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.3.1.15.1">Illegal Act.</span></th>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.4.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A4.T8.2.2.4.2.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.4.2.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.3" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.6" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.7" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.8" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.9" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.10" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.12" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.13" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.14" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.15" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.16" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.17" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.18" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.19" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T8.2.2.4.2.20" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.21" style="padding-left:2.2pt;padding-right:2.2pt;">T2I</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T8.2.2.4.2.22" style="padding-left:2.2pt;padding-right:2.2pt;">I2T</th>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.5.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T8.2.2.5.3.1" style="padding-left:2.2pt;padding-right:2.2pt;">CLIP</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.3" style="padding-left:2.2pt;padding-right:2.2pt;">5.2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.4" style="padding-left:2.2pt;padding-right:2.2pt;">8.1</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.6" style="padding-left:2.2pt;padding-right:2.2pt;">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.7" style="padding-left:2.2pt;padding-right:2.2pt;">9.2</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.9" style="padding-left:2.2pt;padding-right:2.2pt;">2.5</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.10" style="padding-left:2.2pt;padding-right:2.2pt;">5.6</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.12" style="padding-left:2.2pt;padding-right:2.2pt;">4.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.13" style="padding-left:2.2pt;padding-right:2.2pt;">7.9</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.15" style="padding-left:2.2pt;padding-right:2.2pt;">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.16" style="padding-left:2.2pt;padding-right:2.2pt;">4.3</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.18" style="padding-left:2.2pt;padding-right:2.2pt;">2.3</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.19" style="padding-left:2.2pt;padding-right:2.2pt;">5.1</td>
<td class="ltx_td ltx_border_t" id="A4.T8.2.2.5.3.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.21" style="padding-left:2.2pt;padding-right:2.2pt;">3.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T8.2.2.5.3.22" style="padding-left:2.2pt;padding-right:2.2pt;">6.3</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.6.4">
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.6.4.1" style="padding-left:2.2pt;padding-right:2.2pt;">MERU</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.3" style="padding-left:2.2pt;padding-right:2.2pt;">9.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">15.0</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.6" style="padding-left:2.2pt;padding-right:2.2pt;">8.4</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.7" style="padding-left:2.2pt;padding-right:2.2pt;">12.8</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.9" style="padding-left:2.2pt;padding-right:2.2pt;">3.2</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.10" style="padding-left:2.2pt;padding-right:2.2pt;">6.8</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.12" style="padding-left:2.2pt;padding-right:2.2pt;">8.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.13" style="padding-left:2.2pt;padding-right:2.2pt;">13.8</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.15" style="padding-left:2.2pt;padding-right:2.2pt;">5.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.16" style="padding-left:2.2pt;padding-right:2.2pt;">6.0</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.18" style="padding-left:2.2pt;padding-right:2.2pt;">4.6</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.19" style="padding-left:2.2pt;padding-right:2.2pt;">7.9</td>
<td class="ltx_td" id="A4.T8.2.2.6.4.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.21" style="padding-left:2.2pt;padding-right:2.2pt;">4.8</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.6.4.22" style="padding-left:2.2pt;padding-right:2.2pt;">7.3</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.7.5">
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.7.5.1" style="padding-left:2.2pt;padding-right:2.2pt;">HyCoCLIP</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.3" style="padding-left:2.2pt;padding-right:2.2pt;">3.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.4" style="padding-left:2.2pt;padding-right:2.2pt;">15.9</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.6" style="padding-left:2.2pt;padding-right:2.2pt;">5.2</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.7" style="padding-left:2.2pt;padding-right:2.2pt;">16.9</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.9" style="padding-left:2.2pt;padding-right:2.2pt;">2.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.10" style="padding-left:2.2pt;padding-right:2.2pt;">8.7</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.12" style="padding-left:2.2pt;padding-right:2.2pt;">2.1</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.13" style="padding-left:2.2pt;padding-right:2.2pt;">12.6</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.15" style="padding-left:2.2pt;padding-right:2.2pt;">6.1</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.16" style="padding-left:2.2pt;padding-right:2.2pt;">4.1</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.18" style="padding-left:2.2pt;padding-right:2.2pt;">6.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.19" style="padding-left:2.2pt;padding-right:2.2pt;">7.8</td>
<td class="ltx_td" id="A4.T8.2.2.7.5.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.21" style="padding-left:2.2pt;padding-right:2.2pt;">3.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.7.5.22" style="padding-left:2.2pt;padding-right:2.2pt;">12.9</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.8.6">
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.8.6.1" style="padding-left:2.2pt;padding-right:2.2pt;">Safe-CLIP</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.3" style="padding-left:2.2pt;padding-right:2.2pt;">15.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.4" style="padding-left:2.2pt;padding-right:2.2pt;">32.1</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.6" style="padding-left:2.2pt;padding-right:2.2pt;">14.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.7" style="padding-left:2.2pt;padding-right:2.2pt;">28.9</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.9" style="padding-left:2.2pt;padding-right:2.2pt;">11.0</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.10" style="padding-left:2.2pt;padding-right:2.2pt;">23.6</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.12" style="padding-left:2.2pt;padding-right:2.2pt;">13.8</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.13" style="padding-left:2.2pt;padding-right:2.2pt;">33.9</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.15" style="padding-left:2.2pt;padding-right:2.2pt;">10.6</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.16" style="padding-left:2.2pt;padding-right:2.2pt;">20.2</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.18" style="padding-left:2.2pt;padding-right:2.2pt;">12.2</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.19" style="padding-left:2.2pt;padding-right:2.2pt;">28.0</td>
<td class="ltx_td" id="A4.T8.2.2.8.6.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.21" style="padding-left:2.2pt;padding-right:2.2pt;">11.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.8.6.22" style="padding-left:2.2pt;padding-right:2.2pt;">24.0</td>
</tr>
<tr class="ltx_tr" id="A4.T8.1.1.1">
<td class="ltx_td ltx_align_left" id="A4.T8.1.1.1.1" style="padding-left:2.2pt;padding-right:2.2pt;">MERU<math alttext="\star" class="ltx_Math" display="inline" id="A4.T8.1.1.1.1.m1.1"><semantics id="A4.T8.1.1.1.1.m1.1a"><mo id="A4.T8.1.1.1.1.m1.1.1" xref="A4.T8.1.1.1.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="A4.T8.1.1.1.1.m1.1b"><ci id="A4.T8.1.1.1.1.m1.1.1.cmml" xref="A4.T8.1.1.1.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.1.1.1.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="A4.T8.1.1.1.1.m1.1d">⋆</annotation></semantics></math>
</td>
<td class="ltx_td" id="A4.T8.1.1.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.3" style="padding-left:2.2pt;padding-right:2.2pt;">3.6</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.4" style="padding-left:2.2pt;padding-right:2.2pt;">9.3</td>
<td class="ltx_td" id="A4.T8.1.1.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.6" style="padding-left:2.2pt;padding-right:2.2pt;">4.4</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.7" style="padding-left:2.2pt;padding-right:2.2pt;">8.8</td>
<td class="ltx_td" id="A4.T8.1.1.1.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.9" style="padding-left:2.2pt;padding-right:2.2pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.10" style="padding-left:2.2pt;padding-right:2.2pt;">6.8</td>
<td class="ltx_td" id="A4.T8.1.1.1.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.12" style="padding-left:2.2pt;padding-right:2.2pt;">2.5</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.13" style="padding-left:2.2pt;padding-right:2.2pt;">8.8</td>
<td class="ltx_td" id="A4.T8.1.1.1.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.15" style="padding-left:2.2pt;padding-right:2.2pt;">1.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.16" style="padding-left:2.2pt;padding-right:2.2pt;">3.9</td>
<td class="ltx_td" id="A4.T8.1.1.1.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.18" style="padding-left:2.2pt;padding-right:2.2pt;">3.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.19" style="padding-left:2.2pt;padding-right:2.2pt;">5.7</td>
<td class="ltx_td" id="A4.T8.1.1.1.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.21" style="padding-left:2.2pt;padding-right:2.2pt;">2.9</td>
<td class="ltx_td ltx_align_center" id="A4.T8.1.1.1.22" style="padding-left:2.2pt;padding-right:2.2pt;">6.3</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.2">
<td class="ltx_td ltx_align_left" id="A4.T8.2.2.2.1" style="padding-left:2.2pt;padding-right:2.2pt;">HyCoCLIP<math alttext="\star" class="ltx_Math" display="inline" id="A4.T8.2.2.2.1.m1.1"><semantics id="A4.T8.2.2.2.1.m1.1a"><mo id="A4.T8.2.2.2.1.m1.1.1" xref="A4.T8.2.2.2.1.m1.1.1.cmml">⋆</mo><annotation-xml encoding="MathML-Content" id="A4.T8.2.2.2.1.m1.1b"><ci id="A4.T8.2.2.2.1.m1.1.1.cmml" xref="A4.T8.2.2.2.1.m1.1.1">⋆</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T8.2.2.2.1.m1.1c">\star</annotation><annotation encoding="application/x-llamapun" id="A4.T8.2.2.2.1.m1.1d">⋆</annotation></semantics></math>
</td>
<td class="ltx_td" id="A4.T8.2.2.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.3" style="padding-left:2.2pt;padding-right:2.2pt;">2.0</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">11.0</td>
<td class="ltx_td" id="A4.T8.2.2.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.6" style="padding-left:2.2pt;padding-right:2.2pt;">3.6</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.7" style="padding-left:2.2pt;padding-right:2.2pt;">8.4</td>
<td class="ltx_td" id="A4.T8.2.2.2.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.9" style="padding-left:2.2pt;padding-right:2.2pt;">1.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.10" style="padding-left:2.2pt;padding-right:2.2pt;">7.8</td>
<td class="ltx_td" id="A4.T8.2.2.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.12" style="padding-left:2.2pt;padding-right:2.2pt;">3.8</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.13" style="padding-left:2.2pt;padding-right:2.2pt;">7.9</td>
<td class="ltx_td" id="A4.T8.2.2.2.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.15" style="padding-left:2.2pt;padding-right:2.2pt;">11.7</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.16" style="padding-left:2.2pt;padding-right:2.2pt;">6.1</td>
<td class="ltx_td" id="A4.T8.2.2.2.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.18" style="padding-left:2.2pt;padding-right:2.2pt;">2.4</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.19" style="padding-left:2.2pt;padding-right:2.2pt;">7.4</td>
<td class="ltx_td" id="A4.T8.2.2.2.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.21" style="padding-left:2.2pt;padding-right:2.2pt;">2.3</td>
<td class="ltx_td ltx_align_center" id="A4.T8.2.2.2.22" style="padding-left:2.2pt;padding-right:2.2pt;">8.0</td>
</tr>
<tr class="ltx_tr" id="A4.T8.2.2.9.7" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T8.2.2.9.7.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.3.1" style="background-color:#E3DAF0;">64.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.4.1" style="background-color:#E3DAF0;">76.8</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.6" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.6.1" style="background-color:#E3DAF0;">61.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.7.1" style="background-color:#E3DAF0;">71.5</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.9.1" style="background-color:#E3DAF0;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.10.1" style="background-color:#E3DAF0;">53.5</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.12" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.12.1" style="background-color:#E3DAF0;">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.13.1" style="background-color:#E3DAF0;">73.6</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.14" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.15" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.15.1" style="background-color:#E3DAF0;">50.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.16" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.16.1" style="background-color:#E3DAF0;">57.7</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.17" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.18" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.18.1" style="background-color:#E3DAF0;">53.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.19" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.19.1" style="background-color:#E3DAF0;">66.0</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T8.2.2.9.7.20" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.21" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.21.1" style="background-color:#E3DAF0;">44.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T8.2.2.9.7.22" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T8.2.2.9.7.22.1" style="background-color:#E3DAF0;">55.8</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the Recall@1 (R@1) scores for seven categories of unsafe content retrieved from the ViSU test set.  Recall@1 measures the percentage of times the correct item appears within the top-one retrieval result. The seven unsafe content categories are Hate, Harassment, Violence, Self-harm, Sexual, Shocking, and Illegal activities.  The table shows the performance of the HySAC model and several comparison models (CLIP, MERU, HyCoCLIP, and Safe-CLIP) for each category, illustrating their ability to retrieve relevant safe content in response to potentially unsafe queries.  Higher scores indicate better performance.
> <details>
> <summary>read the caption</summary>
> Table 8: Retrieval (R@1) for seven categories of unsafe content from ViSU test.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T9.8.8">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T9.8.8.8">
<td class="ltx_td ltx_border_tt" id="A4.T9.8.8.8.9" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T9.8.8.8.10" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T9.2.2.2.2" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T" class="ltx_Math" display="inline" id="A4.T9.1.1.1.1.m1.1"><semantics id="A4.T9.1.1.1.1.m1.1a"><mi id="A4.T9.1.1.1.1.m1.1.1" xref="A4.T9.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A4.T9.1.1.1.1.m1.1b"><ci id="A4.T9.1.1.1.1.m1.1.1.cmml" xref="A4.T9.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="A4.T9.1.1.1.1.m1.1d">italic_T</annotation></semantics></math>-to-<math alttext="I" class="ltx_Math" display="inline" id="A4.T9.2.2.2.2.m2.1"><semantics id="A4.T9.2.2.2.2.m2.1a"><mi id="A4.T9.2.2.2.2.m2.1.1" xref="A4.T9.2.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="A4.T9.2.2.2.2.m2.1b"><ci id="A4.T9.2.2.2.2.m2.1.1.cmml" xref="A4.T9.2.2.2.2.m2.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.2.2.2.2.m2.1c">I</annotation><annotation encoding="application/x-llamapun" id="A4.T9.2.2.2.2.m2.1d">italic_I</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T9.8.8.8.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T9.4.4.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I" class="ltx_Math" display="inline" id="A4.T9.3.3.3.3.m1.1"><semantics id="A4.T9.3.3.3.3.m1.1a"><mi id="A4.T9.3.3.3.3.m1.1.1" xref="A4.T9.3.3.3.3.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="A4.T9.3.3.3.3.m1.1b"><ci id="A4.T9.3.3.3.3.m1.1.1.cmml" xref="A4.T9.3.3.3.3.m1.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.3.3.3.3.m1.1c">I</annotation><annotation encoding="application/x-llamapun" id="A4.T9.3.3.3.3.m1.1d">italic_I</annotation></semantics></math>-to-<math alttext="T" class="ltx_Math" display="inline" id="A4.T9.4.4.4.4.m2.1"><semantics id="A4.T9.4.4.4.4.m2.1a"><mi id="A4.T9.4.4.4.4.m2.1.1" xref="A4.T9.4.4.4.4.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A4.T9.4.4.4.4.m2.1b"><ci id="A4.T9.4.4.4.4.m2.1.1.cmml" xref="A4.T9.4.4.4.4.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.4.4.4.4.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="A4.T9.4.4.4.4.m2.1d">italic_T</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T9.8.8.8.12" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T9.6.6.6.6" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T^{\star}" class="ltx_Math" display="inline" id="A4.T9.5.5.5.5.m1.1"><semantics id="A4.T9.5.5.5.5.m1.1a"><msup id="A4.T9.5.5.5.5.m1.1.1" xref="A4.T9.5.5.5.5.m1.1.1.cmml"><mi id="A4.T9.5.5.5.5.m1.1.1.2" xref="A4.T9.5.5.5.5.m1.1.1.2.cmml">T</mi><mo id="A4.T9.5.5.5.5.m1.1.1.3" xref="A4.T9.5.5.5.5.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="A4.T9.5.5.5.5.m1.1b"><apply id="A4.T9.5.5.5.5.m1.1.1.cmml" xref="A4.T9.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A4.T9.5.5.5.5.m1.1.1.1.cmml" xref="A4.T9.5.5.5.5.m1.1.1">superscript</csymbol><ci id="A4.T9.5.5.5.5.m1.1.1.2.cmml" xref="A4.T9.5.5.5.5.m1.1.1.2">𝑇</ci><ci id="A4.T9.5.5.5.5.m1.1.1.3.cmml" xref="A4.T9.5.5.5.5.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.5.5.5.5.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I\cup I^{\star}" class="ltx_Math" display="inline" id="A4.T9.6.6.6.6.m2.1"><semantics id="A4.T9.6.6.6.6.m2.1a"><mrow id="A4.T9.6.6.6.6.m2.1.1" xref="A4.T9.6.6.6.6.m2.1.1.cmml"><mi id="A4.T9.6.6.6.6.m2.1.1.2" xref="A4.T9.6.6.6.6.m2.1.1.2.cmml">I</mi><mo id="A4.T9.6.6.6.6.m2.1.1.1" xref="A4.T9.6.6.6.6.m2.1.1.1.cmml">∪</mo><msup id="A4.T9.6.6.6.6.m2.1.1.3" xref="A4.T9.6.6.6.6.m2.1.1.3.cmml"><mi id="A4.T9.6.6.6.6.m2.1.1.3.2" xref="A4.T9.6.6.6.6.m2.1.1.3.2.cmml">I</mi><mo id="A4.T9.6.6.6.6.m2.1.1.3.3" xref="A4.T9.6.6.6.6.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.6.6.6.6.m2.1b"><apply id="A4.T9.6.6.6.6.m2.1.1.cmml" xref="A4.T9.6.6.6.6.m2.1.1"><union id="A4.T9.6.6.6.6.m2.1.1.1.cmml" xref="A4.T9.6.6.6.6.m2.1.1.1"></union><ci id="A4.T9.6.6.6.6.m2.1.1.2.cmml" xref="A4.T9.6.6.6.6.m2.1.1.2">𝐼</ci><apply id="A4.T9.6.6.6.6.m2.1.1.3.cmml" xref="A4.T9.6.6.6.6.m2.1.1.3"><csymbol cd="ambiguous" id="A4.T9.6.6.6.6.m2.1.1.3.1.cmml" xref="A4.T9.6.6.6.6.m2.1.1.3">superscript</csymbol><ci id="A4.T9.6.6.6.6.m2.1.1.3.2.cmml" xref="A4.T9.6.6.6.6.m2.1.1.3.2">𝐼</ci><ci id="A4.T9.6.6.6.6.m2.1.1.3.3.cmml" xref="A4.T9.6.6.6.6.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.6.6.6.6.m2.1c">I\cup I^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.6.6.6.6.m2.1d">italic_I ∪ italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T9.8.8.8.13" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T9.8.8.8.8" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I^{\star}" class="ltx_Math" display="inline" id="A4.T9.7.7.7.7.m1.1"><semantics id="A4.T9.7.7.7.7.m1.1a"><msup id="A4.T9.7.7.7.7.m1.1.1" xref="A4.T9.7.7.7.7.m1.1.1.cmml"><mi id="A4.T9.7.7.7.7.m1.1.1.2" xref="A4.T9.7.7.7.7.m1.1.1.2.cmml">I</mi><mo id="A4.T9.7.7.7.7.m1.1.1.3" xref="A4.T9.7.7.7.7.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="A4.T9.7.7.7.7.m1.1b"><apply id="A4.T9.7.7.7.7.m1.1.1.cmml" xref="A4.T9.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A4.T9.7.7.7.7.m1.1.1.1.cmml" xref="A4.T9.7.7.7.7.m1.1.1">superscript</csymbol><ci id="A4.T9.7.7.7.7.m1.1.1.2.cmml" xref="A4.T9.7.7.7.7.m1.1.1.2">𝐼</ci><ci id="A4.T9.7.7.7.7.m1.1.1.3.cmml" xref="A4.T9.7.7.7.7.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.7.7.7.7.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.7.7.7.7.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T\cup T^{\star}" class="ltx_Math" display="inline" id="A4.T9.8.8.8.8.m2.1"><semantics id="A4.T9.8.8.8.8.m2.1a"><mrow id="A4.T9.8.8.8.8.m2.1.1" xref="A4.T9.8.8.8.8.m2.1.1.cmml"><mi id="A4.T9.8.8.8.8.m2.1.1.2" xref="A4.T9.8.8.8.8.m2.1.1.2.cmml">T</mi><mo id="A4.T9.8.8.8.8.m2.1.1.1" xref="A4.T9.8.8.8.8.m2.1.1.1.cmml">∪</mo><msup id="A4.T9.8.8.8.8.m2.1.1.3" xref="A4.T9.8.8.8.8.m2.1.1.3.cmml"><mi id="A4.T9.8.8.8.8.m2.1.1.3.2" xref="A4.T9.8.8.8.8.m2.1.1.3.2.cmml">T</mi><mo id="A4.T9.8.8.8.8.m2.1.1.3.3" xref="A4.T9.8.8.8.8.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T9.8.8.8.8.m2.1b"><apply id="A4.T9.8.8.8.8.m2.1.1.cmml" xref="A4.T9.8.8.8.8.m2.1.1"><union id="A4.T9.8.8.8.8.m2.1.1.1.cmml" xref="A4.T9.8.8.8.8.m2.1.1.1"></union><ci id="A4.T9.8.8.8.8.m2.1.1.2.cmml" xref="A4.T9.8.8.8.8.m2.1.1.2">𝑇</ci><apply id="A4.T9.8.8.8.8.m2.1.1.3.cmml" xref="A4.T9.8.8.8.8.m2.1.1.3"><csymbol cd="ambiguous" id="A4.T9.8.8.8.8.m2.1.1.3.1.cmml" xref="A4.T9.8.8.8.8.m2.1.1.3">superscript</csymbol><ci id="A4.T9.8.8.8.8.m2.1.1.3.2.cmml" xref="A4.T9.8.8.8.8.m2.1.1.3.2">𝑇</ci><ci id="A4.T9.8.8.8.8.m2.1.1.3.3.cmml" xref="A4.T9.8.8.8.8.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T9.8.8.8.8.m2.1c">T\cup T^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T9.8.8.8.8.m2.1d">italic_T ∪ italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
</tr>
<tr class="ltx_tr" id="A4.T9.8.8.9.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column" id="A4.T9.8.8.9.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.9.1.1.1">Model</span></th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T9.8.8.9.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.3" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.4" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T9.8.8.9.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.6" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.7" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T9.8.8.9.1.8" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.9" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.10" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T9.8.8.9.1.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.12" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T9.8.8.9.1.13" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
</tr>
<tr class="ltx_tr" id="A4.T9.8.8.10.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T9.8.8.10.2.1" style="padding-left:2.2pt;padding-right:2.2pt;">Euc EC</td>
<td class="ltx_td ltx_border_t" id="A4.T9.8.8.10.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.3" style="padding-left:2.2pt;padding-right:2.2pt;">32.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.4" style="padding-left:2.2pt;padding-right:2.2pt;">72.0</td>
<td class="ltx_td ltx_border_t" id="A4.T9.8.8.10.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.6" style="padding-left:2.2pt;padding-right:2.2pt;">35.7</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.7" style="padding-left:2.2pt;padding-right:2.2pt;">75.4</td>
<td class="ltx_td ltx_border_t" id="A4.T9.8.8.10.2.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.9" style="padding-left:2.2pt;padding-right:2.2pt;">2.1</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.10" style="padding-left:2.2pt;padding-right:2.2pt;">31.5</td>
<td class="ltx_td ltx_border_t" id="A4.T9.8.8.10.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.12" style="padding-left:2.2pt;padding-right:2.2pt;">0.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T9.8.8.10.2.13" style="padding-left:2.2pt;padding-right:2.2pt;">0.2</td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.8.11.3">
<td class="ltx_td ltx_align_left" id="A4.T9.8.8.11.3.1" style="padding-left:2.2pt;padding-right:2.2pt;">Hyp Safe-CLIP</td>
<td class="ltx_td" id="A4.T9.8.8.11.3.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.3" style="padding-left:2.2pt;padding-right:2.2pt;">46.9</td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.4" style="padding-left:2.2pt;padding-right:2.2pt;">82.3</td>
<td class="ltx_td" id="A4.T9.8.8.11.3.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.6" style="padding-left:2.2pt;padding-right:2.2pt;">44.7</td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.7" style="padding-left:2.2pt;padding-right:2.2pt;">82.5</td>
<td class="ltx_td" id="A4.T9.8.8.11.3.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.9" style="padding-left:2.2pt;padding-right:2.2pt;">5.1</td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.10" style="padding-left:2.2pt;padding-right:2.2pt;">42.1</td>
<td class="ltx_td" id="A4.T9.8.8.11.3.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.12" style="padding-left:2.2pt;padding-right:2.2pt;">9.8</td>
<td class="ltx_td ltx_align_center" id="A4.T9.8.8.11.3.13" style="padding-left:2.2pt;padding-right:2.2pt;">51.7</td>
</tr>
<tr class="ltx_tr" id="A4.T9.8.8.12.4" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.3.1" style="background-color:#E3DAF0;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.4.1" style="background-color:#E3DAF0;">84.1</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.6" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.6.1" style="background-color:#E3DAF0;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.7.1" style="background-color:#E3DAF0;">84.2</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.9.1" style="background-color:#E3DAF0;">30.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.10.1" style="background-color:#E3DAF0;">62.8</span></td>
<td class="ltx_td ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.12" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.12.1" style="background-color:#E3DAF0;">42.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A4.T9.8.8.12.4.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T9.8.8.12.4.13.1" style="background-color:#E3DAF0;">73.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study comparing different model variations to assess the impact of using hyperbolic space for safety-aware vision-language models.  The study compares HySAC (the proposed model using hyperbolic space) against two variations: 1) a version of HySAC trained using Euclidean space instead of hyperbolic space, and 2) a version of Safe-CLIP (a state-of-the-art safety-focused model) fine-tuned in hyperbolic space.  The comparison is made across multiple metrics, including retrieval performance (R@1 and R@10) for both safe and unsafe content. The results highlight the contribution of hyperbolic geometry for improving safety-awareness and retrieval performance.
> <details>
> <summary>read the caption</summary>
> Table 9: Ablation study on Euclidean space and hyperbolic Safe-CLIP. We evaluate HySAC against its Euclidean version which employs Euclidean entailment cones and against Safe-CLIP finetuned in hyperbolic space.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="A4.T10.14.14">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A4.T10.8.8.8">
<td class="ltx_td ltx_border_tt" id="A4.T10.8.8.8.9" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T10.8.8.8.10" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T10.2.2.2.2" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T" class="ltx_Math" display="inline" id="A4.T10.1.1.1.1.m1.1"><semantics id="A4.T10.1.1.1.1.m1.1a"><mi id="A4.T10.1.1.1.1.m1.1.1" xref="A4.T10.1.1.1.1.m1.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A4.T10.1.1.1.1.m1.1b"><ci id="A4.T10.1.1.1.1.m1.1.1.cmml" xref="A4.T10.1.1.1.1.m1.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.1.1.1.1.m1.1c">T</annotation><annotation encoding="application/x-llamapun" id="A4.T10.1.1.1.1.m1.1d">italic_T</annotation></semantics></math>-to-<math alttext="I" class="ltx_Math" display="inline" id="A4.T10.2.2.2.2.m2.1"><semantics id="A4.T10.2.2.2.2.m2.1a"><mi id="A4.T10.2.2.2.2.m2.1.1" xref="A4.T10.2.2.2.2.m2.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="A4.T10.2.2.2.2.m2.1b"><ci id="A4.T10.2.2.2.2.m2.1.1.cmml" xref="A4.T10.2.2.2.2.m2.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.2.2.2.2.m2.1c">I</annotation><annotation encoding="application/x-llamapun" id="A4.T10.2.2.2.2.m2.1d">italic_I</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T10.8.8.8.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T10.4.4.4.4" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I" class="ltx_Math" display="inline" id="A4.T10.3.3.3.3.m1.1"><semantics id="A4.T10.3.3.3.3.m1.1a"><mi id="A4.T10.3.3.3.3.m1.1.1" xref="A4.T10.3.3.3.3.m1.1.1.cmml">I</mi><annotation-xml encoding="MathML-Content" id="A4.T10.3.3.3.3.m1.1b"><ci id="A4.T10.3.3.3.3.m1.1.1.cmml" xref="A4.T10.3.3.3.3.m1.1.1">𝐼</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.3.3.3.3.m1.1c">I</annotation><annotation encoding="application/x-llamapun" id="A4.T10.3.3.3.3.m1.1d">italic_I</annotation></semantics></math>-to-<math alttext="T" class="ltx_Math" display="inline" id="A4.T10.4.4.4.4.m2.1"><semantics id="A4.T10.4.4.4.4.m2.1a"><mi id="A4.T10.4.4.4.4.m2.1.1" xref="A4.T10.4.4.4.4.m2.1.1.cmml">T</mi><annotation-xml encoding="MathML-Content" id="A4.T10.4.4.4.4.m2.1b"><ci id="A4.T10.4.4.4.4.m2.1.1.cmml" xref="A4.T10.4.4.4.4.m2.1.1">𝑇</ci></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.4.4.4.4.m2.1c">T</annotation><annotation encoding="application/x-llamapun" id="A4.T10.4.4.4.4.m2.1d">italic_T</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T10.8.8.8.12" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T10.6.6.6.6" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="T^{\star}" class="ltx_Math" display="inline" id="A4.T10.5.5.5.5.m1.1"><semantics id="A4.T10.5.5.5.5.m1.1a"><msup id="A4.T10.5.5.5.5.m1.1.1" xref="A4.T10.5.5.5.5.m1.1.1.cmml"><mi id="A4.T10.5.5.5.5.m1.1.1.2" xref="A4.T10.5.5.5.5.m1.1.1.2.cmml">T</mi><mo id="A4.T10.5.5.5.5.m1.1.1.3" xref="A4.T10.5.5.5.5.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="A4.T10.5.5.5.5.m1.1b"><apply id="A4.T10.5.5.5.5.m1.1.1.cmml" xref="A4.T10.5.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A4.T10.5.5.5.5.m1.1.1.1.cmml" xref="A4.T10.5.5.5.5.m1.1.1">superscript</csymbol><ci id="A4.T10.5.5.5.5.m1.1.1.2.cmml" xref="A4.T10.5.5.5.5.m1.1.1.2">𝑇</ci><ci id="A4.T10.5.5.5.5.m1.1.1.3.cmml" xref="A4.T10.5.5.5.5.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.5.5.5.5.m1.1c">T^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.5.5.5.5.m1.1d">italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="I\cup I^{\star}" class="ltx_Math" display="inline" id="A4.T10.6.6.6.6.m2.1"><semantics id="A4.T10.6.6.6.6.m2.1a"><mrow id="A4.T10.6.6.6.6.m2.1.1" xref="A4.T10.6.6.6.6.m2.1.1.cmml"><mi id="A4.T10.6.6.6.6.m2.1.1.2" xref="A4.T10.6.6.6.6.m2.1.1.2.cmml">I</mi><mo id="A4.T10.6.6.6.6.m2.1.1.1" xref="A4.T10.6.6.6.6.m2.1.1.1.cmml">∪</mo><msup id="A4.T10.6.6.6.6.m2.1.1.3" xref="A4.T10.6.6.6.6.m2.1.1.3.cmml"><mi id="A4.T10.6.6.6.6.m2.1.1.3.2" xref="A4.T10.6.6.6.6.m2.1.1.3.2.cmml">I</mi><mo id="A4.T10.6.6.6.6.m2.1.1.3.3" xref="A4.T10.6.6.6.6.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.6.6.6.6.m2.1b"><apply id="A4.T10.6.6.6.6.m2.1.1.cmml" xref="A4.T10.6.6.6.6.m2.1.1"><union id="A4.T10.6.6.6.6.m2.1.1.1.cmml" xref="A4.T10.6.6.6.6.m2.1.1.1"></union><ci id="A4.T10.6.6.6.6.m2.1.1.2.cmml" xref="A4.T10.6.6.6.6.m2.1.1.2">𝐼</ci><apply id="A4.T10.6.6.6.6.m2.1.1.3.cmml" xref="A4.T10.6.6.6.6.m2.1.1.3"><csymbol cd="ambiguous" id="A4.T10.6.6.6.6.m2.1.1.3.1.cmml" xref="A4.T10.6.6.6.6.m2.1.1.3">superscript</csymbol><ci id="A4.T10.6.6.6.6.m2.1.1.3.2.cmml" xref="A4.T10.6.6.6.6.m2.1.1.3.2">𝐼</ci><ci id="A4.T10.6.6.6.6.m2.1.1.3.3.cmml" xref="A4.T10.6.6.6.6.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.6.6.6.6.m2.1c">I\cup I^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.6.6.6.6.m2.1d">italic_I ∪ italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
<th class="ltx_td ltx_th ltx_th_column ltx_border_tt" id="A4.T10.8.8.8.13" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="A4.T10.8.8.8.8" style="padding-left:2.2pt;padding-right:2.2pt;">(<math alttext="I^{\star}" class="ltx_Math" display="inline" id="A4.T10.7.7.7.7.m1.1"><semantics id="A4.T10.7.7.7.7.m1.1a"><msup id="A4.T10.7.7.7.7.m1.1.1" xref="A4.T10.7.7.7.7.m1.1.1.cmml"><mi id="A4.T10.7.7.7.7.m1.1.1.2" xref="A4.T10.7.7.7.7.m1.1.1.2.cmml">I</mi><mo id="A4.T10.7.7.7.7.m1.1.1.3" xref="A4.T10.7.7.7.7.m1.1.1.3.cmml">⋆</mo></msup><annotation-xml encoding="MathML-Content" id="A4.T10.7.7.7.7.m1.1b"><apply id="A4.T10.7.7.7.7.m1.1.1.cmml" xref="A4.T10.7.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A4.T10.7.7.7.7.m1.1.1.1.cmml" xref="A4.T10.7.7.7.7.m1.1.1">superscript</csymbol><ci id="A4.T10.7.7.7.7.m1.1.1.2.cmml" xref="A4.T10.7.7.7.7.m1.1.1.2">𝐼</ci><ci id="A4.T10.7.7.7.7.m1.1.1.3.cmml" xref="A4.T10.7.7.7.7.m1.1.1.3">⋆</ci></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.7.7.7.7.m1.1c">I^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.7.7.7.7.m1.1d">italic_I start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>-to-<math alttext="T\cup T^{\star}" class="ltx_Math" display="inline" id="A4.T10.8.8.8.8.m2.1"><semantics id="A4.T10.8.8.8.8.m2.1a"><mrow id="A4.T10.8.8.8.8.m2.1.1" xref="A4.T10.8.8.8.8.m2.1.1.cmml"><mi id="A4.T10.8.8.8.8.m2.1.1.2" xref="A4.T10.8.8.8.8.m2.1.1.2.cmml">T</mi><mo id="A4.T10.8.8.8.8.m2.1.1.1" xref="A4.T10.8.8.8.8.m2.1.1.1.cmml">∪</mo><msup id="A4.T10.8.8.8.8.m2.1.1.3" xref="A4.T10.8.8.8.8.m2.1.1.3.cmml"><mi id="A4.T10.8.8.8.8.m2.1.1.3.2" xref="A4.T10.8.8.8.8.m2.1.1.3.2.cmml">T</mi><mo id="A4.T10.8.8.8.8.m2.1.1.3.3" xref="A4.T10.8.8.8.8.m2.1.1.3.3.cmml">⋆</mo></msup></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.8.8.8.8.m2.1b"><apply id="A4.T10.8.8.8.8.m2.1.1.cmml" xref="A4.T10.8.8.8.8.m2.1.1"><union id="A4.T10.8.8.8.8.m2.1.1.1.cmml" xref="A4.T10.8.8.8.8.m2.1.1.1"></union><ci id="A4.T10.8.8.8.8.m2.1.1.2.cmml" xref="A4.T10.8.8.8.8.m2.1.1.2">𝑇</ci><apply id="A4.T10.8.8.8.8.m2.1.1.3.cmml" xref="A4.T10.8.8.8.8.m2.1.1.3"><csymbol cd="ambiguous" id="A4.T10.8.8.8.8.m2.1.1.3.1.cmml" xref="A4.T10.8.8.8.8.m2.1.1.3">superscript</csymbol><ci id="A4.T10.8.8.8.8.m2.1.1.3.2.cmml" xref="A4.T10.8.8.8.8.m2.1.1.3.2">𝑇</ci><ci id="A4.T10.8.8.8.8.m2.1.1.3.3.cmml" xref="A4.T10.8.8.8.8.m2.1.1.3.3">⋆</ci></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.8.8.8.8.m2.1c">T\cup T^{\star}</annotation><annotation encoding="application/x-llamapun" id="A4.T10.8.8.8.8.m2.1d">italic_T ∪ italic_T start_POSTSUPERSCRIPT ⋆ end_POSTSUPERSCRIPT</annotation></semantics></math>)</th>
</tr>
<tr class="ltx_tr" id="A4.T10.14.14.15.1">
<td class="ltx_td" id="A4.T10.14.14.15.1.1" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T10.14.14.15.1.2" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.3" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.4" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T10.14.14.15.1.5" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.6" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.7" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T10.14.14.15.1.8" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.9" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.10" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
<th class="ltx_td ltx_th ltx_th_column" id="A4.T10.14.14.15.1.11" style="padding-left:2.2pt;padding-right:2.2pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.12" style="padding-left:2.2pt;padding-right:2.2pt;">R@1</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="A4.T10.14.14.15.1.13" style="padding-left:2.2pt;padding-right:2.2pt;">R@10</th>
</tr>
<tr class="ltx_tr" id="A4.T10.9.9.9">
<td class="ltx_td ltx_align_left ltx_border_t" id="A4.T10.9.9.9.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=0.25" class="ltx_Math" display="inline" id="A4.T10.9.9.9.1.m1.1"><semantics id="A4.T10.9.9.9.1.m1.1a"><mrow id="A4.T10.9.9.9.1.m1.1.1" xref="A4.T10.9.9.9.1.m1.1.1.cmml"><mi id="A4.T10.9.9.9.1.m1.1.1.2" xref="A4.T10.9.9.9.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.9.9.9.1.m1.1.1.1" xref="A4.T10.9.9.9.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.9.9.9.1.m1.1.1.3" xref="A4.T10.9.9.9.1.m1.1.1.3.cmml">0.25</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.9.9.9.1.m1.1b"><apply id="A4.T10.9.9.9.1.m1.1.1.cmml" xref="A4.T10.9.9.9.1.m1.1.1"><eq id="A4.T10.9.9.9.1.m1.1.1.1.cmml" xref="A4.T10.9.9.9.1.m1.1.1.1"></eq><ci id="A4.T10.9.9.9.1.m1.1.1.2.cmml" xref="A4.T10.9.9.9.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.9.9.9.1.m1.1.1.3.cmml" type="float" xref="A4.T10.9.9.9.1.m1.1.1.3">0.25</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.9.9.9.1.m1.1c">\eta=0.25</annotation><annotation encoding="application/x-llamapun" id="A4.T10.9.9.9.1.m1.1d">italic_η = 0.25</annotation></semantics></math></td>
<td class="ltx_td ltx_border_t" id="A4.T10.9.9.9.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.3" style="padding-left:2.2pt;padding-right:2.2pt;">43.8</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.4" style="padding-left:2.2pt;padding-right:2.2pt;">80.2</td>
<td class="ltx_td ltx_border_t" id="A4.T10.9.9.9.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.6" style="padding-left:2.2pt;padding-right:2.2pt;">42.6</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.7" style="padding-left:2.2pt;padding-right:2.2pt;">79.5</td>
<td class="ltx_td ltx_border_t" id="A4.T10.9.9.9.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.9" style="padding-left:2.2pt;padding-right:2.2pt;">17.4</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.10" style="padding-left:2.2pt;padding-right:2.2pt;">53.8</td>
<td class="ltx_td ltx_border_t" id="A4.T10.9.9.9.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.12" style="padding-left:2.2pt;padding-right:2.2pt;">6.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A4.T10.9.9.9.13" style="padding-left:2.2pt;padding-right:2.2pt;">57.8</td>
</tr>
<tr class="ltx_tr" id="A4.T10.10.10.10">
<td class="ltx_td ltx_align_left" id="A4.T10.10.10.10.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=0.5" class="ltx_Math" display="inline" id="A4.T10.10.10.10.1.m1.1"><semantics id="A4.T10.10.10.10.1.m1.1a"><mrow id="A4.T10.10.10.10.1.m1.1.1" xref="A4.T10.10.10.10.1.m1.1.1.cmml"><mi id="A4.T10.10.10.10.1.m1.1.1.2" xref="A4.T10.10.10.10.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.10.10.10.1.m1.1.1.1" xref="A4.T10.10.10.10.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.10.10.10.1.m1.1.1.3" xref="A4.T10.10.10.10.1.m1.1.1.3.cmml">0.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.10.10.10.1.m1.1b"><apply id="A4.T10.10.10.10.1.m1.1.1.cmml" xref="A4.T10.10.10.10.1.m1.1.1"><eq id="A4.T10.10.10.10.1.m1.1.1.1.cmml" xref="A4.T10.10.10.10.1.m1.1.1.1"></eq><ci id="A4.T10.10.10.10.1.m1.1.1.2.cmml" xref="A4.T10.10.10.10.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.10.10.10.1.m1.1.1.3.cmml" type="float" xref="A4.T10.10.10.10.1.m1.1.1.3">0.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.10.10.10.1.m1.1c">\eta=0.5</annotation><annotation encoding="application/x-llamapun" id="A4.T10.10.10.10.1.m1.1d">italic_η = 0.5</annotation></semantics></math></td>
<td class="ltx_td" id="A4.T10.10.10.10.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.3" style="padding-left:2.2pt;padding-right:2.2pt;">37.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.4" style="padding-left:2.2pt;padding-right:2.2pt;">74.9</td>
<td class="ltx_td" id="A4.T10.10.10.10.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.6" style="padding-left:2.2pt;padding-right:2.2pt;">35.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.7" style="padding-left:2.2pt;padding-right:2.2pt;">73.1</td>
<td class="ltx_td" id="A4.T10.10.10.10.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.9" style="padding-left:2.2pt;padding-right:2.2pt;">7.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.10" style="padding-left:2.2pt;padding-right:2.2pt;">41.9</td>
<td class="ltx_td" id="A4.T10.10.10.10.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.12" style="padding-left:2.2pt;padding-right:2.2pt;">4.9</td>
<td class="ltx_td ltx_align_center" id="A4.T10.10.10.10.13" style="padding-left:2.2pt;padding-right:2.2pt;">49.3</td>
</tr>
<tr class="ltx_tr" id="A4.T10.11.11.11">
<td class="ltx_td ltx_align_left" id="A4.T10.11.11.11.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=0.75" class="ltx_Math" display="inline" id="A4.T10.11.11.11.1.m1.1"><semantics id="A4.T10.11.11.11.1.m1.1a"><mrow id="A4.T10.11.11.11.1.m1.1.1" xref="A4.T10.11.11.11.1.m1.1.1.cmml"><mi id="A4.T10.11.11.11.1.m1.1.1.2" xref="A4.T10.11.11.11.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.11.11.11.1.m1.1.1.1" xref="A4.T10.11.11.11.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.11.11.11.1.m1.1.1.3" xref="A4.T10.11.11.11.1.m1.1.1.3.cmml">0.75</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.11.11.11.1.m1.1b"><apply id="A4.T10.11.11.11.1.m1.1.1.cmml" xref="A4.T10.11.11.11.1.m1.1.1"><eq id="A4.T10.11.11.11.1.m1.1.1.1.cmml" xref="A4.T10.11.11.11.1.m1.1.1.1"></eq><ci id="A4.T10.11.11.11.1.m1.1.1.2.cmml" xref="A4.T10.11.11.11.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.11.11.11.1.m1.1.1.3.cmml" type="float" xref="A4.T10.11.11.11.1.m1.1.1.3">0.75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.11.11.11.1.m1.1c">\eta=0.75</annotation><annotation encoding="application/x-llamapun" id="A4.T10.11.11.11.1.m1.1d">italic_η = 0.75</annotation></semantics></math></td>
<td class="ltx_td" id="A4.T10.11.11.11.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.3" style="padding-left:2.2pt;padding-right:2.2pt;">47.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.4" style="padding-left:2.2pt;padding-right:2.2pt;">81.8</td>
<td class="ltx_td" id="A4.T10.11.11.11.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.6" style="padding-left:2.2pt;padding-right:2.2pt;">43.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.7" style="padding-left:2.2pt;padding-right:2.2pt;">80.8</td>
<td class="ltx_td" id="A4.T10.11.11.11.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.9" style="padding-left:2.2pt;padding-right:2.2pt;">28.5</td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.10" style="padding-left:2.2pt;padding-right:2.2pt;">59.8</td>
<td class="ltx_td" id="A4.T10.11.11.11.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.12" style="padding-left:2.2pt;padding-right:2.2pt;">41.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.11.11.11.13" style="padding-left:2.2pt;padding-right:2.2pt;">72.0</td>
</tr>
<tr class="ltx_tr" id="A4.T10.12.12.12">
<td class="ltx_td ltx_align_left" id="A4.T10.12.12.12.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=1.25" class="ltx_Math" display="inline" id="A4.T10.12.12.12.1.m1.1"><semantics id="A4.T10.12.12.12.1.m1.1a"><mrow id="A4.T10.12.12.12.1.m1.1.1" xref="A4.T10.12.12.12.1.m1.1.1.cmml"><mi id="A4.T10.12.12.12.1.m1.1.1.2" xref="A4.T10.12.12.12.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.12.12.12.1.m1.1.1.1" xref="A4.T10.12.12.12.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.12.12.12.1.m1.1.1.3" xref="A4.T10.12.12.12.1.m1.1.1.3.cmml">1.25</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.12.12.12.1.m1.1b"><apply id="A4.T10.12.12.12.1.m1.1.1.cmml" xref="A4.T10.12.12.12.1.m1.1.1"><eq id="A4.T10.12.12.12.1.m1.1.1.1.cmml" xref="A4.T10.12.12.12.1.m1.1.1.1"></eq><ci id="A4.T10.12.12.12.1.m1.1.1.2.cmml" xref="A4.T10.12.12.12.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.12.12.12.1.m1.1.1.3.cmml" type="float" xref="A4.T10.12.12.12.1.m1.1.1.3">1.25</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.12.12.12.1.m1.1c">\eta=1.25</annotation><annotation encoding="application/x-llamapun" id="A4.T10.12.12.12.1.m1.1d">italic_η = 1.25</annotation></semantics></math></td>
<td class="ltx_td" id="A4.T10.12.12.12.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.3" style="padding-left:2.2pt;padding-right:2.2pt;">51.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.4" style="padding-left:2.2pt;padding-right:2.2pt;">85.1</td>
<td class="ltx_td" id="A4.T10.12.12.12.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.6" style="padding-left:2.2pt;padding-right:2.2pt;">49.3</td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.7" style="padding-left:2.2pt;padding-right:2.2pt;">84.6</td>
<td class="ltx_td" id="A4.T10.12.12.12.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.9" style="padding-left:2.2pt;padding-right:2.2pt;">20.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.10" style="padding-left:2.2pt;padding-right:2.2pt;">62.2</td>
<td class="ltx_td" id="A4.T10.12.12.12.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.12" style="padding-left:2.2pt;padding-right:2.2pt;">3.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.12.12.12.13" style="padding-left:2.2pt;padding-right:2.2pt;">63.3</td>
</tr>
<tr class="ltx_tr" id="A4.T10.13.13.13">
<td class="ltx_td ltx_align_left" id="A4.T10.13.13.13.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=1.5" class="ltx_Math" display="inline" id="A4.T10.13.13.13.1.m1.1"><semantics id="A4.T10.13.13.13.1.m1.1a"><mrow id="A4.T10.13.13.13.1.m1.1.1" xref="A4.T10.13.13.13.1.m1.1.1.cmml"><mi id="A4.T10.13.13.13.1.m1.1.1.2" xref="A4.T10.13.13.13.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.13.13.13.1.m1.1.1.1" xref="A4.T10.13.13.13.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.13.13.13.1.m1.1.1.3" xref="A4.T10.13.13.13.1.m1.1.1.3.cmml">1.5</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.13.13.13.1.m1.1b"><apply id="A4.T10.13.13.13.1.m1.1.1.cmml" xref="A4.T10.13.13.13.1.m1.1.1"><eq id="A4.T10.13.13.13.1.m1.1.1.1.cmml" xref="A4.T10.13.13.13.1.m1.1.1.1"></eq><ci id="A4.T10.13.13.13.1.m1.1.1.2.cmml" xref="A4.T10.13.13.13.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.13.13.13.1.m1.1.1.3.cmml" type="float" xref="A4.T10.13.13.13.1.m1.1.1.3">1.5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.13.13.13.1.m1.1c">\eta=1.5</annotation><annotation encoding="application/x-llamapun" id="A4.T10.13.13.13.1.m1.1d">italic_η = 1.5</annotation></semantics></math></td>
<td class="ltx_td" id="A4.T10.13.13.13.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.3" style="padding-left:2.2pt;padding-right:2.2pt;">51.4</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.4" style="padding-left:2.2pt;padding-right:2.2pt;">84.8</td>
<td class="ltx_td" id="A4.T10.13.13.13.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.6" style="padding-left:2.2pt;padding-right:2.2pt;">50.8</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.7" style="padding-left:2.2pt;padding-right:2.2pt;">84.8</td>
<td class="ltx_td" id="A4.T10.13.13.13.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.9" style="padding-left:2.2pt;padding-right:2.2pt;">4.0</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.10" style="padding-left:2.2pt;padding-right:2.2pt;">49.5</td>
<td class="ltx_td" id="A4.T10.13.13.13.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.12" style="padding-left:2.2pt;padding-right:2.2pt;">6.6</td>
<td class="ltx_td ltx_align_center" id="A4.T10.13.13.13.13" style="padding-left:2.2pt;padding-right:2.2pt;">65.5</td>
</tr>
<tr class="ltx_tr" id="A4.T10.14.14.14">
<td class="ltx_td ltx_align_left" id="A4.T10.14.14.14.1" style="padding-left:2.2pt;padding-right:2.2pt;"><math alttext="\eta=1.75" class="ltx_Math" display="inline" id="A4.T10.14.14.14.1.m1.1"><semantics id="A4.T10.14.14.14.1.m1.1a"><mrow id="A4.T10.14.14.14.1.m1.1.1" xref="A4.T10.14.14.14.1.m1.1.1.cmml"><mi id="A4.T10.14.14.14.1.m1.1.1.2" xref="A4.T10.14.14.14.1.m1.1.1.2.cmml">η</mi><mo id="A4.T10.14.14.14.1.m1.1.1.1" xref="A4.T10.14.14.14.1.m1.1.1.1.cmml">=</mo><mn id="A4.T10.14.14.14.1.m1.1.1.3" xref="A4.T10.14.14.14.1.m1.1.1.3.cmml">1.75</mn></mrow><annotation-xml encoding="MathML-Content" id="A4.T10.14.14.14.1.m1.1b"><apply id="A4.T10.14.14.14.1.m1.1.1.cmml" xref="A4.T10.14.14.14.1.m1.1.1"><eq id="A4.T10.14.14.14.1.m1.1.1.1.cmml" xref="A4.T10.14.14.14.1.m1.1.1.1"></eq><ci id="A4.T10.14.14.14.1.m1.1.1.2.cmml" xref="A4.T10.14.14.14.1.m1.1.1.2">𝜂</ci><cn id="A4.T10.14.14.14.1.m1.1.1.3.cmml" type="float" xref="A4.T10.14.14.14.1.m1.1.1.3">1.75</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A4.T10.14.14.14.1.m1.1c">\eta=1.75</annotation><annotation encoding="application/x-llamapun" id="A4.T10.14.14.14.1.m1.1d">italic_η = 1.75</annotation></semantics></math></td>
<td class="ltx_td" id="A4.T10.14.14.14.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.3" style="padding-left:2.2pt;padding-right:2.2pt;">51.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.4" style="padding-left:2.2pt;padding-right:2.2pt;">84.7</td>
<td class="ltx_td" id="A4.T10.14.14.14.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.6" style="padding-left:2.2pt;padding-right:2.2pt;">50.7</td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.7" style="padding-left:2.2pt;padding-right:2.2pt;">84.8</td>
<td class="ltx_td" id="A4.T10.14.14.14.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.9" style="padding-left:2.2pt;padding-right:2.2pt;">2.2</td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.10" style="padding-left:2.2pt;padding-right:2.2pt;">46.2</td>
<td class="ltx_td" id="A4.T10.14.14.14.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.12" style="padding-left:2.2pt;padding-right:2.2pt;">5.1</td>
<td class="ltx_td ltx_align_center" id="A4.T10.14.14.14.13" style="padding-left:2.2pt;padding-right:2.2pt;">65.2</td>
</tr>
<tr class="ltx_tr" id="A4.T10.14.14.16.2" style="background-color:#E3DAF0;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="A4.T10.14.14.16.2.1" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.14.14.16.2.1.1" style="background-color:#E3DAF0;">HySAC</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T10.14.14.16.2.2" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.3" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="A4.T10.14.14.16.2.3.1" style="background-color:#E3DAF0;">49.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.4" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="A4.T10.14.14.16.2.4.1" style="background-color:#E3DAF0;">84.1</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T10.14.14.16.2.5" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.6" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="A4.T10.14.14.16.2.6.1" style="background-color:#E3DAF0;">48.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.7" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text" id="A4.T10.14.14.16.2.7.1" style="background-color:#E3DAF0;">84.2</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T10.14.14.16.2.8" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.9" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.14.14.16.2.9.1" style="background-color:#E3DAF0;">30.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.10" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.14.14.16.2.10.1" style="background-color:#E3DAF0;">62.8</span></td>
<td class="ltx_td ltx_border_bb" id="A4.T10.14.14.16.2.11" style="padding-left:2.2pt;padding-right:2.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.12" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.14.14.16.2.12.1" style="background-color:#E3DAF0;">42.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A4.T10.14.14.16.2.13" style="padding-left:2.2pt;padding-right:2.2pt;"><span class="ltx_text ltx_font_bold" id="A4.T10.14.14.16.2.13.1" style="background-color:#E3DAF0;">73.3</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the hyperparameter η (eta) in the HySAC model.  The hyperparameter η controls the width of the entailment cone, which influences how strictly the model enforces the hierarchical relationships between safe and unsafe content. The table shows the performance of the HySAC model trained with different values of η, evaluating both the recall of safe content (safe-to-safe retrieval) and the recall of safe content when starting with unsafe queries (unsafe-to-safe retrieval).  The results demonstrate the impact of this hyperparameter on the model's ability to effectively balance safety and retrieval performance.  In the original HySAC model, η is set to 1.0.
> <details>
> <summary>read the caption</summary>
> Table 10: Hyperparameter ablations for η𝜂\etaitalic_η. We train HySAC with different half-aperture scales, comparing only safe recalls and unsafe to safe recalls. In HySAC, η𝜂\etaitalic_η is set to 1.01.01.01.0.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.12127/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.12127/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}