---
title: "FUSION: Fully Integration of Vision-Language Representations for Deep Cross-Modal Understanding"
summary: "FUSION: Fully integrates vision-language representations for enhanced cross-modal understanding with deep integration throughout the entire processing pipeline."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Multimodal Learning", "Vision-Language Models", "🏢 Peking University",]
showSummary: true
date: 2025-04-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.09925 {{< /keyword >}}
{{< keyword icon="writer" >}} Zheng Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-15 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.09925" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.09925" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.09925/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

**Existing MLLMs** often **lack** effective vision-language integration, treating visual information as static and fusing it with language only at later stages of LLM decoding. This decoupled approach leads to limited textual interaction and **embedding misalignment**, hindering seamless integration. **FUSION**, a family of multimodal LLMs, addresses these issues by achieving **deep, dynamic integration** throughout the processing pipeline. Its **Text-Guided Unified Vision Encoding** incorporates textual info in vision encoding, achieving pixel-level integration. 



**Context-Aware Recursive Alignment Decoding** recursively aggregates visual features conditioned on textual context during decoding, enabling fine-grained integration. A **Dual-Supervised Semantic Mapping Loss** guides feature mapping and mitigates modality discrepancies. FUSION also uses a **Synthesized Language-Driven QA dataset**, prioritizing high-quality QA pairs to optimize text-guided integration. Results show that FUSION significantly outperforms existing methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} FUSION, a new family of MLLMs, achieves full vision-language alignment and integration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Text-Guided Unified Vision Encoding and Context-Aware Recursive Alignment Decoding improve integration. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Dual-Supervised Semantic Mapping Loss and synthesized QA dataset enhance performance. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**FUSION** offers a new approach to cross-modal understanding, potentially impacting MLLM development. Its focus on deep integration and novel data synthesis could inspire new research directions and benchmarks for future models.

------
#### Visual Insights



![](https://arxiv.org/html/2504.09925/x1.png)

> 🔼 This figure presents a performance comparison among several leading Multimodal Large Language Models (MLLMs), including the authors' model FUSION, across 18 benchmark tasks.  The key finding is that FUSION, even with a limited number of vision tokens (630), substantially outperforms competitors like Cambrian-1 and Florence-VL. Notably, FUSION achieves similar results to LLaVA-OneVision and stays competitive with top performers (InternVL2 and Qwen2VL) using only 630 visual tokens.  Reducing the visual tokens further to 300 (FUSION-L) maintains almost the same level of performance as Florence-VL, demonstrating impressive efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Performance comparison of FUSION with leading MLLM models across 18 benchmark dimensions. With only 630 vision tokens, our model (FUSION-X) significantly outperforms Cambrian-1 and Florence-VL, achieving overall parity with LLaVA-OneVision, while maintaining a minimal performance gap with top-tier models such as InternVL2 and Qwen2VL. Furthermore, even when the number of vision tokens is reduced to 300, our model (FUSION-L) preserves 95% of its original performance, remaining on par with Florence-VL.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.st1.7.7">
<tr class="ltx_tr" id="S4.T1.st1.7.7.8">
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T1.st1.7.7.8.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.8.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="11" id="S4.T1.st1.7.7.8.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.8.2.1" style="font-size:80%;">General Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.5.5.5">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.5.5.5.6.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.5.5.5.7" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.7.1" style="width:7.1pt;height:36.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.9pt;transform:translate(-14.91pt,-14.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.7.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.7.1.1.1" style="font-size:80%;"># Vis tok.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.1.1.1.1" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.1.1.1.1.1.1"><span class="ltx_text" id="S4.T1.st1.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T1.st1.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.st1.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.2.2.2.2" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.2.2.2.2.1.1"><span class="ltx_text" id="S4.T1.st1.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T1.st1.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.st1.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.8" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.8.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.8.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.8.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.9" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.9.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.9.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.9.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.10" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.10.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.10.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.10.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.3.3.3.3" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.3.3.3.3.1.1"><span class="ltx_text" id="S4.T1.st1.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T1.st1.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.st1.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.4.4.4.4" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.4.4.4.4.1.1"><span class="ltx_text" id="S4.T1.st1.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T1.st1.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.st1.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.11" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.11.1" style="width:7.1pt;height:39.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.8pt;transform:translate(-16.33pt,-15.56pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.11.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.11.1.1.1" style="font-size:80%;">Seed-Image</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.12" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.12.1" style="width:5.6pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-7.28pt,-7.28pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.12.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.12.1.1.1" style="font-size:80%;">HallB</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.5" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.5.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="S4.T1.st1.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.st1.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.5.5.5.13" style="padding:1.2pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st1.5.5.5.13.1" style="width:5.5pt;height:29.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.94pt,-11.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st1.5.5.5.13.1.1"><span class="ltx_text" id="S4.T1.st1.5.5.5.13.1.1.1" style="font-size:80%;">MMStar</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.6.6.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T1.st1.6.6.6.1" style="padding:1.2pt 9.0pt;">
<math alttext="&lt;=" class="ltx_Math" display="inline" id="S4.T1.st1.6.6.6.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.st1.6.6.6.1.m1.1a"><mo id="S4.T1.st1.6.6.6.1.m1.1.1" mathbackground="#F2F2F2" mathsize="80%" xref="S4.T1.st1.6.6.6.1.m1.1.1.cmml">&lt;=</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.6.6.6.1.m1.1b"><leq id="S4.T1.st1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.st1.6.6.6.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.6.6.6.1.m1.1c">&lt;=</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.6.6.6.1.m1.1d">&lt; =</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S4.T1.st1.6.6.6.1.1" style="font-size:80%;background-color:#F2F2F2;">4B Model Comparison</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.1.1" style="font-size:80%;">Qwen2.5VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st1.7.7.9.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.3.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.9.4.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.6.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.9.7.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.8.1" style="font-size:80%;">1592.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.9.9.1" style="font-size:80%;">607.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.10.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.11.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.9.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.9.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.9.13.1" style="font-size:80%;">56.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.10">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.1.1" style="font-size:80%;">InternVL2 4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.10.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.3.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.4.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.6.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.7.1" style="font-size:80%;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.8.1" style="font-size:80%;">1532.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.9.1" style="font-size:80%;">531.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.10.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.11.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.10.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.10.13.1" style="font-size:80%;">53.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.11">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.1.1" style="font-size:80%;">DeepSeek-VL2-Tiny</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.11.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.4.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.7.1" style="font-size:80%;">52.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.8.1" style="font-size:80%;">1548.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.9.1" style="font-size:80%;">357.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.10.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.11.1" style="font-size:80%;">39.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.11.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.11.13.1" style="font-size:80%;">45.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.12">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.1.1" style="font-size:80%;">MM1.5 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.12.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.6.1" style="font-size:80%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.7.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.8.1" style="font-size:80%;">1478.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.9.1" style="font-size:80%;">319.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.10.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.12.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.12.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.12.13.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.13">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.1.1" style="font-size:80%;">Phi 3.5-Vision</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.13.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.3.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.5.1" style="font-size:80%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.6.1" style="font-size:80%;">82.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.7.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.8.1" style="font-size:80%;">1473.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.9.1" style="font-size:80%;">412.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.10.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.11.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.12.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.13.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.13.13.1" style="font-size:80%;">49.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.14">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.14.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.3.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.4.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.6.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.7.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.8.1" style="font-size:80%;">1498.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.9.1" style="font-size:80%;">403.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.10.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.14.11.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.12.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.14.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.14.13.1" style="font-size:80%;">44.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.15" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.15.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.2.1" style="font-size:80%;background-color:#F2FFF2;">780</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.3.1" style="font-size:80%;background-color:#F2FFF2;">79.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.4.1" style="font-size:80%;background-color:#F2FFF2;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.5.1" style="font-size:80%;background-color:#F2FFF2;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.15.6.1" style="font-size:80%;background-color:#F2FFF2;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.7.1" style="font-size:80%;background-color:#F2FFF2;">57.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.15.8.1" style="font-size:80%;background-color:#F2FFF2;">1595.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.9.1" style="font-size:80%;background-color:#F2FFF2;">416.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.10.1" style="font-size:80%;background-color:#F2FFF2;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.11.1" style="font-size:80%;background-color:#F2FFF2;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.12.1" style="font-size:80%;background-color:#F2FFF2;">84.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.15.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.15.13.1" style="font-size:80%;background-color:#F2FFF2;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.16" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.16.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.2.1" style="font-size:80%;background-color:#F2FFF2;">620</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.16.3.1" style="font-size:80%;background-color:#F2FFF2;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.4.1" style="font-size:80%;background-color:#F2FFF2;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.16.5.1" style="font-size:80%;background-color:#F2FFF2;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.6.1" style="font-size:80%;background-color:#F2FFF2;">88.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.7.1" style="font-size:80%;background-color:#F2FFF2;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.8.1" style="font-size:80%;background-color:#F2FFF2;">1582.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.9.1" style="font-size:80%;background-color:#F2FFF2;">440.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.16.10.1" style="font-size:80%;background-color:#F2FFF2;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.11.1" style="font-size:80%;background-color:#F2FFF2;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.16.12.1" style="font-size:80%;background-color:#F2FFF2;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.16.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.16.13.1" style="font-size:80%;background-color:#F2FFF2;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.17" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.17.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.2.1" style="font-size:80%;background-color:#F2FFF2;">308</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.3.1" style="font-size:80%;background-color:#F2FFF2;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.4.1" style="font-size:80%;background-color:#F2FFF2;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.5.1" style="font-size:80%;background-color:#F2FFF2;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.6.1" style="font-size:80%;background-color:#F2FFF2;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.7.1" style="font-size:80%;background-color:#F2FFF2;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.8.1" style="font-size:80%;background-color:#F2FFF2;">1573.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.9.1" style="font-size:80%;background-color:#F2FFF2;">406.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.10.1" style="font-size:80%;background-color:#F2FFF2;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.11.1" style="font-size:80%;background-color:#F2FFF2;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.12.1" style="font-size:80%;background-color:#F2FFF2;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.17.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.17.13.1" style="font-size:80%;background-color:#F2FFF2;">47.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.7" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="S4.T1.st1.7.7.7.1" style="padding:1.2pt 9.0pt;">
<math alttext="&gt;=" class="ltx_Math" display="inline" id="S4.T1.st1.7.7.7.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.st1.7.7.7.1.m1.1a"><mo id="S4.T1.st1.7.7.7.1.m1.1.1" mathbackground="#F2F2F2" mathsize="80%" xref="S4.T1.st1.7.7.7.1.m1.1.1.cmml">&gt;=</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st1.7.7.7.1.m1.1b"><geq id="S4.T1.st1.7.7.7.1.m1.1.1.cmml" xref="S4.T1.st1.7.7.7.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st1.7.7.7.1.m1.1c">&gt;=</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st1.7.7.7.1.m1.1d">&gt; =</annotation></semantics></math><span class="ltx_text ltx_font_italic" id="S4.T1.st1.7.7.7.1.1" style="font-size:80%;background-color:#F2F2F2;">7B Model Comparison</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.18">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.1.1" style="font-size:80%;">Qwen2VL 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st1.7.7.18.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.18.3.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.4.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.6.1" style="font-size:80%;">88.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.18.7.1" style="font-size:80%;">62.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.18.8.1" style="font-size:80%;">1639.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.18.9.1" style="font-size:80%;">637.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.10.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.11.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.18.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st1.7.7.18.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.18.13.1" style="font-size:80%;">60.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.19">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.1.1" style="font-size:80%;">InternVL2 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.19.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.3.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.19.4.1" style="font-size:80%;">81.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.6.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.7.1" style="font-size:80%;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.8.1" style="font-size:80%;">1639.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.9.1" style="font-size:80%;">575.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.10.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.11.1" style="font-size:80%;">45.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.19.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.19.13.1" style="font-size:80%;">61.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.20">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.1.1" style="font-size:80%;">LLaVA-OneVision 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.20.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.3.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.4.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.6.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.7.1" style="font-size:80%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.8.1" style="font-size:80%;">1626.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.9.1" style="font-size:80%;">483.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.10.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.11.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.12.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.20.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.20.13.1" style="font-size:80%;">60.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.21">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.1.1" style="font-size:80%;">MM1.5 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.21.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.6.1" style="font-size:80%;">88.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.7.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.8.1" style="font-size:80%;">1514.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.9.1" style="font-size:80%;">346.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.10.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.12.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.21.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.21.13.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.22">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.1.1" style="font-size:80%;">Cambrain 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.22.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.3.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.4.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.6.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.7.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.8.1" style="font-size:80%;">1547.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.10.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.11.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.12.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.22.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.22.13.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.23">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.23.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.3.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.23.6.1" style="font-size:80%;">89.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.7.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.8.1" style="font-size:80%;">1560.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.9.1" style="font-size:80%;">381.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.10.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.23.11.1" style="font-size:80%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.12.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.23.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.23.13.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.24">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.1.1" style="font-size:80%;">Eagle 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.24.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.3.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.4.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.7.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.8.1" style="font-size:80%;">1559.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.9.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.10.1" style="font-size:80%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.12.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.24.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.24.13.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.25" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.25.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.2.1" style="font-size:80%;background-color:#F2FFF2;">780</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.3.1" style="font-size:80%;background-color:#F2FFF2;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.4.1" style="font-size:80%;background-color:#F2FFF2;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.5.1" style="font-size:80%;background-color:#F2FFF2;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.6.1" style="font-size:80%;background-color:#F2FFF2;">89.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.7.1" style="font-size:80%;background-color:#F2FFF2;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.8.1" style="font-size:80%;background-color:#F2FFF2;">1592.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.9.1" style="font-size:80%;background-color:#F2FFF2;">396.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.10.1" style="font-size:80%;background-color:#F2FFF2;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.11.1" style="font-size:80%;background-color:#F2FFF2;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.12.1" style="font-size:80%;background-color:#F2FFF2;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.25.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.25.13.1" style="font-size:80%;background-color:#F2FFF2;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.26" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st1.7.7.26.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.2.1" style="font-size:80%;background-color:#F2FFF2;">620</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.3.1" style="font-size:80%;background-color:#F2FFF2;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.4.1" style="font-size:80%;background-color:#F2FFF2;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st1.7.7.26.5.1" style="font-size:80%;background-color:#F2FFF2;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.6.1" style="font-size:80%;background-color:#F2FFF2;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.7.1" style="font-size:80%;background-color:#F2FFF2;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.8.1" style="font-size:80%;background-color:#F2FFF2;">1607.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.9.1" style="font-size:80%;background-color:#F2FFF2;">337.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.10.1" style="font-size:80%;background-color:#F2FFF2;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.11.1" style="font-size:80%;background-color:#F2FFF2;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.12.1" style="font-size:80%;background-color:#F2FFF2;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st1.7.7.26.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.26.13.1" style="font-size:80%;background-color:#F2FFF2;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st1.7.7.27" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.1" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.st1.7.7.27.2" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.2.1" style="font-size:80%;background-color:#F2FFF2;">308</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.3" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.3.1" style="font-size:80%;background-color:#F2FFF2;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.4" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.4.1" style="font-size:80%;background-color:#F2FFF2;">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.5" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.5.1" style="font-size:80%;background-color:#F2FFF2;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.6" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.6.1" style="font-size:80%;background-color:#F2FFF2;">88.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.7" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.7.1" style="font-size:80%;background-color:#F2FFF2;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.8" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.8.1" style="font-size:80%;background-color:#F2FFF2;">1601.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.9" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.9.1" style="font-size:80%;background-color:#F2FFF2;">338.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.10" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.10.1" style="font-size:80%;background-color:#F2FFF2;">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.11" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.11.1" style="font-size:80%;background-color:#F2FFF2;">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.12" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.12.1" style="font-size:80%;background-color:#F2FFF2;">82.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st1.7.7.27.13" style="padding:1.2pt 9.0pt;"><span class="ltx_text" id="S4.T1.st1.7.7.27.13.1" style="font-size:80%;background-color:#F2FFF2;">49.3</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comparative analysis of various large language models (LLMs) across 22 benchmark datasets.  The models compared include FUSION (with two variants: FUSION and FUSION-X, distinguished by their vision encoders), along with several other state-of-the-art models. FUSION and FUSION-X use different vision encoders, SigLIP-SO400M-Patch14-384 and SigLIP2-Giant-OPT-Patch16-384 respectively. FUSION-L is a variant of FUSION-X that utilizes image token interpolation during inference. The table shows the performance of each model on each benchmark, allowing for a direct comparison of their relative strengths and weaknesses.  Importantly, it highlights that FUSION-X achieves superior performance while using fewer vision tokens.
> <details>
> <summary>read the caption</summary>
> Table 1:  Model comparison on 22 Benchmarks. We provide model variants with different Vision Encoders: SigLIP-SO400M-Patch14-384 (FUSION) and SigLIP2-Giant-OPT-Patch16-384 (FUSION-X). FUSION-L is built upon FUSION-X by employing interpolation on image tokens during inference. FUSION-X achieves superior performance with fewer tokens.
> </details>





### In-depth insights


#### Vision & Lang.
Vision-language models represent a significant leap, enabling machines to process and relate information from both modalities. **Traditional approaches often treat vision and language separately**, hindering deep integration. Advancements in **attention mechanisms** and **fusion strategies** are crucial for effective cross-modal understanding. Challenges include **semantic alignment**, **contextual reasoning**, and **handling ambiguities**. Overcoming these limitations will pave the way for more intuitive and capable AI systems that seamlessly blend visual and linguistic information, enhancing applications in image captioning, visual question answering, and human-computer interaction.

#### Dynamic Fusion
**Dynamic fusion** in MLLMs aims to deeply integrate vision and language. Unlike late-stage fusion, it seeks real-time interaction. This likely involves adaptive feature modulation where text informs visual processing and vice versa. Key to this is creating shared representation spaces, potentially using attention mechanisms or cross-modal transformers. **Challenges include managing computational complexity** for real-time interaction and preventing one modality from dominating the other. It is crucial to dynamically weigh input to balance both modalities. Such a system would process information faster to enable more nuanced understanding. **Ultimately, dynamic fusion unlocks more human-like perception** by mimicking cognitive processes.

#### Text-Guided Vision
**Text-guided vision** is an innovative method for deep cross-modal learning, as the visual perception is guided by textual input. The conventional method of processing visual data independently, leads to ineffective utilization of textual insights during the initial feature extraction stage. This results in incomplete understanding and integration of multimodal information. However, by using text to guide vision, **MLLMs** can dynamically integrate linguistic input and facilitate more effective visual processing by directing attention and helping the brain prioritize relevant features. The ability to enhance **pixel-level** integration and joint modality attention through **joint feature** representation enhances cross-modal interactions, which creates greater performance in cross-modal learning.

#### Align. Decoding
The Alignment Decoding approach is interesting, offering a focused attention mechanism. Using **latent tokens** helps balance efficiency and performance. The recursive nature allows for progressive refinement, enhancing integration. Using windowed attention further facilitates efficiency. This strategy mitigates the issues stemming from treating vision as a static input, instead dynamically shaping visual processing based on the current textual context. The interaction of vision and language promotes greater accuracy in tasks such as OCR. 

#### Data Synthesis
Data synthesis is a crucial aspect of modern AI research, especially in multimodal learning. **Creating synthetic data** helps overcome limitations of real-world datasets, such as limited size, bias, and lack of diversity. Effective synthesis strategies involve leveraging powerful generative models, like diffusion models, to produce high-quality, diverse samples tailored to specific tasks. Synthetic data allows for **precise control over data characteristics**, enabling targeted training and improved model generalization.  However, careful filtering and validation are necessary to ensure the synthetic data aligns with real-world distributions and does not introduce artifacts that degrade performance. Techniques such as rule-based filtering and LLM scoring play a vital role in data refining.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.09925/x2.png)

> 🔼 Figure 2 visualizes the model's cross-modal alignment and integration process at three levels: pixel-level, space-level, and question-level.  At the pixel level, attention maps highlight the relationships between image regions and question keywords processed within the vision encoder, showing how the model focuses on relevant image parts.  At the space level, cosine similarity is calculated between vision tokens (after projection into the LLM's embedding space) and corresponding question keywords.  This demonstrates the semantic alignment between visual and textual features. Finally, at the question level, the attention maps between question keywords and vision tokens during LLM decoding are shown, illustrating the model's fine-grained semantic integration during the generation process.  The overall visualization showcases that the model progressively strengthens its cross-modal alignment through each stage of processing.
> <details>
> <summary>read the caption</summary>
> Figure 2: Visualization of modality alignment and integration. At pixel-level, we compute attention maps between image regions and question-relevant keywords within the vision encoder. At space-level, we measure the cosine similarity between vision tokens projected into the LLM embedding space and corresponding keywords. At question-level, we visualize attention maps from question keywords to vision tokens during LLM decoding. The results indicate that our model achieves consistent and progressively enhanced cross-modal alignment throughout the processing pipeline.
> </details>



![](https://arxiv.org/html/2504.09925/x3.png)

> 🔼 This figure illustrates the FUSION model's architecture for text-guided vision encoding and dual-supervised semantic mapping.  An input image and its corresponding question are initially processed.  The question is first projected into the image's feature space (vision space), effectively incorporating textual context into the visual representation. This joint visual and textual information is then encoded. The resulting encoded visual features are subsequently mapped into the text feature space (text space) and fed to a large language model (LLM). To ensure that the feature mapping (MLP) is reliable, the model uses a reconstruction loss.  This loss compares the original image and text tokens with their reconstructed counterparts, which are created by using the encoded features and projecting them back to the original spaces. Minimizing this loss encourages structural alignment between the two feature spaces. This method promotes more accurate and effective integration of visual and linguistic features during the process of generating a response.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of our Text-Guided Unified Vision Encoding and Dual-Supervised Semantic Mapping Loss. Given an input image, the corresponding question is first projected into the vision feature space and processed jointly with the image. The extracted visual features are then mapped into the text space and fed into LLM. To ensure the reliability of the mapping MLP, we reconstruct the text and image tokens by reusing the encoded tokens and projecting them back into their original feature spaces, then compute the similarity between the reconstructed and raw tokens to encourage structural alignment between the two spaces.
> </details>



![](https://arxiv.org/html/2504.09925/x4.png)

> 🔼 This figure illustrates the Context-Aware Recursive Alignment Decoding process.  The decoding process uses interaction layers between decoding layers to recursively refine alignment of visual and textual information. Each set of question tokens (yellow) is prepended by context-aware latent tokens (green) to create context-aware query representations. These are then used in cross-attention mechanisms within the interaction layers.  This enables vision tokens to interact with both latent and question tokens at a granular level for each question (Group 1, Group 2, etc.), resulting in fine-grained, question-level semantic alignment.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of our Context-Aware Recursive Alignment Decoding. For each set of question tokens (highlighted in yellow), we prepend a set of context-aware latent tokens (highlighted in green). Additional interaction layers are introduced between decoding layers, where vision tokens interact with both latent tokens and question tokens at a question-level granularity (e.g., Group 1, Group 2, …).
> </details>



![](https://arxiv.org/html/2504.09925/x5.png)

> 🔼 Figure 5 illustrates the framework for creating a text-centered QA dataset.  The approach prioritizes detailed textual descriptions over visual content. High-quality captions are first selected and enhanced with LLMs to generate rich, nuanced descriptions. These enhanced descriptions then serve as prompts for a diffusion model to generate corresponding images.  The same descriptions are also used by the LLM to create a diverse set of QA pairs. This method focuses on textual richness to improve the model's understanding of images and generate diverse QA data.
> <details>
> <summary>read the caption</summary>
> Figure 5: Overview of our Text-Centered QA Dataset framework. Our approach shifts the focus from visual content to textual richness by leveraging high-quality captions, enriching them with LLMs, and using them as the foundation for both image generation via diffusion models and diverse QA pair construction.
> </details>



![](https://arxiv.org/html/2504.09925/x6.png)

> 🔼 This figure displays a graph illustrating how the model's performance changes across various vision-centric benchmarks as the number of latent vision tokens is altered.  It showcases the model's robustness across different tasks, even with varying numbers of latent tokens. This is useful in understanding the model's efficiency and effectiveness under different computational resource constraints.
> <details>
> <summary>read the caption</summary>
> (a) Model performance under varying numbers of latent vision tokens.
> </details>



![](https://arxiv.org/html/2504.09925/x7.png)

> 🔼 This figure displays the performance of the FUSION model across various benchmarks as the number of global vision tokens used is altered.  It compares the model's performance with other leading models (Cambrian-1, Florence-VL) to show the impact of changing the number of visual tokens.  The graph likely illustrates that FUSION maintains strong performance even with a significantly reduced number of visual tokens compared to competitors. 
> <details>
> <summary>read the caption</summary>
> (b) Model performance under varying numbers of global vision tokens.
> </details>



![](https://arxiv.org/html/2504.09925/x11.png)

> 🔼 This figure displays comparative performance results across different model configurations, varying the number of latent and global vision tokens.  It shows how the model's performance changes on several benchmark tasks (General, Vision-centric, Knowledge-Based, and OCR & Chart) as the number of visual tokens (both latent and global) is increased. This allows for an assessment of the model's efficiency and robustness concerning visual token usage.
> <details>
> <summary>read the caption</summary>
> Figure 6: Comparative analysis of performance with different latent and global vision token configurations.
> </details>



![](https://arxiv.org/html/2504.09925/x12.png)

> 🔼 This figure shows the composition of the datasets used to train the FUSION model.  The left circle represents the 10 million samples used in the pretraining stage (Stage 1), and the right circle shows the 12 million samples used in the fine-tuning stages (Stage 1.5 and Stage 2). Each circle is divided into segments representing different sources of data, including publicly available datasets (like LLaVA, PixelProse, ShareGPT4V), existing benchmarks (e.g., URSA), and synthetic data generated by the authors. The size of each segment is proportional to the amount of data from that source.
> <details>
> <summary>read the caption</summary>
> Figure 7: FUSION-10M and FUSION-12M. We collected a total of 10M samples for pretraining (Stage 1) and 12M samples for fine-tuning (Stage 1.5 and Stage 2). The circle illustrates the data distribution, with the right side of the circle showing all the utilized data and their respective proportions.
> </details>



![](https://arxiv.org/html/2504.09925/x13.png)

> 🔼 This figure compares the modality alignment capabilities of FUSION, LLaVA, and LLaVA-NeXT across pixel, space, and question levels.  Heatmaps visualize the attention mechanisms of each model, revealing how effectively each model integrates visual and textual information during different processing stages. Consistent visualization and data augmentation techniques are applied to all three models to ensure a fair and objective comparison.  The analysis demonstrates the superior cross-modal alignment achieved by FUSION across all three levels compared to the baseline models.
> <details>
> <summary>read the caption</summary>
> Figure 8: Comparison of Modality Alignment with traditional MLLMs. We conduct a comparative analysis of modality alignment across three different levels using FUSION, LLaVA, and LLaVA-NeXT. To ensure a fair evaluation, we adopt consistent visualization and augmentation strategies across all models.
> </details>



![](https://arxiv.org/html/2504.09925/x14.png)

> 🔼 This figure showcases the model's ability to engage in multi-turn conversations about images.  It demonstrates the model's capacity to answer diverse questions about image content,  incorporating detailed visual and contextual information in its responses. The model processes complex prompts and generates detailed, coherent answers over multiple turns, showcasing its conversational understanding.  The images used are examples from different scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 9: Illustration of our model’s multiturn dialogue
> </details>



![](https://arxiv.org/html/2504.09925/x15.png)

> 🔼 Figure 10 shows examples from the SynthConvShort dataset.  The dataset contains short, multi-turn conversations between a human and an AI. The human provides questions about images, and the AI provides concise, factual answers directly based on the image content.  The questions cover a wide range of topics including object identification, color, counting, location, and simple comparisons between images. Each QA pair shows an example image, the human's question, and the AI's answer.
> <details>
> <summary>read the caption</summary>
> Figure 10: Illustration of our SynthConvShort
> </details>



![](https://arxiv.org/html/2504.09925/x16.png)

> 🔼 This figure showcases an example of a multi-turn conversation generated using the SynthConvLong method.  The conversation centers around a photograph of Taylor Swift performing on stage. The AI responds to several user questions, demonstrating its ability to provide detailed descriptions of the image's content and contextual information.  The questions cover aspects such as Taylor Swift's attire, the stage setting, and the elements displayed on the background screen. The AI's responses are comprehensive and align directly with what is visible in the image.
> <details>
> <summary>read the caption</summary>
> Figure 11: Illustration of our SynthConvLong
> </details>



![](https://arxiv.org/html/2504.09925/x17.png)

> 🔼 Figure 12 presents two image pairs from the SynthContrastShort dataset, highlighting the differences between them. Each pair shows subtle variations in terms of visual elements like color schemes, object counts, and scene details.  The top row shows images of industrial power plants, the bottom row shows kitchen scenes. For both pairs, the left image has warmer colors and simpler composition, while the right image features cooler tones and more elements.
> <details>
> <summary>read the caption</summary>
> Figure 12: Illustration of our SynthContrastShort
> </details>



![](https://arxiv.org/html/2504.09925/x18.png)

> 🔼 This figure showcases a detailed comparison of two images generated using the SynthContrastLong method. It highlights the differences between the images by comparing visual elements such as object types (partially constructed boat vs. completed boat), their quantities, arrangement, colors (silver and bright orange vs. bronze and faded denim), and sizes.  The images are accompanied by a set of questions and answers that emphasize the visual contrast between them, including questions about the number of objects, their relative positions, colors, and sizes.
> <details>
> <summary>read the caption</summary>
> Figure 13: Illustration of our SynthContrastLong
> </details>



![](https://arxiv.org/html/2504.09925/x19.png)

> 🔼 Figure 14 shows examples from the Synthesized Language-Driven QA Dataset, specifically showcasing the SynthMultiChoice category.  It presents several image-question-answer triplets where the questions are multiple choice. The questions target various aspects of the images, including object identification, counting, activity recognition, and spatial reasoning. The answers provided are concise and directly relate to the visual information in the corresponding image.
> <details>
> <summary>read the caption</summary>
> Figure 14: Illustration of our SynthMultiChoice
> </details>



![](https://arxiv.org/html/2504.09925/x20.png)

> 🔼 The image showcases a bedroom with soft white windows, warm beige walls, and rich wood floors.  This image exemplifies the use of color in scene design to evoke a particular mood or atmosphere, which is a key aspect of the SynthColor dataset discussed in the paper. The emphasis on color selection and its impact on the overall scene, rather than individual objects, is consistent with the paper's focus on a language-driven approach to data generation.
> <details>
> <summary>read the caption</summary>
> Figure 15: Illustration of our SynthColor
> </details>



![](https://arxiv.org/html/2504.09925/x21.png)

> 🔼 Figure 16 shows examples from the SynthCount dataset.  The dataset focuses on generating images with varying counts of objects. The caption's brevity is intended to reflect the simplicity of the core concept. The figure provides visual examples of images generated with different counts of objects (e.g., seagulls, flowers), showcasing the variation in object quantities in the generated images.
> <details>
> <summary>read the caption</summary>
> Figure 16: Illustration of our SynthCount
> </details>



![](https://arxiv.org/html/2504.09925/x22.png)

> 🔼 Figure 17 shows examples from the Synthesized Language-Driven QA dataset. Specifically, it showcases images generated based on text prompts related to various scenes (vintage lantern and Eiffel Tower, Mount Fuji and snow machines, etc.). These examples highlight the ability of the language-driven approach to generate high-quality, diverse images grounded in rich textual descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 17: Illustration of our SynthScene
> </details>



![](https://arxiv.org/html/2504.09925/x23.png)

> 🔼 Figure 18 shows two example image-question pairs generated using the SynthSpatial data synthesis method described in the paper.  SynthSpatial focuses on creating high-quality image-text pairs where the spatial relationships between objects are accurately reflected.  The top example shows a woman standing behind a counter with glasses and a bottle visible. The question probes the concise description of the scene. The bottom example showcases a home in the foreground, a car parked to its left, and a teddy bear on the seat; the associated question requests a concise image description.  These examples illustrate the dataset's ability to generate images and questions centered around spatial relationships.
> <details>
> <summary>read the caption</summary>
> Figure 18: Illustration of our SynthSpatial
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.st2.2.2">
<tr class="ltx_tr" id="S4.T1.st2.2.2.3">
<td class="ltx_td ltx_align_center" colspan="2" id="S4.T1.st2.2.2.3.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.3.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S4.T1.st2.2.2.3.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.3.2.1" style="font-size:80%;">Vision centric</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S4.T1.st2.2.2.3.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.3.3.1" style="font-size:80%;">Knowledge based</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="S4.T1.st2.2.2.3.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.3.4.1" style="font-size:80%;">OCR &amp; Chart</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.4">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.4.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.4.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.4.2.1" style="font-size:80%;"># Vis tok.</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.3" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.3.1" style="width:5.5pt;height:36pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.0pt;transform:translate(-15.27pt,-15.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.3.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.3.1.1.1" style="font-size:80%;">MME-RW</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.4" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.4.1" style="width:7.0pt;height:25.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.2pt;transform:translate(-9.1pt,-8.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.4.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.4.1.1.1" style="font-size:80%;">RWQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.5" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.5.1" style="width:5.6pt;height:35.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:35.9pt;transform:translate(-15.17pt,-15.17pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.5.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.5.1.1.1" style="font-size:80%;">CV-Bench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.4.6" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.6.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.6.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.6.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.7" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.7.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.7.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.7.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.8" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.8.1" style="width:5.6pt;height:37.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.4pt;transform:translate(-15.91pt,-15.91pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.8.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.8.1.1.1" style="font-size:80%;">MathVista</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.9" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.9.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.9.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.9.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.4.10" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.10.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.10.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.10.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.11" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.11.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.11.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.11.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.12" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.12.1" style="width:5.6pt;height:39.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.3pt;transform:translate(-16.89pt,-16.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.12.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.12.1.1.1" style="font-size:80%;">OCRBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.13" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.13.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.13.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.13.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.4.14" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T1.st2.2.2.4.14.1" style="width:7.0pt;height:31.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:31.9pt;transform:translate(-12.43pt,-11.66pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T1.st2.2.2.4.14.1.1"><span class="ltx_text" id="S4.T1.st2.2.2.4.14.1.1.1" style="font-size:80%;">DocVQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.1.1.1" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.st2.1.1.1.1" style="padding:1.2pt 7.0pt;">
<math alttext="&lt;=" class="ltx_Math" display="inline" id="S4.T1.st2.1.1.1.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.st2.1.1.1.1.m1.1a"><mo id="S4.T1.st2.1.1.1.1.m1.1.1" mathbackground="#F2F2F2" mathsize="80%" xref="S4.T1.st2.1.1.1.1.m1.1.1.cmml">&lt;=</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.1.1.1.1.m1.1b"><leq id="S4.T1.st2.1.1.1.1.m1.1.1.cmml" xref="S4.T1.st2.1.1.1.1.m1.1.1"></leq></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.1.1.1.1.m1.1c">&lt;=</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.1.1.1.1.m1.1d">&lt; =</annotation></semantics></math><span class="ltx_text" id="S4.T1.st2.1.1.1.1.1" style="font-size:80%;background-color:#F2F2F2;"> <span class="ltx_text ltx_font_italic" id="S4.T1.st2.1.1.1.1.1.1" style="background-color:#F2F2F2;">4B Model Comparison</span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.1.1" style="font-size:80%;">Qwen2.5VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.5.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.3.1" style="font-size:80%;">53.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.4.1" style="font-size:80%;">65.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.5.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.7.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.8.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.9.1" style="font-size:80%;">51.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.5.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.10.1" style="font-size:80%;">79.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.5.11.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.12.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.13.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.5.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.5.14.1" style="font-size:80%;">93.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.6">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.1.1" style="font-size:80%;">InternVL2 4B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.6.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.3.1" style="font-size:80%;">52.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.4.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.6.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.7.1" style="font-size:80%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.8.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.9.1" style="font-size:80%;">48.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.6.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.6.10.1" style="font-size:80%;">96.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.11.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.12.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.13.1" style="font-size:80%;">81.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.6.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.6.14.1" style="font-size:80%;">89.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.7">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.1.1" style="font-size:80%;">DeepSeek-VL2-Tiny</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.7.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.7.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.7.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.8.1" style="font-size:80%;">53.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.9.1" style="font-size:80%;">40.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.7.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.10.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.7.11.1" style="font-size:80%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.12.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.13.1" style="font-size:80%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.7.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.7.14.1" style="font-size:80%;">86.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.8">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.1.1" style="font-size:80%;">MM1.5 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.8.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.4.1" style="font-size:80%;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.8.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.7.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.8.1" style="font-size:80%;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.9.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.8.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.10.1" style="font-size:80%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.11.1" style="font-size:80%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.12.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.13.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.8.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.8.14.1" style="font-size:80%;">87.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.9">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.1.1" style="font-size:80%;">Phi 3.5 Vision</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.9.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.4.1" style="font-size:80%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.5.1" style="font-size:80%;">69.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.9.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.6.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.7.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.8.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.9.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.9.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.10.1" style="font-size:80%;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.11.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.12.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.13.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.9.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.9.14.1" style="font-size:80%;">75.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.10">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.10.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.4.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.5.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.10.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.6.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.7.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.8.1" style="font-size:80%;">52.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.9.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.10.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.10.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.11.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.12.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.13.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.10.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.10.14.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.11" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.11.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.2.1" style="font-size:80%;background-color:#F2FFF2;">780</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.3.1" style="font-size:80%;background-color:#F2FFF2;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.4.1" style="font-size:80%;background-color:#F2FFF2;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.5.1" style="font-size:80%;background-color:#F2FFF2;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.11.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.6.1" style="font-size:80%;background-color:#F2FFF2;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.7.1" style="font-size:80%;background-color:#F2FFF2;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.8.1" style="font-size:80%;background-color:#F2FFF2;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.9.1" style="font-size:80%;background-color:#F2FFF2;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.11.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.10.1" style="font-size:80%;background-color:#F2FFF2;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.11.1" style="font-size:80%;background-color:#F2FFF2;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.12.1" style="font-size:80%;background-color:#F2FFF2;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.13.1" style="font-size:80%;background-color:#F2FFF2;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.11.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.11.14.1" style="font-size:80%;background-color:#F2FFF2;">70.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.12" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.12.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.2.1" style="font-size:80%;background-color:#F2FFF2;">620</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.3.1" style="font-size:80%;background-color:#F2FFF2;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.4.1" style="font-size:80%;background-color:#F2FFF2;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.12.5.1" style="font-size:80%;background-color:#F2FFF2;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.12.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.12.6.1" style="font-size:80%;background-color:#F2FFF2;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.7.1" style="font-size:80%;background-color:#F2FFF2;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.8.1" style="font-size:80%;background-color:#F2FFF2;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.9.1" style="font-size:80%;background-color:#F2FFF2;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.12.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.10.1" style="font-size:80%;background-color:#F2FFF2;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.11.1" style="font-size:80%;background-color:#F2FFF2;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.12.1" style="font-size:80%;background-color:#F2FFF2;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.13.1" style="font-size:80%;background-color:#F2FFF2;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.12.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.12.14.1" style="font-size:80%;background-color:#F2FFF2;">71.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.13" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 3B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.13.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.2.1" style="font-size:80%;background-color:#F2FFF2;">308</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.3.1" style="font-size:80%;background-color:#F2FFF2;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.4.1" style="font-size:80%;background-color:#F2FFF2;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.5.1" style="font-size:80%;background-color:#F2FFF2;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.13.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.6.1" style="font-size:80%;background-color:#F2FFF2;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.7.1" style="font-size:80%;background-color:#F2FFF2;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.8.1" style="font-size:80%;background-color:#F2FFF2;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.9.1" style="font-size:80%;background-color:#F2FFF2;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.13.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.10.1" style="font-size:80%;background-color:#F2FFF2;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.11.1" style="font-size:80%;background-color:#F2FFF2;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.12.1" style="font-size:80%;background-color:#F2FFF2;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.13.1" style="font-size:80%;background-color:#F2FFF2;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.13.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.13.14.1" style="font-size:80%;background-color:#F2FFF2;">63.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.2" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="14" id="S4.T1.st2.2.2.2.1" style="padding:1.2pt 7.0pt;">
<math alttext="&gt;=" class="ltx_Math" display="inline" id="S4.T1.st2.2.2.2.1.m1.1" style="background-color:#F2F2F2;"><semantics id="S4.T1.st2.2.2.2.1.m1.1a"><mo id="S4.T1.st2.2.2.2.1.m1.1.1" mathbackground="#F2F2F2" mathsize="80%" xref="S4.T1.st2.2.2.2.1.m1.1.1.cmml">&gt;=</mo><annotation-xml encoding="MathML-Content" id="S4.T1.st2.2.2.2.1.m1.1b"><geq id="S4.T1.st2.2.2.2.1.m1.1.1.cmml" xref="S4.T1.st2.2.2.2.1.m1.1.1"></geq></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.st2.2.2.2.1.m1.1c">&gt;=</annotation><annotation encoding="application/x-llamapun" id="S4.T1.st2.2.2.2.1.m1.1d">&gt; =</annotation></semantics></math><span class="ltx_text" id="S4.T1.st2.2.2.2.1.1" style="font-size:80%;background-color:#F2F2F2;"> <span class="ltx_text ltx_font_italic" id="S4.T1.st2.2.2.2.1.1.1" style="background-color:#F2F2F2;">7B Model Comparison</span></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.14">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.1.1" style="font-size:80%;">Qwen2VL 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.14.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.3.1" style="font-size:80%;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.4.1" style="font-size:80%;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.14.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.7.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.8.1" style="font-size:80%;">58.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.9.1" style="font-size:80%;">54.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.st2.2.2.14.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.10.1" style="font-size:80%;">85.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.11.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.12.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.14.13.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.st2.2.2.14.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.14.14.1" style="font-size:80%;">94.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.15">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.1.1" style="font-size:80%;">InternVL2 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.15.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.3.1" style="font-size:80%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.4.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.15.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.7.1" style="font-size:80%;">83.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.8.1" style="font-size:80%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.9.1" style="font-size:80%;">52.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.15.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.10.1" style="font-size:80%;">96.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.11.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.12.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.15.13.1" style="font-size:80%;">83.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.15.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.15.14.1" style="font-size:80%;">91.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.16">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.1.1" style="font-size:80%;">LLaVA-OneVision 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.16.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.3.1" style="font-size:80%;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.4.1" style="font-size:80%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.16.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.7.1" style="font-size:80%;">81.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.8.1" style="font-size:80%;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.9.1" style="font-size:80%;">47.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.16.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.16.10.1" style="font-size:80%;">96.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.11.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.12.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.13.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.16.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.16.14.1" style="font-size:80%;">87.5</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.17">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.1.1" style="font-size:80%;">MM1.5 7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.17.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.4.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.17.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.6.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.7.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.8.1" style="font-size:80%;">47.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.9.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.17.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.10.1" style="font-size:80%;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.11.1" style="font-size:80%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.12.1" style="font-size:80%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.13.1" style="font-size:80%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.17.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.17.14.1" style="font-size:80%;">78.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.18">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.1.1" style="font-size:80%;">Cambrian 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.18.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.5.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.18.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.6.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.7.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.8.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.18.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.10.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.11.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.12.1" style="font-size:80%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.13.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.18.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.18.14.1" style="font-size:80%;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.19">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.19.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.5.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.19.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.6.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.7.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.8.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.9.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.19.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.10.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.11.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.12.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.13.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.19.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.19.14.1" style="font-size:80%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.20">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.1.1" style="font-size:80%;">Eagle 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.20.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.2.1" style="font-size:80%;">1024</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.3.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.4.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.5.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.20.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.6.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.7.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.8.1" style="font-size:80%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.9.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.20.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.10.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.11.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.12.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.13.1" style="font-size:80%;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.20.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.20.14.1" style="font-size:80%;">86.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.21" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.21.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.2.1" style="font-size:80%;background-color:#F2FFF2;">780</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.3.1" style="font-size:80%;background-color:#F2FFF2;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.4.1" style="font-size:80%;background-color:#F2FFF2;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.5.1" style="font-size:80%;background-color:#F2FFF2;">78.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.21.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.6.1" style="font-size:80%;background-color:#F2FFF2;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.7.1" style="font-size:80%;background-color:#F2FFF2;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.8.1" style="font-size:80%;background-color:#F2FFF2;">56.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.9.1" style="font-size:80%;background-color:#F2FFF2;">43.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.21.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.10.1" style="font-size:80%;background-color:#F2FFF2;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.11.1" style="font-size:80%;background-color:#F2FFF2;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.12.1" style="font-size:80%;background-color:#F2FFF2;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.13.1" style="font-size:80%;background-color:#F2FFF2;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.21.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.21.14.1" style="font-size:80%;background-color:#F2FFF2;">78.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.22" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.22.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.2.1" style="font-size:80%;background-color:#F2FFF2;">620</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.3.1" style="font-size:80%;background-color:#F2FFF2;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.4.1" style="font-size:80%;background-color:#F2FFF2;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.22.5.1" style="font-size:80%;background-color:#F2FFF2;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.22.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T1.st2.2.2.22.6.1" style="font-size:80%;background-color:#F2FFF2;">79.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.7.1" style="font-size:80%;background-color:#F2FFF2;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.8.1" style="font-size:80%;background-color:#F2FFF2;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.9.1" style="font-size:80%;background-color:#F2FFF2;">42.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.st2.2.2.22.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.10.1" style="font-size:80%;background-color:#F2FFF2;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.11.1" style="font-size:80%;background-color:#F2FFF2;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.12.1" style="font-size:80%;background-color:#F2FFF2;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.13.1" style="font-size:80%;background-color:#F2FFF2;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.st2.2.2.22.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.22.14.1" style="font-size:80%;background-color:#F2FFF2;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.st2.2.2.23" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 8B (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.st2.2.2.23.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.2.1" style="font-size:80%;background-color:#F2FFF2;">308</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.3.1" style="font-size:80%;background-color:#F2FFF2;">42.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.4.1" style="font-size:80%;background-color:#F2FFF2;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.5.1" style="font-size:80%;background-color:#F2FFF2;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.st2.2.2.23.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.6.1" style="font-size:80%;background-color:#F2FFF2;">76.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.7.1" style="font-size:80%;background-color:#F2FFF2;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.8.1" style="font-size:80%;background-color:#F2FFF2;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.9.1" style="font-size:80%;background-color:#F2FFF2;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T1.st2.2.2.23.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.10.1" style="font-size:80%;background-color:#F2FFF2;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.11.1" style="font-size:80%;background-color:#F2FFF2;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.12.1" style="font-size:80%;background-color:#F2FFF2;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.13.1" style="font-size:80%;background-color:#F2FFF2;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T1.st2.2.2.23.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="S4.T1.st2.2.2.23.14.1" style="font-size:80%;background-color:#F2FFF2;">66.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison of various Multimodal Large Language Models (MLLMs) across a range of general multimodal benchmark tasks.  The benchmarks assess the models' capabilities in understanding and integrating information from both visual and textual inputs. The table provides a quantitative evaluation, showing the scores achieved by each model on each benchmark task, allowing for direct comparison of their performance.
> <details>
> <summary>read the caption</summary>
> (a) Results on general multimodal benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.5.5">
<tr class="ltx_tr" id="S4.T2.5.5.5">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.6" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.6.1" style="width:5.5pt;height:23.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.2pt;transform:translate(-8.88pt,-8.88pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.6.1.1"><span class="ltx_text" id="S4.T2.5.5.5.6.1.1.1" style="font-size:80%;">TUNE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.7" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.7.1" style="width:5.5pt;height:17.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.9pt;transform:translate(-6.21pt,-6.21pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.7.1.1"><span class="ltx_text" id="S4.T2.5.5.5.7.1.1.1" style="font-size:80%;">DSM</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.5.8" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.8.1" style="width:5.5pt;height:23.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.8pt;transform:translate(-9.16pt,-9.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.8.1.1"><span class="ltx_text" id="S4.T2.5.5.5.8.1.1.1" style="font-size:80%;">CARD</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.1.1.1.1" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.1.1.1.1.1.1"><span class="ltx_text" id="S4.T2.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T2.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.2.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.2.2.2.2.1.1"><span class="ltx_text" id="S4.T2.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T2.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.9" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.9.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.9.1.1"><span class="ltx_text" id="S4.T2.5.5.5.9.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.10" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.10.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.10.1.1"><span class="ltx_text" id="S4.T2.5.5.5.10.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.11" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.11.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.11.1.1"><span class="ltx_text" id="S4.T2.5.5.5.11.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.3.3.3" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.3.3.3.3.1.1"><span class="ltx_text" id="S4.T2.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T2.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.4.4.4.4" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.4.4.4.4.1.1"><span class="ltx_text" id="S4.T2.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T2.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.12" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.12.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.12.1.1"><span class="ltx_text" id="S4.T2.5.5.5.12.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.5" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.5.1.1"><span class="ltx_text" id="S4.T2.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="S4.T2.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T2.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.13" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.13.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.13.1.1"><span class="ltx_text" id="S4.T2.5.5.5.13.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.14" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.14.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.14.1.1"><span class="ltx_text" id="S4.T2.5.5.5.14.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.15" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.15.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.15.1.1"><span class="ltx_text" id="S4.T2.5.5.5.15.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.16" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.16.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.16.1.1"><span class="ltx_text" id="S4.T2.5.5.5.16.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.17" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.17.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.17.1.1"><span class="ltx_text" id="S4.T2.5.5.5.17.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.18" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.18.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.18.1.1"><span class="ltx_text" id="S4.T2.5.5.5.18.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.5.19" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T2.5.5.5.19.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T2.5.5.5.19.1.1"><span class="ltx_text" id="S4.T2.5.5.5.19.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.6" style="background-color:#F2F2FF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="S4.T2.5.5.6.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.1.1" style="font-size:80%;background-color:#F2F2FF;">LLaVA-NeXT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.2.1" style="font-size:80%;background-color:#F2F2FF;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.3.1" style="font-size:80%;background-color:#F2F2FF;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.4.1" style="font-size:80%;background-color:#F2F2FF;">52.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.5.1" style="font-size:80%;background-color:#F2F2FF;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.6.1" style="font-size:80%;background-color:#F2F2FF;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.7.1" style="font-size:80%;background-color:#F2F2FF;">1552.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.8.1" style="font-size:80%;background-color:#F2F2FF;">331.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.9.1" style="font-size:80%;background-color:#F2F2FF;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.10.1" style="font-size:80%;background-color:#F2F2FF;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.11.1" style="font-size:80%;background-color:#F2F2FF;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.12.1" style="font-size:80%;background-color:#F2F2FF;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.13.1" style="font-size:80%;background-color:#F2F2FF;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.14.1" style="font-size:80%;background-color:#F2F2FF;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.15.1" style="font-size:80%;background-color:#F2F2FF;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.16.1" style="font-size:80%;background-color:#F2F2FF;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.5.5.6.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.6.17.1" style="font-size:80%;background-color:#F2F2FF;">69.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.7">
<td class="ltx_td" id="S4.T2.5.5.7.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td" id="S4.T2.5.5.7.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.7.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.4.1" style="font-size:80%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.5.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.6.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.7.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.8.1" style="font-size:80%;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.9.1" style="font-size:80%;">1529.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.10.1" style="font-size:80%;">323.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.11.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.12.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.13.1" style="font-size:80%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.14.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.15.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.16.1" style="font-size:80%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.17.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.18.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.7.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.7.19.1" style="font-size:80%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.8">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="S4.T2.5.5.8.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.8.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.4.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.5.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.6.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.7.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.8.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.9.1" style="font-size:80%;">1589.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.10.1" style="font-size:80%;">340.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.11.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.12.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.13.1" style="font-size:80%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.14.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.15.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.16.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.17.1" style="font-size:80%;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.18.1" style="font-size:80%;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.8.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.8.19.1" style="font-size:80%;">54.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.9">
<td class="ltx_td" id="S4.T2.5.5.9.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td" id="S4.T2.5.5.9.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.9.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.4.1" style="font-size:80%;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.5.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.6.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.7.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.8.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.9.1" style="font-size:80%;">1538.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.10.1" style="font-size:80%;">351.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.11.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.12.1" style="font-size:80%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.13.1" style="font-size:80%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.14.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.15.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.16.1" style="font-size:80%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.17.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.18.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.9.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.9.19.1" style="font-size:80%;">55.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.10">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T2.5.5.10.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.4.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.5.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.6.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.7.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.8.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.9.1" style="font-size:80%;">1506.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.10.1" style="font-size:80%;">330.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.11.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.12.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.13.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.14.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.15.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.16.1" style="font-size:80%;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.17.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.18.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.10.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.10.19.1" style="font-size:80%;">55.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.11">
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="S4.T2.5.5.11.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T2.5.5.11.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.4.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.5.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.6.1" style="font-size:80%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.7.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.8.1" style="font-size:80%;">45.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.9.1" style="font-size:80%;">1568.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.10.1" style="font-size:80%;">350.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.11.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.12.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.13.1" style="font-size:80%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.14.1" style="font-size:80%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.15.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.16.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.17.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.18.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.5.5.11.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.11.19.1" style="font-size:80%;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.5.5.12">
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T2.5.5.12.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.4.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.5.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.6.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.7.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.8.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.9.1" style="font-size:80%;">1558.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.10.1" style="font-size:80%;">361.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.11.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.12.1" style="font-size:80%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.13.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.14" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.14.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.15" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.15.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.16" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.16.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.17.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.18.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T2.5.5.12.19" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="S4.T2.5.5.12.19.1" style="font-size:80%;">55.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance of various models on vision-centric, knowledge-based, and OCR & chart benchmark tasks.  It shows the scores achieved by different models, including FUSION (with various configurations) and several leading MLLMs, on these specific types of benchmarks.  The metrics used likely assess the models' abilities in visual reasoning, knowledge application, and optical character recognition.
> <details>
> <summary>read the caption</summary>
> (b) Results on Vision centric, Knowledge based, and OCR & Chart benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.5.5">
<tr class="ltx_tr" id="S4.T3.5.5.5">
<td class="ltx_td ltx_border_r" id="S4.T3.5.5.5.6" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.7" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.7.1" style="width:7.0pt;height:23.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.1pt;transform:translate(-8.04pt,-7.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.7.1.1"><span class="ltx_text" id="S4.T3.5.5.5.7.1.1.1" style="font-size:80%;">Stage1</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.8" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.8.1" style="width:7.0pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.16pt,-10.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.8.1.1"><span class="ltx_text" id="S4.T3.5.5.5.8.1.1.1" style="font-size:80%;">Stage1.5</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.5.9" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.9.1" style="width:7.0pt;height:23.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.1pt;transform:translate(-8.04pt,-7.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.9.1.1"><span class="ltx_text" id="S4.T3.5.5.5.9.1.1.1" style="font-size:80%;">Stage2</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.1.1.1.1" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.1.1.1.1.1.1"><span class="ltx_text" id="S4.T3.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T3.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.2.2.2" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.2.2.2.2.1.1"><span class="ltx_text" id="S4.T3.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="S4.T3.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.10" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.10.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.10.1.1"><span class="ltx_text" id="S4.T3.5.5.5.10.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.11" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.11.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.11.1.1"><span class="ltx_text" id="S4.T3.5.5.5.11.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.12" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.12.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.12.1.1"><span class="ltx_text" id="S4.T3.5.5.5.12.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.3.3.3" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.3.3.3.3.1.1"><span class="ltx_text" id="S4.T3.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T3.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.4.4.4" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.4.4.4.4.1.1"><span class="ltx_text" id="S4.T3.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="S4.T3.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.13" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.13.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.13.1.1"><span class="ltx_text" id="S4.T3.5.5.5.13.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.5" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.5.1.1"><span class="ltx_text" id="S4.T3.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="S4.T3.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T3.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.14" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.14.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.14.1.1"><span class="ltx_text" id="S4.T3.5.5.5.14.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.15" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.15.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.15.1.1"><span class="ltx_text" id="S4.T3.5.5.5.15.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.16" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.16.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.16.1.1"><span class="ltx_text" id="S4.T3.5.5.5.16.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.17" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.17.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.17.1.1"><span class="ltx_text" id="S4.T3.5.5.5.17.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.18" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.18.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.18.1.1"><span class="ltx_text" id="S4.T3.5.5.5.18.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.19" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.19.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.19.1.1"><span class="ltx_text" id="S4.T3.5.5.5.19.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5.20" style="padding:1.2pt 5.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="S4.T3.5.5.5.20.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="S4.T3.5.5.5.20.1.1"><span class="ltx_text" id="S4.T3.5.5.5.20.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.6" style="background-color:#F9F9F9;">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.5.5.6.1" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.1.1" style="font-size:80%;background-color:#F9F9F9;">baseline</span></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.5.5.6.2" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_border_tt" id="S4.T3.5.5.6.3" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_tt" id="S4.T3.5.5.6.4" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.5" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.5.1" style="font-size:80%;background-color:#F9F9F9;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.6" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.6.1" style="font-size:80%;background-color:#F9F9F9;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.7" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.7.1" style="font-size:80%;background-color:#F9F9F9;">66.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.8" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.8.1" style="font-size:80%;background-color:#F9F9F9;">88.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.9" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.9.1" style="font-size:80%;background-color:#F9F9F9;">57.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.10" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.10.1" style="font-size:80%;background-color:#F9F9F9;">1544.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.11" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.11.1" style="font-size:80%;background-color:#F9F9F9;">379.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.12" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.12.1" style="font-size:80%;background-color:#F9F9F9;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.13" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.13.1" style="font-size:80%;background-color:#F9F9F9;">84.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.14" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.14.1" style="font-size:80%;background-color:#F9F9F9;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.15" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.15.1" style="font-size:80%;background-color:#F9F9F9;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.16" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.16.1" style="font-size:80%;background-color:#F9F9F9;">77.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.17" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.17.1" style="font-size:80%;background-color:#F9F9F9;">42.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.18" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.18.1" style="font-size:80%;background-color:#F9F9F9;">84.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.19" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.19.1" style="font-size:80%;background-color:#F9F9F9;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.5.6.20" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.6.20.1" style="font-size:80%;background-color:#F9F9F9;">74.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.7.1" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.1.1" style="font-size:80%;">+1.5M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.2" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="S4.T3.5.5.7.3" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_border_r" id="S4.T3.5.5.7.4" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.5" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.5.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.6" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.6.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.7" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.7.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.8" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.8.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.9" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.9.1" style="font-size:80%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.10" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.10.1" style="font-size:80%;">1567.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.11" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.11.1" style="font-size:80%;">386.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.12" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.12.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.13" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.13.1" style="font-size:80%;">83.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.14" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.14.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.15" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.15.1" style="font-size:80%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.16" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.16.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.17" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.17.1" style="font-size:80%;">42.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.18" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.18.1" style="font-size:80%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.19" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.19.1" style="font-size:80%;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.7.20" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.7.20.1" style="font-size:80%;">75.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.5.5.8.1" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.1.1" style="font-size:80%;">+1.0M</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.2" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.3" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="S4.T3.5.5.8.4" style="padding:1.2pt 5.0pt;"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.5" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.5.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.6" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.6.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.7" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.7.1" style="font-size:80%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.8" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.8.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.9" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.9.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.10" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.10.1" style="font-size:80%;">1567.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.11" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.11.1" style="font-size:80%;">408.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.12" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.12.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.13" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.13.1" style="font-size:80%;">81.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.14" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.14.1" style="font-size:80%;">86.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.15" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.15.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.16" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.16.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.17" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.17.1" style="font-size:80%;">43.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.18" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.18.1" style="font-size:80%;">85.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.19" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.19.1" style="font-size:80%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.8.20" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.8.20.1" style="font-size:80%;">74.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5.9">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.5.5.9.1" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.1.1" style="font-size:80%;">+0.9M</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.2" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.3" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="S4.T3.5.5.9.4" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.4.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.5" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.5.1" style="font-size:80%;">80.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.6" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.6.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.7" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.7.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.8" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.8.1" style="font-size:80%;">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.9" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.9.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.10" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.10.1" style="font-size:80%;">1582.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.11" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.11.1" style="font-size:80%;">440.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.12" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.12.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.13" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.13.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.14" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.14.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.15" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.15.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.16" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.16.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.17" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.17.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.18" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.18.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.19" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.19.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S4.T3.5.5.9.20" style="padding:1.2pt 5.0pt;"><span class="ltx_text" id="S4.T3.5.5.9.20.1" style="font-size:80%;">75.8</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of individual model components on overall performance.  The components evaluated are Text-Guided Unified Vision Encoding (TUNE), Context-Aware Recursive Alignment Decoding (CARD), and Dual-Supervised Semantic Mapping (DSM).  By systematically including or excluding these components, the authors quantitatively assess their contribution to various benchmark metrics, providing insights into the effectiveness of each component and their combined impact on multimodal understanding.
> <details>
> <summary>read the caption</summary>
> Table 2: Performance analysis of model components. We evaluate the contribution of different components, including Text-Guided Unified Vision Encoding(TUNE), Context-Aware Recursive Alignment Decoding(CARD), and Dual-supervised Semantic Mapping(DSM)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="p2.10.10.9.9">
<tr class="ltx_tr" id="p2.10.10.9.9.10">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.10.1" style="background-color:#DC5B53;padding:0.8pt 1.0pt;">
<span class="ltx_text" id="p2.10.10.9.9.10.1.1"></span><span class="ltx_text" id="p2.10.10.9.9.10.1.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.10.10.9.9.10.1.2.1">
<span class="ltx_tr" id="p2.10.10.9.9.10.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.10.1.2.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="p2.10.10.9.9.10.1.2.1.1.1.1" style="background-color:#DC5B53;"><span class="ltx_text" id="p2.10.10.9.9.10.1.2.1.1.1.1.1" style="color:#FFFFFF;">Short Captions (21.3%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.10.10.9.9.10.1.3"></span><span class="ltx_text" id="p2.10.10.9.9.10.1.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.2.2.1.1.1">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.2.2.1.1.1.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.2.2.1.1.1.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F8C5C1" stroke="#F8C5C1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.2.2.1.1.1.1.1" style="font-size:80%;"> SynthCount (300.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.3.3.2.2.2">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.3.3.2.2.2.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.3.3.2.2.2.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F29088" stroke="#F29088" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.3.3.2.2.2.1.1" style="font-size:80%;"> SynthSpatial (300.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.4.4.3.3.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.4.4.3.3.3.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.4.4.3.3.3.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#EE695E" stroke="#EE695E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.4.4.3.3.3.1.1" style="font-size:80%;"> SynthText (400.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.5.5.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.5.5.4.4.4.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.5.5.4.4.4.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E33E31" stroke="#E33E31" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.5.5.4.4.4.1.1" style="font-size:80%;"> SynthColor (250.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.6.6.5.5.5">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.6.6.5.5.5.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.6.6.5.5.5.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#CA2A23" stroke="#CA2A23" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.6.6.5.5.5.1.1" style="font-size:80%;"> SynthScene (250.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.7.7.6.6.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.7.7.6.6.6.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.7.7.6.6.6.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#A50E0E" stroke="#A50E0E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.7.7.6.6.6.1.1" style="font-size:80%;"> LLaVA-Pretrain</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.7.7.6.6.6.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="p2.7.7.6.6.6.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.7.7.6.6.6.1.4" style="font-size:80%;"> (558.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.10.10.9.9.11">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.11.1" style="background-color:#FDE08D;padding:0.8pt 1.0pt;">
<span class="ltx_text" id="p2.10.10.9.9.11.1.1"></span><span class="ltx_text" id="p2.10.10.9.9.11.1.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.10.10.9.9.11.1.2.1">
<span class="ltx_tr" id="p2.10.10.9.9.11.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.11.1.2.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="p2.10.10.9.9.11.1.2.1.1.1.1" style="background-color:#FDE08D;"><span class="ltx_text" id="p2.10.10.9.9.11.1.2.1.1.1.1.1" style="color:#FFFFFF;">Long Captions (69.8%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.10.10.9.9.11.1.3"></span><span class="ltx_text" id="p2.10.10.9.9.11.1.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.8.8.7.7.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.8.8.7.7.7.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.8.8.7.7.7.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FDE59F" stroke="#FDE59F" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.8.8.7.7.7.1.1" style="font-size:80%;"> ShareCaptioner </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.8.8.7.7.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="p2.8.8.7.7.7.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.8.8.7.7.7.1.4" style="font-size:80%;"> (1246.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.9.9.8.8.8">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.9.9.8.8.8.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.9.9.8.8.8.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F9B803" stroke="#F9B803" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.9.9.8.8.8.1.1" style="font-size:80%;"> PixelProse </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.9.9.8.8.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="p2.9.9.8.8.8.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.9.9.8.8.8.1.4" style="font-size:80%;"> (5500.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.10.10.9.9.12">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.12.1" style="background-color:#FFC0CB;padding:0.8pt 1.0pt;">
<span class="ltx_text" id="p2.10.10.9.9.12.1.1"></span><span class="ltx_text" id="p2.10.10.9.9.12.1.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.10.10.9.9.12.1.2.1">
<span class="ltx_tr" id="p2.10.10.9.9.12.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.12.1.2.1.1.1" style="padding:0.8pt 1.0pt;"><span class="ltx_text" id="p2.10.10.9.9.12.1.2.1.1.1.1" style="background-color:#FFC0CB;"><span class="ltx_text" id="p2.10.10.9.9.12.1.2.1.1.1.1.1" style="color:#FFFFFF;">Math (8.9%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.10.10.9.9.12.1.3"></span><span class="ltx_text" id="p2.10.10.9.9.12.1.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.10.10.9.9.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.10.10.9.9.9.1" style="padding:0.8pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.10.10.9.9.9.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FFC0CB" stroke="#FFC0CB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.10.10.9.9.9.1.1" style="font-size:80%;"> URSA_Alignment </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.10.10.9.9.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="p2.10.10.9.9.9.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.10.10.9.9.9.1.4" style="font-size:80%;"> (860.0 K)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of synthetic data on the performance of the FUSION model.  It demonstrates how incrementally adding synthetic data at various training stages (Stage 1, Stage 1.5, Stage 2) progressively improves the model's performance across a range of benchmark tasks.  Each row represents a different training configuration, showing the inclusion or exclusion of synthetic data in each stage, and the resulting performance scores. This allows researchers to quantify the contribution of synthetic data to the overall model's effectiveness.
> <details>
> <summary>read the caption</summary>
> Table 3: Impact of synthetic data on performance. We gradually incorporate our generated data into different stage, showing the improvement in performance on various tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="p2.33.33.22.22">
<tr class="ltx_tr" id="p2.12.12.1.1.1">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.12.12.1.1.1.2" style="background-color:#DC5B53;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.12.12.1.1.1.2.1"></span><span class="ltx_text" id="p2.12.12.1.1.1.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.12.12.1.1.1.2.2.1">
<span class="ltx_tr" id="p2.12.12.1.1.1.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.12.12.1.1.1.2.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.12.12.1.1.1.2.2.1.1.1.1" style="background-color:#DC5B53;"><span class="ltx_text" id="p2.12.12.1.1.1.2.2.1.1.1.1.1" style="color:#FFFFFF;">OCR (14.1%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.12.12.1.1.1.2.3"></span><span class="ltx_text" id="p2.12.12.1.1.1.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.12.12.1.1.1.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.12.12.1.1.1.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#3A4BAE" stroke="#3A4BAE" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.12.12.1.1.1.1.1" style="font-size:80%;"> SynthContrastShort (70 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.14.14.3.3.3">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.13.13.2.2.2.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.13.13.2.2.2.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F8C5C1" stroke="#F8C5C1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.13.13.2.2.2.1.1" style="font-size:80%;"> DocVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.13.13.2.2.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a><span class="ltx_text" id="p2.13.13.2.2.2.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.13.13.2.2.2.1.4" style="font-size:80%;"> (100.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.14.14.3.3.3.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.14.14.3.3.3.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#3A4BAE" stroke="#3A4BAE" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.14.14.3.3.3.2.1" style="font-size:80%;"> SynthTextQA (150 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.15.15.4.4.4">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.15.15.4.4.4.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.15.15.4.4.4.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#EE695E" stroke="#EE695E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.15.15.4.4.4.1.1" style="font-size:80%;"> PixmoDoc </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.15.15.4.4.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.15.15.4.4.4.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.15.15.4.4.4.1.4" style="font-size:80%;"> (251.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.15.15.4.4.4.2" style="background-color:#49A864;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.15.15.4.4.4.2.1"></span><span class="ltx_text" id="p2.15.15.4.4.4.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.15.15.4.4.4.2.2.1">
<span class="ltx_tr" id="p2.15.15.4.4.4.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.15.15.4.4.4.2.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.15.15.4.4.4.2.2.1.1.1.1" style="background-color:#49A864;"><span class="ltx_text" id="p2.15.15.4.4.4.2.2.1.1.1.1.1" style="color:#FFFFFF;">General QA (20.1%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.15.15.4.4.4.2.3"></span><span class="ltx_text" id="p2.15.15.4.4.4.2.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.17.17.6.6.6">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.16.16.5.5.5.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.16.16.5.5.5.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#CA2A23" stroke="#CA2A23" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.16.16.5.5.5.1.1" style="font-size:80%;"> SynthDog </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.16.16.5.5.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="p2.16.16.5.5.5.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.16.16.5.5.5.1.4" style="font-size:80%;"> (300.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.17.17.6.6.6.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.17.17.6.6.6.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#90CFA1" stroke="#90CFA1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.17.17.6.6.6.2.1" style="font-size:80%;"> LVISInstruct4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.17.17.6.6.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="p2.17.17.6.6.6.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.17.17.6.6.6.2.4" style="font-size:80%;"> (200.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.18.18.7.7.7">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.18.18.7.7.7.2" style="background-color:#FDE08D;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.18.18.7.7.7.2.1"></span><span class="ltx_text" id="p2.18.18.7.7.7.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.18.18.7.7.7.2.2.1">
<span class="ltx_tr" id="p2.18.18.7.7.7.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.18.18.7.7.7.2.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.18.18.7.7.7.2.2.1.1.1.1" style="background-color:#FDE08D;"><span class="ltx_text" id="p2.18.18.7.7.7.2.2.1.1.1.1.1" style="color:#FFFFFF;">Science (10.0%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.18.18.7.7.7.2.3"></span><span class="ltx_text" id="p2.18.18.7.7.7.2.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.18.18.7.7.7.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.18.18.7.7.7.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#6CC082" stroke="#6CC082" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.18.18.7.7.7.1.1" style="font-size:80%;"> Q-Instruct
 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.18.18.7.7.7.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="p2.18.18.7.7.7.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.18.18.7.7.7.1.4" style="font-size:80%;"> (400.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.20.20.9.9.9">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.19.19.8.8.8.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.19.19.8.8.8.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FEEFC3" stroke="#FEEFC3" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.19.19.8.8.8.1.1" style="font-size:80%;"> MulBurry </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.19.19.8.8.8.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="p2.19.19.8.8.8.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.19.19.8.8.8.1.4" style="font-size:80%;"> (100.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.20.20.9.9.9.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.20.20.9.9.9.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#6CC082" stroke="#6CC082" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.20.20.9.9.9.2.1" style="font-size:80%;"> GPT4Rewrote </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.20.20.9.9.9.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="p2.20.20.9.9.9.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.20.20.9.9.9.2.4" style="font-size:80%;"> (137.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.22.22.11.11.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.21.21.10.10.10.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.21.21.10.10.10.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FDE08D" stroke="#FDE08D" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.21.21.10.10.10.1.1" style="font-size:80%;"> MMathCot </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.21.21.10.10.10.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="p2.21.21.10.10.10.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.21.21.10.10.10.1.4" style="font-size:80%;"> (200.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.22.22.11.11.11.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.22.22.11.11.11.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#2F9F4E" stroke="#2F9F4E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.22.22.11.11.11.2.1" style="font-size:80%;"> PixmoAskAny </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.22.22.11.11.11.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.22.22.11.11.11.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.22.22.11.11.11.2.4" style="font-size:80%;"> (70.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.24.24.13.13.13">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.23.23.12.12.12.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.23.23.12.12.12.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FCD769" stroke="#FCD769" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.23.23.12.12.12.1.1" style="font-size:80%;"> DataEngine </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.23.23.12.12.12.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="p2.23.23.12.12.12.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.23.23.12.12.12.1.4" style="font-size:80%;"> (160.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.24.24.13.13.13.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.24.24.13.13.13.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#1C7F3C" stroke="#1C7F3C" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.24.24.13.13.13.2.1" style="font-size:80%;"> PixmoCapQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.24.24.13.13.13.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.24.24.13.13.13.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.24.24.13.13.13.2.4" style="font-size:80%;"> (160.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.33.33.22.22.23">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.33.33.22.22.23.1" style="background-color:#4C89ED;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.33.33.22.22.23.1.1"></span><span class="ltx_text" id="p2.33.33.22.22.23.1.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.33.33.22.22.23.1.2.1">
<span class="ltx_tr" id="p2.33.33.22.22.23.1.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.33.33.22.22.23.1.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.33.33.22.22.23.1.2.1.1.1.1" style="background-color:#4C89ED;"><span class="ltx_text" id="p2.33.33.22.22.23.1.2.1.1.1.1.1" style="color:#FFFFFF;">Synth QA (21.5%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.33.33.22.22.23.1.3"></span><span class="ltx_text" id="p2.33.33.22.22.23.1.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.33.33.22.22.23.2" style="background-color:#E98801;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.33.33.22.22.23.2.1"></span><span class="ltx_text" id="p2.33.33.22.22.23.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.33.33.22.22.23.2.2.1">
<span class="ltx_tr" id="p2.33.33.22.22.23.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.33.33.22.22.23.2.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.33.33.22.22.23.2.2.1.1.1.1" style="background-color:#E98801;"><span class="ltx_text" id="p2.33.33.22.22.23.2.2.1.1.1.1.1" style="color:#FFFFFF;">Long Captions (29.7%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.33.33.22.22.23.2.3"></span><span class="ltx_text" id="p2.33.33.22.22.23.2.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.26.26.15.15.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.25.25.14.14.14.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.25.25.14.14.14.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#B2C4E9" stroke="#B2C4E9" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.25.25.14.14.14.1.1" style="font-size:80%;"> SynthConvLong (200.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.26.26.15.15.15.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.26.26.15.15.15.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E98801" stroke="#E98801" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.26.26.15.15.15.2.1" style="font-size:80%;"> ALLaVA-Cap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.26.26.15.15.15.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="p2.26.26.15.15.15.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.26.26.15.15.15.2.4" style="font-size:80%;"> (700.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.28.28.17.17.17">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.27.27.16.16.16.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.27.27.16.16.16.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#5E97F5" stroke="#5E97F5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.27.27.16.16.16.1.1" style="font-size:80%;"> SynthConvShort (200.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.28.28.17.17.17.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.28.28.17.17.17.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E37400" stroke="#E37400" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.28.28.17.17.17.2.1" style="font-size:80%;"> PixmoCap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.28.28.17.17.17.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.28.28.17.17.17.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.28.28.17.17.17.2.4" style="font-size:80%;"> (640.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.29.29.18.18.18">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.29.29.18.18.18.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.29.29.18.18.18.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#397AE4" stroke="#397AE4" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.29.29.18.18.18.1.1" style="font-size:80%;"> SynthMultiChoice (200.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.29.29.18.18.18.2" style="background-color:#FFC0CB;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.29.29.18.18.18.2.1"></span><span class="ltx_text" id="p2.29.29.18.18.18.2.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.29.29.18.18.18.2.2.1">
<span class="ltx_tr" id="p2.29.29.18.18.18.2.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.29.29.18.18.18.2.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.29.29.18.18.18.2.2.1.1.1.1" style="background-color:#FFC0CB;"><span class="ltx_text" id="p2.29.29.18.18.18.2.2.1.1.1.1.1" style="color:#FFFFFF;">Language (4.3%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.29.29.18.18.18.2.3"></span><span class="ltx_text" id="p2.29.29.18.18.18.2.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.31.31.20.20.20">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.30.30.19.19.19.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.30.30.19.19.19.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#5061BB" stroke="#5061BB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.30.30.19.19.19.1.1" style="font-size:80%;"> SynthReasoning (100.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.31.31.20.20.20.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.31.31.20.20.20.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FFC0CB" stroke="#FFC0CB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.31.31.20.20.20.2.1" style="font-size:80%;"> OpenOrca </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.31.31.20.20.20.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="p2.31.31.20.20.20.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.31.31.20.20.20.2.4" style="font-size:80%;"> (100.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.33.33.22.22.22">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.32.32.21.21.21.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.32.32.21.21.21.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#3F51B5" stroke="#3F51B5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.32.32.21.21.21.1.1" style="font-size:80%;"> SynthContrastLong (70.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.33.33.22.22.22.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.33.33.22.22.22.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FFC0CB" stroke="#FFC0CB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.33.33.22.22.22.2.1" style="font-size:80%;"> MathInstruct </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.33.33.22.22.22.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib78" title=""><span class="ltx_text" style="font-size:90%;">78</span></a><span class="ltx_text" id="p2.33.33.22.22.22.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.33.33.22.22.22.2.4" style="font-size:80%;"> (100.0 K)</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of different model components on overall performance.  It specifically examines the contributions of three key components: Text-Guided Unified Vision Encoding (TUNE), Context-Aware Recursive Alignment Decoding (CARD), and Dual-Supervised Semantic Mapping (DSM). By systematically removing each component, the study quantifies its individual contribution to various benchmark metrics. This allows researchers to understand the relative importance of each component and how they interact to achieve the final performance of the model.
> <details>
> <summary>read the caption</summary>
> Table 4: Performance analysis of model components. We evaluate the contribution of different components, including Text-Guided Unified Vision Encoding(TUNE), Context-Aware Recursive Alignment Decoding(CARD), and Dual-supervised Semantic Mapping(DSM)
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="p2.80.47.46.46">
<tr class="ltx_tr" id="p2.37.4.3.3.3">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.37.4.3.3.3.4" style="background-color:#DC5B53;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.37.4.3.3.3.4.1"></span><span class="ltx_text" id="p2.37.4.3.3.3.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.37.4.3.3.3.4.2.1">
<span class="ltx_tr" id="p2.37.4.3.3.3.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.37.4.3.3.3.4.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.37.4.3.3.3.4.2.1.1.1.1" style="background-color:#DC5B53;"><span class="ltx_text" id="p2.37.4.3.3.3.4.2.1.1.1.1.1" style="color:#FFFFFF;">Synth QA (12.3%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.37.4.3.3.3.4.3"></span><span class="ltx_text" id="p2.37.4.3.3.3.4.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.35.2.1.1.1.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.35.2.1.1.1.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FBC31F" stroke="#FBC31F" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.35.2.1.1.1.1.1" style="font-size:80%;"> WikiSQL </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.35.2.1.1.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib86" title=""><span class="ltx_text" style="font-size:90%;">86</span></a><span class="ltx_text" id="p2.35.2.1.1.1.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.35.2.1.1.1.1.4" style="font-size:80%;"> (74.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.36.3.2.2.2.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.36.3.2.2.2.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#ADB4D7" stroke="#ADB4D7" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.36.3.2.2.2.2.1" style="font-size:80%;"> MulBerry </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.36.3.2.2.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib74" title=""><span class="ltx_text" style="font-size:90%;">74</span></a><span class="ltx_text" id="p2.36.3.2.2.2.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.36.3.2.2.2.2.4" style="font-size:80%;"> (270.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.37.4.3.3.3.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.37.4.3.3.3.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#6CC082" stroke="#6CC082" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.37.4.3.3.3.3.1" style="font-size:80%;"> LLaVA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.37.4.3.3.3.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="p2.37.4.3.3.3.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.37.4.3.3.3.3.4" style="font-size:80%;"> (665.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.41.8.7.7.7">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.38.5.4.4.4.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.38.5.4.4.4.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F8C5C1" stroke="#F8C5C1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.38.5.4.4.4.1.1" style="font-size:80%;"> SynthMultiChoice (450.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.39.6.5.5.5.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.39.6.5.5.5.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FBBE0D" stroke="#FBBE0D" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.39.6.5.5.5.2.1" style="font-size:80%;"> WTQ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.39.6.5.5.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib58" title=""><span class="ltx_text" style="font-size:90%;">58</span></a><span class="ltx_text" id="p2.39.6.5.5.5.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.39.6.5.5.5.2.4" style="font-size:80%;"> (38.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.40.7.6.6.6.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.40.7.6.6.6.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#B2C4E9" stroke="#B2C4E9" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.40.7.6.6.6.3.1" style="font-size:80%;"> MMathCot </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.40.7.6.6.6.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="p2.40.7.6.6.6.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.40.7.6.6.6.3.4" style="font-size:80%;"> (640.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.41.8.7.7.7.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.41.8.7.7.7.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#6CC082" stroke="#6CC082" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.41.8.7.7.7.4.1" style="font-size:80%;"> GPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.41.8.7.7.7.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib34" title=""><span class="ltx_text" style="font-size:90%;">34</span></a><span class="ltx_text" id="p2.41.8.7.7.7.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.41.8.7.7.7.4.4" style="font-size:80%;"> (8.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.45.12.11.11.11">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.42.9.8.8.8.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.42.9.8.8.8.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#EE695E" stroke="#EE695E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.42.9.8.8.8.1.1" style="font-size:80%;"> SynthConvLong (150.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.43.10.9.9.9.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.43.10.9.9.9.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F9B803" stroke="#F9B803" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.43.10.9.9.9.2.1" style="font-size:80%;"> IconQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.43.10.9.9.9.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="p2.43.10.9.9.9.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.43.10.9.9.9.2.4" style="font-size:80%;"> (27.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.44.11.10.10.10.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.44.11.10.10.10.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#5E97F5" stroke="#5E97F5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.44.11.10.10.10.3.1" style="font-size:80%;"> ScienceQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.44.11.10.10.10.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib50" title=""><span class="ltx_text" style="font-size:90%;">50</span></a><span class="ltx_text" id="p2.44.11.10.10.10.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.44.11.10.10.10.3.4" style="font-size:80%;"> (6.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.45.12.11.11.11.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.45.12.11.11.11.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#46B062" stroke="#46B062" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.45.12.11.11.11.4.1" style="font-size:80%;"> ShareGPT4V </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.45.12.11.11.11.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="p2.45.12.11.11.11.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.45.12.11.11.11.4.4" style="font-size:80%;"> (90.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.49.16.15.15.15">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.46.13.12.12.12.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.46.13.12.12.12.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#CA2A23" stroke="#CA2A23" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.46.13.12.12.12.1.1" style="font-size:80%;"> SynthConvShort (250.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.47.14.13.13.13.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.47.14.13.13.13.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F7B103" stroke="#F7B103" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.47.14.13.13.13.2.1" style="font-size:80%;"> Chart2Text </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.47.14.13.13.13.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib29" title=""><span class="ltx_text" style="font-size:90%;">29</span></a><span class="ltx_text" id="p2.47.14.13.13.13.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.47.14.13.13.13.2.4" style="font-size:80%;"> (25.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.48.15.14.14.14.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.48.15.14.14.14.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#5E97F5" stroke="#5E97F5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.48.15.14.14.14.3.1" style="font-size:80%;"> PathVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.48.15.14.14.14.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib25" title=""><span class="ltx_text" style="font-size:90%;">25</span></a><span class="ltx_text" id="p2.48.15.14.14.14.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.48.15.14.14.14.3.4" style="font-size:80%;"> (32.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.49.16.15.15.15.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.49.16.15.15.15.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#2F9F4E" stroke="#2F9F4E" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.49.16.15.15.15.4.1" style="font-size:80%;"> VizWiz </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.49.16.15.15.15.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="p2.49.16.15.15.15.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.49.16.15.15.15.4.4" style="font-size:80%;"> (20.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.52.19.18.18.18">
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.52.19.18.18.18.4" style="background-color:#FDE08D;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.52.19.18.18.18.4.1"></span><span class="ltx_text" id="p2.52.19.18.18.18.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.52.19.18.18.18.4.2.1">
<span class="ltx_tr" id="p2.52.19.18.18.18.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.52.19.18.18.18.4.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.52.19.18.18.18.4.2.1.1.1.1" style="background-color:#FDE08D;"><span class="ltx_text" id="p2.52.19.18.18.18.4.2.1.1.1.1.1" style="color:#FFFFFF;">OCR (28.9%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.52.19.18.18.18.4.3"></span><span class="ltx_text" id="p2.52.19.18.18.18.4.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.50.17.16.16.16.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.50.17.16.16.16.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F5AA03" stroke="#F5AA03" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.50.17.16.16.16.1.1" style="font-size:80%;"> TabMWP </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.50.17.16.16.16.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="p2.50.17.16.16.16.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.50.17.16.16.16.1.4" style="font-size:80%;"> (23.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.51.18.17.17.17.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.51.18.17.17.17.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#397AE4" stroke="#397AE4" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.51.18.17.17.17.2.1" style="font-size:80%;"> DataEngine </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.51.18.17.17.17.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a><span class="ltx_text" id="p2.51.18.17.17.17.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.51.18.17.17.17.2.4" style="font-size:80%;"> (160.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.52.19.18.18.18.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.52.19.18.18.18.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#258F45" stroke="#258F45" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.52.19.18.18.18.3.1" style="font-size:80%;"> Visual7w </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.52.19.18.18.18.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib88" title=""><span class="ltx_text" style="font-size:90%;">88</span></a><span class="ltx_text" id="p2.52.19.18.18.18.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.52.19.18.18.18.3.4" style="font-size:80%;"> (14.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.56.23.22.22.22">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.53.20.19.19.19.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.53.20.19.19.19.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FEEFC3" stroke="#FEEFC3" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.53.20.19.19.19.1.1" style="font-size:80%;"> DocMatix </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.53.20.19.19.19.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="p2.53.20.19.19.19.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.53.20.19.19.19.1.4" style="font-size:80%;"> (920.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.54.21.20.20.20.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.54.21.20.20.20.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F5AA03" stroke="#F5AA03" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.54.21.20.20.20.2.1" style="font-size:80%;"> LLAVAR  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.54.21.20.20.20.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib83" title=""><span class="ltx_text" style="font-size:90%;">83</span></a><span class="ltx_text" id="p2.54.21.20.20.20.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.54.21.20.20.20.2.4" style="font-size:80%;"> (20.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.55.22.21.21.21.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.55.22.21.21.21.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#397AE4" stroke="#397AE4" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.55.22.21.21.21.3.1" style="font-size:80%;"> GeoQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.55.22.21.21.21.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib21" title=""><span class="ltx_text" style="font-size:90%;">21</span></a><span class="ltx_text" id="p2.55.22.21.21.21.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.55.22.21.21.21.3.4" style="font-size:80%;"> (170.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.56.23.22.22.22.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.56.23.22.22.22.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#258F45" stroke="#258F45" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.56.23.22.22.22.4.1" style="font-size:80%;"> LNQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.56.23.22.22.22.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib59" title=""><span class="ltx_text" style="font-size:90%;">59</span></a><span class="ltx_text" id="p2.56.23.22.22.22.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.56.23.22.22.22.4.4" style="font-size:80%;"> (400.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.59.26.25.25.25">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.57.24.23.23.23.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.57.24.23.23.23.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FDEAB1" stroke="#FDEAB1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.57.24.23.23.23.1.1" style="font-size:80%;"> PixmoDoc </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.57.24.23.23.23.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.57.24.23.23.23.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.57.24.23.23.23.1.4" style="font-size:80%;"> (251.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.58.25.24.24.24.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.58.25.24.24.24.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#F09D02" stroke="#F09D02" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.58.25.24.24.24.2.1" style="font-size:80%;"> ST-VQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.58.25.24.24.24.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="p2.58.25.24.24.24.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.58.25.24.24.24.2.4" style="font-size:80%;"> (17.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.59.26.25.25.25.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.59.26.25.25.25.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#5061BB" stroke="#5061BB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.59.26.25.25.25.3.1" style="font-size:80%;"> Math Vision </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.59.26.25.25.25.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib67" title=""><span class="ltx_text" style="font-size:90%;">67</span></a><span class="ltx_text" id="p2.59.26.25.25.25.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.59.26.25.25.25.3.4" style="font-size:80%;"> (3.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.59.26.25.25.25.4" style="background-color:#008080;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.59.26.25.25.25.4.1"></span><span class="ltx_text" id="p2.59.26.25.25.25.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.59.26.25.25.25.4.2.1">
<span class="ltx_tr" id="p2.59.26.25.25.25.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.59.26.25.25.25.4.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.59.26.25.25.25.4.2.1.1.1.1" style="background-color:#008080;"><span class="ltx_text" id="p2.59.26.25.25.25.4.2.1.1.1.1.1" style="color:#FFFFFF;">Counting (3.6%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.59.26.25.25.25.4.3"></span><span class="ltx_text" id="p2.59.26.25.25.25.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.63.30.29.29.29">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.60.27.26.26.26.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.60.27.26.26.26.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FDE59F" stroke="#FDE59F" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.60.27.26.26.26.1.1" style="font-size:80%;"> DVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.60.27.26.26.26.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib28" title=""><span class="ltx_text" style="font-size:90%;">28</span></a><span class="ltx_text" id="p2.60.27.26.26.26.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.60.27.26.26.26.1.4" style="font-size:80%;"> (120.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.61.28.27.27.27.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.61.28.27.27.27.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#EE9501" stroke="#EE9501" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.61.28.27.27.27.2.1" style="font-size:80%;"> RenderedText  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.61.28.27.27.27.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib70" title=""><span class="ltx_text" style="font-size:90%;">70</span></a><span class="ltx_text" id="p2.61.28.27.27.27.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.61.28.27.27.27.2.4" style="font-size:80%;"> (10.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.62.29.28.28.28.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.62.29.28.28.28.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#3F51B5" stroke="#3F51B5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.62.29.28.28.28.3.1" style="font-size:80%;"> RAVEN  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.62.29.28.28.28.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a><span class="ltx_text" id="p2.62.29.28.28.28.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.62.29.28.28.28.3.4" style="font-size:80%;"> (42.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.63.30.29.29.29.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.63.30.29.29.29.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#008080" stroke="#008080" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.63.30.29.29.29.4.1" style="font-size:80%;"> CLEVR </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.63.30.29.29.29.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="p2.63.30.29.29.29.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.63.30.29.29.29.4.4" style="font-size:80%;"> (150.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.67.34.33.33.33">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.64.31.30.30.30.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.64.31.30.30.30.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FDE08D" stroke="#FDE08D" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.64.31.30.30.30.1.1" style="font-size:80%;"> DocVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.64.31.30.30.30.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a><span class="ltx_text" id="p2.64.31.30.30.30.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.64.31.30.30.30.1.4" style="font-size:80%;"> (39.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.65.32.31.31.31.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.65.32.31.31.31.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#EC8F01" stroke="#EC8F01" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.65.32.31.31.31.2.1" style="font-size:80%;"> VisText </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.65.32.31.31.31.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="p2.65.32.31.31.31.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.65.32.31.31.31.2.4" style="font-size:80%;"> (10.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.66.33.32.32.32.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.66.33.32.32.32.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#3F51B5" stroke="#3F51B5" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.66.33.32.32.32.3.1" style="font-size:80%;"> GeomVerse </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.66.33.32.32.32.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="p2.66.33.32.32.32.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.66.33.32.32.32.3.4" style="font-size:80%;"> (9.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.67.34.33.33.33.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.67.34.33.33.33.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#008B8B" stroke="#008B8B" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.67.34.33.33.33.4.1" style="font-size:80%;"> TallyQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.67.34.33.33.33.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="p2.67.34.33.33.33.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.67.34.33.33.33.4.4" style="font-size:80%;"> (100.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.69.36.35.35.35">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.68.35.34.34.34.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.68.35.34.34.34.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FCDB7B" stroke="#FCDB7B" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.68.35.34.34.34.1.1" style="font-size:80%;"> ChartQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.68.35.34.34.34.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib55" title=""><span class="ltx_text" style="font-size:90%;">55</span></a><span class="ltx_text" id="p2.68.35.34.34.34.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.68.35.34.34.34.1.4" style="font-size:80%;"> (28.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.69.36.35.35.35.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.69.36.35.35.35.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E98801" stroke="#E98801" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.69.36.35.35.35.2.1" style="font-size:80%;"> FinQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.69.36.35.35.35.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="p2.69.36.35.35.35.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.69.36.35.35.35.2.4" style="font-size:80%;"> (5.2 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.69.36.35.35.35.3" style="background-color:#FFC0CB;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.69.36.35.35.35.3.1"></span><span class="ltx_text" id="p2.69.36.35.35.35.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.69.36.35.35.35.3.2.1">
<span class="ltx_tr" id="p2.69.36.35.35.35.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.69.36.35.35.35.3.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.69.36.35.35.35.3.2.1.1.1.1" style="background-color:#FFC0CB;"><span class="ltx_text" id="p2.69.36.35.35.35.3.2.1.1.1.1.1" style="color:#FFFFFF;">Long Captions (5.8%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.69.36.35.35.35.3.3"></span><span class="ltx_text" id="p2.69.36.35.35.35.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.69.36.35.35.35.4" style="background-color:#9C2DB1;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.69.36.35.35.35.4.1"></span><span class="ltx_text" id="p2.69.36.35.35.35.4.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.69.36.35.35.35.4.2.1">
<span class="ltx_tr" id="p2.69.36.35.35.35.4.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.69.36.35.35.35.4.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.69.36.35.35.35.4.2.1.1.1.1" style="background-color:#9C2DB1;"><span class="ltx_text" id="p2.69.36.35.35.35.4.2.1.1.1.1.1" style="color:#FFFFFF;">Language (2.9%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.69.36.35.35.35.4.3"></span><span class="ltx_text" id="p2.69.36.35.35.35.4.4" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="p2.73.40.39.39.39">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.70.37.36.36.36.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.70.37.36.36.36.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FCD769" stroke="#FCD769" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.70.37.36.36.36.1.1" style="font-size:80%;"> AI2D </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.70.37.36.36.36.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib31" title=""><span class="ltx_text" style="font-size:90%;">31</span></a><span class="ltx_text" id="p2.70.37.36.36.36.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.70.37.36.36.36.1.4" style="font-size:80%;"> (15.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.71.38.37.37.37.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.71.38.37.37.37.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E78100" stroke="#E78100" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.71.38.37.37.37.2.1" style="font-size:80%;"> InfoVQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.71.38.37.37.37.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib6" title=""><span class="ltx_text" style="font-size:90%;">6</span></a><span class="ltx_text" id="p2.71.38.37.37.37.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.71.38.37.37.37.2.4" style="font-size:80%;"> (2.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.72.39.38.38.38.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.72.39.38.38.38.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FFC0CB" stroke="#FFC0CB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.72.39.38.38.38.3.1" style="font-size:80%;"> ALLaVA-Cap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.72.39.38.38.38.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="p2.72.39.38.38.38.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.72.39.38.38.38.3.4" style="font-size:80%;"> (250.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.73.40.39.39.39.4" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.73.40.39.39.39.4.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#9C2DB1" stroke="#9C2DB1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.73.40.39.39.39.4.1" style="font-size:80%;"> OpenOrca  </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.73.40.39.39.39.4.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="p2.73.40.39.39.39.4.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.73.40.39.39.39.4.4" style="font-size:80%;"> (200.0 K)</span>
</td>
</tr>
<tr class="ltx_tr" id="p2.76.43.42.42.42">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.74.41.40.40.40.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.74.41.40.40.40.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FCD155" stroke="#FCD155" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.74.41.40.40.40.1.1" style="font-size:80%;"> ArxivQA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.74.41.40.40.40.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="p2.74.41.40.40.40.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.74.41.40.40.40.1.4" style="font-size:80%;"> (100.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.75.42.41.41.41.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.75.42.41.41.41.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E57A00" stroke="#E57A00" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.75.42.41.41.41.2.1" style="font-size:80%;"> TAT-QA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.75.42.41.41.41.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib87" title=""><span class="ltx_text" style="font-size:90%;">87</span></a><span class="ltx_text" id="p2.75.42.41.41.41.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.75.42.41.41.41.2.4" style="font-size:80%;"> (2.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.76.43.42.42.42.3" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.76.43.42.42.42.3.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FFC0CB" stroke="#FFC0CB" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.76.43.42.42.42.3.1" style="font-size:80%;"> PixmoCap </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.76.43.42.42.42.3.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="p2.76.43.42.42.42.3.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.76.43.42.42.42.3.4" style="font-size:80%;"> (150.0 K)</span>
</td>
<td class="ltx_td" id="p2.76.43.42.42.42.4" style="padding:0.4pt 1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="p2.78.45.44.44.44">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.77.44.43.43.43.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.77.44.43.43.43.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FBCD43" stroke="#FBCD43" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.77.44.43.43.43.1.1" style="font-size:80%;"> ScreenQA (79.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.78.45.44.44.44.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.78.45.44.44.44.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#E37400" stroke="#E37400" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.78.45.44.44.44.2.1" style="font-size:80%;"> HiTab </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.78.45.44.44.44.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="p2.78.45.44.44.44.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.78.45.44.44.44.2.4" style="font-size:80%;"> (2.5 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.78.45.44.44.44.3" style="background-color:#49A864;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.78.45.44.44.44.3.1"></span><span class="ltx_text" id="p2.78.45.44.44.44.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.78.45.44.44.44.3.2.1">
<span class="ltx_tr" id="p2.78.45.44.44.44.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.78.45.44.44.44.3.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.78.45.44.44.44.3.2.1.1.1.1" style="background-color:#49A864;"><span class="ltx_text" id="p2.78.45.44.44.44.3.2.1.1.1.1.1" style="color:#FFFFFF;">General QA (27.4%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.78.45.44.44.44.3.3"></span><span class="ltx_text" id="p2.78.45.44.44.44.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td" id="p2.78.45.44.44.44.4" style="padding:0.4pt 1.0pt;"></td>
</tr>
<tr class="ltx_tr" id="p2.80.47.46.46.46">
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.79.46.45.45.45.1" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.79.46.45.45.45.1.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#FBC831" stroke="#FBC831" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.79.46.45.45.45.1.1" style="font-size:80%;"> SynthDog </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.79.46.45.45.45.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="p2.79.46.45.45.45.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.79.46.45.45.45.1.4" style="font-size:80%;"> (200.0 K)</span>
</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.80.47.46.46.46.3" style="background-color:#4C89ED;padding:0.4pt 1.0pt;">
<span class="ltx_text" id="p2.80.47.46.46.46.3.1"></span><span class="ltx_text" id="p2.80.47.46.46.46.3.2" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="p2.80.47.46.46.46.3.2.1">
<span class="ltx_tr" id="p2.80.47.46.46.46.3.2.1.1">
<span class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left" id="p2.80.47.46.46.46.3.2.1.1.1" style="padding:0.4pt 1.0pt;"><span class="ltx_text" id="p2.80.47.46.46.46.3.2.1.1.1.1" style="background-color:#4C89ED;"><span class="ltx_text" id="p2.80.47.46.46.46.3.2.1.1.1.1.1" style="color:#FFFFFF;">Science (19.2%)</span></span></span></span>
</span></span><span class="ltx_text" id="p2.80.47.46.46.46.3.3"></span><span class="ltx_text" id="p2.80.47.46.46.46.3.4" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_left" id="p2.80.47.46.46.46.2" style="padding:0.4pt 1.0pt;">
<svg class="ltx_picture" height="8.3" id="p2.80.47.46.46.46.2.pic1" overflow="visible" version="1.1" width="8.3"><g fill="#90CFA1" stroke="#90CFA1" stroke-width="0.4pt" transform="translate(0,8.3) matrix(1 0 0 -1 0 0)"><path d="M 0 0 M 0 0 L 0 8.3 L 8.3 8.3 L 8.3 0 Z M 8.3 8.3" style="stroke:none"></path></g></svg><span class="ltx_text" id="p2.80.47.46.46.46.2.1" style="font-size:80%;"> ALLaVA-QA </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="p2.80.47.46.46.46.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.09925v1#bib.bib7" title=""><span class="ltx_text" style="font-size:90%;">7</span></a><span class="ltx_text" id="p2.80.47.46.46.46.2.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="p2.80.47.46.46.46.2.4" style="font-size:80%;"> (700.0 K)</span>
</td>
<td class="ltx_td" id="p2.80.47.46.46.46.4" style="padding:0.4pt 1.0pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the impact of the Interaction Layer on model performance, specifically when utilizing latent tokens. It compares model performance across different configurations: with and without the interaction layer, and with varying numbers of latent tokens. The results highlight the contribution of the interaction layer to improved performance, particularly in tasks requiring complex reasoning and understanding of visual and textual information.
> <details>
> <summary>read the caption</summary>
> Table 5: Impact of the Interaction Layer. We investigate the effect of the Interaction Layer on model performance, specifically in scenarios where Latent Tokens are utilized.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T4.5.5">
<tr class="ltx_tr" id="A1.T4.5.5.5">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.6" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.6.1" style="width:5.5pt;height:23.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.2pt;transform:translate(-8.88pt,-8.88pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.6.1.1"><span class="ltx_text" id="A1.T4.5.5.5.6.1.1.1" style="font-size:80%;">TUNE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.7" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.7.1" style="width:5.5pt;height:17.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:17.9pt;transform:translate(-6.21pt,-6.21pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.7.1.1"><span class="ltx_text" id="A1.T4.5.5.5.7.1.1.1" style="font-size:80%;">DSM</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.5.8" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.8.1" style="width:5.5pt;height:23.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.8pt;transform:translate(-9.16pt,-9.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.8.1.1"><span class="ltx_text" id="A1.T4.5.5.5.8.1.1.1" style="font-size:80%;">CARD</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.1.1.1.1" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.1.1.1.1.1.1"><span class="ltx_text" id="A1.T4.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T4.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T4.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.2.2.2.2" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.2.2.2.2.1.1"><span class="ltx_text" id="A1.T4.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T4.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T4.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.9" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.9.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.9.1.1"><span class="ltx_text" id="A1.T4.5.5.5.9.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.10" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.10.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.10.1.1"><span class="ltx_text" id="A1.T4.5.5.5.10.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.11" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.11.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.11.1.1"><span class="ltx_text" id="A1.T4.5.5.5.11.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.3.3.3.3" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.3.3.3.3.1.1"><span class="ltx_text" id="A1.T4.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T4.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T4.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.4.4.4.4" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.4.4.4.4.1.1"><span class="ltx_text" id="A1.T4.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T4.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T4.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.12" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.12.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.12.1.1"><span class="ltx_text" id="A1.T4.5.5.5.12.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.5" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.5.1.1"><span class="ltx_text" id="A1.T4.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T4.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T4.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.13" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.13.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.13.1.1"><span class="ltx_text" id="A1.T4.5.5.5.13.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.14" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.14.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.14.1.1"><span class="ltx_text" id="A1.T4.5.5.5.14.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.15" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.15.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.15.1.1"><span class="ltx_text" id="A1.T4.5.5.5.15.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.16" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.16.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.16.1.1"><span class="ltx_text" id="A1.T4.5.5.5.16.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.17" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.17.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.17.1.1"><span class="ltx_text" id="A1.T4.5.5.5.17.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.18" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.18.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.18.1.1"><span class="ltx_text" id="A1.T4.5.5.5.18.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.5.19" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T4.5.5.5.19.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T4.5.5.5.19.1.1"><span class="ltx_text" id="A1.T4.5.5.5.19.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="19" id="A1.T4.5.5.6.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.5.5.6.1.1" style="font-size:80%;background-color:#F2F2F2;">Vicuna-7B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.7" style="background-color:#F2F2FF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T4.5.5.7.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.1.1" style="font-size:80%;background-color:#F2F2FF;">LLaVA-NeXT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.2.1" style="font-size:80%;background-color:#F2F2FF;">68.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.3.1" style="font-size:80%;background-color:#F2F2FF;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.4.1" style="font-size:80%;background-color:#F2F2FF;">59.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.5.1" style="font-size:80%;background-color:#F2F2FF;">87.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.6.1" style="font-size:80%;background-color:#F2F2FF;">40.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.7.1" style="font-size:80%;background-color:#F2F2FF;">1540.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.8.1" style="font-size:80%;background-color:#F2F2FF;">319.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.9.1" style="font-size:80%;background-color:#F2F2FF;">70.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.10.1" style="font-size:80%;background-color:#F2F2FF;">79.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.11.1" style="font-size:80%;background-color:#F2F2FF;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.12.1" style="font-size:80%;background-color:#F2F2FF;">62.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.13.1" style="font-size:80%;background-color:#F2F2FF;">64.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.14.1" style="font-size:80%;background-color:#F2F2FF;">39.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.15.1" style="font-size:80%;background-color:#F2F2FF;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.16.1" style="font-size:80%;background-color:#F2F2FF;">67.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.7.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.7.17.1" style="font-size:80%;background-color:#F2F2FF;">64.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.8">
<td class="ltx_td" id="A1.T4.5.5.8.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td" id="A1.T4.5.5.8.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.8.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.4.1" style="font-size:80%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.5.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.6.1" style="font-size:80%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.7.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.8.1" style="font-size:80%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.9.1" style="font-size:80%;">1526.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.10.1" style="font-size:80%;">298.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.11.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.12.1" style="font-size:80%;">73.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.13.1" style="font-size:80%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.14.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.15.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.16.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.17.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.18.1" style="font-size:80%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.8.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.8.19.1" style="font-size:80%;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T4.5.5.9.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.9.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.4.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.5.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.6.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.7.1" style="font-size:80%;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.8.1" style="font-size:80%;">36.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.9.1" style="font-size:80%;">1548.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.10.1" style="font-size:80%;">317.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.11.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.12.1" style="font-size:80%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.13.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.14.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.15.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.16.1" style="font-size:80%;">36.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.17.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.18.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.9.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.9.19.1" style="font-size:80%;">52.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.10">
<td class="ltx_td" id="A1.T4.5.5.10.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td" id="A1.T4.5.5.10.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.10.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.4.1" style="font-size:80%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.5.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.6.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.7.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.8.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.9.1" style="font-size:80%;">1543.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.10.1" style="font-size:80%;">309.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.11.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.12.1" style="font-size:80%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.13.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.14.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.15.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.16.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.17.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.18.1" style="font-size:80%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.10.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.10.19.1" style="font-size:80%;">52.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.11">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.11.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.4.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.5.1" style="font-size:80%;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.6.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.7.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.8.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.9.1" style="font-size:80%;">1575.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.10.1" style="font-size:80%;">347.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.11.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.12.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.13.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.14.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.15.1" style="font-size:80%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.16.1" style="font-size:80%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.17.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.18.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.11.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.11.19.1" style="font-size:80%;">51.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.12">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T4.5.5.12.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.12.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.4.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.5.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.6.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.7.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.8.1" style="font-size:80%;">37.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.9.1" style="font-size:80%;">1550.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.10.1" style="font-size:80%;">322.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.11.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.12.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.13.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.14.1" style="font-size:80%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.15.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.16.1" style="font-size:80%;">36.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.17.1" style="font-size:80%;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.18.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.12.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.12.19.1" style="font-size:80%;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.13">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.13.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.4.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.5.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.6.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.7.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.8.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.9.1" style="font-size:80%;">1564.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.10.1" style="font-size:80%;">326.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.11.1" style="font-size:80%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.12.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.13.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.14.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.15.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.16.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.17.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.18.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.13.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.13.19.1" style="font-size:80%;">52.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.14" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="19" id="A1.T4.5.5.14.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T4.5.5.14.1.1" style="font-size:80%;background-color:#F2F2F2;">LLaMA3-8B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.15" style="background-color:#F2F2FF;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="3" id="A1.T4.5.5.15.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.1.1" style="font-size:80%;background-color:#F2F2FF;">LLaVA-NeXT</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.2.1" style="font-size:80%;background-color:#F2F2FF;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.3.1" style="font-size:80%;background-color:#F2F2FF;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.4.1" style="font-size:80%;background-color:#F2F2FF;">52.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.5.1" style="font-size:80%;background-color:#F2F2FF;">87.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.6.1" style="font-size:80%;background-color:#F2F2FF;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.7.1" style="font-size:80%;background-color:#F2F2FF;">1552.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.8.1" style="font-size:80%;background-color:#F2F2FF;">331.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.9.1" style="font-size:80%;background-color:#F2F2FF;">74.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.10.1" style="font-size:80%;background-color:#F2F2FF;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.11.1" style="font-size:80%;background-color:#F2F2FF;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.12.1" style="font-size:80%;background-color:#F2F2FF;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.13.1" style="font-size:80%;background-color:#F2F2FF;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.14.1" style="font-size:80%;background-color:#F2F2FF;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.15.1" style="font-size:80%;background-color:#F2F2FF;">77.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.16.1" style="font-size:80%;background-color:#F2F2FF;">69.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T4.5.5.15.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.15.17.1" style="font-size:80%;background-color:#F2F2FF;">69.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.16">
<td class="ltx_td" id="A1.T4.5.5.16.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td" id="A1.T4.5.5.16.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.16.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.4.1" style="font-size:80%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.5.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.6.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.7.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.8.1" style="font-size:80%;">41.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.9.1" style="font-size:80%;">1529.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.10.1" style="font-size:80%;">323.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.11.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.12.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.13.1" style="font-size:80%;">66.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.14.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.15.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.16.1" style="font-size:80%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.17.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.18.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.16.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.16.19.1" style="font-size:80%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.17">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T4.5.5.17.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.17.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.4.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.5.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.6.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.7.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.8.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.9.1" style="font-size:80%;">1589.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.10.1" style="font-size:80%;">340.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.11.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.12.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.13.1" style="font-size:80%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.14.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.15.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.16.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.17.1" style="font-size:80%;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.18.1" style="font-size:80%;">62.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.17.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.17.19.1" style="font-size:80%;">54.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.18">
<td class="ltx_td" id="A1.T4.5.5.18.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td" id="A1.T4.5.5.18.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.18.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.4.1" style="font-size:80%;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.5.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.6.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.7.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.8.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.9.1" style="font-size:80%;">1538.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.10.1" style="font-size:80%;">351.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.11.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.12.1" style="font-size:80%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.13.1" style="font-size:80%;">67.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.14.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.15.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.16.1" style="font-size:80%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.17.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.18.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.18.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.18.19.1" style="font-size:80%;">55.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.19">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="A1.T4.5.5.19.3" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.4.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.5.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.6.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.7.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.8.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.9.1" style="font-size:80%;">1506.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.10.1" style="font-size:80%;">330.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.11.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.12.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.13.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.14.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.15.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.16.1" style="font-size:80%;">38.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.17.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.18.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.19.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.19.19.1" style="font-size:80%;">55.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.20">
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T4.5.5.20.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T4.5.5.20.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.4.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.5.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.6.1" style="font-size:80%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.7.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.8.1" style="font-size:80%;">45.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.9.1" style="font-size:80%;">1568.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.10.1" style="font-size:80%;">350.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.11.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.12.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.13.1" style="font-size:80%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.14.1" style="font-size:80%;">68.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.15.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.16.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.17.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.18.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T4.5.5.20.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.20.19.1" style="font-size:80%;">54.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T4.5.5.21">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T4.5.5.21.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.4.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.5.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.6.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.7.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.8.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.9.1" style="font-size:80%;">1558.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.10.1" style="font-size:80%;">361.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.11.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.12.1" style="font-size:80%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.13.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.14.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.15.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.16.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.17.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.18.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T4.5.5.21.19" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T4.5.5.21.19.1" style="font-size:80%;">55.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study analyzing the effect of different localized window sizes within the context-aware recursive alignment decoding layer of the FUSION model on overall performance across various benchmark tasks.  Three window sizes (2, 3, and 4) are compared, showing how the choice of window size impacts the model's ability to integrate visual and textual information effectively.  The results are presented for multiple benchmark metrics, allowing for a comprehensive evaluation of the window size's effect on each.
> <details>
> <summary>read the caption</summary>
> Table 6: Impact of localized window size. We investigate the effect of varying window sizes within the Interaction Layer on model performance. Specifically, we experiment with window sizes of 2, 3, and 4.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T5.5.5">
<tr class="ltx_tr" id="A1.T5.5.5.5">
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.6" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.6.1" style="width:5.6pt;height:49.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:49.9pt;transform:translate(-22.19pt,-22.19pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.6.1.1"><span class="ltx_text" id="A1.T5.5.5.5.6.1.1.1" style="font-size:80%;">Latent Tokens</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.5.5.5.7" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.7.1" style="width:7.0pt;height:63.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:63.5pt;transform:translate(-28.26pt,-27.48pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.7.1.1"><span class="ltx_text" id="A1.T5.5.5.5.7.1.1.1" style="font-size:80%;">Interaction Layers</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.1.1.1.1" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.1.1.1.1.1.1"><span class="ltx_text" id="A1.T5.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T5.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.2.2.2.2" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.2.2.2.2.1.1"><span class="ltx_text" id="A1.T5.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T5.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.8" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.8.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.8.1.1"><span class="ltx_text" id="A1.T5.5.5.5.8.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.9" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.9.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.9.1.1"><span class="ltx_text" id="A1.T5.5.5.5.9.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.10" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.10.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.10.1.1"><span class="ltx_text" id="A1.T5.5.5.5.10.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.3.3.3.3" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.3.3.3.3.1.1"><span class="ltx_text" id="A1.T5.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T5.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.4.4.4.4" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.4.4.4.4.1.1"><span class="ltx_text" id="A1.T5.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T5.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.11" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.11.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.11.1.1"><span class="ltx_text" id="A1.T5.5.5.5.11.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.5" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.5.1.1"><span class="ltx_text" id="A1.T5.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T5.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T5.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.12" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.12.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.12.1.1"><span class="ltx_text" id="A1.T5.5.5.5.12.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.13" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.13.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.13.1.1"><span class="ltx_text" id="A1.T5.5.5.5.13.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.14" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.14.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.14.1.1"><span class="ltx_text" id="A1.T5.5.5.5.14.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.15" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.15.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.15.1.1"><span class="ltx_text" id="A1.T5.5.5.5.15.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.16" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.16.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.16.1.1"><span class="ltx_text" id="A1.T5.5.5.5.16.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.17" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.17.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.17.1.1"><span class="ltx_text" id="A1.T5.5.5.5.17.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.5.18" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T5.5.5.5.18.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T5.5.5.5.18.1.1"><span class="ltx_text" id="A1.T5.5.5.5.18.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="18" id="A1.T5.5.5.6.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T5.5.5.6.1.1" style="font-size:80%;background-color:#F2F2F2;">Vicuna-7B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.7">
<td class="ltx_td ltx_border_t" id="A1.T5.5.5.7.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T5.5.5.7.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.3.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.4.1" style="font-size:80%;">61.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.5.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.6.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.7.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.8.1" style="font-size:80%;">1575.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.9.1" style="font-size:80%;">347.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.10.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.11.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.12.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.13.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.14.1" style="font-size:80%;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.15.1" style="font-size:80%;">37.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.16.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.17.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.7.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.7.18.1" style="font-size:80%;">51.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.8">
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="A1.T5.5.5.8.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.3.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.4.1" style="font-size:80%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.5.1" style="font-size:80%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.6.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.7.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.8.1" style="font-size:80%;">1537.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.9.1" style="font-size:80%;">311.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.10.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.11.1" style="font-size:80%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.12.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.13.1" style="font-size:80%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.14.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.15.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.16.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.17.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.8.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.8.18.1" style="font-size:80%;">52.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T5.5.5.9.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.3.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.4.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.5.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.6.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.7.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.8.1" style="font-size:80%;">1564.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.9.1" style="font-size:80%;">326.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.10.1" style="font-size:80%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.11.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.12.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.13.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.14.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.15.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.16.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.17.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.9.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.9.18.1" style="font-size:80%;">52.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="18" id="A1.T5.5.5.10.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T5.5.5.10.1.1" style="font-size:80%;background-color:#F2F2F2;">LLaMA3-8B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.11">
<td class="ltx_td ltx_border_t" id="A1.T5.5.5.11.1" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_border_r ltx_border_t" id="A1.T5.5.5.11.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.3.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.4.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.5.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.6.1" style="font-size:80%;">87.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.7.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.8.1" style="font-size:80%;">1506.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.9.1" style="font-size:80%;">330.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.10.1" style="font-size:80%;">72.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.11.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.12.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.13.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.14.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.15.1" style="font-size:80%;">38.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.16.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.17.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T5.5.5.11.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.11.18.1" style="font-size:80%;">55.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.12">
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="A1.T5.5.5.12.2" style="padding:1.2pt 7.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.3.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.4.1" style="font-size:80%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.5.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.6.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.7.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.8.1" style="font-size:80%;">1567.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.9.1" style="font-size:80%;">331.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.10.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.11.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.12.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.13.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.14.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.15.1" style="font-size:80%;">38.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.16.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.17.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T5.5.5.12.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.12.18.1" style="font-size:80%;">55.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T5.5.5.13">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T5.5.5.13.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.3.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.4.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.5.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.6.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.7.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.8.1" style="font-size:80%;">1558.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.9.1" style="font-size:80%;">361.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.10.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.11.1" style="font-size:80%;">82.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.12.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.13.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.14.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.15.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.16.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.17.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T5.5.5.13.18" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T5.5.5.13.18.1" style="font-size:80%;">55.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 Table 7 details the impact of varying the number of latent tokens on model performance.  Experiments used both fixed numbers of latent tokens (64, 144, 256) and dynamically-selected numbers of tokens (ranging from 4 to 256 and from 16 to 576).  The table shows the resulting scores across multiple benchmark categories, illustrating how different configurations of latent tokens affect the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 7: Impact of the Number of Latent Tokens. We examine how different configurations of Latent Tokens affect model performance. Our experiments include both fixed-length settings (64, 144, 256) and dynamic-length configurations (ranging from 4 to 256, and 16 to 576 tokens).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T6.5.5">
<tr class="ltx_tr" id="A1.T6.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.5.5.5.6" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.6.1" style="width:5.6pt;height:45.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:45.3pt;transform:translate(-19.89pt,-19.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.6.1.1"><span class="ltx_text" id="A1.T6.5.5.5.6.1.1.1" style="font-size:80%;">Window Size</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.1.1.1.1" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.1.1.1.1.1.1"><span class="ltx_text" id="A1.T6.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T6.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.2.2.2.2" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.2.2.2.2.1.1"><span class="ltx_text" id="A1.T6.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T6.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.7" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.7.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.7.1.1"><span class="ltx_text" id="A1.T6.5.5.5.7.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.8" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.8.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.8.1.1"><span class="ltx_text" id="A1.T6.5.5.5.8.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.9" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.9.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.9.1.1"><span class="ltx_text" id="A1.T6.5.5.5.9.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.3.3.3.3" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.3.3.3.3.1.1"><span class="ltx_text" id="A1.T6.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T6.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.4.4.4.4" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.4.4.4.4.1.1"><span class="ltx_text" id="A1.T6.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T6.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.10" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.10.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.10.1.1"><span class="ltx_text" id="A1.T6.5.5.5.10.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.5" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.5.1.1"><span class="ltx_text" id="A1.T6.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T6.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T6.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.11" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.11.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.11.1.1"><span class="ltx_text" id="A1.T6.5.5.5.11.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.12" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.12.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.12.1.1"><span class="ltx_text" id="A1.T6.5.5.5.12.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.13" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.13.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.13.1.1"><span class="ltx_text" id="A1.T6.5.5.5.13.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.14" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.14.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.14.1.1"><span class="ltx_text" id="A1.T6.5.5.5.14.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.15" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.15.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.15.1.1"><span class="ltx_text" id="A1.T6.5.5.5.15.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.16" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.16.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.16.1.1"><span class="ltx_text" id="A1.T6.5.5.5.16.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.5.17" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T6.5.5.5.17.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T6.5.5.5.17.1.1"><span class="ltx_text" id="A1.T6.5.5.5.17.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="17" id="A1.T6.5.5.6.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T6.5.5.6.1.1" style="font-size:80%;background-color:#F2F2F2;">Vicuna-7B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.5.5.7.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.1.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.2.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.3.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.4.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.5.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.6.1" style="font-size:80%;">38.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.7.1" style="font-size:80%;">1544.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.8.1" style="font-size:80%;">322.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.9.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.10.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.11.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.12.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.13.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.14.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.15.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.16.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.7.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.7.17.1" style="font-size:80%;">51.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.5.5.8.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.1.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.2.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.3.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.4.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.5.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.6.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.7.1" style="font-size:80%;">1564.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.8.1" style="font-size:80%;">326.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.9.1" style="font-size:80%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.10.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.11.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.12.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.13.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.14.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.15.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.16.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.8.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.8.17.1" style="font-size:80%;">52.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.5.5.9.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.2.1" style="font-size:80%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.3.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.4.1" style="font-size:80%;">59.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.5.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.6.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.7.1" style="font-size:80%;">1557.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.8.1" style="font-size:80%;">319.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.9.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.10.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.11.1" style="font-size:80%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.12.1" style="font-size:80%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.13.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.14.1" style="font-size:80%;">36.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.15.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.16.1" style="font-size:80%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.9.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.9.17.1" style="font-size:80%;">51.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.10" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A1.T6.5.5.10.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T6.5.5.10.1.1" style="font-size:80%;background-color:#F2F2F2;">LLaMA3-8B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.11">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T6.5.5.11.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.1.1" style="font-size:80%;">2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.2.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.3.1" style="font-size:80%;">71.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.4.1" style="font-size:80%;">59.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.5.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.6.1" style="font-size:80%;">46.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.7.1" style="font-size:80%;">1563.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.8.1" style="font-size:80%;">323.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.9.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.10.1" style="font-size:80%;">81.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.11.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.12.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.13.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.14.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.15.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.16.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T6.5.5.11.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.11.17.1" style="font-size:80%;">53.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T6.5.5.12.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.1.1" style="font-size:80%;">3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.2.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.3.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.4.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.5.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.6.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.7.1" style="font-size:80%;">1558.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.8.1" style="font-size:80%;">361.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.9.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.10.1" style="font-size:80%;">82.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.11.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.12.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.13.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.14.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.15.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.16.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T6.5.5.12.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.12.17.1" style="font-size:80%;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T6.5.5.13">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T6.5.5.13.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.1.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.2.1" style="font-size:80%;">74.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.3.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.4.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.5.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.6.1" style="font-size:80%;">44.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.7.1" style="font-size:80%;">1565.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.8.1" style="font-size:80%;">337.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.9.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.10.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.11.1" style="font-size:80%;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.12.1" style="font-size:80%;">67.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.13.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.14.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.15.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.16.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T6.5.5.13.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T6.5.5.13.17.1" style="font-size:80%;">54.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the ablation study on the training strategy used for the FUSION model. It compares different parameter-freezing schemes during the three training stages. Stage 1 uses a limited unfreezing approach, only updating the projector and interaction layer. In contrast, Stages 1.5 and 2 employ partial unfreezing, including the projector, interaction layer, and the LLM, but keeping the encoder fixed. The results demonstrate the impact of different freezing schemes on various benchmark tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Effectiveness of Our Training Strategy. We validate the effectiveness of our training strategy by comparing different parameter-freezing schemes. Specifically, in Stage 1, when parameters are not fully unfrozen, only the projector and interaction layer are updated. In Stages 1.5 and 2, partial unfreezing involves training the projector, interaction layer, and the LLM, while keeping encoder fixed.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T7.5.5">
<tr class="ltx_tr" id="A1.T7.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.5.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.5.6.1" style="font-size:80%;">Latent Token</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.1.1.1.1" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.1.1.1.1.1.1"><span class="ltx_text" id="A1.T7.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T7.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T7.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.2.2.2.2" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.2.2.2.2.1.1"><span class="ltx_text" id="A1.T7.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T7.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T7.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.7" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.7.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.7.1.1"><span class="ltx_text" id="A1.T7.5.5.5.7.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.8" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.8.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.8.1.1"><span class="ltx_text" id="A1.T7.5.5.5.8.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.9" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.9.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.9.1.1"><span class="ltx_text" id="A1.T7.5.5.5.9.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.3.3.3.3" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.3.3.3.3.1.1"><span class="ltx_text" id="A1.T7.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T7.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T7.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.4.4.4.4" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.4.4.4.4.1.1"><span class="ltx_text" id="A1.T7.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T7.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T7.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.10" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.10.1" style="width:7.1pt;height:37.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.1pt;transform:translate(-15pt,-14.22pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.10.1.1"><span class="ltx_text" id="A1.T7.5.5.5.10.1.1.1" style="font-size:80%;">SeedImage</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.5" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.5.1.1"><span class="ltx_text" id="A1.T7.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T7.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T7.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.11" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.11.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.11.1.1"><span class="ltx_text" id="A1.T7.5.5.5.11.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.12" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.12.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.12.1.1"><span class="ltx_text" id="A1.T7.5.5.5.12.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.13" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.13.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.13.1.1"><span class="ltx_text" id="A1.T7.5.5.5.13.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.14" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.14.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.14.1.1"><span class="ltx_text" id="A1.T7.5.5.5.14.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.15" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.15.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.15.1.1"><span class="ltx_text" id="A1.T7.5.5.5.15.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.16" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.16.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.16.1.1"><span class="ltx_text" id="A1.T7.5.5.5.16.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.5.17" style="padding:1.2pt 7.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T7.5.5.5.17.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T7.5.5.5.17.1.1"><span class="ltx_text" id="A1.T7.5.5.5.17.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.6" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="17" id="A1.T7.5.5.6.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T7.5.5.6.1.1" style="font-size:80%;background-color:#F2F2F2;">Vicuna-7B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.5.5.7.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.1.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.2.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.3.1" style="font-size:80%;">61.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.4.1" style="font-size:80%;">60.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.5.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.6.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.7.1" style="font-size:80%;">1548.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.8.1" style="font-size:80%;">322.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.9.1" style="font-size:80%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.10.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.11.1" style="font-size:80%;">66.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.12.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.13.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.14.1" style="font-size:80%;">36.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.15.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.16.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.7.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.7.17.1" style="font-size:80%;">51.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.8.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.1.1" style="font-size:80%;">144</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.2.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.3.1" style="font-size:80%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.4.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.5.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.6.1" style="font-size:80%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.7.1" style="font-size:80%;">1557.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.8.1" style="font-size:80%;">335.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.9.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.10.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.11.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.12.1" style="font-size:80%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.13.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.14.1" style="font-size:80%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.15.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.16.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.8.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.8.17.1" style="font-size:80%;">52.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.9.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.1.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.2.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.3.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.4.1" style="font-size:80%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.5.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.6.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.7.1" style="font-size:80%;">1546.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.8.1" style="font-size:80%;">320.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.9.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.10.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.11.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.12.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.13.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.14.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.15.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.16.1" style="font-size:80%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.9.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.9.17.1" style="font-size:80%;">52.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.10.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.1.1" style="font-size:80%;">4,16,64,144,256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.2.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.3.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.4.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.5.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.6.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.7.1" style="font-size:80%;">1564.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.8.1" style="font-size:80%;">326.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.9.1" style="font-size:80%;">69.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.10.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.11.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.12.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.13.1" style="font-size:80%;">64.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.14.1" style="font-size:80%;">36.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.15.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.16.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.10.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.10.17.1" style="font-size:80%;">52.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.11.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.1.1" style="font-size:80%;">16,64,144,256.576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.2.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.3.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.4.1" style="font-size:80%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.5.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.6.1" style="font-size:80%;">38.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.7.1" style="font-size:80%;">1543.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.8.1" style="font-size:80%;">319.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.9.1" style="font-size:80%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.10.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.11.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.12.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.13.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.14.1" style="font-size:80%;">35.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.15.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.16.1" style="font-size:80%;">59.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.11.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.11.17.1" style="font-size:80%;">51.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.12" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="17" id="A1.T7.5.5.12.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text ltx_font_italic" id="A1.T7.5.5.12.1.1" style="font-size:80%;background-color:#F2F2F2;">LLaMA3-8B + Clip</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.13">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T7.5.5.13.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.1.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.2.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.3.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.4.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.5.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.6.1" style="font-size:80%;">45.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.7.1" style="font-size:80%;">1535.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.8.1" style="font-size:80%;">356.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.9.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.10.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.11.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.12.1" style="font-size:80%;">69.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.13.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.14.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.15.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.16.1" style="font-size:80%;">62.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T7.5.5.13.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.13.17.1" style="font-size:80%;">54.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.14.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.1.1" style="font-size:80%;">144</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.2.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.3.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.4.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.5.1" style="font-size:80%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.6.1" style="font-size:80%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.7.1" style="font-size:80%;">1579.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.8.1" style="font-size:80%;">351.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.9.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.10.1" style="font-size:80%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.11.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.12.1" style="font-size:80%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.13.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.14.1" style="font-size:80%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.15.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.16.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.14.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.14.17.1" style="font-size:80%;">54.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.15.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.1.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.2.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.3.1" style="font-size:80%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.4.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.5.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.6.1" style="font-size:80%;">46.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.7.1" style="font-size:80%;">1560.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.8.1" style="font-size:80%;">348.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.9.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.10.1" style="font-size:80%;">77.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.11.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.12.1" style="font-size:80%;">69.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.13.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.14.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.15.1" style="font-size:80%;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.16.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.15.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.15.17.1" style="font-size:80%;">56.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T7.5.5.16.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.1.1" style="font-size:80%;">4,16,64,144,256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.2.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.3.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.4.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.5.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.6.1" style="font-size:80%;">44.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.7.1" style="font-size:80%;">1558.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.8.1" style="font-size:80%;">361.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.9.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.10.1" style="font-size:80%;">82.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.11.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.12.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.13.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.14.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.15.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.16.1" style="font-size:80%;">63.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T7.5.5.16.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.16.17.1" style="font-size:80%;">55.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T7.5.5.17">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T7.5.5.17.1" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.1.1" style="font-size:80%;">16,64,144,256.576</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.2" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.2.1" style="font-size:80%;">73.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.3" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.3.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.4" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.4.1" style="font-size:80%;">60.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.5" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.5.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.6" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.6.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.7" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.7.1" style="font-size:80%;">1544.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.8" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.8.1" style="font-size:80%;">320.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.9" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.9.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.10" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.10.1" style="font-size:80%;">82.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.11" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.11.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.12" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.12.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.13" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.13.1" style="font-size:80%;">70.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.14" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.14.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.15" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.15.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.16" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.16.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T7.5.5.17.17" style="padding:1.2pt 7.0pt;"><span class="ltx_text" id="A1.T7.5.5.17.17.1" style="font-size:80%;">54.2</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive performance evaluation of the FUSION model across various benchmark datasets.  It shows the model's performance with different numbers of visual tokens (180, 300, and 630) across four categories of benchmarks: General multimodal, Vision-centric, Knowledge-based, and OCR & Chart. This allows for a detailed analysis of how the model's performance scales with increasing visual input and its strengths across different benchmark types.
> <details>
> <summary>read the caption</summary>
> Table 9:  Comprehensive evaluation of FUSION models with varying total visual token counts (180-630) across General, Vision-Centric, Knowledge-Based, and OCR & Chart benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T8.5.5">
<tr class="ltx_tr" id="A1.T8.5.5.5">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.6" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.6.1" style="width:7.0pt;height:23.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.1pt;transform:translate(-8.04pt,-7.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.6.1.1"><span class="ltx_text" id="A1.T8.5.5.5.6.1.1.1" style="font-size:80%;">Stage1</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.7" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.7.1" style="width:7.0pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.16pt,-10.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.7.1.1"><span class="ltx_text" id="A1.T8.5.5.5.7.1.1.1" style="font-size:80%;">Stage1.5</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.5.8" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.8.1" style="width:7.0pt;height:23.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.1pt;transform:translate(-8.04pt,-7.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.8.1.1"><span class="ltx_text" id="A1.T8.5.5.5.8.1.1.1" style="font-size:80%;">Stage2</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.1.1.1.1" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.1.1.1.1.1.1"><span class="ltx_text" id="A1.T8.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T8.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T8.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.2.2.2.2" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.2.2.2.2.1.1"><span class="ltx_text" id="A1.T8.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T8.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T8.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.9" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.9.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.9.1.1"><span class="ltx_text" id="A1.T8.5.5.5.9.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.10" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.10.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.10.1.1"><span class="ltx_text" id="A1.T8.5.5.5.10.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.11" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.11.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.11.1.1"><span class="ltx_text" id="A1.T8.5.5.5.11.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.3.3.3.3" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.3.3.3.3.1.1"><span class="ltx_text" id="A1.T8.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T8.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T8.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.4.4.4.4" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.4.4.4.4.1.1"><span class="ltx_text" id="A1.T8.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T8.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T8.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.5" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.5.1.1"><span class="ltx_text" id="A1.T8.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T8.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T8.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.12" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.12.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.12.1.1"><span class="ltx_text" id="A1.T8.5.5.5.12.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.13" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.13.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.13.1.1"><span class="ltx_text" id="A1.T8.5.5.5.13.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.14" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.14.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.14.1.1"><span class="ltx_text" id="A1.T8.5.5.5.14.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.15" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.15.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.15.1.1"><span class="ltx_text" id="A1.T8.5.5.5.15.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.16" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.16.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.16.1.1"><span class="ltx_text" id="A1.T8.5.5.5.16.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.17" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.17.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.17.1.1"><span class="ltx_text" id="A1.T8.5.5.5.17.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.5.18" style="padding:1.2pt 5.5pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T8.5.5.5.18.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T8.5.5.5.18.1.1"><span class="ltx_text" id="A1.T8.5.5.5.18.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.6">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.1" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.2" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A1.T8.5.5.6.3" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.4" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.4.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.5" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.5.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.6" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.6.1" style="font-size:80%;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.7" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.7.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.8" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.8.1" style="font-size:80%;">41.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.9" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.9.1" style="font-size:80%;">1396.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.10" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.10.1" style="font-size:80%;">272.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.11" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.11.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.12" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.12.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.13" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.13.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.14" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.14.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.15" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.15.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.16" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.16.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.17" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.17.1" style="font-size:80%;">63.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A1.T8.5.5.6.18" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.6.18.1" style="font-size:80%;">62.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.7">
<td class="ltx_td" id="A1.T8.5.5.7.1" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.2" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T8.5.5.7.3" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.4" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.4.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.5" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.5.1" style="font-size:80%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.6" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.6.1" style="font-size:80%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.7" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.7.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.8" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.8.1" style="font-size:80%;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.9" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.9.1" style="font-size:80%;">1379.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.10" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.10.1" style="font-size:80%;">307.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.11" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.11.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.12" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.12.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.13" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.13.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.14" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.14.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.15" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.15.1" style="font-size:80%;">38.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.16" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.16.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.17" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.17.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.7.18" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.7.18.1" style="font-size:80%;">61.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.8">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.1" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.2" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_r" id="A1.T8.5.5.8.3" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.4" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.4.1" style="font-size:80%;">69.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.5" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.5.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.6" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.6.1" style="font-size:80%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.7" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.7.1" style="font-size:80%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.8" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.8.1" style="font-size:80%;">39.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.9" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.9.1" style="font-size:80%;">1365.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.10" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.10.1" style="font-size:80%;">288.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.11" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.11.1" style="font-size:80%;">71.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.12" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.12.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.13" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.13.1" style="font-size:80%;">67.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.14" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.14.1" style="font-size:80%;">68.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.15" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.15.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.16" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.16.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.17" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.17.1" style="font-size:80%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.8.18" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.8.18.1" style="font-size:80%;">61.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.1" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td" id="A1.T8.5.5.9.2" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_border_r" id="A1.T8.5.5.9.3" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.4" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.4.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.5" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.5.1" style="font-size:80%;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.6" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.6.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.7" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.7.1" style="font-size:80%;">85.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.8" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.8.1" style="font-size:80%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.9" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.9.1" style="font-size:80%;">1354.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.10" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.10.1" style="font-size:80%;">276.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.11" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.11.1" style="font-size:80%;">71.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.12" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.12.1" style="font-size:80%;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.13" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.13.1" style="font-size:80%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.14" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.14.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.15" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.15.1" style="font-size:80%;">38.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.16" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.16.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.17" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.17.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T8.5.5.9.18" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.9.18.1" style="font-size:80%;">61.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T8.5.5.10">
<td class="ltx_td ltx_border_b" id="A1.T8.5.5.10.1" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_border_b" id="A1.T8.5.5.10.2" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_border_b ltx_border_r" id="A1.T8.5.5.10.3" style="padding:1.2pt 5.5pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.4" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.4.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.5" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.5.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.6" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.6.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.7" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.7.1" style="font-size:80%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.8" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.8.1" style="font-size:80%;">35.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.9" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.9.1" style="font-size:80%;">1368.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.10" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.10.1" style="font-size:80%;">275.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.11" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.11.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.12" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.12.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.13" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.13.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.14" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.14.1" style="font-size:80%;">68.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.15" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.15.1" style="font-size:80%;">38.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.16" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.16.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.17" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.17.1" style="font-size:80%;">61.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T8.5.5.10.18" style="padding:1.2pt 5.5pt;"><span class="ltx_text" id="A1.T8.5.5.10.18.1" style="font-size:80%;">61.6</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various multimodal large language models (MLLMs) across a range of general multimodal benchmarks.  The benchmarks assess different aspects of multimodal understanding, enabling a comprehensive evaluation of the models' capabilities.  The table shows the performance scores for each model on each benchmark, allowing for a direct comparison between the different models' strengths and weaknesses on various types of tasks.
> <details>
> <summary>read the caption</summary>
> (a) Results on general multimodal benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.st1.5.5">
<tr class="ltx_tr" id="A1.T9.st1.5.5.6">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T9.st1.5.5.6.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.6.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="11" id="A1.T9.st1.5.5.6.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.6.2.1" style="font-size:80%;">General Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.5">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.5.6.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.5.7" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.7.1" style="width:7.1pt;height:36.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.9pt;transform:translate(-14.91pt,-14.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.7.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.7.1.1.1" style="font-size:80%;"># Vis tok.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.1.1.1.1" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.1.1.1.1.1.1"><span class="ltx_text" id="A1.T9.st1.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T9.st1.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T9.st1.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.2.2.2.2" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.2.2.2.2.1.1"><span class="ltx_text" id="A1.T9.st1.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T9.st1.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T9.st1.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.8" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.8.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.8.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.8.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.9" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.9.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.9.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.9.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.10" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.10.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.10.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.10.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.3.3.3.3" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.3.3.3.3.1.1"><span class="ltx_text" id="A1.T9.st1.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T9.st1.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T9.st1.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.4.4.4.4" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.4.4.4.4.1.1"><span class="ltx_text" id="A1.T9.st1.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T9.st1.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T9.st1.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.11" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.11.1" style="width:7.1pt;height:39.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.8pt;transform:translate(-16.33pt,-15.56pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.11.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.11.1.1.1" style="font-size:80%;">Seed-Image</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.12" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.12.1" style="width:5.6pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-7.28pt,-7.28pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.12.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.12.1.1.1" style="font-size:80%;">HallB</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.5" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.5.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T9.st1.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T9.st1.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.5.13" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st1.5.5.5.13.1" style="width:5.5pt;height:29.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.94pt,-11.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st1.5.5.5.13.1.1"><span class="ltx_text" id="A1.T9.st1.5.5.5.13.1.1.1" style="font-size:80%;">MMStar</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.st1.5.5.7.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.2.1" style="font-size:80%;">630</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.3.1" style="font-size:80%;">80.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.4.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.5.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.6.1" style="font-size:80%;">88.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.7.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.8.1" style="font-size:80%;">1582.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.9.1" style="font-size:80%;">440.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.10.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.11.1" style="font-size:80%;">51.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.12.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st1.5.5.7.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.7.13.1" style="font-size:80%;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.8">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.8.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.2.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.3.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.4.1" style="font-size:80%;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.5.1" style="font-size:80%;">65.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.6.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.7.1" style="font-size:80%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.8.1" style="font-size:80%;">1573.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.9.1" style="font-size:80%;">406.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.10.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.11.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.12.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.8.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.8.13.1" style="font-size:80%;">47.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.9.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.2.1" style="font-size:80%;">180</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.3.1" style="font-size:80%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.4.1" style="font-size:80%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.5.1" style="font-size:80%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.6.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.7.1" style="font-size:80%;">48.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.8.1" style="font-size:80%;">1485.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.9.1" style="font-size:80%;">375.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.10.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.11.1" style="font-size:80%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.12.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.9.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.9.13.1" style="font-size:80%;">45.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.10">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.10.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.2.1" style="font-size:80%;">630</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.3.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.4.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.5.1" style="font-size:80%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.6.1" style="font-size:80%;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.7.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.8.1" style="font-size:80%;">1607.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.9.1" style="font-size:80%;">337.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.10.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.11.1" style="font-size:80%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.12.1" style="font-size:80%;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.10.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.10.13.1" style="font-size:80%;">52.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.11">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.11.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.2.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.3.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.4.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.5.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.6.1" style="font-size:80%;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.7.1" style="font-size:80%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.8.1" style="font-size:80%;">1601.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.9.1" style="font-size:80%;">338.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.10.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.11.1" style="font-size:80%;">46.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.12.1" style="font-size:80%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.11.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.11.13.1" style="font-size:80%;">49.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.12">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.12.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.2.1" style="font-size:80%;">180</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.3.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.4.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.5.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.6.1" style="font-size:80%;">88.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.7.1" style="font-size:80%;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.8.1" style="font-size:80%;">1561.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.9.1" style="font-size:80%;">302.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.10.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.11.1" style="font-size:80%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.12.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.12.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.12.13.1" style="font-size:80%;">46.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.13">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.1.1" style="font-size:80%;">Cambrian-1 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.13.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.4.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.5.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.6.1" style="font-size:80%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.7.1" style="font-size:80%;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.8.1" style="font-size:80%;">1497.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.9.1" style="font-size:80%;">355.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.10.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.11.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.12.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.13.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.13.13.1" style="font-size:80%;">47.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.14">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.1.1" style="font-size:80%;">Cambrian-1 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.14.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.3.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.4.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.5.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.6.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.7.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.8.1" style="font-size:80%;">1547.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.9.1" style="font-size:80%;">372.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.10.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.11.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.12.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.14.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.14.13.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.15">
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st1.5.5.15.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.3.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.4.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.6.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.7.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.8.1" style="font-size:80%;">1498.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.9.1" style="font-size:80%;">403.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.10.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.11.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.12.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st1.5.5.15.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.15.13.1" style="font-size:80%;">44.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st1.5.5.16">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T9.st1.5.5.16.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.3.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.6.1" style="font-size:80%;">89.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.7.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.8.1" style="font-size:80%;">1560.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.9.1" style="font-size:80%;">381.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.10.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.11.1" style="font-size:80%;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.12.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st1.5.5.16.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st1.5.5.16.13.1" style="font-size:80%;">50.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various large language models (LLMs) on vision-centric, knowledge-based, and optical character recognition (OCR) benchmarks.  It shows the performance of different models, including various sizes and configurations of the FUSION model (the authors' model), and compares them to other leading MLLMs such as InternVL2, Florence-VL, Cambrian, and LLaVA. The metrics evaluated likely assess the models' ability to answer questions, solve tasks, and perform OCR on images, showcasing their abilities in various visual and textual comprehension tasks.
> <details>
> <summary>read the caption</summary>
> (b) Results on Vision centric, Knowledge based, and OCR & Chart benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T9.st2.6.1">
<tr class="ltx_tr" id="A1.T9.st2.6.1.1">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T9.st2.6.1.1.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T9.st2.6.1.1.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.1.2.1" style="font-size:80%;">Vision Centric</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T9.st2.6.1.1.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.1.3.1" style="font-size:80%;">Knowledge Based</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T9.st2.6.1.1.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.1.4.1" style="font-size:80%;">OCR &amp; Chart</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.2">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.2.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.2.2" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.2.1" style="width:7.1pt;height:36.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.9pt;transform:translate(-14.91pt,-14.13pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.2.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.2.1.1.1" style="font-size:80%;"># Vis tok.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.3" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.3.1" style="width:5.5pt;height:36pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.0pt;transform:translate(-15.27pt,-15.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.3.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.3.1.1.1" style="font-size:80%;">MME-RW</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.4" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.4.1" style="width:7.1pt;height:49.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:49.2pt;transform:translate(-21.07pt,-20.29pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.4.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.4.1.1.1" style="font-size:80%;">RealWorldQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.5" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.5.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.5.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.5.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.2.6" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.6.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.6.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.6.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.7" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.7.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.7.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.7.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.8" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.8.1" style="width:5.6pt;height:37.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.4pt;transform:translate(-15.91pt,-15.91pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.8.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.8.1.1.1" style="font-size:80%;">MathVista</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.9" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.9.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.9.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.9.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.2.10" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.10.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.10.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.10.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.11" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.11.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.11.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.11.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.12" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.12.1" style="width:5.6pt;height:39.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.3pt;transform:translate(-16.89pt,-16.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.12.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.12.1.1.1" style="font-size:80%;">OCRBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.13" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.13.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.13.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.13.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.2.14" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T9.st2.6.1.2.14.1" style="width:7.0pt;height:31.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:31.9pt;transform:translate(-12.43pt,-11.66pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T9.st2.6.1.2.14.1.1"><span class="ltx_text" id="A1.T9.st2.6.1.2.14.1.1.1" style="font-size:80%;">DocVQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.st2.6.1.3.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.2.1" style="font-size:80%;">630</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.3.1" style="font-size:80%;">41.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.4.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.5.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.st2.6.1.3.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.6.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.7.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.8.1" style="font-size:80%;">54.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.9.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T9.st2.6.1.3.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.10.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.11.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.12.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.13.1" style="font-size:80%;">75.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T9.st2.6.1.3.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.3.14.1" style="font-size:80%;">71.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.4">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.4.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.2.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.3.1" style="font-size:80%;">39.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.4.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.5.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.4.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.6.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.7.1" style="font-size:80%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.8.1" style="font-size:80%;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.9.1" style="font-size:80%;">43.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.4.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.10.1" style="font-size:80%;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.11.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.12.1" style="font-size:80%;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.13.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.4.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.4.14.1" style="font-size:80%;">63.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.5">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.5.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.2.1" style="font-size:80%;">180</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.3.1" style="font-size:80%;">37.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.4.1" style="font-size:80%;">61.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.5.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.5.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.6.1" style="font-size:80%;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.7.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.8.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.5.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.10.1" style="font-size:80%;">83.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.11.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.12.1" style="font-size:80%;">47.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.13.1" style="font-size:80%;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.5.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.5.14.1" style="font-size:80%;">47.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.6">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.6.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.2.1" style="font-size:80%;">630</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.3.1" style="font-size:80%;">44.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.4.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.5.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.6.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.6.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.7.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.8.1" style="font-size:80%;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.9.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.6.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.10.1" style="font-size:80%;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.11.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.12.1" style="font-size:80%;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.13.1" style="font-size:80%;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.6.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.6.14.1" style="font-size:80%;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.7">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.7.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.2.1" style="font-size:80%;">300</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.3.1" style="font-size:80%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.4.1" style="font-size:80%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.5.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.7.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.6.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.7.1" style="font-size:80%;">79.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.8.1" style="font-size:80%;">55.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.9.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.7.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.10.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.11.1" style="font-size:80%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.12.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.13.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.7.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.7.14.1" style="font-size:80%;">66.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.8">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.1.1" style="font-size:80%;">FUSION-X 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.8.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.2.1" style="font-size:80%;">180</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.3.1" style="font-size:80%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.4.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.5.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.8.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.6.1" style="font-size:80%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.7.1" style="font-size:80%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.8.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.9.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.8.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.10.1" style="font-size:80%;">86.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.11.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.12.1" style="font-size:80%;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.13.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.8.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.8.14.1" style="font-size:80%;">54.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.9">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.1.1" style="font-size:80%;">Cambrian-1 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.9.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.3.1" style="font-size:80%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.4.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.5.1" style="font-size:80%;">68.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.9.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.6.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.7.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.8.1" style="font-size:80%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.9.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.10.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.11.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.12.1" style="font-size:80%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.13.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.9.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.9.14.1" style="font-size:80%;">66.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.10">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.1.1" style="font-size:80%;">Cambrian-1 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.10.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.3.1" style="font-size:80%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.5.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.10.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.6.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.7.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.8.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.10.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.10.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.11.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.12.1" style="font-size:80%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.13.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.10.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.10.14.1" style="font-size:80%;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.11">
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.11.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.3.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.4.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.5.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.11.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.6.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.7.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.8.1" style="font-size:80%;">52.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.9.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T9.st2.6.1.11.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.10.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.11.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.12.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.13.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T9.st2.6.1.11.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.11.14.1" style="font-size:80%;">70.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T9.st2.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T9.st2.6.1.12.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.2.1" style="font-size:80%;">576</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.3.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.5.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T9.st2.6.1.12.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.6.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.7.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.8.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.9.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T9.st2.6.1.12.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.10.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.11.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.12.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.13.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T9.st2.6.1.12.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T9.st2.6.1.12.14.1" style="font-size:80%;">75.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comprehensive performance analysis of the FUSION model across various benchmark datasets.  It shows the impact of varying the number of latent visual tokens (from 0 to 256) on the model's performance. The benchmarks are categorized into four groups: General, Vision-Centric, Knowledge-Based, and OCR & Chart.  For each token count, the table provides performance metrics across all benchmarks, allowing a detailed comparison of model performance under different conditions.
> <details>
> <summary>read the caption</summary>
> Table 10:  Comprehensive evaluation of FUSION models with varying latent visual token counts (0-256) across General, Vision-Centric, Knowledge-Based, and OCR & Chart benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T10.st1.5.5">
<tr class="ltx_tr" id="A1.T10.st1.5.5.6">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T10.st1.5.5.6.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.6.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="11" id="A1.T10.st1.5.5.6.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.6.2.1" style="font-size:80%;">General Benchmarks</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.5">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.5.6.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.5.7" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.7.1" style="width:7.1pt;height:62.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:62.6pt;transform:translate(-27.74pt,-26.97pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.7.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.7.1.1.1" style="font-size:80%;"># Latent Vis tok.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.1.1.1.1" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.1.1.1.1.1" style="width:7.1pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-10.43pt,-10.43pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.1.1.1.1.1.1"><span class="ltx_text" id="A1.T10.st1.1.1.1.1.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T10.st1.1.1.1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T10.st1.1.1.1.1.1.1.2.1" style="font-size:80%;">EN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.2.2.2.2" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.2.2.2.2.1" style="width:7.1pt;height:27.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.9pt;transform:translate(-10.41pt,-10.41pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.2.2.2.2.1.1"><span class="ltx_text" id="A1.T10.st1.2.2.2.2.1.1.1" style="font-size:80%;">MMB</span><sup class="ltx_sup" id="A1.T10.st1.2.2.2.2.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T10.st1.2.2.2.2.1.1.2.1" style="font-size:80%;">CN</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.8" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.8.1" style="width:5.5pt;height:25.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:25.8pt;transform:translate(-10.16pt,-10.16pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.8.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.8.1.1.1" style="font-size:80%;">VizWiz</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.9" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.9.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.9.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.9.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.10" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.10.1" style="width:5.5pt;height:29.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.3pt;transform:translate(-11.93pt,-11.93pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.10.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.10.1.1.1" style="font-size:80%;">MM-Vet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.3.3.3.3" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.3.3.3.3.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.24pt,-8.24pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.3.3.3.3.1.1"><span class="ltx_text" id="A1.T10.st1.3.3.3.3.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T10.st1.3.3.3.3.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T10.st1.3.3.3.3.1.1.2.1" style="font-size:80%;">P</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.4.4.4.4" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.4.4.4.4.1" style="width:7.1pt;height:23.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:23.6pt;transform:translate(-8.25pt,-8.25pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.4.4.4.4.1.1"><span class="ltx_text" id="A1.T10.st1.4.4.4.4.1.1.1" style="font-size:80%;">MME</span><sup class="ltx_sup" id="A1.T10.st1.4.4.4.4.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T10.st1.4.4.4.4.1.1.2.1" style="font-size:80%;">C</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.11" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.11.1" style="width:7.1pt;height:39.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.8pt;transform:translate(-16.33pt,-15.56pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.11.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.11.1.1.1" style="font-size:80%;">Seed-Image</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.12" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.12.1" style="width:5.6pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-7.28pt,-7.28pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.12.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.12.1.1.1" style="font-size:80%;">HallB</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.5" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.5.1" style="width:7.1pt;height:30.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:30.9pt;transform:translate(-11.86pt,-11.86pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.5.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.5.1.1.1" style="font-size:80%;">LLaVA</span><sup class="ltx_sup" id="A1.T10.st1.5.5.5.5.1.1.2"><span class="ltx_text ltx_font_italic" id="A1.T10.st1.5.5.5.5.1.1.2.1" style="font-size:80%;">W</span></sup></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.5.13" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st1.5.5.5.13.1" style="width:5.5pt;height:29.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:29.4pt;transform:translate(-11.94pt,-11.94pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st1.5.5.5.13.1.1"><span class="ltx_text" id="A1.T10.st1.5.5.5.13.1.1.1" style="font-size:80%;">MMStar</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.7">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.st1.5.5.7.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.2.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.3.1" style="font-size:80%;">79.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.4.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.5.1" style="font-size:80%;">59.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.6.1" style="font-size:80%;">87.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.7.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.8.1" style="font-size:80%;">1563.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.9.1" style="font-size:80%;">422.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.10.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.11.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.12.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st1.5.5.7.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.7.13.1" style="font-size:80%;">50.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.8">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.8.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.2.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.3.1" style="font-size:80%;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.4.1" style="font-size:80%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.5.1" style="font-size:80%;">66.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.6.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.7.1" style="font-size:80%;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.8.1" style="font-size:80%;">1577.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.9.1" style="font-size:80%;">429.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.10.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.11.1" style="font-size:80%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.12.1" style="font-size:80%;">86.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.8.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.8.13.1" style="font-size:80%;">50.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.9">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.9.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.2.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.3.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.4.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.5.1" style="font-size:80%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.6.1" style="font-size:80%;">88.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.7.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.8.1" style="font-size:80%;">1584.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.9.1" style="font-size:80%;">431.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.10.1" style="font-size:80%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.11.1" style="font-size:80%;">51.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.12.1" style="font-size:80%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.9.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.9.13.1" style="font-size:80%;">49.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.10">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.10.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.2.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.3.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.4.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.5.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.6.1" style="font-size:80%;">88.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.7.1" style="font-size:80%;">59.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.8.1" style="font-size:80%;">1585.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.9.1" style="font-size:80%;">436.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.10.1" style="font-size:80%;">74.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.11.1" style="font-size:80%;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.12.1" style="font-size:80%;">88.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.10.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.10.13.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.11">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.11.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.2.1" style="font-size:80%;">144</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.3.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.4.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.5.1" style="font-size:80%;">65.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.6.1" style="font-size:80%;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.7.1" style="font-size:80%;">61.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.8.1" style="font-size:80%;">1600.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.9.1" style="font-size:80%;">450.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.10.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.11.1" style="font-size:80%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.12.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.11.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.11.13.1" style="font-size:80%;">49.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.12">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.12.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.3.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.4.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.5.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.6.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.7.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.8.1" style="font-size:80%;">1595.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.9.1" style="font-size:80%;">440.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.10.1" style="font-size:80%;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.11.1" style="font-size:80%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.12.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.12.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.12.13.1" style="font-size:80%;">48.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.13">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.1.1" style="font-size:80%;">Cambrian-1 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.13.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.4.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.5.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.6.1" style="font-size:80%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.7.1" style="font-size:80%;">44.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.8.1" style="font-size:80%;">1497.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.9.1" style="font-size:80%;">355.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.10.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.11.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.12.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.13.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.13.13.1" style="font-size:80%;">47.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.14">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.1.1" style="font-size:80%;">Cambrian-1 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.14.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.3.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.4.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.5.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.6.1" style="font-size:80%;">87.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.7.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.8.1" style="font-size:80%;">1547.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.9.1" style="font-size:80%;">372.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.10.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.11.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.12.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.14.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.14.13.1" style="font-size:80%;">50.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.15">
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st1.5.5.15.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.3.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.4.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.6.1" style="font-size:80%;">88.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.7.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.8.1" style="font-size:80%;">1498.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.9.1" style="font-size:80%;">403.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.10.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.11.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.12.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st1.5.5.15.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.15.13.1" style="font-size:80%;">44.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st1.5.5.16">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T10.st1.5.5.16.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.3.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.5.1" style="font-size:80%;">59.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.6.1" style="font-size:80%;">89.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.7.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.8.1" style="font-size:80%;">1560.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.9.1" style="font-size:80%;">381.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.10.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.11.1" style="font-size:80%;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.12.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st1.5.5.16.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st1.5.5.16.13.1" style="font-size:80%;">50.0</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the performance comparison results of different multimodal large language models (MLLMs) on general multimodal benchmark datasets.  It shows the performance scores across various metrics for each model, allowing for a comprehensive comparison of their capabilities in handling diverse multimodal tasks.
> <details>
> <summary>read the caption</summary>
> (a) Results on general multimodal benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T10.st2.6.1">
<tr class="ltx_tr" id="A1.T10.st2.6.1.1">
<td class="ltx_td ltx_align_center" colspan="2" id="A1.T10.st2.6.1.1.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.1.1.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T10.st2.6.1.1.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.1.2.1" style="font-size:80%;">Vision Centric</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T10.st2.6.1.1.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.1.3.1" style="font-size:80%;">Knowledge Based</span></td>
<td class="ltx_td ltx_align_center" colspan="4" id="A1.T10.st2.6.1.1.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.1.4.1" style="font-size:80%;">OCR &amp; Chart</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.2">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.2.1.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.2.2" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.2.1" style="width:7.1pt;height:62.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:62.6pt;transform:translate(-27.74pt,-26.97pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.2.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.2.1.1.1" style="font-size:80%;"># Latent Vis tok.</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.3" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.3.1" style="width:5.5pt;height:36pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:36.0pt;transform:translate(-15.27pt,-15.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.3.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.3.1.1.1" style="font-size:80%;">MME-RW</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.4" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.4.1" style="width:7.1pt;height:49.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:49.2pt;transform:translate(-21.07pt,-20.29pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.4.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.4.1.1.1" style="font-size:80%;">RealWorldQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.5" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.5.1" style="width:5.6pt;height:33.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:33.2pt;transform:translate(-13.83pt,-13.83pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.5.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.5.1.1.1" style="font-size:80%;">CVBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.2.6" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.6.1" style="width:5.5pt;height:26.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.1pt;transform:translate(-10.32pt,-10.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.6.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.6.1.1.1" style="font-size:80%;">MMVP</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.7" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.7.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.7.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.7.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.8" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.8.1" style="width:5.6pt;height:37.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.4pt;transform:translate(-15.91pt,-15.91pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.8.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.8.1.1.1" style="font-size:80%;">MathVista</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.9" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.9.1" style="width:5.5pt;height:28pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.0pt;transform:translate(-11.27pt,-11.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.9.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.9.1.1.1" style="font-size:80%;">MMMU</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.2.10" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.10.1" style="width:7.0pt;height:16.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.7pt;transform:translate(-4.82pt,-4.04pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.10.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.10.1.1.1" style="font-size:80%;">SQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.11" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.11.1" style="width:7.0pt;height:34pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.0pt;transform:translate(-13.49pt,-12.71pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.11.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.11.1.1.1" style="font-size:80%;">TextVQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.12" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.12.1" style="width:5.6pt;height:39.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.3pt;transform:translate(-16.89pt,-16.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.12.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.12.1.1.1" style="font-size:80%;">OCRBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.13" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.13.1" style="width:7.1pt;height:32.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:32.7pt;transform:translate(-12.79pt,-12.01pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.13.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.13.1.1.1" style="font-size:80%;">ChartQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.2.14" style="padding:0.8pt 9.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T10.st2.6.1.2.14.1" style="width:7.0pt;height:31.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:31.9pt;transform:translate(-12.43pt,-11.66pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T10.st2.6.1.2.14.1.1"><span class="ltx_text" id="A1.T10.st2.6.1.2.14.1.1.1" style="font-size:80%;">DocVQA</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.st2.6.1.3.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.2.1" style="font-size:80%;">0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.3.1" style="font-size:80%;">41.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.4.1" style="font-size:80%;">61.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.5.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.st2.6.1.3.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.6.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.7.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.8.1" style="font-size:80%;">52.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.9.1" style="font-size:80%;">44.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T10.st2.6.1.3.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.10.1" style="font-size:80%;">86.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.11.1" style="font-size:80%;">68.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.12.1" style="font-size:80%;">58.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.13.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T10.st2.6.1.3.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.3.14.1" style="font-size:80%;">62.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.4">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.4.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.2.1" style="font-size:80%;">4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.3.1" style="font-size:80%;">41.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.4.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.5.1" style="font-size:80%;">78.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.4.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.6.1" style="font-size:80%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.7.1" style="font-size:80%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.8.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.9.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.4.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.10.1" style="font-size:80%;">87.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.11.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.12.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.13.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.4.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.4.14.1" style="font-size:80%;">66.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.5">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.5.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.2.1" style="font-size:80%;">16</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.3.1" style="font-size:80%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.4.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.5.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.5.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.6.1" style="font-size:80%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.7.1" style="font-size:80%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.8.1" style="font-size:80%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.9.1" style="font-size:80%;">43.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.5.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.10.1" style="font-size:80%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.11.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.12.1" style="font-size:80%;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.13.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.5.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.5.14.1" style="font-size:80%;">69.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.6">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.6.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.2.1" style="font-size:80%;">64</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.3.1" style="font-size:80%;">41.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.4.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.5.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.6.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.6.1" style="font-size:80%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.7.1" style="font-size:80%;">79.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.8.1" style="font-size:80%;">53.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.9.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.6.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.10.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.11.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.12.1" style="font-size:80%;">64.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.13.1" style="font-size:80%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.6.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.6.14.1" style="font-size:80%;">73.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.7">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.7.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.2.1" style="font-size:80%;">144</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.3.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.4.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.5.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.7.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.6.1" style="font-size:80%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.7.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.8.1" style="font-size:80%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.9.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.7.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.10.1" style="font-size:80%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.11.1" style="font-size:80%;">75.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.12.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.13.1" style="font-size:80%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.7.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.7.14.1" style="font-size:80%;">75.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.8">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.1.1" style="font-size:80%;">FUSION-X 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.8.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.2.1" style="font-size:80%;">256</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.3.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.4.1" style="font-size:80%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.5.1" style="font-size:80%;">78.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.8.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.6.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.7.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.8.1" style="font-size:80%;">54.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.9.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.8.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.10.1" style="font-size:80%;">86.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.11.1" style="font-size:80%;">75.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.12.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.13.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.8.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.8.14.1" style="font-size:80%;">77.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.9">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.1.1" style="font-size:80%;">Cambrian-1 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.9.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.3.1" style="font-size:80%;">38.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.4.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.5.1" style="font-size:80%;">68.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.9.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.6.1" style="font-size:80%;">40.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.7.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.8.1" style="font-size:80%;">48.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.9.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.10.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.11.1" style="font-size:80%;">68.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.12.1" style="font-size:80%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.13.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.9.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.9.14.1" style="font-size:80%;">66.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.10">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.1.1" style="font-size:80%;">Cambrian-1 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.10.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.3.1" style="font-size:80%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.5.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.10.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.6.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.7.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.8.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.9.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.10.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.10.1" style="font-size:80%;">80.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.11.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.12.1" style="font-size:80%;">62.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.13.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.10.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.10.14.1" style="font-size:80%;">77.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.11">
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.1.1" style="font-size:80%;">Florence-VL 3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.11.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.3.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.4.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.5.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.11.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.6.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.7.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.8.1" style="font-size:80%;">52.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.9.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T10.st2.6.1.11.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.10.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.11.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.12.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.13.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T10.st2.6.1.11.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.11.14.1" style="font-size:80%;">70.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T10.st2.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.1" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.1.1" style="font-size:80%;">Florence-VL 8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T10.st2.6.1.12.2" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.2.1" style="font-size:80%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.3" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.3.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.4" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.4.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.5" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.5.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T10.st2.6.1.12.6" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.6.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.7" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.7.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.8" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.8.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.9" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.9.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T10.st2.6.1.12.10" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.10.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.11" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.11.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.12" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.12.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.13" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.13.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T10.st2.6.1.12.14" style="padding:0.8pt 9.0pt;"><span class="ltx_text" id="A1.T10.st2.6.1.12.14.1" style="font-size:80%;">75.1</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a performance comparison of various models on vision-centric, knowledge-based, and OCR & chart benchmark tasks.  It shows the performance scores for different models across several metrics, likely including accuracy or F1-score, for each benchmark category. The table helps analyze the relative strengths and weaknesses of different models in these specific areas of vision-language understanding.
> <details>
> <summary>read the caption</summary>
> (b) Results on Vision centric, Knowledge based, and OCR & Chart benchmarks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A1.T11.6.1">
<tr class="ltx_tr" id="A1.T11.6.1.1">
<td class="ltx_td ltx_border_r" id="A1.T11.6.1.1.1" style="padding:1.2pt 4.0pt;"></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.2" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.2.1" style="width:7.2pt;height:59.9pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:59.9pt;transform:translate(-26.37pt,-25.57pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.2.1.1"><span class="ltx_text" id="A1.T11.6.1.1.2.1.1.1" style="font-size:80%;">SeedBench_IMG</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.3" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.3.1" style="width:7.2pt;height:81pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:81.0pt;transform:translate(-36.9pt,-36.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.3.1.1"><span class="ltx_text" id="A1.T11.6.1.1.3.1.1.1" style="font-size:80%;">MMBench_TEST_EN</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.4" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.4.1" style="width:7.2pt;height:81.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:81.3pt;transform:translate(-37.07pt,-36.27pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.4.1.1"><span class="ltx_text" id="A1.T11.6.1.1.4.1.1.1" style="font-size:80%;">MMBench_TEST_CN</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.5" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.5.1" style="width:5.5pt;height:20.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:20.1pt;transform:translate(-7.32pt,-7.32pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.5.1.1"><span class="ltx_text" id="A1.T11.6.1.1.5.1.1.1" style="font-size:80%;">MME</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.6" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.6.1" style="width:5.5pt;height:26.7pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:26.7pt;transform:translate(-10.6pt,-10.6pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.6.1.1"><span class="ltx_text" id="A1.T11.6.1.1.6.1.1.1" style="font-size:80%;">MMVet</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.7" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.7.1" style="width:7.2pt;height:50.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:50.1pt;transform:translate(-21.46pt,-20.66pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.7.1.1"><span class="ltx_text" id="A1.T11.6.1.1.7.1.1.1" style="font-size:80%;">MMMU_VAL</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.8" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.8.1" style="width:5.6pt;height:37.4pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:37.4pt;transform:translate(-15.91pt,-15.91pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.8.1.1"><span class="ltx_text" id="A1.T11.6.1.1.8.1.1.1" style="font-size:80%;">MathVista</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.9" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.9.1" style="width:5.6pt;height:54.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:54.2pt;transform:translate(-24.3pt,-24.3pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.9.1.1"><span class="ltx_text" id="A1.T11.6.1.1.9.1.1.1" style="font-size:80%;">HallusionBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.10" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.10.1" style="width:5.6pt;height:46.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:46.6pt;transform:translate(-20.5pt,-20.5pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.10.1.1"><span class="ltx_text" id="A1.T11.6.1.1.10.1.1.1" style="font-size:80%;">LLaVABench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.11" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.11.1" style="width:5.5pt;height:19pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:19.0pt;transform:translate(-6.77pt,-6.77pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.11.1.1"><span class="ltx_text" id="A1.T11.6.1.1.11.1.1.1" style="font-size:80%;">AI2D</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.12" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.12.1" style="width:7.2pt;height:65pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:65.0pt;transform:translate(-28.9pt,-28.1pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.12.1.1"><span class="ltx_text" id="A1.T11.6.1.1.12.1.1.1" style="font-size:80%;">ScienceQA_TEST</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.13" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.13.1" style="width:5.5pt;height:28.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:28.1pt;transform:translate(-11.3pt,-11.3pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.13.1.1"><span class="ltx_text" id="A1.T11.6.1.1.13.1.1.1" style="font-size:80%;">MMstar</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.14" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.14.1" style="width:5.6pt;height:39.3pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:39.3pt;transform:translate(-16.89pt,-16.89pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.14.1.1"><span class="ltx_text" id="A1.T11.6.1.1.14.1.1.1" style="font-size:80%;">OCRBench</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.15" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.15.1" style="width:7.1pt;height:49.2pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:49.2pt;transform:translate(-21.07pt,-20.29pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.15.1.1"><span class="ltx_text" id="A1.T11.6.1.1.15.1.1.1" style="font-size:80%;">RealWorldQA</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.16" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.16.1" style="width:7.2pt;height:56.8pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:56.8pt;transform:translate(-24.79pt,-23.99pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.16.1.1"><span class="ltx_text" id="A1.T11.6.1.1.16.1.1.1" style="font-size:80%;">TextVQA_VAL</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.17" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.17.1" style="width:7.2pt;height:60.1pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:60.1pt;transform:translate(-26.47pt,-25.67pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.17.1.1"><span class="ltx_text" id="A1.T11.6.1.1.17.1.1.1" style="font-size:80%;">ChartQA_TEST</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.18" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.18.1" style="width:7.2pt;height:63.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:63.6pt;transform:translate(-28.18pt,-27.38pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.18.1.1"><span class="ltx_text" id="A1.T11.6.1.1.18.1.1.1" style="font-size:80%;">DOCVQA_TEST</span></p>
</span></div>
</td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.1.19" style="padding:1.2pt 4.0pt;">
<div class="ltx_inline-block ltx_transformed_outer" id="A1.T11.6.1.1.19.1" style="width:5.5pt;height:22.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.6pt;transform:translate(-8.54pt,-8.54pt) rotate(-90deg) ;">
<p class="ltx_p" id="A1.T11.6.1.1.19.1.1"><span class="ltx_text" id="A1.T11.6.1.1.19.1.1.1" style="font-size:80%;">POPE</span></p>
</span></div>
</td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A1.T11.6.1.2.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.1.1" style="font-size:80%;">VITA-1.5-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.2.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.3.1" style="font-size:80%;">79.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.4.1" style="font-size:80%;">78.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.5.1" style="font-size:80%;">2328</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.6.1" style="font-size:80%;">52.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.7.1" style="font-size:80%;">52.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.8.1" style="font-size:80%;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.9.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.10.1" style="font-size:80%;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.11.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.12.1" style="font-size:80%;">95.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.13.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.14.1" style="font-size:80%;">74.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.15.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.16.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.17.1" style="font-size:80%;">84.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.18.1" style="font-size:80%;">92.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A1.T11.6.1.2.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.2.19.1" style="font-size:80%;">88.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.3">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.3.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.1.1" style="font-size:80%;">Molmo-1B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.2.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.3.1" style="font-size:80%;">64.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.4.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.5.1" style="font-size:80%;">1470</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.6.1" style="font-size:80%;">37.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.7.1" style="font-size:80%;">33.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.8.1" style="font-size:80%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.9.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.10.1" style="font-size:80%;">66.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.11.1" style="font-size:80%;">86.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.12.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.13.1" style="font-size:80%;">43.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.14.1" style="font-size:80%;">54.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.15.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.16.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.17.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.18.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.3.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.3.19.1" style="font-size:80%;">86.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.4.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.1.1" style="font-size:80%;">Molmo-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.2.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.3.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.4.1" style="font-size:80%;">75.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.5.1" style="font-size:80%;">1853</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.6.1" style="font-size:80%;">41.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.7.1" style="font-size:80%;">49.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.8.1" style="font-size:80%;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.9.1" style="font-size:80%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.10.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.11.1" style="font-size:80%;">91.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.12.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.13.1" style="font-size:80%;">56.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.14.1" style="font-size:80%;">65.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.15.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.16.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.17.1" style="font-size:80%;">84.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.18.1" style="font-size:80%;">92.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.4.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.4.19.1" style="font-size:80%;">89.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.5.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.1.1" style="font-size:80%;">Eagle-X5-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.2.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.3.1" style="font-size:80%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.4.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.5.1" style="font-size:80%;">1866</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.6.1" style="font-size:80%;">33.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.7.1" style="font-size:80%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.8.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.9.1" style="font-size:80%;">35.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.10.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.11.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.12.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.13.1" style="font-size:80%;">41.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.14.1" style="font-size:80%;">55.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.15.1" style="font-size:80%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.16.1" style="font-size:80%;">70.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.17.1" style="font-size:80%;">66.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.18.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.5.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.5.19.1" style="font-size:80%;">89.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.6.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.1.1" style="font-size:80%;">Eagle-X5-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.2.1" style="font-size:80%;">76.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.3.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.4.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.5.1" style="font-size:80%;">1922</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.6.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.7.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.8.1" style="font-size:80%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.9.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.10.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.11.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.12.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.13.1" style="font-size:80%;">53.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.14.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.15.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.16.1" style="font-size:80%;">77.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.17.1" style="font-size:80%;">80.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.18.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.6.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.6.19.1" style="font-size:80%;">89.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.7.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.1.1" style="font-size:80%;">Eagle-X5-13B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.2.1" style="font-size:80%;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.3.1" style="font-size:80%;">75.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.4.1" style="font-size:80%;">70.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.5.1" style="font-size:80%;">1947</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.6.1" style="font-size:80%;">52.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.7.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.8.1" style="font-size:80%;">54.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.9.1" style="font-size:80%;">47.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.10.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.11.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.12.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.13.1" style="font-size:80%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.14.1" style="font-size:80%;">61.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.15.1" style="font-size:80%;">64.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.16.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.17.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.18.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.7.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.7.19.1" style="font-size:80%;">89.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.8.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.1.1" style="font-size:80%;">InternVL2.5-1B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.2.1" style="font-size:80%;">59.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.3.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.4.1" style="font-size:80%;">66.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.5.1" style="font-size:80%;">1950</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.6.1" style="font-size:80%;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.7.1" style="font-size:80%;">41.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.8.1" style="font-size:80%;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.9.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.10.1" style="font-size:80%;">60.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.11.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.12.1" style="font-size:80%;">93.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.13.1" style="font-size:80%;">51.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.14.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.15.1" style="font-size:80%;">57.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.16.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.17.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.18.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.8.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.8.19.1" style="font-size:80%;">89.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.9">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.9.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.1.1" style="font-size:80%;">InternVL2.5-2B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.2.1" style="font-size:80%;">60.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.3.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.4.1" style="font-size:80%;">71.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.5.1" style="font-size:80%;">2138</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.6.1" style="font-size:80%;">62.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.7.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.8.1" style="font-size:80%;">51.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.9.1" style="font-size:80%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.10.1" style="font-size:80%;">62.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.11.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.12.1" style="font-size:80%;">96.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.13.1" style="font-size:80%;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.14.1" style="font-size:80%;">80.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.15.1" style="font-size:80%;">60.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.16.1" style="font-size:80%;">74.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.17.1" style="font-size:80%;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.18.1" style="font-size:80%;">88.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.9.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.9.19.1" style="font-size:80%;">90.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.10">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.10.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.1.1" style="font-size:80%;">InternVL2.5-4B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.2.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.3.1" style="font-size:80%;">81.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.4.1" style="font-size:80%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.5.1" style="font-size:80%;">2338</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.6.1" style="font-size:80%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.7.1" style="font-size:80%;">51.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.8.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.9.1" style="font-size:80%;">46.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.10.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.11.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.12.1" style="font-size:80%;">97.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.13.1" style="font-size:80%;">58.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.14.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.15.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.16.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.17.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.18.1" style="font-size:80%;">91.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.10.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.10.19.1" style="font-size:80%;">90.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.11">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.11.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.1.1" style="font-size:80%;">InternVL2.5-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.2.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.3.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.4.1" style="font-size:80%;">82.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.5.1" style="font-size:80%;">2344</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.6.1" style="font-size:80%;">62.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.7.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.8.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.9.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.10.1" style="font-size:80%;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.11.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.12.1" style="font-size:80%;">98.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.13.1" style="font-size:80%;">63.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.14.1" style="font-size:80%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.15.1" style="font-size:80%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.16.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.17.1" style="font-size:80%;">84.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.18.1" style="font-size:80%;">93.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.11.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.11.19.1" style="font-size:80%;">90.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.12.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.1.1" style="font-size:80%;">LLaVA-OneVision(SI)-0.5B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.2.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.3.1" style="font-size:80%;">55.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.4.1" style="font-size:80%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.5.1" style="font-size:80%;">1392</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.6.1" style="font-size:80%;">32.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.7.1" style="font-size:80%;">36.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.8.1" style="font-size:80%;">32.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.9.1" style="font-size:80%;">31.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.10.1" style="font-size:80%;">61.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.11.1" style="font-size:80%;">53.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.12.1" style="font-size:80%;">67.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.13.1" style="font-size:80%;">37.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.14.1" style="font-size:80%;">56.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.15.1" style="font-size:80%;">46.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.16.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.17.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.18.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.12.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.12.19.1" style="font-size:80%;">86.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.13">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.13.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.1.1" style="font-size:80%;">LLaVA-OneVision(SI)-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.2.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.3.1" style="font-size:80%;">80.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.4.1" style="font-size:80%;">78.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.5.1" style="font-size:80%;">2146</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.6.1" style="font-size:80%;">50.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.7.1" style="font-size:80%;">46.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.8.1" style="font-size:80%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.9.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.10.1" style="font-size:80%;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.11.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.12.1" style="font-size:80%;">86.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.13.1" style="font-size:80%;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.14.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.15.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.16.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.17.1" style="font-size:80%;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.18.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.13.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.13.19.1" style="font-size:80%;">87.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.14.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.1.1" style="font-size:80%;">VILA1.5-3B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.2.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.3.1" style="font-size:80%;">64.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.4.1" style="font-size:80%;">56.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.5.1" style="font-size:80%;">1647</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.6.1" style="font-size:80%;">38.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.7.1" style="font-size:80%;">34.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.8.1" style="font-size:80%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.9.1" style="font-size:80%;">31.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.10.1" style="font-size:80%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.11.1" style="font-size:80%;">57.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.12.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.13.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.14.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.15.1" style="font-size:80%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.16.1" style="font-size:80%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.17.1" style="font-size:80%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.18.1" style="font-size:80%;">39.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.14.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.14.19.1" style="font-size:80%;">86.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.15">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.15.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.1.1" style="font-size:80%;">VILA1.5-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.2.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.3.1" style="font-size:80%;">62.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.4.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.5.1" style="font-size:80%;">1698</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.6.1" style="font-size:80%;">41.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.7.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.8.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.9.1" style="font-size:80%;">35.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.10.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.11.1" style="font-size:80%;">58.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.12.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.13.1" style="font-size:80%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.14.1" style="font-size:80%;">43.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.15.1" style="font-size:80%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.16.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.17.1" style="font-size:80%;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.18.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.15.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.15.19.1" style="font-size:80%;">83.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.16.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.1.1" style="font-size:80%;">VILA1.5-13B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.2.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.3.1" style="font-size:80%;">74.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.4.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.5.1" style="font-size:80%;">1718</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.6.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.7.1" style="font-size:80%;">41.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.8.1" style="font-size:80%;">42.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.9.1" style="font-size:80%;">39.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.10.1" style="font-size:80%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.11.1" style="font-size:80%;">69.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.12.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.13.1" style="font-size:80%;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.14.1" style="font-size:80%;">46.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.15.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.16.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.17.1" style="font-size:80%;">59.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.18.1" style="font-size:80%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.16.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.16.19.1" style="font-size:80%;">85.0</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.17">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.17.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.1.1" style="font-size:80%;">Cambrian-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.2.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.4.1" style="font-size:80%;">67.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.5.1" style="font-size:80%;">1802</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.6.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.7.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.8.1" style="font-size:80%;">48.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.9.1" style="font-size:80%;">30.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.10.1" style="font-size:80%;">71.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.11.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.12.1" style="font-size:80%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.13.1" style="font-size:80%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.14.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.15.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.16.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.17.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.18.1" style="font-size:80%;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.17.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.17.19.1" style="font-size:80%;">86.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.18">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.18.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.1.1" style="font-size:80%;">Cambrian-13B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.2.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.3.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.4.1" style="font-size:80%;">65.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.5.1" style="font-size:80%;">1876</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.6.1" style="font-size:80%;">48.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.7.1" style="font-size:80%;">41.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.8.1" style="font-size:80%;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.9.1" style="font-size:80%;">39.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.10.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.11.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.12.1" style="font-size:80%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.13.1" style="font-size:80%;">47.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.14.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.15.1" style="font-size:80%;">58.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.16.1" style="font-size:80%;">72.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.17.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.18.1" style="font-size:80%;">76.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.18.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.18.19.1" style="font-size:80%;">86.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.19">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.19.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.1.1" style="font-size:80%;">Florence-VL-3B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.2.1" style="font-size:80%;">70.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.3.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.4.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.5.1" style="font-size:80%;">1902</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.6.1" style="font-size:80%;">51.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.7.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.8.1" style="font-size:80%;">52.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.9.1" style="font-size:80%;">58.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.10.1" style="font-size:80%;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.11.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.12.1" style="font-size:80%;">84.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.13.1" style="font-size:80%;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.14.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.15.1" style="font-size:80%;">60.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.16.1" style="font-size:80%;">69.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.17.1" style="font-size:80%;">70.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.18.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.19.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.19.19.1" style="font-size:80%;">88.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.20">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.20.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.1.1" style="font-size:80%;">Florence-VL-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.2.1" style="font-size:80%;">74.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.3.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.5.1" style="font-size:80%;">1941</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.6.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.7.1" style="font-size:80%;">43.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.8.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.9.1" style="font-size:80%;">57.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.10.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.11.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.12.1" style="font-size:80%;">85.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.13.1" style="font-size:80%;">50.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.14.1" style="font-size:80%;">63.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.15.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.16.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.17.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.18.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.20.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.20.19.1" style="font-size:80%;">89.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.21">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.21.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.1.1" style="font-size:80%;">Qwen2-VL-2B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.2.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.3.1" style="font-size:80%;">74.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.4.1" style="font-size:80%;">73.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.5.1" style="font-size:80%;">1899</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.6.1" style="font-size:80%;">51.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.7.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.8.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.9.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.10.1" style="font-size:80%;">50.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.11.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.12.1" style="font-size:80%;">78.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.13.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.14.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.15.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.16.1" style="font-size:80%;">79.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.17.1" style="font-size:80%;">73.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.18.1" style="font-size:80%;">90.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.21.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.21.19.1" style="font-size:80%;">87.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.22">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.22.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.1.1" style="font-size:80%;">Qwen2-VL-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.2.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.3.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.4.1" style="font-size:80%;">80.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.5.1" style="font-size:80%;">2276</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.6.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.7.1" style="font-size:80%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.8.1" style="font-size:80%;">61.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.9.1" style="font-size:80%;">50.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.10.1" style="font-size:80%;">70.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.11.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.12.1" style="font-size:80%;">85.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.13.1" style="font-size:80%;">60.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.14.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.15.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.16.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.17.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.18.1" style="font-size:80%;">94.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.22.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.22.19.1" style="font-size:80%;">88.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.23">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.23.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.1.1" style="font-size:80%;">Qwen2.5-VL-3B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.2.1" style="font-size:80%;">74.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.3.1" style="font-size:80%;">79.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.4.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.5.1" style="font-size:80%;">2157</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.6.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.7.1" style="font-size:80%;">53.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.8.1" style="font-size:80%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.9.1" style="font-size:80%;">46.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.10.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.11.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.12.1" style="font-size:80%;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.13.1" style="font-size:80%;">56.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.14.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.15.1" style="font-size:80%;">65.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.16.1" style="font-size:80%;">79.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.17.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.18.1" style="font-size:80%;">93.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.23.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.23.19.1" style="font-size:80%;">87.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.24">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.24.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.1.1" style="font-size:80%;">Qwen2.5-VL-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.2.1" style="font-size:80%;">77.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.3.1" style="font-size:80%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.4.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.5.1" style="font-size:80%;">2312</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.6.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.7.1" style="font-size:80%;">58.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.8.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.9.1" style="font-size:80%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.10.1" style="font-size:80%;">91.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.11.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.12.1" style="font-size:80%;">89.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.13.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.14.1" style="font-size:80%;">88.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.15.1" style="font-size:80%;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.16.1" style="font-size:80%;">84.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.17.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.18.1" style="font-size:80%;">95.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.24.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.24.19.1" style="font-size:80%;">85.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.25">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.25.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.1.1" style="font-size:80%;">InternVL2-1B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.2.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.3.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.4.1" style="font-size:80%;">61.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.5.1" style="font-size:80%;">1808</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.6.1" style="font-size:80%;">31.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.7.1" style="font-size:80%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.8.1" style="font-size:80%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.9.1" style="font-size:80%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.10.1" style="font-size:80%;">52.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.11.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.12.1" style="font-size:80%;">87.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.13.1" style="font-size:80%;">45.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.14.1" style="font-size:80%;">75.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.15.1" style="font-size:80%;">50.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.16.1" style="font-size:80%;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.17.1" style="font-size:80%;">67.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.18.1" style="font-size:80%;">81.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.25.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.25.19.1" style="font-size:80%;">84.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.26">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.26.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.1.1" style="font-size:80%;">InternVL2-2B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.2.1" style="font-size:80%;">70.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.3.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.4.1" style="font-size:80%;">71.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.5.1" style="font-size:80%;">1864</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.6.1" style="font-size:80%;">39.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.7.1" style="font-size:80%;">36.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.8.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.9.1" style="font-size:80%;">38.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.10.1" style="font-size:80%;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.11.1" style="font-size:80%;">94.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.12.1" style="font-size:80%;">94.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.13.1" style="font-size:80%;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.14.1" style="font-size:80%;">78.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.15.1" style="font-size:80%;">57.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.16.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.17.1" style="font-size:80%;">71.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.18.1" style="font-size:80%;">86.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.26.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.26.19.1" style="font-size:80%;">85.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.27">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.27.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.1.1" style="font-size:80%;">InternVL2-4B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.2.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.3.1" style="font-size:80%;">78.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.4.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.5.1" style="font-size:80%;">2064</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.6.1" style="font-size:80%;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.7.1" style="font-size:80%;">48.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.8.1" style="font-size:80%;">58.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.9.1" style="font-size:80%;">42.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.10.1" style="font-size:80%;">68.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.11.1" style="font-size:80%;">96.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.12.1" style="font-size:80%;">96.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.13.1" style="font-size:80%;">53.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.14.1" style="font-size:80%;">78.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.15.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.16.1" style="font-size:80%;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.17.1" style="font-size:80%;">80.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.18.1" style="font-size:80%;">89.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.27.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.27.19.1" style="font-size:80%;">84.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.28">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.28.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.1.1" style="font-size:80%;">InternVL2-8B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.2.1" style="font-size:80%;">75.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.3.1" style="font-size:80%;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.4.1" style="font-size:80%;">80.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.5.1" style="font-size:80%;">2215</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.6.1" style="font-size:80%;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.7.1" style="font-size:80%;">51.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.8.1" style="font-size:80%;">58.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.9.1" style="font-size:80%;">45.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.10.1" style="font-size:80%;">73.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.11.1" style="font-size:80%;">97.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.12.1" style="font-size:80%;">97.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.13.1" style="font-size:80%;">61.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.14.1" style="font-size:80%;">79.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.15.1" style="font-size:80%;">64.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.16.1" style="font-size:80%;">77.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.17.1" style="font-size:80%;">84.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.18.1" style="font-size:80%;">91.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.28.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.28.19.1" style="font-size:80%;">84.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.29">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.29.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.1.1" style="font-size:80%;">Phi-3.5-Vision-4B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.2.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.3.1" style="font-size:80%;">76.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.4.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.5.1" style="font-size:80%;">1838</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.6.1" style="font-size:80%;">43.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.7.1" style="font-size:80%;">44.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.8.1" style="font-size:80%;">43.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.9.1" style="font-size:80%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.10.1" style="font-size:80%;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.11.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.12.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.13.1" style="font-size:80%;">47.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.14.1" style="font-size:80%;">59.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.15.1" style="font-size:80%;">53.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.16.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.17.1" style="font-size:80%;">72.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.18.1" style="font-size:80%;">75.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.29.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.29.19.1" style="font-size:80%;">82.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.30">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.30.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.1.1" style="font-size:80%;">Phi-4.0-5B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.2.1" style="font-size:80%;">73.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.3.1" style="font-size:80%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.4.1" style="font-size:80%;">77.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.5.1" style="font-size:80%;">1961</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.6.1" style="font-size:80%;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.7.1" style="font-size:80%;">56.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.8.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.9.1" style="font-size:80%;">40.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.10.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.11.1" style="font-size:80%;">97.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.12.1" style="font-size:80%;">97.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.13.1" style="font-size:80%;">58.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.14.1" style="font-size:80%;">84.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.15.1" style="font-size:80%;">64.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.16.1" style="font-size:80%;">76.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.17.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.18.1" style="font-size:80%;">93.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.30.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.30.19.1" style="font-size:80%;">85.9</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.31">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.31.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.1.1" style="font-size:80%;">LLaMA3.2-11B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.2.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.3.1" style="font-size:80%;">68.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.4.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.5.1" style="font-size:80%;">1822</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.6.1" style="font-size:80%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.7.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.8.1" style="font-size:80%;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.9.1" style="font-size:80%;">40.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.10.1" style="font-size:80%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.11.1" style="font-size:80%;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.12.1" style="font-size:80%;">83.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.13.1" style="font-size:80%;">49.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.14.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.15.1" style="font-size:80%;">63.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.16.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.17.1" style="font-size:80%;">80.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.18.1" style="font-size:80%;">87.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.31.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.31.19.1" style="font-size:80%;">88.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.32">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.32.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.1.1" style="font-size:80%;">LLaVA-v1.5-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.2.1" style="font-size:80%;">65.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.3.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.4.1" style="font-size:80%;">46.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.5.1" style="font-size:80%;">1808</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.6.1" style="font-size:80%;">32.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.7.1" style="font-size:80%;">35.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.8.1" style="font-size:80%;">25.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.9.1" style="font-size:80%;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.10.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.11.1" style="font-size:80%;">55.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.12.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.13.1" style="font-size:80%;">33.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.14.1" style="font-size:80%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.15.1" style="font-size:80%;">54.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.16.1" style="font-size:80%;">45.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.17.1" style="font-size:80%;">17.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.18.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.32.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.32.19.1" style="font-size:80%;">86.1</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.33">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.33.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.1.1" style="font-size:80%;">LLaVA-v1.5-13B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.2.1" style="font-size:80%;">68.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.3.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.4.1" style="font-size:80%;">58.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.5.1" style="font-size:80%;">1780</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.6.1" style="font-size:80%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.7.1" style="font-size:80%;">37.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.8.1" style="font-size:80%;">27.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.9.1" style="font-size:80%;">24.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.10.1" style="font-size:80%;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.11.1" style="font-size:80%;">61.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.12.1" style="font-size:80%;">72.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.13.1" style="font-size:80%;">34.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.14.1" style="font-size:80%;">33.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.15.1" style="font-size:80%;">55.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.16.1" style="font-size:80%;">48.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.17.1" style="font-size:80%;">18.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.18.1" style="font-size:80%;">50.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.33.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.33.19.1" style="font-size:80%;">88.4</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.34">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.34.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.1.1" style="font-size:80%;">LLaVA-Next-Vicuna-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.2.1" style="font-size:80%;">69.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.3.1" style="font-size:80%;">69.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.4.1" style="font-size:80%;">62.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.5.1" style="font-size:80%;">1769</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.6.1" style="font-size:80%;">40.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.7.1" style="font-size:80%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.8.1" style="font-size:80%;">32.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.9.1" style="font-size:80%;">27.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.10.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.11.1" style="font-size:80%;">67.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.12.1" style="font-size:80%;">70.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.13.1" style="font-size:80%;">37.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.14.1" style="font-size:80%;">53.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.15.1" style="font-size:80%;">57.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.16.1" style="font-size:80%;">63.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.17.1" style="font-size:80%;">54.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.18.1" style="font-size:80%;">57.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.34.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.34.19.1" style="font-size:80%;">87.5</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.35">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.35.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.1.1" style="font-size:80%;">LLaVA-Next-Vicuna-13B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.2.1" style="font-size:80%;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.3.1" style="font-size:80%;">70.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.4.1" style="font-size:80%;">68.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.5.1" style="font-size:80%;">1745</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.6.1" style="font-size:80%;">44.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.7.1" style="font-size:80%;">37.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.8.1" style="font-size:80%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.9.1" style="font-size:80%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.10.1" style="font-size:80%;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.11.1" style="font-size:80%;">72.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.12.1" style="font-size:80%;">73.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.13.1" style="font-size:80%;">40.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.14.1" style="font-size:80%;">53.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.15.1" style="font-size:80%;">57.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.16.1" style="font-size:80%;">66.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.17.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.18.1" style="font-size:80%;">65.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.35.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.35.19.1" style="font-size:80%;">87.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.36">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.36.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.1.1" style="font-size:80%;">MM1.5-1B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.2.1" style="font-size:80%;">70.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.3.1" style="font-size:80%;">65.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.4.1" style="font-size:80%;">63.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.5.1" style="font-size:80%;">1611</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.6.1" style="font-size:80%;">37.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.7.1" style="font-size:80%;">35.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.8.1" style="font-size:80%;">37.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.9.1" style="font-size:80%;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.10.1" style="font-size:80%;">71.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.11.1" style="font-size:80%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.12.1" style="font-size:80%;">82.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.13.1" style="font-size:80%;">30.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.14.1" style="font-size:80%;">60.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.15.1" style="font-size:80%;">53.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.16.1" style="font-size:80%;">72.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.17.1" style="font-size:80%;">67.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.18.1" style="font-size:80%;">81.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.36.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.36.19.1" style="font-size:80%;">84.2</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.37">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.37.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.1.1" style="font-size:80%;">MM1.5-3B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.2.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.3.1" style="font-size:80%;">68.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.4.1" style="font-size:80%;">65.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.5.1" style="font-size:80%;">1798</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.6.1" style="font-size:80%;">41.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.7.1" style="font-size:80%;">37.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.8.1" style="font-size:80%;">44.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.9.1" style="font-size:80%;">35.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.10.1" style="font-size:80%;">73.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.11.1" style="font-size:80%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.12.1" style="font-size:80%;">85.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.13.1" style="font-size:80%;">35.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.14.1" style="font-size:80%;">65.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.15.1" style="font-size:80%;">56.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.16.1" style="font-size:80%;">75.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.17.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.18.1" style="font-size:80%;">87.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.37.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.37.19.1" style="font-size:80%;">85.6</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.38">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.38.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.1.1" style="font-size:80%;">MM1.5-7B</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.2.1" style="font-size:80%;">73.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.3.1" style="font-size:80%;">72.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.5.1" style="font-size:80%;">1861</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.6.1" style="font-size:80%;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.7.1" style="font-size:80%;">41.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.8.1" style="font-size:80%;">47.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.9.1" style="font-size:80%;">40.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.10.1" style="font-size:80%;">74.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.11.1" style="font-size:80%;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.12.1" style="font-size:80%;">89.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.13.1" style="font-size:80%;">42.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.14.1" style="font-size:80%;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.15.1" style="font-size:80%;">62.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.16.1" style="font-size:80%;">76.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.17.1" style="font-size:80%;">78.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.18.1" style="font-size:80%;">88.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.38.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.38.19.1" style="font-size:80%;">86.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.39" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.39.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 3B(Ours)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.2.1" style="font-size:80%;background-color:#F2FFF2;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.3.1" style="font-size:80%;background-color:#F2FFF2;">80.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.4.1" style="font-size:80%;background-color:#F2FFF2;">74.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.5.1" style="font-size:80%;background-color:#F2FFF2;">2011</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.6.1" style="font-size:80%;background-color:#F2FFF2;">60.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.7.1" style="font-size:80%;background-color:#F2FFF2;">44.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.8.1" style="font-size:80%;background-color:#F2FFF2;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.9.1" style="font-size:80%;background-color:#F2FFF2;">51.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.10.1" style="font-size:80%;background-color:#F2FFF2;">85.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.11.1" style="font-size:80%;background-color:#F2FFF2;">79.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.12.1" style="font-size:80%;background-color:#F2FFF2;">87.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.13.1" style="font-size:80%;background-color:#F2FFF2;">50.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.14.1" style="font-size:80%;background-color:#F2FFF2;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.15.1" style="font-size:80%;background-color:#F2FFF2;">63.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.16.1" style="font-size:80%;background-color:#F2FFF2;">73.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.17.1" style="font-size:80%;background-color:#F2FFF2;">75.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.18.1" style="font-size:80%;background-color:#F2FFF2;">71.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.39.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.39.19.1" style="font-size:80%;background-color:#F2FFF2;">88.7</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.40" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.40.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X 8B(Ours)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.2.1" style="font-size:80%;background-color:#F2FFF2;">78.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.3.1" style="font-size:80%;background-color:#F2FFF2;">82.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.4.1" style="font-size:80%;background-color:#F2FFF2;">76.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.5.1" style="font-size:80%;background-color:#F2FFF2;">1955</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.6.1" style="font-size:80%;background-color:#F2FFF2;">60.0</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.7.1" style="font-size:80%;background-color:#F2FFF2;">42.2</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.8.1" style="font-size:80%;background-color:#F2FFF2;">59.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.9.1" style="font-size:80%;background-color:#F2FFF2;">51.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.10.1" style="font-size:80%;background-color:#F2FFF2;">88.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.11.1" style="font-size:80%;background-color:#F2FFF2;">81.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.12.1" style="font-size:80%;background-color:#F2FFF2;">90.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.13.1" style="font-size:80%;background-color:#F2FFF2;">52.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.14.1" style="font-size:80%;background-color:#F2FFF2;">66.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.15.1" style="font-size:80%;background-color:#F2FFF2;">66.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.16.1" style="font-size:80%;background-color:#F2FFF2;">74.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.17.1" style="font-size:80%;background-color:#F2FFF2;">79.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.18.1" style="font-size:80%;background-color:#F2FFF2;">77.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.40.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.40.19.1" style="font-size:80%;background-color:#F2FFF2;">88.8</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.41" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_r" id="A1.T11.6.1.41.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 3B(Ours)</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.2.1" style="font-size:80%;background-color:#F2FFF2;">74.1</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.3.1" style="font-size:80%;background-color:#F2FFF2;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.4.1" style="font-size:80%;background-color:#F2FFF2;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.5.1" style="font-size:80%;background-color:#F2FFF2;">1980</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.6.1" style="font-size:80%;background-color:#F2FFF2;">56.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.7.1" style="font-size:80%;background-color:#F2FFF2;">43.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.8.1" style="font-size:80%;background-color:#F2FFF2;">48.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.9.1" style="font-size:80%;background-color:#F2FFF2;">48.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.10.1" style="font-size:80%;background-color:#F2FFF2;">77.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.11.1" style="font-size:80%;background-color:#F2FFF2;">77.3</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.12.1" style="font-size:80%;background-color:#F2FFF2;">85.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.13.1" style="font-size:80%;background-color:#F2FFF2;">47.7</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.14.1" style="font-size:80%;background-color:#F2FFF2;">54.9</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.15.1" style="font-size:80%;background-color:#F2FFF2;">61.8</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.16.1" style="font-size:80%;background-color:#F2FFF2;">71.4</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.17.1" style="font-size:80%;background-color:#F2FFF2;">67.6</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.18.1" style="font-size:80%;background-color:#F2FFF2;">63.5</span></td>
<td class="ltx_td ltx_align_center" id="A1.T11.6.1.41.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.41.19.1" style="font-size:80%;background-color:#F2FFF2;">88.3</span></td>
</tr>
<tr class="ltx_tr" id="A1.T11.6.1.42" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_r" id="A1.T11.6.1.42.1" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-L 8B(Ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.2" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.2.1" style="font-size:80%;background-color:#F2FFF2;">75.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.3" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.3.1" style="font-size:80%;background-color:#F2FFF2;">80.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.4" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.4.1" style="font-size:80%;background-color:#F2FFF2;">73.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.5" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.5.1" style="font-size:80%;background-color:#F2FFF2;">1938</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.6" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.6.1" style="font-size:80%;background-color:#F2FFF2;">57.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.7" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.7.1" style="font-size:80%;background-color:#F2FFF2;">41.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.8" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.8.1" style="font-size:80%;background-color:#F2FFF2;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.9" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.9.1" style="font-size:80%;background-color:#F2FFF2;">46.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.10" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.10.1" style="font-size:80%;background-color:#F2FFF2;">82.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.11" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.11.1" style="font-size:80%;background-color:#F2FFF2;">79.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.12" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.12.1" style="font-size:80%;background-color:#F2FFF2;">88.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.13" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.13.1" style="font-size:80%;background-color:#F2FFF2;">49.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.14" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.14.1" style="font-size:80%;background-color:#F2FFF2;">59.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.15" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.15.1" style="font-size:80%;background-color:#F2FFF2;">65.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.16" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.16.1" style="font-size:80%;background-color:#F2FFF2;">72.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.17" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.17.1" style="font-size:80%;background-color:#F2FFF2;">73.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.18" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.18.1" style="font-size:80%;background-color:#F2FFF2;">66.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="A1.T11.6.1.42.19" style="padding:1.2pt 4.0pt;"><span class="ltx_text" id="A1.T11.6.1.42.19.1" style="font-size:80%;background-color:#F2FFF2;">88.5</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table provides a comprehensive comparison of various large language models (LLMs) across a wide range of benchmark tasks.  It details the performance of each model on metrics relevant to general multimodal understanding, vision-centric tasks (like object recognition and image captioning), knowledge-based reasoning, and Optical Character Recognition (OCR) and chart understanding. The goal is to offer a detailed and nuanced performance comparison, enabling a thorough assessment of the strengths and weaknesses of each model across diverse evaluation criteria.
> <details>
> <summary>read the caption</summary>
> Table 11: Comprehensive Benchmark Results Across All Models. We present a detailed comparison of benchmark metrics for all evaluated models, enabling a thorough assessment of their performance across various evaluation tasks.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T12.56.32">
<tr class="ltx_tr" id="A3.T12.56.32.33" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="13" id="A3.T12.56.32.33.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_italic" id="A3.T12.56.32.33.1.1" style="font-size:80%;background-color:#F2F2F2;">Ablation</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.40.16.16">
<td class="ltx_td ltx_align_center" id="A3.T12.40.16.16.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.40.16.16.17.1" style="font-size:80%;">TUNE</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.40.16.16.18" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.40.16.16.18.1" style="font-size:80%;">CARD</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.25.1.1.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="R_{1}" class="ltx_Math" display="inline" id="A3.T12.25.1.1.1.m1.1"><semantics id="A3.T12.25.1.1.1.m1.1a"><msub id="A3.T12.25.1.1.1.m1.1.1" xref="A3.T12.25.1.1.1.m1.1.1.cmml"><mi id="A3.T12.25.1.1.1.m1.1.1.2" mathsize="80%" xref="A3.T12.25.1.1.1.m1.1.1.2.cmml">R</mi><mn id="A3.T12.25.1.1.1.m1.1.1.3" mathsize="80%" xref="A3.T12.25.1.1.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.25.1.1.1.m1.1b"><apply id="A3.T12.25.1.1.1.m1.1.1.cmml" xref="A3.T12.25.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.25.1.1.1.m1.1.1.1.cmml" xref="A3.T12.25.1.1.1.m1.1.1">subscript</csymbol><ci id="A3.T12.25.1.1.1.m1.1.1.2.cmml" xref="A3.T12.25.1.1.1.m1.1.1.2">𝑅</ci><cn id="A3.T12.25.1.1.1.m1.1.1.3.cmml" type="integer" xref="A3.T12.25.1.1.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.25.1.1.1.m1.1c">R_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.25.1.1.1.m1.1d">italic_R start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.26.2.2.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="R_{2}" class="ltx_Math" display="inline" id="A3.T12.26.2.2.2.m1.1"><semantics id="A3.T12.26.2.2.2.m1.1a"><msub id="A3.T12.26.2.2.2.m1.1.1" xref="A3.T12.26.2.2.2.m1.1.1.cmml"><mi id="A3.T12.26.2.2.2.m1.1.1.2" mathsize="80%" xref="A3.T12.26.2.2.2.m1.1.1.2.cmml">R</mi><mn id="A3.T12.26.2.2.2.m1.1.1.3" mathsize="80%" xref="A3.T12.26.2.2.2.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.26.2.2.2.m1.1b"><apply id="A3.T12.26.2.2.2.m1.1.1.cmml" xref="A3.T12.26.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.26.2.2.2.m1.1.1.1.cmml" xref="A3.T12.26.2.2.2.m1.1.1">subscript</csymbol><ci id="A3.T12.26.2.2.2.m1.1.1.2.cmml" xref="A3.T12.26.2.2.2.m1.1.1.2">𝑅</ci><cn id="A3.T12.26.2.2.2.m1.1.1.3.cmml" type="integer" xref="A3.T12.26.2.2.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.26.2.2.2.m1.1c">R_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.26.2.2.2.m1.1d">italic_R start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.27.3.3.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{1}" class="ltx_Math" display="inline" id="A3.T12.27.3.3.3.m1.1"><semantics id="A3.T12.27.3.3.3.m1.1a"><msub id="A3.T12.27.3.3.3.m1.1.1" xref="A3.T12.27.3.3.3.m1.1.1.cmml"><mi id="A3.T12.27.3.3.3.m1.1.1.2" mathsize="80%" xref="A3.T12.27.3.3.3.m1.1.1.2.cmml">S</mi><mn id="A3.T12.27.3.3.3.m1.1.1.3" mathsize="80%" xref="A3.T12.27.3.3.3.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.27.3.3.3.m1.1b"><apply id="A3.T12.27.3.3.3.m1.1.1.cmml" xref="A3.T12.27.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.27.3.3.3.m1.1.1.1.cmml" xref="A3.T12.27.3.3.3.m1.1.1">subscript</csymbol><ci id="A3.T12.27.3.3.3.m1.1.1.2.cmml" xref="A3.T12.27.3.3.3.m1.1.1.2">𝑆</ci><cn id="A3.T12.27.3.3.3.m1.1.1.3.cmml" type="integer" xref="A3.T12.27.3.3.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.27.3.3.3.m1.1c">S_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.27.3.3.3.m1.1d">italic_S start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.28.4.4.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{2}" class="ltx_Math" display="inline" id="A3.T12.28.4.4.4.m1.1"><semantics id="A3.T12.28.4.4.4.m1.1a"><msub id="A3.T12.28.4.4.4.m1.1.1" xref="A3.T12.28.4.4.4.m1.1.1.cmml"><mi id="A3.T12.28.4.4.4.m1.1.1.2" mathsize="80%" xref="A3.T12.28.4.4.4.m1.1.1.2.cmml">S</mi><mn id="A3.T12.28.4.4.4.m1.1.1.3" mathsize="80%" xref="A3.T12.28.4.4.4.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.28.4.4.4.m1.1b"><apply id="A3.T12.28.4.4.4.m1.1.1.cmml" xref="A3.T12.28.4.4.4.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.28.4.4.4.m1.1.1.1.cmml" xref="A3.T12.28.4.4.4.m1.1.1">subscript</csymbol><ci id="A3.T12.28.4.4.4.m1.1.1.2.cmml" xref="A3.T12.28.4.4.4.m1.1.1.2">𝑆</ci><cn id="A3.T12.28.4.4.4.m1.1.1.3.cmml" type="integer" xref="A3.T12.28.4.4.4.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.28.4.4.4.m1.1c">S_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.28.4.4.4.m1.1d">italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.29.5.5.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{3}" class="ltx_Math" display="inline" id="A3.T12.29.5.5.5.m1.1"><semantics id="A3.T12.29.5.5.5.m1.1a"><msub id="A3.T12.29.5.5.5.m1.1.1" xref="A3.T12.29.5.5.5.m1.1.1.cmml"><mi id="A3.T12.29.5.5.5.m1.1.1.2" mathsize="80%" xref="A3.T12.29.5.5.5.m1.1.1.2.cmml">S</mi><mn id="A3.T12.29.5.5.5.m1.1.1.3" mathsize="80%" xref="A3.T12.29.5.5.5.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.29.5.5.5.m1.1b"><apply id="A3.T12.29.5.5.5.m1.1.1.cmml" xref="A3.T12.29.5.5.5.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.29.5.5.5.m1.1.1.1.cmml" xref="A3.T12.29.5.5.5.m1.1.1">subscript</csymbol><ci id="A3.T12.29.5.5.5.m1.1.1.2.cmml" xref="A3.T12.29.5.5.5.m1.1.1.2">𝑆</ci><cn id="A3.T12.29.5.5.5.m1.1.1.3.cmml" type="integer" xref="A3.T12.29.5.5.5.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.29.5.5.5.m1.1c">S_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.29.5.5.5.m1.1d">italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.30.6.6.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{0}" class="ltx_Math" display="inline" id="A3.T12.30.6.6.6.m1.1"><semantics id="A3.T12.30.6.6.6.m1.1a"><msub id="A3.T12.30.6.6.6.m1.1.1" xref="A3.T12.30.6.6.6.m1.1.1.cmml"><mi id="A3.T12.30.6.6.6.m1.1.1.2" mathsize="80%" xref="A3.T12.30.6.6.6.m1.1.1.2.cmml">S</mi><mn id="A3.T12.30.6.6.6.m1.1.1.3" mathsize="80%" xref="A3.T12.30.6.6.6.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.30.6.6.6.m1.1b"><apply id="A3.T12.30.6.6.6.m1.1.1.cmml" xref="A3.T12.30.6.6.6.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.30.6.6.6.m1.1.1.1.cmml" xref="A3.T12.30.6.6.6.m1.1.1">subscript</csymbol><ci id="A3.T12.30.6.6.6.m1.1.1.2.cmml" xref="A3.T12.30.6.6.6.m1.1.1.2">𝑆</ci><cn id="A3.T12.30.6.6.6.m1.1.1.3.cmml" type="integer" xref="A3.T12.30.6.6.6.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.30.6.6.6.m1.1c">S_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.30.6.6.6.m1.1d">italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.32.8.8.8" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{2}" class="ltx_Math" display="inline" id="A3.T12.31.7.7.7.m1.1"><semantics id="A3.T12.31.7.7.7.m1.1a"><msub id="A3.T12.31.7.7.7.m1.1.1" xref="A3.T12.31.7.7.7.m1.1.1.cmml"><mover accent="true" id="A3.T12.31.7.7.7.m1.1.1.2" xref="A3.T12.31.7.7.7.m1.1.1.2.cmml"><mi id="A3.T12.31.7.7.7.m1.1.1.2.2" mathsize="80%" xref="A3.T12.31.7.7.7.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.31.7.7.7.m1.1.1.2.1" mathsize="80%" xref="A3.T12.31.7.7.7.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.31.7.7.7.m1.1.1.3" mathsize="80%" xref="A3.T12.31.7.7.7.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.31.7.7.7.m1.1b"><apply id="A3.T12.31.7.7.7.m1.1.1.cmml" xref="A3.T12.31.7.7.7.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.31.7.7.7.m1.1.1.1.cmml" xref="A3.T12.31.7.7.7.m1.1.1">subscript</csymbol><apply id="A3.T12.31.7.7.7.m1.1.1.2.cmml" xref="A3.T12.31.7.7.7.m1.1.1.2"><ci id="A3.T12.31.7.7.7.m1.1.1.2.1.cmml" xref="A3.T12.31.7.7.7.m1.1.1.2.1">^</ci><ci id="A3.T12.31.7.7.7.m1.1.1.2.2.cmml" xref="A3.T12.31.7.7.7.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.31.7.7.7.m1.1.1.3.cmml" type="integer" xref="A3.T12.31.7.7.7.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.31.7.7.7.m1.1c">\hat{S}_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.31.7.7.7.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{2}-S_{2})" class="ltx_Math" display="inline" id="A3.T12.32.8.8.8.m2.1"><semantics id="A3.T12.32.8.8.8.m2.1a"><mrow id="A3.T12.32.8.8.8.m2.1.1.1" xref="A3.T12.32.8.8.8.m2.1.1.1.1.cmml"><mo id="A3.T12.32.8.8.8.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.32.8.8.8.m2.1.1.1.1" xref="A3.T12.32.8.8.8.m2.1.1.1.1.cmml"><msub id="A3.T12.32.8.8.8.m2.1.1.1.1.2" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.32.8.8.8.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T12.32.8.8.8.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.32.8.8.8.m2.1.1.1.1.3" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3.cmml"><mi id="A3.T12.32.8.8.8.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.32.8.8.8.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3.3.cmml">2</mn></msub></mrow><mo id="A3.T12.32.8.8.8.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.32.8.8.8.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.32.8.8.8.m2.1b"><apply id="A3.T12.32.8.8.8.m2.1.1.1.1.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1"><minus id="A3.T12.32.8.8.8.m2.1.1.1.1.1.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.1"></minus><apply id="A3.T12.32.8.8.8.m2.1.1.1.1.2.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.32.8.8.8.m2.1.1.1.1.2.1.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2"><ci id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.32.8.8.8.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.32.8.8.8.m2.1.1.1.1.2.3">2</cn></apply><apply id="A3.T12.32.8.8.8.m2.1.1.1.1.3.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.32.8.8.8.m2.1.1.1.1.3.1.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.32.8.8.8.m2.1.1.1.1.3.2.cmml" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.32.8.8.8.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.32.8.8.8.m2.1.1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.32.8.8.8.m2.1c">(\hat{S}_{2}-S_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.32.8.8.8.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.34.10.10.10" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{3}" class="ltx_Math" display="inline" id="A3.T12.33.9.9.9.m1.1"><semantics id="A3.T12.33.9.9.9.m1.1a"><msub id="A3.T12.33.9.9.9.m1.1.1" xref="A3.T12.33.9.9.9.m1.1.1.cmml"><mover accent="true" id="A3.T12.33.9.9.9.m1.1.1.2" xref="A3.T12.33.9.9.9.m1.1.1.2.cmml"><mi id="A3.T12.33.9.9.9.m1.1.1.2.2" mathsize="80%" xref="A3.T12.33.9.9.9.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.33.9.9.9.m1.1.1.2.1" mathsize="80%" xref="A3.T12.33.9.9.9.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.33.9.9.9.m1.1.1.3" mathsize="80%" xref="A3.T12.33.9.9.9.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.33.9.9.9.m1.1b"><apply id="A3.T12.33.9.9.9.m1.1.1.cmml" xref="A3.T12.33.9.9.9.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.33.9.9.9.m1.1.1.1.cmml" xref="A3.T12.33.9.9.9.m1.1.1">subscript</csymbol><apply id="A3.T12.33.9.9.9.m1.1.1.2.cmml" xref="A3.T12.33.9.9.9.m1.1.1.2"><ci id="A3.T12.33.9.9.9.m1.1.1.2.1.cmml" xref="A3.T12.33.9.9.9.m1.1.1.2.1">^</ci><ci id="A3.T12.33.9.9.9.m1.1.1.2.2.cmml" xref="A3.T12.33.9.9.9.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.33.9.9.9.m1.1.1.3.cmml" type="integer" xref="A3.T12.33.9.9.9.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.33.9.9.9.m1.1c">\hat{S}_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.33.9.9.9.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{3}-S_{3})" class="ltx_Math" display="inline" id="A3.T12.34.10.10.10.m2.1"><semantics id="A3.T12.34.10.10.10.m2.1a"><mrow id="A3.T12.34.10.10.10.m2.1.1.1" xref="A3.T12.34.10.10.10.m2.1.1.1.1.cmml"><mo id="A3.T12.34.10.10.10.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.34.10.10.10.m2.1.1.1.1" xref="A3.T12.34.10.10.10.m2.1.1.1.1.cmml"><msub id="A3.T12.34.10.10.10.m2.1.1.1.1.2" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.34.10.10.10.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.3.cmml">3</mn></msub><mo id="A3.T12.34.10.10.10.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.34.10.10.10.m2.1.1.1.1.3" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3.cmml"><mi id="A3.T12.34.10.10.10.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.34.10.10.10.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3.3.cmml">3</mn></msub></mrow><mo id="A3.T12.34.10.10.10.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.34.10.10.10.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.34.10.10.10.m2.1b"><apply id="A3.T12.34.10.10.10.m2.1.1.1.1.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1"><minus id="A3.T12.34.10.10.10.m2.1.1.1.1.1.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.1"></minus><apply id="A3.T12.34.10.10.10.m2.1.1.1.1.2.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.34.10.10.10.m2.1.1.1.1.2.1.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2"><ci id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.34.10.10.10.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.34.10.10.10.m2.1.1.1.1.2.3">3</cn></apply><apply id="A3.T12.34.10.10.10.m2.1.1.1.1.3.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.34.10.10.10.m2.1.1.1.1.3.1.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.34.10.10.10.m2.1.1.1.1.3.2.cmml" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.34.10.10.10.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.34.10.10.10.m2.1.1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.34.10.10.10.m2.1c">(\hat{S}_{3}-S_{3})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.34.10.10.10.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.36.12.12.12" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{0}" class="ltx_Math" display="inline" id="A3.T12.35.11.11.11.m1.1"><semantics id="A3.T12.35.11.11.11.m1.1a"><msub id="A3.T12.35.11.11.11.m1.1.1" xref="A3.T12.35.11.11.11.m1.1.1.cmml"><mover accent="true" id="A3.T12.35.11.11.11.m1.1.1.2" xref="A3.T12.35.11.11.11.m1.1.1.2.cmml"><mi id="A3.T12.35.11.11.11.m1.1.1.2.2" mathsize="80%" xref="A3.T12.35.11.11.11.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.35.11.11.11.m1.1.1.2.1" mathsize="80%" xref="A3.T12.35.11.11.11.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.35.11.11.11.m1.1.1.3" mathsize="80%" xref="A3.T12.35.11.11.11.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.35.11.11.11.m1.1b"><apply id="A3.T12.35.11.11.11.m1.1.1.cmml" xref="A3.T12.35.11.11.11.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.35.11.11.11.m1.1.1.1.cmml" xref="A3.T12.35.11.11.11.m1.1.1">subscript</csymbol><apply id="A3.T12.35.11.11.11.m1.1.1.2.cmml" xref="A3.T12.35.11.11.11.m1.1.1.2"><ci id="A3.T12.35.11.11.11.m1.1.1.2.1.cmml" xref="A3.T12.35.11.11.11.m1.1.1.2.1">^</ci><ci id="A3.T12.35.11.11.11.m1.1.1.2.2.cmml" xref="A3.T12.35.11.11.11.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.35.11.11.11.m1.1.1.3.cmml" type="integer" xref="A3.T12.35.11.11.11.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.35.11.11.11.m1.1c">\hat{S}_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.35.11.11.11.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{0}-S_{0})" class="ltx_Math" display="inline" id="A3.T12.36.12.12.12.m2.1"><semantics id="A3.T12.36.12.12.12.m2.1a"><mrow id="A3.T12.36.12.12.12.m2.1.1.1" xref="A3.T12.36.12.12.12.m2.1.1.1.1.cmml"><mo id="A3.T12.36.12.12.12.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.36.12.12.12.m2.1.1.1.1" xref="A3.T12.36.12.12.12.m2.1.1.1.1.cmml"><msub id="A3.T12.36.12.12.12.m2.1.1.1.1.2" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.36.12.12.12.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.3.cmml">0</mn></msub><mo id="A3.T12.36.12.12.12.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.36.12.12.12.m2.1.1.1.1.3" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3.cmml"><mi id="A3.T12.36.12.12.12.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.36.12.12.12.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3.3.cmml">0</mn></msub></mrow><mo id="A3.T12.36.12.12.12.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.36.12.12.12.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.36.12.12.12.m2.1b"><apply id="A3.T12.36.12.12.12.m2.1.1.1.1.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1"><minus id="A3.T12.36.12.12.12.m2.1.1.1.1.1.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.1"></minus><apply id="A3.T12.36.12.12.12.m2.1.1.1.1.2.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.36.12.12.12.m2.1.1.1.1.2.1.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2"><ci id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.36.12.12.12.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.36.12.12.12.m2.1.1.1.1.2.3">0</cn></apply><apply id="A3.T12.36.12.12.12.m2.1.1.1.1.3.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.36.12.12.12.m2.1.1.1.1.3.1.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.36.12.12.12.m2.1.1.1.1.3.2.cmml" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.36.12.12.12.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.36.12.12.12.m2.1.1.1.1.3.3">0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.36.12.12.12.m2.1c">(\hat{S}_{0}-S_{0})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.36.12.12.12.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.38.14.14.14" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\tilde{S}_{3}" class="ltx_Math" display="inline" id="A3.T12.37.13.13.13.m1.1"><semantics id="A3.T12.37.13.13.13.m1.1a"><msub id="A3.T12.37.13.13.13.m1.1.1" xref="A3.T12.37.13.13.13.m1.1.1.cmml"><mover accent="true" id="A3.T12.37.13.13.13.m1.1.1.2" xref="A3.T12.37.13.13.13.m1.1.1.2.cmml"><mi id="A3.T12.37.13.13.13.m1.1.1.2.2" mathsize="80%" xref="A3.T12.37.13.13.13.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.37.13.13.13.m1.1.1.2.1" mathsize="80%" xref="A3.T12.37.13.13.13.m1.1.1.2.1.cmml">~</mo></mover><mn id="A3.T12.37.13.13.13.m1.1.1.3" mathsize="80%" xref="A3.T12.37.13.13.13.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.37.13.13.13.m1.1b"><apply id="A3.T12.37.13.13.13.m1.1.1.cmml" xref="A3.T12.37.13.13.13.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.37.13.13.13.m1.1.1.1.cmml" xref="A3.T12.37.13.13.13.m1.1.1">subscript</csymbol><apply id="A3.T12.37.13.13.13.m1.1.1.2.cmml" xref="A3.T12.37.13.13.13.m1.1.1.2"><ci id="A3.T12.37.13.13.13.m1.1.1.2.1.cmml" xref="A3.T12.37.13.13.13.m1.1.1.2.1">~</ci><ci id="A3.T12.37.13.13.13.m1.1.1.2.2.cmml" xref="A3.T12.37.13.13.13.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.37.13.13.13.m1.1.1.3.cmml" type="integer" xref="A3.T12.37.13.13.13.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.37.13.13.13.m1.1c">\tilde{S}_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.37.13.13.13.m1.1d">over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\tilde{S}_{3}-\hat{S}_{3})" class="ltx_Math" display="inline" id="A3.T12.38.14.14.14.m2.1"><semantics id="A3.T12.38.14.14.14.m2.1a"><mrow id="A3.T12.38.14.14.14.m2.1.1.1" xref="A3.T12.38.14.14.14.m2.1.1.1.1.cmml"><mo id="A3.T12.38.14.14.14.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.38.14.14.14.m2.1.1.1.1" xref="A3.T12.38.14.14.14.m2.1.1.1.1.cmml"><msub id="A3.T12.38.14.14.14.m2.1.1.1.1.2" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.1.cmml">~</mo></mover><mn id="A3.T12.38.14.14.14.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.3.cmml">3</mn></msub><mo id="A3.T12.38.14.14.14.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.38.14.14.14.m2.1.1.1.1.3" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.cmml"><mover accent="true" id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.cmml"><mi id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.2" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.2.cmml">S</mi><mo id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.1" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.1.cmml">^</mo></mover><mn id="A3.T12.38.14.14.14.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.3.cmml">3</mn></msub></mrow><mo id="A3.T12.38.14.14.14.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.38.14.14.14.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.38.14.14.14.m2.1b"><apply id="A3.T12.38.14.14.14.m2.1.1.1.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1"><minus id="A3.T12.38.14.14.14.m2.1.1.1.1.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.1"></minus><apply id="A3.T12.38.14.14.14.m2.1.1.1.1.2.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.38.14.14.14.m2.1.1.1.1.2.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2"><ci id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.1">~</ci><ci id="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.38.14.14.14.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.38.14.14.14.m2.1.1.1.1.2.3">3</cn></apply><apply id="A3.T12.38.14.14.14.m2.1.1.1.1.3.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.38.14.14.14.m2.1.1.1.1.3.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3">subscript</csymbol><apply id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2"><ci id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.1.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.1">^</ci><ci id="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.2.cmml" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.2.2">𝑆</ci></apply><cn id="A3.T12.38.14.14.14.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.38.14.14.14.m2.1.1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.38.14.14.14.m2.1c">(\tilde{S}_{3}-\hat{S}_{3})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.38.14.14.14.m2.1d">( over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT - over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.40.16.16.16" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\tilde{S}_{0}" class="ltx_Math" display="inline" id="A3.T12.39.15.15.15.m1.1"><semantics id="A3.T12.39.15.15.15.m1.1a"><msub id="A3.T12.39.15.15.15.m1.1.1" xref="A3.T12.39.15.15.15.m1.1.1.cmml"><mover accent="true" id="A3.T12.39.15.15.15.m1.1.1.2" xref="A3.T12.39.15.15.15.m1.1.1.2.cmml"><mi id="A3.T12.39.15.15.15.m1.1.1.2.2" mathsize="80%" xref="A3.T12.39.15.15.15.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.39.15.15.15.m1.1.1.2.1" mathsize="80%" xref="A3.T12.39.15.15.15.m1.1.1.2.1.cmml">~</mo></mover><mn id="A3.T12.39.15.15.15.m1.1.1.3" mathsize="80%" xref="A3.T12.39.15.15.15.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.39.15.15.15.m1.1b"><apply id="A3.T12.39.15.15.15.m1.1.1.cmml" xref="A3.T12.39.15.15.15.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.39.15.15.15.m1.1.1.1.cmml" xref="A3.T12.39.15.15.15.m1.1.1">subscript</csymbol><apply id="A3.T12.39.15.15.15.m1.1.1.2.cmml" xref="A3.T12.39.15.15.15.m1.1.1.2"><ci id="A3.T12.39.15.15.15.m1.1.1.2.1.cmml" xref="A3.T12.39.15.15.15.m1.1.1.2.1">~</ci><ci id="A3.T12.39.15.15.15.m1.1.1.2.2.cmml" xref="A3.T12.39.15.15.15.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.39.15.15.15.m1.1.1.3.cmml" type="integer" xref="A3.T12.39.15.15.15.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.39.15.15.15.m1.1c">\tilde{S}_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.39.15.15.15.m1.1d">over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\tilde{S}_{0}-\hat{S}_{0})" class="ltx_Math" display="inline" id="A3.T12.40.16.16.16.m2.1"><semantics id="A3.T12.40.16.16.16.m2.1a"><mrow id="A3.T12.40.16.16.16.m2.1.1.1" xref="A3.T12.40.16.16.16.m2.1.1.1.1.cmml"><mo id="A3.T12.40.16.16.16.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.40.16.16.16.m2.1.1.1.1" xref="A3.T12.40.16.16.16.m2.1.1.1.1.cmml"><msub id="A3.T12.40.16.16.16.m2.1.1.1.1.2" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.1.cmml">~</mo></mover><mn id="A3.T12.40.16.16.16.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.3.cmml">0</mn></msub><mo id="A3.T12.40.16.16.16.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.40.16.16.16.m2.1.1.1.1.3" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.cmml"><mover accent="true" id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.cmml"><mi id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.2" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.2.cmml">S</mi><mo id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.1" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.1.cmml">^</mo></mover><mn id="A3.T12.40.16.16.16.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.3.cmml">0</mn></msub></mrow><mo id="A3.T12.40.16.16.16.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.40.16.16.16.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.40.16.16.16.m2.1b"><apply id="A3.T12.40.16.16.16.m2.1.1.1.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1"><minus id="A3.T12.40.16.16.16.m2.1.1.1.1.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.1"></minus><apply id="A3.T12.40.16.16.16.m2.1.1.1.1.2.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.40.16.16.16.m2.1.1.1.1.2.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2"><ci id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.1">~</ci><ci id="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.40.16.16.16.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.40.16.16.16.m2.1.1.1.1.2.3">0</cn></apply><apply id="A3.T12.40.16.16.16.m2.1.1.1.1.3.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.40.16.16.16.m2.1.1.1.1.3.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3">subscript</csymbol><apply id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2"><ci id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.1.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.1">^</ci><ci id="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.2.cmml" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.2.2">𝑆</ci></apply><cn id="A3.T12.40.16.16.16.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.40.16.16.16.m2.1.1.1.1.3.3">0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.40.16.16.16.m2.1c">(\tilde{S}_{0}-\hat{S}_{0})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.40.16.16.16.m2.1d">( over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT - over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.34">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.3.1" style="font-size:80%;">5.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.4.1" style="font-size:80%;">5.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.5.1" style="font-size:80%;">5.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.6.1" style="font-size:80%;">5.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.7.1" style="font-size:80%;">5.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.8.1" style="font-size:80%;">5.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.9.1" style="font-size:80%;">6.81(+1.22)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.10.1" style="font-size:80%;">6.61(+1.50)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.11.1" style="font-size:80%;">7.00(+1.76)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.12.1" style="font-size:80%;">6.43(-0.18)</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.34.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.34.13.1" style="font-size:80%;">7.82(+0.82)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.35">
<td class="ltx_td ltx_border_t" id="A3.T12.56.32.35.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_border_t" id="A3.T12.56.32.35.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.3.1" style="font-size:80%;">5.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.4.1" style="font-size:80%;">5.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.5.1" style="font-size:80%;">5.36</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.6.1" style="font-size:80%;">5.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.7.1" style="font-size:80%;">5.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.8.1" style="font-size:80%;">5.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.9.1" style="font-size:80%;">6.87(+1.24)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.10.1" style="font-size:80%;">6.55(+1.48)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.11.1" style="font-size:80%;">6.98(+1.87)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.12.1" style="font-size:80%;">6.31(-0.24)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.35.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.35.13.1" style="font-size:80%;">7.87(+0.89)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.36">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_border_t" id="A3.T12.56.32.36.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.3.1" style="font-size:80%;">5.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.4.1" style="font-size:80%;">5.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.5.1" style="font-size:80%;">5.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.6.1" style="font-size:80%;">5.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.7.1" style="font-size:80%;">4.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.8.1" style="font-size:80%;">5.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.9.1" style="font-size:80%;">6.61(+1.07)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.10.1" style="font-size:80%;">6.47(+1.51)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.11.1" style="font-size:80%;">6.92(+1.83)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.12.1" style="font-size:80%;">6.39(-0.08)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.36.13" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.36.13.1" style="font-size:80%;">7.76(+0.84)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.37" style="background-color:#F2F2F2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="13" id="A3.T12.56.32.37.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_italic" id="A3.T12.56.32.37.1.1" style="font-size:80%;background-color:#F2F2F2;">General</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.32">
<td class="ltx_td ltx_align_center" colspan="2" id="A3.T12.56.32.32.17" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.32.17.1" style="font-size:80%;">Model</span></td>
<td class="ltx_td ltx_align_center" id="A3.T12.41.17.17.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="R_{1}" class="ltx_Math" display="inline" id="A3.T12.41.17.17.1.m1.1"><semantics id="A3.T12.41.17.17.1.m1.1a"><msub id="A3.T12.41.17.17.1.m1.1.1" xref="A3.T12.41.17.17.1.m1.1.1.cmml"><mi id="A3.T12.41.17.17.1.m1.1.1.2" mathsize="80%" xref="A3.T12.41.17.17.1.m1.1.1.2.cmml">R</mi><mn id="A3.T12.41.17.17.1.m1.1.1.3" mathsize="80%" xref="A3.T12.41.17.17.1.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.41.17.17.1.m1.1b"><apply id="A3.T12.41.17.17.1.m1.1.1.cmml" xref="A3.T12.41.17.17.1.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.41.17.17.1.m1.1.1.1.cmml" xref="A3.T12.41.17.17.1.m1.1.1">subscript</csymbol><ci id="A3.T12.41.17.17.1.m1.1.1.2.cmml" xref="A3.T12.41.17.17.1.m1.1.1.2">𝑅</ci><cn id="A3.T12.41.17.17.1.m1.1.1.3.cmml" type="integer" xref="A3.T12.41.17.17.1.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.41.17.17.1.m1.1c">R_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.41.17.17.1.m1.1d">italic_R start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.42.18.18.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="R_{2}" class="ltx_Math" display="inline" id="A3.T12.42.18.18.2.m1.1"><semantics id="A3.T12.42.18.18.2.m1.1a"><msub id="A3.T12.42.18.18.2.m1.1.1" xref="A3.T12.42.18.18.2.m1.1.1.cmml"><mi id="A3.T12.42.18.18.2.m1.1.1.2" mathsize="80%" xref="A3.T12.42.18.18.2.m1.1.1.2.cmml">R</mi><mn id="A3.T12.42.18.18.2.m1.1.1.3" mathsize="80%" xref="A3.T12.42.18.18.2.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.42.18.18.2.m1.1b"><apply id="A3.T12.42.18.18.2.m1.1.1.cmml" xref="A3.T12.42.18.18.2.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.42.18.18.2.m1.1.1.1.cmml" xref="A3.T12.42.18.18.2.m1.1.1">subscript</csymbol><ci id="A3.T12.42.18.18.2.m1.1.1.2.cmml" xref="A3.T12.42.18.18.2.m1.1.1.2">𝑅</ci><cn id="A3.T12.42.18.18.2.m1.1.1.3.cmml" type="integer" xref="A3.T12.42.18.18.2.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.42.18.18.2.m1.1c">R_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.42.18.18.2.m1.1d">italic_R start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.43.19.19.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{1}" class="ltx_Math" display="inline" id="A3.T12.43.19.19.3.m1.1"><semantics id="A3.T12.43.19.19.3.m1.1a"><msub id="A3.T12.43.19.19.3.m1.1.1" xref="A3.T12.43.19.19.3.m1.1.1.cmml"><mi id="A3.T12.43.19.19.3.m1.1.1.2" mathsize="80%" xref="A3.T12.43.19.19.3.m1.1.1.2.cmml">S</mi><mn id="A3.T12.43.19.19.3.m1.1.1.3" mathsize="80%" xref="A3.T12.43.19.19.3.m1.1.1.3.cmml">1</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.43.19.19.3.m1.1b"><apply id="A3.T12.43.19.19.3.m1.1.1.cmml" xref="A3.T12.43.19.19.3.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.43.19.19.3.m1.1.1.1.cmml" xref="A3.T12.43.19.19.3.m1.1.1">subscript</csymbol><ci id="A3.T12.43.19.19.3.m1.1.1.2.cmml" xref="A3.T12.43.19.19.3.m1.1.1.2">𝑆</ci><cn id="A3.T12.43.19.19.3.m1.1.1.3.cmml" type="integer" xref="A3.T12.43.19.19.3.m1.1.1.3">1</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.43.19.19.3.m1.1c">S_{1}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.43.19.19.3.m1.1d">italic_S start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.44.20.20.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{2}" class="ltx_Math" display="inline" id="A3.T12.44.20.20.4.m1.1"><semantics id="A3.T12.44.20.20.4.m1.1a"><msub id="A3.T12.44.20.20.4.m1.1.1" xref="A3.T12.44.20.20.4.m1.1.1.cmml"><mi id="A3.T12.44.20.20.4.m1.1.1.2" mathsize="80%" xref="A3.T12.44.20.20.4.m1.1.1.2.cmml">S</mi><mn id="A3.T12.44.20.20.4.m1.1.1.3" mathsize="80%" xref="A3.T12.44.20.20.4.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.44.20.20.4.m1.1b"><apply id="A3.T12.44.20.20.4.m1.1.1.cmml" xref="A3.T12.44.20.20.4.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.44.20.20.4.m1.1.1.1.cmml" xref="A3.T12.44.20.20.4.m1.1.1">subscript</csymbol><ci id="A3.T12.44.20.20.4.m1.1.1.2.cmml" xref="A3.T12.44.20.20.4.m1.1.1.2">𝑆</ci><cn id="A3.T12.44.20.20.4.m1.1.1.3.cmml" type="integer" xref="A3.T12.44.20.20.4.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.44.20.20.4.m1.1c">S_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.44.20.20.4.m1.1d">italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.45.21.21.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{3}" class="ltx_Math" display="inline" id="A3.T12.45.21.21.5.m1.1"><semantics id="A3.T12.45.21.21.5.m1.1a"><msub id="A3.T12.45.21.21.5.m1.1.1" xref="A3.T12.45.21.21.5.m1.1.1.cmml"><mi id="A3.T12.45.21.21.5.m1.1.1.2" mathsize="80%" xref="A3.T12.45.21.21.5.m1.1.1.2.cmml">S</mi><mn id="A3.T12.45.21.21.5.m1.1.1.3" mathsize="80%" xref="A3.T12.45.21.21.5.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.45.21.21.5.m1.1b"><apply id="A3.T12.45.21.21.5.m1.1.1.cmml" xref="A3.T12.45.21.21.5.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.45.21.21.5.m1.1.1.1.cmml" xref="A3.T12.45.21.21.5.m1.1.1">subscript</csymbol><ci id="A3.T12.45.21.21.5.m1.1.1.2.cmml" xref="A3.T12.45.21.21.5.m1.1.1.2">𝑆</ci><cn id="A3.T12.45.21.21.5.m1.1.1.3.cmml" type="integer" xref="A3.T12.45.21.21.5.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.45.21.21.5.m1.1c">S_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.45.21.21.5.m1.1d">italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.46.22.22.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><math alttext="S_{0}" class="ltx_Math" display="inline" id="A3.T12.46.22.22.6.m1.1"><semantics id="A3.T12.46.22.22.6.m1.1a"><msub id="A3.T12.46.22.22.6.m1.1.1" xref="A3.T12.46.22.22.6.m1.1.1.cmml"><mi id="A3.T12.46.22.22.6.m1.1.1.2" mathsize="80%" xref="A3.T12.46.22.22.6.m1.1.1.2.cmml">S</mi><mn id="A3.T12.46.22.22.6.m1.1.1.3" mathsize="80%" xref="A3.T12.46.22.22.6.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.46.22.22.6.m1.1b"><apply id="A3.T12.46.22.22.6.m1.1.1.cmml" xref="A3.T12.46.22.22.6.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.46.22.22.6.m1.1.1.1.cmml" xref="A3.T12.46.22.22.6.m1.1.1">subscript</csymbol><ci id="A3.T12.46.22.22.6.m1.1.1.2.cmml" xref="A3.T12.46.22.22.6.m1.1.1.2">𝑆</ci><cn id="A3.T12.46.22.22.6.m1.1.1.3.cmml" type="integer" xref="A3.T12.46.22.22.6.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.46.22.22.6.m1.1c">S_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.46.22.22.6.m1.1d">italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="A3.T12.48.24.24.8" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{2}" class="ltx_Math" display="inline" id="A3.T12.47.23.23.7.m1.1"><semantics id="A3.T12.47.23.23.7.m1.1a"><msub id="A3.T12.47.23.23.7.m1.1.1" xref="A3.T12.47.23.23.7.m1.1.1.cmml"><mover accent="true" id="A3.T12.47.23.23.7.m1.1.1.2" xref="A3.T12.47.23.23.7.m1.1.1.2.cmml"><mi id="A3.T12.47.23.23.7.m1.1.1.2.2" mathsize="80%" xref="A3.T12.47.23.23.7.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.47.23.23.7.m1.1.1.2.1" mathsize="80%" xref="A3.T12.47.23.23.7.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.47.23.23.7.m1.1.1.3" mathsize="80%" xref="A3.T12.47.23.23.7.m1.1.1.3.cmml">2</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.47.23.23.7.m1.1b"><apply id="A3.T12.47.23.23.7.m1.1.1.cmml" xref="A3.T12.47.23.23.7.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.47.23.23.7.m1.1.1.1.cmml" xref="A3.T12.47.23.23.7.m1.1.1">subscript</csymbol><apply id="A3.T12.47.23.23.7.m1.1.1.2.cmml" xref="A3.T12.47.23.23.7.m1.1.1.2"><ci id="A3.T12.47.23.23.7.m1.1.1.2.1.cmml" xref="A3.T12.47.23.23.7.m1.1.1.2.1">^</ci><ci id="A3.T12.47.23.23.7.m1.1.1.2.2.cmml" xref="A3.T12.47.23.23.7.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.47.23.23.7.m1.1.1.3.cmml" type="integer" xref="A3.T12.47.23.23.7.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.47.23.23.7.m1.1c">\hat{S}_{2}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.47.23.23.7.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{2}-S_{2})" class="ltx_Math" display="inline" id="A3.T12.48.24.24.8.m2.1"><semantics id="A3.T12.48.24.24.8.m2.1a"><mrow id="A3.T12.48.24.24.8.m2.1.1.1" xref="A3.T12.48.24.24.8.m2.1.1.1.1.cmml"><mo id="A3.T12.48.24.24.8.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.48.24.24.8.m2.1.1.1.1" xref="A3.T12.48.24.24.8.m2.1.1.1.1.cmml"><msub id="A3.T12.48.24.24.8.m2.1.1.1.1.2" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.48.24.24.8.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.3.cmml">2</mn></msub><mo id="A3.T12.48.24.24.8.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.48.24.24.8.m2.1.1.1.1.3" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3.cmml"><mi id="A3.T12.48.24.24.8.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.48.24.24.8.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3.3.cmml">2</mn></msub></mrow><mo id="A3.T12.48.24.24.8.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.48.24.24.8.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.48.24.24.8.m2.1b"><apply id="A3.T12.48.24.24.8.m2.1.1.1.1.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1"><minus id="A3.T12.48.24.24.8.m2.1.1.1.1.1.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.1"></minus><apply id="A3.T12.48.24.24.8.m2.1.1.1.1.2.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.48.24.24.8.m2.1.1.1.1.2.1.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2"><ci id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.48.24.24.8.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.48.24.24.8.m2.1.1.1.1.2.3">2</cn></apply><apply id="A3.T12.48.24.24.8.m2.1.1.1.1.3.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.48.24.24.8.m2.1.1.1.1.3.1.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.48.24.24.8.m2.1.1.1.1.3.2.cmml" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.48.24.24.8.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.48.24.24.8.m2.1.1.1.1.3.3">2</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.48.24.24.8.m2.1c">(\hat{S}_{2}-S_{2})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.48.24.24.8.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.50.26.26.10" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{3}" class="ltx_Math" display="inline" id="A3.T12.49.25.25.9.m1.1"><semantics id="A3.T12.49.25.25.9.m1.1a"><msub id="A3.T12.49.25.25.9.m1.1.1" xref="A3.T12.49.25.25.9.m1.1.1.cmml"><mover accent="true" id="A3.T12.49.25.25.9.m1.1.1.2" xref="A3.T12.49.25.25.9.m1.1.1.2.cmml"><mi id="A3.T12.49.25.25.9.m1.1.1.2.2" mathsize="80%" xref="A3.T12.49.25.25.9.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.49.25.25.9.m1.1.1.2.1" mathsize="80%" xref="A3.T12.49.25.25.9.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.49.25.25.9.m1.1.1.3" mathsize="80%" xref="A3.T12.49.25.25.9.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.49.25.25.9.m1.1b"><apply id="A3.T12.49.25.25.9.m1.1.1.cmml" xref="A3.T12.49.25.25.9.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.49.25.25.9.m1.1.1.1.cmml" xref="A3.T12.49.25.25.9.m1.1.1">subscript</csymbol><apply id="A3.T12.49.25.25.9.m1.1.1.2.cmml" xref="A3.T12.49.25.25.9.m1.1.1.2"><ci id="A3.T12.49.25.25.9.m1.1.1.2.1.cmml" xref="A3.T12.49.25.25.9.m1.1.1.2.1">^</ci><ci id="A3.T12.49.25.25.9.m1.1.1.2.2.cmml" xref="A3.T12.49.25.25.9.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.49.25.25.9.m1.1.1.3.cmml" type="integer" xref="A3.T12.49.25.25.9.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.49.25.25.9.m1.1c">\hat{S}_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.49.25.25.9.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{3}-S_{3})" class="ltx_Math" display="inline" id="A3.T12.50.26.26.10.m2.1"><semantics id="A3.T12.50.26.26.10.m2.1a"><mrow id="A3.T12.50.26.26.10.m2.1.1.1" xref="A3.T12.50.26.26.10.m2.1.1.1.1.cmml"><mo id="A3.T12.50.26.26.10.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.50.26.26.10.m2.1.1.1.1" xref="A3.T12.50.26.26.10.m2.1.1.1.1.cmml"><msub id="A3.T12.50.26.26.10.m2.1.1.1.1.2" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.50.26.26.10.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.3.cmml">3</mn></msub><mo id="A3.T12.50.26.26.10.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.50.26.26.10.m2.1.1.1.1.3" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3.cmml"><mi id="A3.T12.50.26.26.10.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.50.26.26.10.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3.3.cmml">3</mn></msub></mrow><mo id="A3.T12.50.26.26.10.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.50.26.26.10.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.50.26.26.10.m2.1b"><apply id="A3.T12.50.26.26.10.m2.1.1.1.1.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1"><minus id="A3.T12.50.26.26.10.m2.1.1.1.1.1.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.1"></minus><apply id="A3.T12.50.26.26.10.m2.1.1.1.1.2.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.50.26.26.10.m2.1.1.1.1.2.1.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2"><ci id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.50.26.26.10.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.50.26.26.10.m2.1.1.1.1.2.3">3</cn></apply><apply id="A3.T12.50.26.26.10.m2.1.1.1.1.3.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.50.26.26.10.m2.1.1.1.1.3.1.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.50.26.26.10.m2.1.1.1.1.3.2.cmml" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.50.26.26.10.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.50.26.26.10.m2.1.1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.50.26.26.10.m2.1c">(\hat{S}_{3}-S_{3})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.50.26.26.10.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.52.28.28.12" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\hat{S}_{0}" class="ltx_Math" display="inline" id="A3.T12.51.27.27.11.m1.1"><semantics id="A3.T12.51.27.27.11.m1.1a"><msub id="A3.T12.51.27.27.11.m1.1.1" xref="A3.T12.51.27.27.11.m1.1.1.cmml"><mover accent="true" id="A3.T12.51.27.27.11.m1.1.1.2" xref="A3.T12.51.27.27.11.m1.1.1.2.cmml"><mi id="A3.T12.51.27.27.11.m1.1.1.2.2" mathsize="80%" xref="A3.T12.51.27.27.11.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.51.27.27.11.m1.1.1.2.1" mathsize="80%" xref="A3.T12.51.27.27.11.m1.1.1.2.1.cmml">^</mo></mover><mn id="A3.T12.51.27.27.11.m1.1.1.3" mathsize="80%" xref="A3.T12.51.27.27.11.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.51.27.27.11.m1.1b"><apply id="A3.T12.51.27.27.11.m1.1.1.cmml" xref="A3.T12.51.27.27.11.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.51.27.27.11.m1.1.1.1.cmml" xref="A3.T12.51.27.27.11.m1.1.1">subscript</csymbol><apply id="A3.T12.51.27.27.11.m1.1.1.2.cmml" xref="A3.T12.51.27.27.11.m1.1.1.2"><ci id="A3.T12.51.27.27.11.m1.1.1.2.1.cmml" xref="A3.T12.51.27.27.11.m1.1.1.2.1">^</ci><ci id="A3.T12.51.27.27.11.m1.1.1.2.2.cmml" xref="A3.T12.51.27.27.11.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.51.27.27.11.m1.1.1.3.cmml" type="integer" xref="A3.T12.51.27.27.11.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.51.27.27.11.m1.1c">\hat{S}_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.51.27.27.11.m1.1d">over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\hat{S}_{0}-S_{0})" class="ltx_Math" display="inline" id="A3.T12.52.28.28.12.m2.1"><semantics id="A3.T12.52.28.28.12.m2.1a"><mrow id="A3.T12.52.28.28.12.m2.1.1.1" xref="A3.T12.52.28.28.12.m2.1.1.1.1.cmml"><mo id="A3.T12.52.28.28.12.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.52.28.28.12.m2.1.1.1.1" xref="A3.T12.52.28.28.12.m2.1.1.1.1.cmml"><msub id="A3.T12.52.28.28.12.m2.1.1.1.1.2" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.1.cmml">^</mo></mover><mn id="A3.T12.52.28.28.12.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.3.cmml">0</mn></msub><mo id="A3.T12.52.28.28.12.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.52.28.28.12.m2.1.1.1.1.3" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3.cmml"><mi id="A3.T12.52.28.28.12.m2.1.1.1.1.3.2" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3.2.cmml">S</mi><mn id="A3.T12.52.28.28.12.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3.3.cmml">0</mn></msub></mrow><mo id="A3.T12.52.28.28.12.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.52.28.28.12.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.52.28.28.12.m2.1b"><apply id="A3.T12.52.28.28.12.m2.1.1.1.1.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1"><minus id="A3.T12.52.28.28.12.m2.1.1.1.1.1.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.1"></minus><apply id="A3.T12.52.28.28.12.m2.1.1.1.1.2.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.52.28.28.12.m2.1.1.1.1.2.1.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2"><ci id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.1">^</ci><ci id="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.52.28.28.12.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.52.28.28.12.m2.1.1.1.1.2.3">0</cn></apply><apply id="A3.T12.52.28.28.12.m2.1.1.1.1.3.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.52.28.28.12.m2.1.1.1.1.3.1.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3">subscript</csymbol><ci id="A3.T12.52.28.28.12.m2.1.1.1.1.3.2.cmml" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3.2">𝑆</ci><cn id="A3.T12.52.28.28.12.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.52.28.28.12.m2.1.1.1.1.3.3">0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.52.28.28.12.m2.1c">(\hat{S}_{0}-S_{0})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.52.28.28.12.m2.1d">( over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT - italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.54.30.30.14" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\tilde{S}_{3}" class="ltx_Math" display="inline" id="A3.T12.53.29.29.13.m1.1"><semantics id="A3.T12.53.29.29.13.m1.1a"><msub id="A3.T12.53.29.29.13.m1.1.1" xref="A3.T12.53.29.29.13.m1.1.1.cmml"><mover accent="true" id="A3.T12.53.29.29.13.m1.1.1.2" xref="A3.T12.53.29.29.13.m1.1.1.2.cmml"><mi id="A3.T12.53.29.29.13.m1.1.1.2.2" mathsize="80%" xref="A3.T12.53.29.29.13.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.53.29.29.13.m1.1.1.2.1" mathsize="80%" xref="A3.T12.53.29.29.13.m1.1.1.2.1.cmml">~</mo></mover><mn id="A3.T12.53.29.29.13.m1.1.1.3" mathsize="80%" xref="A3.T12.53.29.29.13.m1.1.1.3.cmml">3</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.53.29.29.13.m1.1b"><apply id="A3.T12.53.29.29.13.m1.1.1.cmml" xref="A3.T12.53.29.29.13.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.53.29.29.13.m1.1.1.1.cmml" xref="A3.T12.53.29.29.13.m1.1.1">subscript</csymbol><apply id="A3.T12.53.29.29.13.m1.1.1.2.cmml" xref="A3.T12.53.29.29.13.m1.1.1.2"><ci id="A3.T12.53.29.29.13.m1.1.1.2.1.cmml" xref="A3.T12.53.29.29.13.m1.1.1.2.1">~</ci><ci id="A3.T12.53.29.29.13.m1.1.1.2.2.cmml" xref="A3.T12.53.29.29.13.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.53.29.29.13.m1.1.1.3.cmml" type="integer" xref="A3.T12.53.29.29.13.m1.1.1.3">3</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.53.29.29.13.m1.1c">\tilde{S}_{3}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.53.29.29.13.m1.1d">over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\tilde{S}_{3}-\hat{S}_{3})" class="ltx_Math" display="inline" id="A3.T12.54.30.30.14.m2.1"><semantics id="A3.T12.54.30.30.14.m2.1a"><mrow id="A3.T12.54.30.30.14.m2.1.1.1" xref="A3.T12.54.30.30.14.m2.1.1.1.1.cmml"><mo id="A3.T12.54.30.30.14.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.54.30.30.14.m2.1.1.1.1" xref="A3.T12.54.30.30.14.m2.1.1.1.1.cmml"><msub id="A3.T12.54.30.30.14.m2.1.1.1.1.2" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.1.cmml">~</mo></mover><mn id="A3.T12.54.30.30.14.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.3.cmml">3</mn></msub><mo id="A3.T12.54.30.30.14.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.54.30.30.14.m2.1.1.1.1.3" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.cmml"><mover accent="true" id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.cmml"><mi id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.2" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.2.cmml">S</mi><mo id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.1" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.1.cmml">^</mo></mover><mn id="A3.T12.54.30.30.14.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.3.cmml">3</mn></msub></mrow><mo id="A3.T12.54.30.30.14.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.54.30.30.14.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.54.30.30.14.m2.1b"><apply id="A3.T12.54.30.30.14.m2.1.1.1.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1"><minus id="A3.T12.54.30.30.14.m2.1.1.1.1.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.1"></minus><apply id="A3.T12.54.30.30.14.m2.1.1.1.1.2.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.54.30.30.14.m2.1.1.1.1.2.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2"><ci id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.1">~</ci><ci id="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.54.30.30.14.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.54.30.30.14.m2.1.1.1.1.2.3">3</cn></apply><apply id="A3.T12.54.30.30.14.m2.1.1.1.1.3.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.54.30.30.14.m2.1.1.1.1.3.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3">subscript</csymbol><apply id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2"><ci id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.1.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.1">^</ci><ci id="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.2.cmml" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.2.2">𝑆</ci></apply><cn id="A3.T12.54.30.30.14.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.54.30.30.14.m2.1.1.1.1.3.3">3</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.54.30.30.14.m2.1c">(\tilde{S}_{3}-\hat{S}_{3})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.54.30.30.14.m2.1d">( over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT - over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center" id="A3.T12.56.32.32.16" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<math alttext="\tilde{S}_{0}" class="ltx_Math" display="inline" id="A3.T12.55.31.31.15.m1.1"><semantics id="A3.T12.55.31.31.15.m1.1a"><msub id="A3.T12.55.31.31.15.m1.1.1" xref="A3.T12.55.31.31.15.m1.1.1.cmml"><mover accent="true" id="A3.T12.55.31.31.15.m1.1.1.2" xref="A3.T12.55.31.31.15.m1.1.1.2.cmml"><mi id="A3.T12.55.31.31.15.m1.1.1.2.2" mathsize="80%" xref="A3.T12.55.31.31.15.m1.1.1.2.2.cmml">S</mi><mo id="A3.T12.55.31.31.15.m1.1.1.2.1" mathsize="80%" xref="A3.T12.55.31.31.15.m1.1.1.2.1.cmml">~</mo></mover><mn id="A3.T12.55.31.31.15.m1.1.1.3" mathsize="80%" xref="A3.T12.55.31.31.15.m1.1.1.3.cmml">0</mn></msub><annotation-xml encoding="MathML-Content" id="A3.T12.55.31.31.15.m1.1b"><apply id="A3.T12.55.31.31.15.m1.1.1.cmml" xref="A3.T12.55.31.31.15.m1.1.1"><csymbol cd="ambiguous" id="A3.T12.55.31.31.15.m1.1.1.1.cmml" xref="A3.T12.55.31.31.15.m1.1.1">subscript</csymbol><apply id="A3.T12.55.31.31.15.m1.1.1.2.cmml" xref="A3.T12.55.31.31.15.m1.1.1.2"><ci id="A3.T12.55.31.31.15.m1.1.1.2.1.cmml" xref="A3.T12.55.31.31.15.m1.1.1.2.1">~</ci><ci id="A3.T12.55.31.31.15.m1.1.1.2.2.cmml" xref="A3.T12.55.31.31.15.m1.1.1.2.2">𝑆</ci></apply><cn id="A3.T12.55.31.31.15.m1.1.1.3.cmml" type="integer" xref="A3.T12.55.31.31.15.m1.1.1.3">0</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.55.31.31.15.m1.1c">\tilde{S}_{0}</annotation><annotation encoding="application/x-llamapun" id="A3.T12.55.31.31.15.m1.1d">over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT</annotation></semantics></math><math alttext="(\tilde{S}_{0}-\hat{S}_{0})" class="ltx_Math" display="inline" id="A3.T12.56.32.32.16.m2.1"><semantics id="A3.T12.56.32.32.16.m2.1a"><mrow id="A3.T12.56.32.32.16.m2.1.1.1" xref="A3.T12.56.32.32.16.m2.1.1.1.1.cmml"><mo id="A3.T12.56.32.32.16.m2.1.1.1.2" maxsize="80%" minsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.cmml">(</mo><mrow id="A3.T12.56.32.32.16.m2.1.1.1.1" xref="A3.T12.56.32.32.16.m2.1.1.1.1.cmml"><msub id="A3.T12.56.32.32.16.m2.1.1.1.1.2" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.cmml"><mover accent="true" id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.cmml"><mi id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.2" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.2.cmml">S</mi><mo id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.1" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.1.cmml">~</mo></mover><mn id="A3.T12.56.32.32.16.m2.1.1.1.1.2.3" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.3.cmml">0</mn></msub><mo id="A3.T12.56.32.32.16.m2.1.1.1.1.1" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.1.cmml">−</mo><msub id="A3.T12.56.32.32.16.m2.1.1.1.1.3" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.cmml"><mover accent="true" id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.cmml"><mi id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.2" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.2.cmml">S</mi><mo id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.1" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.1.cmml">^</mo></mover><mn id="A3.T12.56.32.32.16.m2.1.1.1.1.3.3" mathsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.3.cmml">0</mn></msub></mrow><mo id="A3.T12.56.32.32.16.m2.1.1.1.3" maxsize="80%" minsize="80%" xref="A3.T12.56.32.32.16.m2.1.1.1.1.cmml">)</mo></mrow><annotation-xml encoding="MathML-Content" id="A3.T12.56.32.32.16.m2.1b"><apply id="A3.T12.56.32.32.16.m2.1.1.1.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1"><minus id="A3.T12.56.32.32.16.m2.1.1.1.1.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.1"></minus><apply id="A3.T12.56.32.32.16.m2.1.1.1.1.2.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2"><csymbol cd="ambiguous" id="A3.T12.56.32.32.16.m2.1.1.1.1.2.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2">subscript</csymbol><apply id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2"><ci id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.1">~</ci><ci id="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.2.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.2.2">𝑆</ci></apply><cn id="A3.T12.56.32.32.16.m2.1.1.1.1.2.3.cmml" type="integer" xref="A3.T12.56.32.32.16.m2.1.1.1.1.2.3">0</cn></apply><apply id="A3.T12.56.32.32.16.m2.1.1.1.1.3.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3"><csymbol cd="ambiguous" id="A3.T12.56.32.32.16.m2.1.1.1.1.3.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3">subscript</csymbol><apply id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2"><ci id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.1.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.1">^</ci><ci id="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.2.cmml" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.2.2">𝑆</ci></apply><cn id="A3.T12.56.32.32.16.m2.1.1.1.1.3.3.cmml" type="integer" xref="A3.T12.56.32.32.16.m2.1.1.1.1.3.3">0</cn></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="A3.T12.56.32.32.16.m2.1c">(\tilde{S}_{0}-\hat{S}_{0})</annotation><annotation encoding="application/x-llamapun" id="A3.T12.56.32.32.16.m2.1d">( over~ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT - over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT )</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.38">
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="A3.T12.56.32.38.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.38.1.1" style="font-size:80%;">GPT-4V</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.2.1" style="font-size:80%;">7.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.3.1" style="font-size:80%;">7.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.4.1" style="font-size:80%;">7.30</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.5.1" style="font-size:80%;">7.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.6.1" style="font-size:80%;">7.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.7.1" style="font-size:80%;">6.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.8" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.8.1" style="font-size:80%;">8.23</span><span class="ltx_text" id="A3.T12.56.32.38.8.2" style="font-size:80%;">(+0.75)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.9" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.9.1" style="font-size:80%;">8.00</span><span class="ltx_text" id="A3.T12.56.32.38.9.2" style="font-size:80%;">(+0.88)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.10" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.10.1" style="font-size:80%;">8.25</span><span class="ltx_text" id="A3.T12.56.32.38.10.2" style="font-size:80%;">(+1.37)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.11" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.11.1" style="font-size:80%;">7.34</span><span class="ltx_text" id="A3.T12.56.32.38.11.2" style="font-size:80%;">(-0.66)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T12.56.32.38.12" style="padding-top:1.2pt;padding-bottom:1.2pt;">
<span class="ltx_text ltx_font_bold" id="A3.T12.56.32.38.12.1" style="font-size:80%;">8.18</span><span class="ltx_text" id="A3.T12.56.32.38.12.2" style="font-size:80%;">(-0.07)</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.39">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.39.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.1.1" style="font-size:80%;">Claude</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.2.1" style="font-size:80%;">6.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.3.1" style="font-size:80%;">6.75</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.4.1" style="font-size:80%;">6.53</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.5.1" style="font-size:80%;">7.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.6.1" style="font-size:80%;">6.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.7.1" style="font-size:80%;">6.32</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.8.1" style="font-size:80%;">7.48(+0.44)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.9.1" style="font-size:80%;">7.06(+0.38)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.10.1" style="font-size:80%;">7.55(+1.23)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.11.1" style="font-size:80%;">7.18(+0.12)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.39.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.39.12.1" style="font-size:80%;">8.13(+0.58)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.40" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.40.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X-3B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.2.1" style="font-size:80%;background-color:#F2FFF2;">6.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.3.1" style="font-size:80%;background-color:#F2FFF2;">6.10</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.4.1" style="font-size:80%;background-color:#F2FFF2;">6.35</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.5.1" style="font-size:80%;background-color:#F2FFF2;">6.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.6.1" style="font-size:80%;background-color:#F2FFF2;">5.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.7.1" style="font-size:80%;background-color:#F2FFF2;">5.97</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.8.1" style="font-size:80%;background-color:#F2FFF2;">7.28(+1.00)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.9.1" style="font-size:80%;background-color:#F2FFF2;">6.81(+1.15)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.10.1" style="font-size:80%;background-color:#F2FFF2;">7.46(+1.49)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.11.1" style="font-size:80%;background-color:#F2FFF2;">6.49(-0.32)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.40.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.40.12.1" style="font-size:80%;background-color:#F2FFF2;">8.15(+0.69)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.41">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.41.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.1.1" style="font-size:80%;">ShareGPT4V-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.2.1" style="font-size:80%;">5.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.3.1" style="font-size:80%;">5.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.4.1" style="font-size:80%;">6.02</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.5.1" style="font-size:80%;">6.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.6.1" style="font-size:80%;">5.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.7.1" style="font-size:80%;">5.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.8.1" style="font-size:80%;">7.19(+1.05)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.9.1" style="font-size:80%;">6.77(+0.97)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.10.1" style="font-size:80%;">7.31(+1.64)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.11.1" style="font-size:80%;">6.93(+0.16)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.41.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.41.12.1" style="font-size:80%;">8.19(+0.88)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.42">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.42.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.1.1" style="font-size:80%;">XComposer2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.2.1" style="font-size:80%;">5.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.3.1" style="font-size:80%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.4.1" style="font-size:80%;">5.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.5.1" style="font-size:80%;">6.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.6.1" style="font-size:80%;">5.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.7.1" style="font-size:80%;">5.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.8.1" style="font-size:80%;">7.35(+1.18)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.9.1" style="font-size:80%;">7.04(+1.26)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.10.1" style="font-size:80%;">7.66(+2.00)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.11.1" style="font-size:80%;">7.00(-0.04)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.42.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.42.12.1" style="font-size:80%;">8.20(+0.54)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.43" style="background-color:#F2FFF2;">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.43.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.1.1" style="font-size:80%;background-color:#F2FFF2;">FUSION-X-8B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.2.1" style="font-size:80%;background-color:#F2FFF2;">5.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.3.1" style="font-size:80%;background-color:#F2FFF2;">5.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.4.1" style="font-size:80%;background-color:#F2FFF2;">6.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.5.1" style="font-size:80%;background-color:#F2FFF2;">6.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.6.1" style="font-size:80%;background-color:#F2FFF2;">5.27</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.7.1" style="font-size:80%;background-color:#F2FFF2;">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.8.1" style="font-size:80%;background-color:#F2FFF2;">7.09(+1.01)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.9.1" style="font-size:80%;background-color:#F2FFF2;">6.45(+1.18)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.10.1" style="font-size:80%;background-color:#F2FFF2;">7.22(+1.64)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.11.1" style="font-size:80%;background-color:#F2FFF2;">6.64(+0.19)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.43.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.43.12.1" style="font-size:80%;background-color:#F2FFF2;">8.01(+0.79)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.44">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.44.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.1.1" style="font-size:80%;">InternVL-Chat-V1-5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.2.1" style="font-size:80%;">5.60</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.3.1" style="font-size:80%;">5.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.4.1" style="font-size:80%;">6.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.5.1" style="font-size:80%;">5.93</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.6.1" style="font-size:80%;">5.25</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.7.1" style="font-size:80%;">5.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.8.1" style="font-size:80%;">6.34(+0.41)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.9.1" style="font-size:80%;">5.60(+0.35)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.10.1" style="font-size:80%;">6.50(+1.07)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.11.1" style="font-size:80%;">6.32(+0.72)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.44.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.44.12.1" style="font-size:80%;">7.79(+1.29)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.45">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.45.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.1.1" style="font-size:80%;">Qwen-VL-Chat</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.2.1" style="font-size:80%;">5.54</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.3.1" style="font-size:80%;">5.65</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.4.1" style="font-size:80%;">5.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.5.1" style="font-size:80%;">5.78</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.6.1" style="font-size:80%;">5.22</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.7.1" style="font-size:80%;">5.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.8.1" style="font-size:80%;">7.04(+1.26)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.9.1" style="font-size:80%;">6.53(+1.31)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.10.1" style="font-size:80%;">7.26(+1.83)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.11.1" style="font-size:80%;">6.57(+0.04)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.45.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.45.12.1" style="font-size:80%;">8.00(+0.74)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.46">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.46.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.1.1" style="font-size:80%;">InternVL-Chat-V1-2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.2.1" style="font-size:80%;">5.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.3.1" style="font-size:80%;">5.69</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.4.1" style="font-size:80%;">5.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.5.1" style="font-size:80%;">5.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.6.1" style="font-size:80%;">5.39</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.7.1" style="font-size:80%;">5.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.8.1" style="font-size:80%;">6.66(+0.78)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.9.1" style="font-size:80%;">6.12(+0.73)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.10.1" style="font-size:80%;">6.75(+1.46)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.11.1" style="font-size:80%;">6.31(+0.19)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.46.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.46.12.1" style="font-size:80%;">7.70(+0.95)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.47">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.47.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.1.1" style="font-size:80%;">LLaVA-V1.5-7B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.2.1" style="font-size:80%;">5.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.3.1" style="font-size:80%;">5.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.4.1" style="font-size:80%;">4.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.5.1" style="font-size:80%;">5.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.6.1" style="font-size:80%;">5.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.7.1" style="font-size:80%;">5.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.8.1" style="font-size:80%;">7.28(+1.69)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.9.1" style="font-size:80%;">6.68(+1.34)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.10.1" style="font-size:80%;">7.28(+2.25)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.11.1" style="font-size:80%;">6.72(+0.04)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.47.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.47.12.1" style="font-size:80%;">7.97(+0.69)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.48">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.48.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.1.1" style="font-size:80%;">mPLUG-Owl2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.2.1" style="font-size:80%;">5.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.3.1" style="font-size:80%;">5.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.4.1" style="font-size:80%;">4.98</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.5.1" style="font-size:80%;">5.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.6.1" style="font-size:80%;">5.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.7.1" style="font-size:80%;">4.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.8.1" style="font-size:80%;">6.77(+1.39)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.9.1" style="font-size:80%;">6.64(+1.50)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.10.1" style="font-size:80%;">7.22(+2.31)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.11.1" style="font-size:80%;">5.93(-0.71)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.48.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.48.12.1" style="font-size:80%;">7.62(+0.40)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.49">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="A3.T12.56.32.49.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.1.1" style="font-size:80%;">LLaVA-V1.5-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.2.1" style="font-size:80%;">4.94</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.3.1" style="font-size:80%;">5.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.4.1" style="font-size:80%;">5.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.5.1" style="font-size:80%;">5.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.6.1" style="font-size:80%;">4.99</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.7.1" style="font-size:80%;">4.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.8.1" style="font-size:80%;">7.43(+2.02)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.9.1" style="font-size:80%;">7.13(+2.14)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.10.1" style="font-size:80%;">7.70(+2.95)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.11.1" style="font-size:80%;">6.14(-0.99)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T12.56.32.49.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.49.12.1" style="font-size:80%;">7.60(-0.10)</span></td>
</tr>
<tr class="ltx_tr" id="A3.T12.56.32.50">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" colspan="2" id="A3.T12.56.32.50.1" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.1.1" style="font-size:80%;">ShareGPT4V-13B</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.2" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.2.1" style="font-size:80%;">4.85</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.3" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.3.1" style="font-size:80%;">5.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.4" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.4.1" style="font-size:80%;">5.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.5" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.5.1" style="font-size:80%;">5.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.6" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.6.1" style="font-size:80%;">4.86</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.7" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.7.1" style="font-size:80%;">4.67</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.8" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.8.1" style="font-size:80%;">7.42(+2.36)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.9" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.9.1" style="font-size:80%;">7.17(+2.31)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.10" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.10.1" style="font-size:80%;">7.65(+2.98)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.11" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.11.1" style="font-size:80%;">6.24(-0.93)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_b ltx_border_t" id="A3.T12.56.32.50.12" style="padding-top:1.2pt;padding-bottom:1.2pt;"><span class="ltx_text" id="A3.T12.56.32.50.12.1" style="font-size:80%;">7.65(+0.00)</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of Large Vision Language Models (LVLMs) performance on the ConvBench benchmark, using a direct grading method.  Several key metrics are reported: S1 (first-turn score), S2 (second-turn score), S3 (third-turn score), and S0 (overall score).  Additional scores (Ŝ2, Ŝ3, Ŝ0, and ˜S) are provided, representing scores when previous answers are used as premises (second-turn, third-turn, overall, and score using the first two turns as premises respectively).  Finally, R2 (average score across turns) and R1 (average of R2 and S0) are calculated to provide a comprehensive performance summary for each model.
> <details>
> <summary>read the caption</summary>
> Table 12:  Comparison of Performance for LVLMs on ConvBench with Direct Grading method. S1subscript𝑆1S_{1}italic_S start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT, S2subscript𝑆2S_{2}italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT, S3subscript𝑆3S_{3}italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT, and S0subscript𝑆0S_{0}italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT correspond to the average scores of the first turn, second turn, third turn, and overall, respectively. S^⁢2^𝑆2\hat{S}{2}over^ start_ARG italic_S end_ARG 2, S^⁢3^𝑆3\hat{S}{3}over^ start_ARG italic_S end_ARG 3, and S^0subscript^𝑆0\hat{S}_{0}over^ start_ARG italic_S end_ARG start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT represent the scores for the second turn, third turn, and overall when the first answer is given as a premise. S~~𝑆\tilde{S}over~ start_ARG italic_S end_ARG indicates the score when the first two answers are given as a premise. R2subscript𝑅2R_{2}italic_R start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT is defined as (S1+S2+S3)/3subscript𝑆1subscript𝑆2subscript𝑆33(S_{1}+S_{2}+S_{3})/{3}( italic_S start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT + italic_S start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT + italic_S start_POSTSUBSCRIPT 3 end_POSTSUBSCRIPT ) / 3, indicating the mean performance over three turns. Meanwhile, R1subscript𝑅1R_{1}italic_R start_POSTSUBSCRIPT 1 end_POSTSUBSCRIPT is computed as (R2+S0)/2subscript𝑅2subscript𝑆02(R_{2}+S_{0})/{2}( italic_R start_POSTSUBSCRIPT 2 end_POSTSUBSCRIPT + italic_S start_POSTSUBSCRIPT 0 end_POSTSUBSCRIPT ) / 2, representing the model’s overall score.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.09925/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.09925/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}