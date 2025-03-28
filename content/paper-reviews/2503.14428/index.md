---
title: "MagicComp: Training-free Dual-Phase Refinement for Compositional Video Generation"
summary: "MagicComp: Dual-Phase Refinement Enables Training-Free Compositional Video Generation"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Peking University",]
showSummary: true
date: 2025-03-18
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.14428 {{< /keyword >}}
{{< keyword icon="writer" >}} Hongyu Zhang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-25 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.14428" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.14428" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.14428/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Text-to-Video generation is impeded by the inaccurate binding of attributes, spatial relationships and action interactions among multiple subjects. Models still exhibit issues such as semantic leakage, misaligned spatial relationships, and subject missing. Existing methods involve the use of object-grounding layouts or multi-round evaluations based on language models, but still have limitations such as failure to capture the fine-grained shape variations, and high computational and training costs. 



To solve this, the paper proposes a novel training-free method that enhances compositional T2V generation through dual-phase refinement. This strategy reinforces subject-specific semantics, resolves inter-subject ambiguity, and integrates grounding priors and model-adaptive spatial perception to flexibly bind subjects to their spatiotemporal regions through masked attention modulation. Experiments demonstrate that it outperforms state-of-the-art methods.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} MagicComp, a novel training-free framework, enhances compositional T2V generation through dual-phase refinement. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Semantic Anchor Disambiguation (SAD) resolves inter-subject ambiguity, while Dynamic Layout Fusion Attention (DLFA) ensures spatial-attribute binding. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} MagicComp outperforms state-of-the-art methods on T2V-CompBench and VBench, highlighting its effectiveness and versatility. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a **training-free framework** that significantly **improves compositional video generation** by addressing challenges like semantic ambiguity and spatial relationships. Its **model-agnostic design** and superior performance on standard benchmarks make it highly relevant for researchers seeking practical, efficient solutions for complex video synthesis tasks.

------
#### Visual Insights



![](https://arxiv.org/html/2503.14428/x2.png)

> 🔼 Figure 1 illustrates the MagicComp framework's architecture and capabilities.  Panel (a) details the two main modules: Semantic Anchor Disambiguation (SAD), which clarifies ambiguous relationships between subjects in the input text prompt, and Dynamic Layout Fusion Attention (DLFA), which precisely binds visual attributes and locations to the subjects during video generation. Panel (b) highlights the training-free nature of MagicComp and its effectiveness in overcoming common challenges in compositional video generation—semantic confusion, spatial misalignment, and missing entities—while maintaining efficiency.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overall pipeline for MagicComp. (a) Our MagicComp comprises two core modules: Semantic Anchor Disambiguation (SAD) for resolving inter-subject ambiguity during conditioning, and Dynamic Layout Fusion Attention (DLFA) for spatial-attribute binding via fused layout masks in denoising. (b) MagicComp is a training-free framework, which effectively address the challenges (e.g., semantic confusion, misaligned spatial relationship, missing entities) in compositional video generation with minimal additional inference overhead.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.3">
<tr class="ltx_tr" id="S4.T1.3.4">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T1.3.4.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.4.1.1" style="font-size:90%;">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S4.T1.3.4.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.4.2.1" style="font-size:90%;">T2V-CompBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T1.3.4.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.4.3.1" style="font-size:90%;">VBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.5">
<td class="ltx_td" id="S4.T1.3.5.1"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.2.1" style="font-size:90%;">Consist-attr</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.3.1" style="font-size:90%;">Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.4.1" style="font-size:90%;">Motion</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.5.1" style="font-size:90%;">Action</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.6.1" style="font-size:90%;">Interaction</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.7.1" style="font-size:90%;">Numeracy</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.8"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.8.1" style="font-size:90%;">Multi-obj</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.9"><span class="ltx_text ltx_font_bold" id="S4.T1.3.5.9.1" style="font-size:90%;">Spatial-rela</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.6">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T1.3.6.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.3.6.1.1" style="font-size:90%;">T2V model:</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.7">
<td class="ltx_td ltx_align_left" id="S4.T1.3.7.1">
<span class="ltx_text" id="S4.T1.3.7.1.1" style="font-size:90%;">ModelScope </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T1.3.7.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.2"><span class="ltx_text" id="S4.T1.3.7.2.1" style="font-size:90%;">0.5483</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.3"><span class="ltx_text" id="S4.T1.3.7.3.1" style="font-size:90%;">0.4220</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.4"><span class="ltx_text" id="S4.T1.3.7.4.1" style="font-size:90%;">0.2662</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.5"><span class="ltx_text" id="S4.T1.3.7.5.1" style="font-size:90%;">0.4880</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.6"><span class="ltx_text" id="S4.T1.3.7.6.1" style="font-size:90%;">0.7075</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.7"><span class="ltx_text" id="S4.T1.3.7.7.1" style="font-size:90%;">0.2066</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.8"><span class="ltx_text" id="S4.T1.3.7.8.1" style="font-size:90%;">0.3898</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.9"><span class="ltx_text" id="S4.T1.3.7.9.1" style="font-size:90%;">0.3409</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.8">
<td class="ltx_td ltx_align_left" id="S4.T1.3.8.1">
<span class="ltx_text" id="S4.T1.3.8.1.1" style="font-size:90%;">ZeroScope </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib2" title=""><span class="ltx_text" style="font-size:90%;">2</span></a><span class="ltx_text" id="S4.T1.3.8.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.2"><span class="ltx_text" id="S4.T1.3.8.2.1" style="font-size:90%;">0.4495</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.3"><span class="ltx_text" id="S4.T1.3.8.3.1" style="font-size:90%;">0.4073</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.4"><span class="ltx_text" id="S4.T1.3.8.4.1" style="font-size:90%;">0.2319</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.5"><span class="ltx_text" id="S4.T1.3.8.5.1" style="font-size:90%;">0.4620</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.6"><span class="ltx_text" id="S4.T1.3.8.6.1" style="font-size:90%;">0.5550</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.7"><span class="ltx_text" id="S4.T1.3.8.7.1" style="font-size:90%;">0.2378</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.8"><span class="ltx_text" id="S4.T1.3.8.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.8.9"><span class="ltx_text" id="S4.T1.3.8.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.9">
<td class="ltx_td ltx_align_left" id="S4.T1.3.9.1">
<span class="ltx_text" id="S4.T1.3.9.1.1" style="font-size:90%;">Latte </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S4.T1.3.9.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.2"><span class="ltx_text" id="S4.T1.3.9.2.1" style="font-size:90%;">0.5325</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.3"><span class="ltx_text" id="S4.T1.3.9.3.1" style="font-size:90%;">0.4476</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.4"><span class="ltx_text" id="S4.T1.3.9.4.1" style="font-size:90%;">0.2187</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.5"><span class="ltx_text" id="S4.T1.3.9.5.1" style="font-size:90%;">0.5200</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.6"><span class="ltx_text" id="S4.T1.3.9.6.1" style="font-size:90%;">0.6625</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.7"><span class="ltx_text" id="S4.T1.3.9.7.1" style="font-size:90%;">0.2187</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.8"><span class="ltx_text" id="S4.T1.3.9.8.1" style="font-size:90%;">0.3453</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.9"><span class="ltx_text" id="S4.T1.3.9.9.1" style="font-size:90%;">0.4153</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.10">
<td class="ltx_td ltx_align_left" id="S4.T1.3.10.1">
<span class="ltx_text" id="S4.T1.3.10.1.1" style="font-size:90%;">VideoCrafter2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T1.3.10.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.2"><span class="ltx_text" id="S4.T1.3.10.2.1" style="font-size:90%;">0.6750</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.3"><span class="ltx_text" id="S4.T1.3.10.3.1" style="font-size:90%;">0.4891</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.4"><span class="ltx_text" id="S4.T1.3.10.4.1" style="font-size:90%;">0.2233</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.5"><span class="ltx_text" id="S4.T1.3.10.5.1" style="font-size:90%;">0.5800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.6"><span class="ltx_text" id="S4.T1.3.10.6.1" style="font-size:90%;">0.7600</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.7"><span class="ltx_text" id="S4.T1.3.10.7.1" style="font-size:90%;">0.2041</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.8"><span class="ltx_text" id="S4.T1.3.10.8.1" style="font-size:90%;">0.4066</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.9"><span class="ltx_text" id="S4.T1.3.10.9.1" style="font-size:90%;">0.3586</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.11">
<td class="ltx_td ltx_align_left" id="S4.T1.3.11.1">
<span class="ltx_text" id="S4.T1.3.11.1.1" style="font-size:90%;">Open-Sora 1.2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib54" title=""><span class="ltx_text" style="font-size:90%;">54</span></a><span class="ltx_text" id="S4.T1.3.11.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.2"><span class="ltx_text" id="S4.T1.3.11.2.1" style="font-size:90%;">0.6600</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.3"><span class="ltx_text" id="S4.T1.3.11.3.1" style="font-size:90%;">0.5406</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.4"><span class="ltx_text" id="S4.T1.3.11.4.1" style="font-size:90%;">0.2388</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.5"><span class="ltx_text" id="S4.T1.3.11.5.1" style="font-size:90%;">0.5717</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.6"><span class="ltx_text" id="S4.T1.3.11.6.1" style="font-size:90%;">0.7400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.7"><span class="ltx_text" id="S4.T1.3.11.7.1" style="font-size:90%;">0.2556</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.8"><span class="ltx_text" id="S4.T1.3.11.8.1" style="font-size:90%;">0.5183</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.9"><span class="ltx_text" id="S4.T1.3.11.9.1" style="font-size:90%;">0.6856</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.12">
<td class="ltx_td ltx_align_left" id="S4.T1.3.12.1">
<span class="ltx_text" id="S4.T1.3.12.1.1" style="font-size:90%;">Open-Sora-Plan v1.1.0 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib27" title=""><span class="ltx_text" style="font-size:90%;">27</span></a><span class="ltx_text" id="S4.T1.3.12.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.2"><span class="ltx_text" id="S4.T1.3.12.2.1" style="font-size:90%;">0.7413</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.3"><span class="ltx_text" id="S4.T1.3.12.3.1" style="font-size:90%;">0.5587</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.4"><span class="ltx_text" id="S4.T1.3.12.4.1" style="font-size:90%;">0.2187</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.5"><span class="ltx_text ltx_font_bold" id="S4.T1.3.12.5.1" style="font-size:90%;">0.6780</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.6"><span class="ltx_text" id="S4.T1.3.12.6.1" style="font-size:90%;">0.7275</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.7"><span class="ltx_text" id="S4.T1.3.12.7.1" style="font-size:90%;">0.2928</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.8"><span class="ltx_text" id="S4.T1.3.12.8.1" style="font-size:90%;">0.4035</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.9"><span class="ltx_text" id="S4.T1.3.12.9.1" style="font-size:90%;">0.5311</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.13">
<td class="ltx_td ltx_align_left" id="S4.T1.3.13.1">
<span class="ltx_text" id="S4.T1.3.13.1.1" style="font-size:90%;">AnimateDiff </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.13.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a><span class="ltx_text" id="S4.T1.3.13.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.2"><span class="ltx_text" id="S4.T1.3.13.2.1" style="font-size:90%;">0.4883</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.3"><span class="ltx_text" id="S4.T1.3.13.3.1" style="font-size:90%;">0.3883</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.4"><span class="ltx_text" id="S4.T1.3.13.4.1" style="font-size:90%;">0.2236</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.5"><span class="ltx_text" id="S4.T1.3.13.5.1" style="font-size:90%;">0.4140</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.6"><span class="ltx_text" id="S4.T1.3.13.6.1" style="font-size:90%;">0.6550</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.7"><span class="ltx_text" id="S4.T1.3.13.7.1" style="font-size:90%;">0.0884</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.8"><span class="ltx_text" id="S4.T1.3.13.8.1" style="font-size:90%;">0.3831</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.9"><span class="ltx_text" id="S4.T1.3.13.9.1" style="font-size:90%;">0.4428</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.1.1">
<td class="ltx_td ltx_align_left" id="S4.T1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1" style="font-size:90%;">Pika</span><sup class="ltx_sup" id="S4.T1.1.1.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.1.1.1.2.1" style="font-size:90%;">†</span></sup><span class="ltx_text" id="S4.T1.1.1.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.1.1.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S4.T1.1.1.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.2"><span class="ltx_text" id="S4.T1.1.1.2.1" style="font-size:90%;">0.6513</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.3"><span class="ltx_text" id="S4.T1.1.1.3.1" style="font-size:90%;">0.5043</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.4"><span class="ltx_text" id="S4.T1.1.1.4.1" style="font-size:90%;">0.2221</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.5"><span class="ltx_text" id="S4.T1.1.1.5.1" style="font-size:90%;">0.5380</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.6"><span class="ltx_text" id="S4.T1.1.1.6.1" style="font-size:90%;">0.6625</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.7"><span class="ltx_text" id="S4.T1.1.1.7.1" style="font-size:90%;">0.2613</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.8"><span class="ltx_text" id="S4.T1.1.1.8.1" style="font-size:90%;">0.4308</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.1.1.9"><span class="ltx_text" id="S4.T1.1.1.9.1" style="font-size:90%;">0.6103</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2">
<td class="ltx_td ltx_align_left" id="S4.T1.2.2.1">
<span class="ltx_text" id="S4.T1.2.2.1.1" style="font-size:90%;">Gen-3</span><sup class="ltx_sup" id="S4.T1.2.2.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.2.2.1.2.1" style="font-size:90%;">†</span></sup><span class="ltx_text" id="S4.T1.2.2.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.2.2.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T1.2.2.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.2"><span class="ltx_text" id="S4.T1.2.2.2.1" style="font-size:90%;">0.7045</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.3"><span class="ltx_text" id="S4.T1.2.2.3.1" style="font-size:90%;">0.5533</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.2.2.4.1" style="font-size:90%;">0.3111</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.5"><span class="ltx_text" id="S4.T1.2.2.5.1" style="font-size:90%;">0.6280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.6"><span class="ltx_text" id="S4.T1.2.2.6.1" style="font-size:90%;">0.7900</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.7"><span class="ltx_text" id="S4.T1.2.2.7.1" style="font-size:90%;">0.2169</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.8"><span class="ltx_text" id="S4.T1.2.2.8.1" style="font-size:90%;">0.5364</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.2.2.9"><span class="ltx_text" id="S4.T1.2.2.9.1" style="font-size:90%;">0.6509</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3">
<td class="ltx_td ltx_align_left" id="S4.T1.3.3.1">
<span class="ltx_text" id="S4.T1.3.3.1.1" style="font-size:90%;">Dream Machine</span><sup class="ltx_sup" id="S4.T1.3.3.1.2"><span class="ltx_text ltx_font_italic" id="S4.T1.3.3.1.2.1" style="font-size:90%;">†</span></sup><span class="ltx_text" id="S4.T1.3.3.1.3" style="font-size:90%;"> </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.3.1.4.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S4.T1.3.3.1.5.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.2"><span class="ltx_text" id="S4.T1.3.3.2.1" style="font-size:90%;">0.6900</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.3"><span class="ltx_text" id="S4.T1.3.3.3.1" style="font-size:90%;">0.5397</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.4"><span class="ltx_text" id="S4.T1.3.3.4.1" style="font-size:90%;">0.2713</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.3.5.1" style="font-size:90%;">0.6400</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.6"><span class="ltx_text" id="S4.T1.3.3.6.1" style="font-size:90%;">0.7725</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.7"><span class="ltx_text" id="S4.T1.3.3.7.1" style="font-size:90%;">0.2109</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.8"><span class="ltx_text" id="S4.T1.3.3.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.3.9"><span class="ltx_text" id="S4.T1.3.3.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.14">
<td class="ltx_td ltx_align_left ltx_border_t" colspan="9" id="S4.T1.3.14.1"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S4.T1.3.14.1.1" style="font-size:90%;">Compositional T2V model:</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.15">
<td class="ltx_td ltx_align_left" id="S4.T1.3.15.1">
<span class="ltx_text" id="S4.T1.3.15.1.1" style="font-size:90%;">LVD </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.15.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T1.3.15.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.2"><span class="ltx_text" id="S4.T1.3.15.2.1" style="font-size:90%;">0.5595</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.3"><span class="ltx_text" id="S4.T1.3.15.3.1" style="font-size:90%;">0.5469</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.4"><span class="ltx_text" id="S4.T1.3.15.4.1" style="font-size:90%;">0.2699</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.5"><span class="ltx_text" id="S4.T1.3.15.5.1" style="font-size:90%;">0.4960</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.6"><span class="ltx_text" id="S4.T1.3.15.6.1" style="font-size:90%;">0.6100</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.7"><span class="ltx_text" id="S4.T1.3.15.7.1" style="font-size:90%;">0.0991</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.8"><span class="ltx_text" id="S4.T1.3.15.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.9"><span class="ltx_text" id="S4.T1.3.15.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.16">
<td class="ltx_td ltx_align_left" id="S4.T1.3.16.1">
<span class="ltx_text" id="S4.T1.3.16.1.1" style="font-size:90%;">VideoTetris </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.16.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S4.T1.3.16.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.2"><span class="ltx_text" id="S4.T1.3.16.2.1" style="font-size:90%;">0.7125</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.3"><span class="ltx_text" id="S4.T1.3.16.3.1" style="font-size:90%;">0.5148</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.4"><span class="ltx_text" id="S4.T1.3.16.4.1" style="font-size:90%;">0.2204</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.5"><span class="ltx_text" id="S4.T1.3.16.5.1" style="font-size:90%;">0.5280</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.6"><span class="ltx_text" id="S4.T1.3.16.6.1" style="font-size:90%;">0.7600</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.7"><span class="ltx_text" id="S4.T1.3.16.7.1" style="font-size:90%;">0.2609</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.8"><span class="ltx_text" id="S4.T1.3.16.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.16.9"><span class="ltx_text" id="S4.T1.3.16.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.17">
<td class="ltx_td ltx_align_left" id="S4.T1.3.17.1">
<span class="ltx_text" id="S4.T1.3.17.1.1" style="font-size:90%;">DreamRunner </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.17.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S4.T1.3.17.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.2"><span class="ltx_text" id="S4.T1.3.17.2.1" style="font-size:90%;">0.7350</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.17.3.1" style="font-size:90%;">0.6040</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.4"><span class="ltx_text" id="S4.T1.3.17.4.1" style="font-size:90%;">0.2608</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.5"><span class="ltx_text" id="S4.T1.3.17.5.1" style="font-size:90%;">0.5840</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.6"><span class="ltx_text ltx_font_bold" id="S4.T1.3.17.6.1" style="font-size:90%;">0.8225</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.7"><span class="ltx_text" id="S4.T1.3.17.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.8"><span class="ltx_text" id="S4.T1.3.17.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.17.9"><span class="ltx_text" id="S4.T1.3.17.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.18">
<td class="ltx_td ltx_align_left" id="S4.T1.3.18.1">
<span class="ltx_text" id="S4.T1.3.18.1.1" style="font-size:90%;">Vico </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.18.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="S4.T1.3.18.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.2"><span class="ltx_text" id="S4.T1.3.18.2.1" style="font-size:90%;">0.6980</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.3"><span class="ltx_text" id="S4.T1.3.18.3.1" style="font-size:90%;">0.5432</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.4"><span class="ltx_text" id="S4.T1.3.18.4.1" style="font-size:90%;">0.2412</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.5"><span class="ltx_text" id="S4.T1.3.18.5.1" style="font-size:90%;">0.6020</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.6"><span class="ltx_text" id="S4.T1.3.18.6.1" style="font-size:90%;">0.7800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.7"><span class="ltx_text" id="S4.T1.3.18.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.8"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.18.8.1" style="font-size:90%;">0.6321</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.18.9"><span class="ltx_text" id="S4.T1.3.18.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.19">
<td class="ltx_td ltx_align_left" id="S4.T1.3.19.1">
<span class="ltx_text" id="S4.T1.3.19.1.1" style="font-size:90%;">VideoRepair </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.19.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib24" title=""><span class="ltx_text" style="font-size:90%;">24</span></a><span class="ltx_text" id="S4.T1.3.19.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.19.2.1" style="font-size:90%;">0.7475</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.3"><span class="ltx_text" id="S4.T1.3.19.3.1" style="font-size:90%;">0.6000</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.4"><span class="ltx_text" id="S4.T1.3.19.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.5"><span class="ltx_text" id="S4.T1.3.19.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.6"><span class="ltx_text" id="S4.T1.3.19.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.7"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.19.7.1" style="font-size:90%;">0.2931</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.8"><span class="ltx_text" id="S4.T1.3.19.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.19.9"><span class="ltx_text" id="S4.T1.3.19.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.20">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T1.3.20.1">
<span class="ltx_text" id="S4.T1.3.20.1.1" style="font-size:90%;">CogVideoX-2B </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.20.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.14428v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T1.3.20.1.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.2"><span class="ltx_text" id="S4.T1.3.20.2.1" style="font-size:90%;">0.6775</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.3"><span class="ltx_text" id="S4.T1.3.20.3.1" style="font-size:90%;">0.4848</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.4"><span class="ltx_text" id="S4.T1.3.20.4.1" style="font-size:90%;">0.2379</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.5"><span class="ltx_text" id="S4.T1.3.20.5.1" style="font-size:90%;">0.5700</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.6"><span class="ltx_text" id="S4.T1.3.20.6.1" style="font-size:90%;">0.7250</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.7"><span class="ltx_text" id="S4.T1.3.20.7.1" style="font-size:90%;">0.2568</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.8"><span class="ltx_text" id="S4.T1.3.20.8.1" style="font-size:90%;">0.6263</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.20.9"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.20.9.1" style="font-size:90%;">0.6990</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.21" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T1.3.21.1"><span class="ltx_text" id="S4.T1.3.21.1.1" style="font-size:90%;background-color:#DAE8FC;">CogvideoX-2B + Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.21.2.1" style="font-size:90%;background-color:#DAE8FC;">0.7665</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.21.3.1" style="font-size:90%;background-color:#DAE8FC;">0.6012</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.21.4.1" style="font-size:90%;background-color:#DAE8FC;">0.3192</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.5"><span class="ltx_text" id="S4.T1.3.21.5.1" style="font-size:90%;background-color:#DAE8FC;">0.6140</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.3.21.6.1" style="font-size:90%;background-color:#DAE8FC;">0.8025</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.7"><span class="ltx_text ltx_font_bold" id="S4.T1.3.21.7.1" style="font-size:90%;background-color:#DAE8FC;">0.3079</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.8"><span class="ltx_text ltx_font_bold" id="S4.T1.3.21.8.1" style="font-size:90%;background-color:#DAE8FC;">0.6659</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.21.9"><span class="ltx_text ltx_font_bold" id="S4.T1.3.21.9.1" style="font-size:90%;background-color:#DAE8FC;">0.7325</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a comprehensive comparison of various text-to-video (T2V) models' performance on two benchmark datasets: T2V-CompBench and VBench.  T2V-CompBench evaluates models across six key aspects of compositional video generation: consistency of attributes, spatial relationships, motion accuracy, action coherence, interaction quality, and numerical accuracy. VBench expands on this by adding two additional metrics: the ability to handle multiple objects and the accuracy in representing spatial relationships between them. The table highlights the best and second-best performing models for each metric, clearly indicating which models excel in different aspects of compositional video generation.  Commercial models are also identified.
> <details>
> <summary>read the caption</summary>
> Table 1: Evaluation results on T2V-CompBench and VBench. ”T2V-Comp” includes six evaluation metrics, while ”VBench” introduces two new metrics: ”Multi-obj” and ”Spatial-rela”. Best/2nd best scores are bolded/underlined. ††{\dagger}† indicates the commercial models.
> </details>





### In-depth insights


#### Dual-Phase Refine
The dual-phase refinement strategy appears to be a core innovation, suggesting a structured approach to address the complexities of compositional video generation. The **conditioning phase** likely focuses on preparing the input text and layout, addressing issues such as semantic ambiguity early on. The **denoising phase** refines the generated video by focusing on spatial relationships and finer details. By separating these two crucial aspects, the dual-phase refinement can allow each phase to optimize for specific goals, leading to better overall quality. This separation is smart, allowing for a model-agnostic approach, improving attribute-location binding, and mitigating semantic leakage, which are persistent problems in T2V generation. Furthermore, it allows a sequential refinement, which progressively makes the generated video more like the intended result.

#### Sem. Disambiguate
The concept of 'Semantic Disambiguation' is crucial for AI systems to truly understand and process information like humans. It tackles the challenge where words or phrases can have multiple meanings depending on the context. **Effective semantic disambiguation ensures that AI correctly identifies the intended meaning**, avoiding misinterpretations. Methods might include analyzing surrounding words, using knowledge bases to understand relationships, or employing machine learning models trained on vast amounts of text. The success of semantic disambiguation directly impacts the performance of various AI applications, such as machine translation, question answering, and information retrieval. **Without it, AI struggles to deal with the nuances of human language**, leading to errors and hindering its ability to provide accurate and relevant responses.

#### Dynamic Layout
A dynamic layout mechanism in video generation focuses on the adaptive arrangement of objects within a scene over time. It's crucial for creating realistic and engaging videos where objects move and interact naturally. **Unlike static layouts, a dynamic layout considers the temporal dimension, ensuring that the spatial relationships between objects evolve consistently with the action**. This involves predicting the future positions of objects, managing occlusions, and handling changes in object size and shape. **Effective dynamic layout models leverage techniques such as recurrent neural networks or transformers to capture the dependencies between frames**. Challenges include dealing with uncertainty in object motion and maintaining long-term consistency in the layout. Successful implementation can significantly enhance the realism and coherence of generated videos, making them more compelling and believable. A flexible model allows for **better control over the narrative and composition of the video, enabling more creative and expressive storytelling**.

#### Model-Agnostic T2V
The concept of a model-agnostic text-to-video (T2V) system is compelling because it aims for **versatility and broad applicability**. Such a system would ideally function effectively across diverse T2V architectures, eliminating the need for retraining or significant modifications when switching between different underlying models. This approach offers several advantages, including **reduced development costs**, faster prototyping, and the ability to leverage the strengths of various T2V models without being tied to a specific architecture. A key challenge in achieving model-agnosticism is the design of **intermediate representations** that are compatible across different models. This might involve using a common latent space or developing techniques for adapting the input and output formats of different models. The development of such techniques would significantly advance the field, enabling the creation of more flexible and adaptable T2V systems.

#### No Extra Training
**Training-free methods** are increasingly attractive in video generation due to their efficiency. Eliminating the training phase dramatically reduces computational costs and time, making these methods more accessible. This is particularly important when adapting models to new datasets or tasks. **Training-free methods** often rely on pre-trained models and leverage techniques like prompt engineering or attention manipulation to achieve desired results. This approach offers flexibility and rapid prototyping. **The absence of training** can lead to challenges in fine-grained control and customization, potentially limiting the model's ability to capture complex nuances or handle specialized tasks. While potentially slightly limiting ultimate performance, **training-free** approaches offer a compelling balance between efficiency and quality, making them valuable tools for many video generation scenarios.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.14428/x3.png)

> 🔼 MagicComp's dual-phase refinement process is illustrated.  The first phase, Semantic Anchor Disambiguation (SAD), resolves ambiguity between subjects in the text prompt by independently processing each subject's semantics (using the example of 'cat' for simplicity) to generate anchor embeddings. These embeddings are then used to adjust the initial text embeddings, reducing ambiguity before the generation process begins. The second phase, Dynamic Layout Fusion Attention (DLFA), precisely binds attributes and locations to each subject during the denoising phase using both pre-defined and model-learned spatial masks. This ensures accurate placement of objects in the generated video.
> <details>
> <summary>read the caption</summary>
> Figure 2: Detailed architecture of MagicComp. The dual-phase refinement strategy of MagicComp contains two core steps: (a) Semantic Anchor Disambiguation (SAD) module for inter-subject disambiguation during the conditioning stage. We only display disambiguation process of subject “cat' for simplicity, other subjects follow the similar way. (b) Dynamic Layout Fusion Attention (DLFA) module for precise attribute–location binding of each subject during the denoising stage.
> </details>



![](https://arxiv.org/html/2503.14428/x4.png)

> 🔼 This figure demonstrates the effectiveness of Semantic Anchor Disambiguation (SAD) in resolving semantic ambiguity.  Part (a) shows a comparison of cosine similarity scores between the embeddings of 'brown dog' and 'gray cat' under three conditions: without SAD, with SAD, and with a standard T5 encoding (no SAD).  This illustrates how SAD reduces the similarity between the two subjects, improving the clarity of their distinct semantic representations. Part (b) visualizes cross-attention maps between video tokens from the middle frame and pooled subject tokens. This demonstrates how SAD leads to more distinct attention patterns for 'brown dog' and 'gray cat,' preventing semantic confusion during the generation process.
> <details>
> <summary>read the caption</summary>
> Figure 3: Visualization of the disambiguation effect brought by SAD. (a) Cos similarity between the pooled embeddings of “brown dog' and “gray cat' under different settings. “Standard' indicates the cos similarity is computed when each subject are independently encoded by T5. (b) Cross attention maps between the middle frame video tokens and the pooled subject tokens.
> </details>



![](https://arxiv.org/html/2503.14428/x5.png)

> 🔼 This figure compares different masking strategies used in the Dynamic Layout Fusion Attention (DLFA) module.  Panel (a) visualizes the prior layout mask generated by a large language model (LLM) alongside the model-adaptive perception layout mask. The LLM mask provides a coarse initial estimation of subject locations, while the adaptive mask refines these locations based on the video content and its correlation with the text. Panel (b) then shows the resulting videos generated using each masking method. This comparison highlights how the combination of prior and adaptive masks improves the accuracy and detail in the generated subject-specific regions compared to using only the prior LLM-generated masks.
> <details>
> <summary>read the caption</summary>
> Figure 4: Comparison of different masking strategy. (a) Visualization of prior layout mask and model-adaptive perception layout. (b) Comparison of the generated videos.
> </details>



![](https://arxiv.org/html/2503.14428/x6.png)

> 🔼 Figure 5 presents a qualitative comparison of different text-to-video (T2V) models on the T2V-CompBench benchmark.  The figure showcases the results of various models on six compositional generation tasks: consistent attribute binding, spatial relationships, motion, action, interaction, and numeracy. Each task is represented with examples of generated video frames using different models, demonstrating MagicComp's superior ability to generate videos that accurately reflect the complex relationships and interactions specified in the textual prompts. In contrast, existing methods like Vico and CogVideoX often fail to correctly capture the fine-grained details and interactions described in the prompts, highlighting MagicComp's advancement in handling complex compositional scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative Comparison on T2V-CompBench. Our MagicComp significantly outperforms existing approaches across various compositional generation tasks, and the methods such as Vico [47] and CogVideoX [48] struggle to capture fine-grained concepts.
> </details>



![](https://arxiv.org/html/2503.14428/x7.png)

> 🔼 Figure 6 presents a comparison of video generation results across different models in response to a complex prompt.  The prompt describes a scene with multiple interacting elements and specific attributes (a skeleton pirate, a ghost ship, a dark sea, glowing lanterns, and a treasure map). The figure visually demonstrates that, unlike other models, MagicComp accurately generates the video according to the complex prompt's specifications.
> <details>
> <summary>read the caption</summary>
> Figure 6: Application on complex prompt-based video generation. It is evident that among all models, only MagicComp strictly follows the prompt to generate complex scenarios.
> </details>



![](https://arxiv.org/html/2503.14428/x8.png)

> 🔼 Figure 7 demonstrates the application of MagicComp to achieve trajectory-controllable video generation.  The figure showcases that by integrating MagicComp into CogVideoX [48], the model gains the ability to control the trajectory of objects in generated videos without requiring any extra computational cost or additional training. This highlights the efficiency and practical value of MagicComp in enhancing video generation capabilities beyond standard compositional tasks.
> <details>
> <summary>read the caption</summary>
> Figure 7: Application about trajectory-controllable video generation. By incorporating the proposed methods, CogVideoX [48] can achieve trajectory control seamlessly without additional cost.
> </details>



![](https://arxiv.org/html/2503.14428/x9.png)

> 🔼 This figure shows instructions on how to create a YAML file for describing the layout of video generation.  It details the process of annotating key subjects in video captions and planning their motion paths using bounding boxes.  Specific requirements are provided, including normalization of bounding boxes, consistent movement, attribute binding, and handling of multiple objects.  An example YAML file is given to illustrate the expected format.
> <details>
> <summary>read the caption</summary>
> Figure 1: Instruction prompt for prior layout generation.
> </details>



![](https://arxiv.org/html/2503.14428/x10.png)

> 🔼 This figure displays a qualitative comparison of different models' performance on the 'Consistent Attributes' task.  It shows generated video frames from five different models (MagicComp, CogVideoX-2B, Vico, VideoTetris, and Open-Sora-Plan). Two scenarios are presented: 'Big hearts and small stars floating upwards' and 'Oblong canoe gliding past a circular buoy'. The comparison highlights MagicComp's superior ability to maintain consistent attributes throughout the generated video sequence, compared to other models that struggle with this task.
> <details>
> <summary>read the caption</summary>
> Figure 2: Qualitative results on Consist-attr.
> </details>



![](https://arxiv.org/html/2503.14428/x11.png)

> 🔼 This figure displays a qualitative comparison of different models' performance on the 'Consistent Attributes' task from the T2V-CompBench benchmark.  It showcases the results of generating videos based on prompts describing objects with specific attributes. Each row represents a different model (MagicComp, CogVideoX-2B, Vico, VideoTetris, and Open-Sora-Plan), and each column displays a sequence of frames from the generated videos for two different prompts.  The prompts used are: 'Star-shaped cookie resting on a round coaster' and 'Green tractor plowing near a white farmhouse'.  The figure demonstrates MagicComp's superior ability to maintain consistent visual attributes (shape and color) of objects throughout the generated video sequences compared to other methods.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative results on Consist-attr.
> </details>



![](https://arxiv.org/html/2503.14428/x12.png)

> 🔼 This figure displays qualitative results focusing on the 'Motion' aspect of compositional video generation.  It presents a visual comparison of how different models, including MagicComp and several baselines, handle the generation of videos involving movement and dynamic interactions.  By comparing the video frames generated by each model for the same prompts, the figure helps illustrate the effectiveness and accuracy of the models in capturing motion accurately and consistently.
> <details>
> <summary>read the caption</summary>
> Figure 4: Qualitative results on Motion.
> </details>



![](https://arxiv.org/html/2503.14428/x13.png)

> 🔼 This figure displays qualitative results comparing different models' performance on actions and motion in video generation.  Each row shows the output of a different model (MagicComp, CogVideoX-2B, Vico, VideoTeris, Open-Sora-Plan) for two example prompts: a sheep walking on grass with a hot air balloon above and a boat sailing on the ocean. The image sequence for each model shows how well each model's output captures the specified actions and motions in the prompts. The goal is to illustrate how MagicComp excels in generating videos that accurately reflect the dynamic aspects of action and motion compared to existing methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Qualitative results on Action & Motion.
> </details>



![](https://arxiv.org/html/2503.14428/x14.png)

> 🔼 This figure showcases a qualitative comparison of various models' performance on numeracy tasks within compositional video generation.  It presents two example prompts: 'two elephants and five buckets in a zoo' and 'seven bees buzz around a blooming flower bed'. For each prompt, it visually displays the generated video frames produced by different models, allowing for a direct comparison of their ability to accurately represent numerical quantities within a scene. The goal is to highlight the relative strengths and weaknesses of each model in handling numerical concepts during compositional video generation.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative results on Numeracy.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.2.1">
<tr class="ltx_tr" id="S4.T2.2.1.1">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.1.1" style="padding-top:1pt;padding-bottom:1pt;">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span>
<span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.1.1">Model</span>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.1.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.2.1">Consist-attr</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.1.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.3.1">Spatial</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.1.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.4.1">Interaction</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.1.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.5.1">Numeracy</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.1.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.1.6.1">Time</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.2.1" style="padding-top:1pt;padding-bottom:1pt;">CogvideoX-2B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.2" style="padding-top:1pt;padding-bottom:1pt;">0.6775</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.3" style="padding-top:1pt;padding-bottom:1pt;">0.4848</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.4" style="padding-top:1pt;padding-bottom:1pt;">0.7250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.5" style="padding-top:1pt;padding-bottom:1pt;">0.2568</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.2.6" style="padding-top:1pt;padding-bottom:1pt;">75s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.3">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.3.1" style="padding-top:1pt;padding-bottom:1pt;">w/ SAD</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.2" style="padding-top:1pt;padding-bottom:1pt;">0.7225</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.3" style="padding-top:1pt;padding-bottom:1pt;">0.5353</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.4" style="padding-top:1pt;padding-bottom:1pt;">0.7575</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.5" style="padding-top:1pt;padding-bottom:1pt;">0.2845</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.3.6" style="padding-top:1pt;padding-bottom:1pt;">77s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.4">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.4.1" style="padding-top:1pt;padding-bottom:1pt;">w/ DLFA</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.2" style="padding-top:1pt;padding-bottom:1pt;">0.7380</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.3" style="padding-top:1pt;padding-bottom:1pt;">0.5734</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.4" style="padding-top:1pt;padding-bottom:1pt;">0.7800</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.5" style="padding-top:1pt;padding-bottom:1pt;">0.2964</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.4.6" style="padding-top:1pt;padding-bottom:1pt;">85s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.5" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.5.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.1.1" style="background-color:#DAE8FC;">w/ DLFA &amp; SAD</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.2.1" style="background-color:#DAE8FC;">0.7665</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.3.1" style="background-color:#DAE8FC;">0.6012</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.4.1" style="background-color:#DAE8FC;">0.8025</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.5.1" style="background-color:#DAE8FC;">0.3079</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.5.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.5.6.1" style="background-color:#DAE8FC;">87s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.6">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T2.2.1.6.1" style="padding-top:1pt;padding-bottom:1pt;">VideoCrafter2</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.6.2" style="padding-top:1pt;padding-bottom:1pt;">0.6750</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.6.3" style="padding-top:1pt;padding-bottom:1pt;">0.4891</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.6.4" style="padding-top:1pt;padding-bottom:1pt;">0.7600</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.6.5" style="padding-top:1pt;padding-bottom:1pt;">0.2041</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.2.1.6.6" style="padding-top:1pt;padding-bottom:1pt;">14s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.7">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.7.1" style="padding-top:1pt;padding-bottom:1pt;">w/ SAD</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.2" style="padding-top:1pt;padding-bottom:1pt;">0.7020</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.3" style="padding-top:1pt;padding-bottom:1pt;">0.5132</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.4" style="padding-top:1pt;padding-bottom:1pt;">0.7625</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.5" style="padding-top:1pt;padding-bottom:1pt;">0.2294</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.7.6" style="padding-top:1pt;padding-bottom:1pt;">15s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.8">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.8.1" style="padding-top:1pt;padding-bottom:1pt;">w/ DLFA</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.2" style="padding-top:1pt;padding-bottom:1pt;">0.7125</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.3" style="padding-top:1pt;padding-bottom:1pt;">0.5349</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.4" style="padding-top:1pt;padding-bottom:1pt;">0.7850</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.5" style="padding-top:1pt;padding-bottom:1pt;">0.2463</td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.8.6" style="padding-top:1pt;padding-bottom:1pt;">16s</td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.9" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.9.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.1.1" style="background-color:#DAE8FC;">w/ DLFA &amp; SAD</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.2" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.2.1" style="background-color:#DAE8FC;">0.7203</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.3" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.3.1" style="background-color:#DAE8FC;">0.5435</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.4" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.4.1" style="background-color:#DAE8FC;">0.7900</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.5" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.5.1" style="background-color:#DAE8FC;">0.2553</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.2.1.9.6" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_text ltx_font_bold" id="S4.T2.2.1.9.6.1" style="background-color:#DAE8FC;">17s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.2.1.10">
<td class="ltx_td ltx_align_left" id="S4.T2.2.1.10.1" style="padding-top:1pt;padding-bottom:1pt;"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S4.T2.2.1.10.2" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S4.T2.2.1.10.3" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S4.T2.2.1.10.4" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S4.T2.2.1.10.5" style="padding-top:1pt;padding-bottom:1pt;"></td>
<td class="ltx_td" id="S4.T2.2.1.10.6" style="padding-top:1pt;padding-bottom:1pt;"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the individual contributions of the Semantic Anchor Disambiguation (SAD) and Dynamic Layout Fusion Attention (DLFA) modules within the MagicComp framework.  It demonstrates that removing either module significantly degrades the model's performance, highlighting their importance in achieving high-quality results in compositional video generation. The table quantifies this performance drop across multiple metrics, showcasing the synergistic effect of combining SAD and DLFA.
> <details>
> <summary>read the caption</summary>
> Table 2: Ablation study of SAD and DLFA modules. Removing any of these modules significantly reduces model performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.2.1">
<tr class="ltx_tr" id="S4.T3.2.1.1">
<td class="ltx_td ltx_align_left ltx_border_tt" id="S4.T3.2.1.1.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.1.1">Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.2.1">Consist-attr</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.3.1">Spatial</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.4.1">Interaction</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.2.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.1.5.1">Numeracy</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.2">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.1.2.1">CogvideoX-2B</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.2">0.6775</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.3">0.4848</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.4">0.7250</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.2.5">0.2568</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.3">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.1.3.1">w/ 3D Region Attention</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.2">0.7248</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.3">0.5632</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.4">0.7625</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.3.5">0.2878</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.4" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left" id="S4.T3.2.1.4.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.1.1" style="background-color:#DAE8FC;">w/ DLFA</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.2.1" style="background-color:#DAE8FC;">0.7380</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.3.1" style="background-color:#DAE8FC;">0.5734</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.4.1" style="background-color:#DAE8FC;">0.7800</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.2.1.4.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.4.5.1" style="background-color:#DAE8FC;">0.2964</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.5">
<td class="ltx_td ltx_align_left ltx_border_t" id="S4.T3.2.1.5.1">w/ Word Swap</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.5.2">0.6995</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.5.3">0.4767</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.5.4">0.7275</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.2.1.5.5">0.2463</td>
</tr>
<tr class="ltx_tr" id="S4.T3.2.1.6" style="background-color:#DAE8FC;">
<td class="ltx_td ltx_align_left ltx_border_bb" id="S4.T3.2.1.6.1"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.1.1" style="background-color:#DAE8FC;">w/ SAD</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.6.2"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.2.1" style="background-color:#DAE8FC;">0.7225</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.6.3"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.3.1" style="background-color:#DAE8FC;">0.5353</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.6.4"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.4.1" style="background-color:#DAE8FC;">0.7575</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.2.1.6.5"><span class="ltx_text ltx_font_bold" id="S4.T3.2.1.6.5.1" style="background-color:#DAE8FC;">0.2845</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of integrating different modules into the CogVideoX-2B model.  It specifically investigates the effects of replacing the Semantic Anchor Disambiguation (SAD) and Dynamic Layout Fusion Attention (DLFA) modules with alternative, simpler methods. The results demonstrate that replacing SAD and DLFA with naive strategies significantly reduces the model's performance, highlighting the importance of these two components in achieving superior results in compositional video generation.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on incorporating other approaches on CogvideoX-2B. Replacing SAD and DLFA with other naive strategies leads to a performance drop.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.2">
<tr class="ltx_tr" id="S3.T1.2.3">
<td class="ltx_td ltx_align_left" id="S3.T1.2.3.1">
<span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span><span class="ltx_text" id="S3.T1.2.3.1.1" style="font-size:144%;">
</span><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.1.2" style="font-size:144%;">Hyperparameters</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.2"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.2.1" style="font-size:144%;">CogVideoX</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.3.3"><span class="ltx_text ltx_font_bold" id="S3.T1.2.3.3.1" style="font-size:144%;">VideoCrafter2</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.4">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.2.4.1"><span class="ltx_text" id="S3.T1.2.4.1.1" style="font-size:144%;">Sampler</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.2"><span class="ltx_text" id="S3.T1.2.4.2.1" style="font-size:144%;">DPM-Solver</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.2.4.3"><span class="ltx_text" id="S3.T1.2.4.3.1" style="font-size:144%;">DPM-Solver</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.5">
<td class="ltx_td ltx_align_left" id="S3.T1.2.5.1"><span class="ltx_text" id="S3.T1.2.5.1.1" style="font-size:144%;">Denoising step</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.2"><span class="ltx_text" id="S3.T1.2.5.2.1" style="font-size:144%;">50</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.5.3"><span class="ltx_text" id="S3.T1.2.5.3.1" style="font-size:144%;">50</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.6">
<td class="ltx_td ltx_align_left" id="S3.T1.2.6.1"><span class="ltx_text" id="S3.T1.2.6.1.1" style="font-size:144%;">Guidance scale</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.2"><span class="ltx_text" id="S3.T1.2.6.2.1" style="font-size:144%;">12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.6.3"><span class="ltx_text" id="S3.T1.2.6.3.1" style="font-size:144%;">6</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td ltx_align_left" id="S3.T1.2.2.3"><span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:144%;">Resolution</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.1.1.1"><math alttext="\rm 512\times 320" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mrow id="S3.T1.1.1.1.m1.1.1" xref="S3.T1.1.1.1.m1.1.1.cmml"><mn id="S3.T1.1.1.1.m1.1.1.2" mathsize="144%" xref="S3.T1.1.1.1.m1.1.1.2.cmml">512</mn><mo id="S3.T1.1.1.1.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T1.1.1.1.m1.1.1.1.cmml">×</mo><mn id="S3.T1.1.1.1.m1.1.1.3" mathsize="144%" xref="S3.T1.1.1.1.m1.1.1.3.cmml">320</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><apply id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"><times id="S3.T1.1.1.1.m1.1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1.1"></times><cn id="S3.T1.1.1.1.m1.1.1.2.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.2">512</cn><cn id="S3.T1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S3.T1.1.1.1.m1.1.1.3">320</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\rm 512\times 320</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">512 × 320</annotation></semantics></math></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.2"><math alttext="\rm 720\times 480" class="ltx_Math" display="inline" id="S3.T1.2.2.2.m1.1"><semantics id="S3.T1.2.2.2.m1.1a"><mrow id="S3.T1.2.2.2.m1.1.1" xref="S3.T1.2.2.2.m1.1.1.cmml"><mn id="S3.T1.2.2.2.m1.1.1.2" mathsize="144%" xref="S3.T1.2.2.2.m1.1.1.2.cmml">720</mn><mo id="S3.T1.2.2.2.m1.1.1.1" lspace="0.222em" mathsize="144%" rspace="0.222em" xref="S3.T1.2.2.2.m1.1.1.1.cmml">×</mo><mn id="S3.T1.2.2.2.m1.1.1.3" mathsize="144%" xref="S3.T1.2.2.2.m1.1.1.3.cmml">480</mn></mrow><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.2.m1.1b"><apply id="S3.T1.2.2.2.m1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1"><times id="S3.T1.2.2.2.m1.1.1.1.cmml" xref="S3.T1.2.2.2.m1.1.1.1"></times><cn id="S3.T1.2.2.2.m1.1.1.2.cmml" type="integer" xref="S3.T1.2.2.2.m1.1.1.2">720</cn><cn id="S3.T1.2.2.2.m1.1.1.3.cmml" type="integer" xref="S3.T1.2.2.2.m1.1.1.3">480</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.2.m1.1c">\rm 720\times 480</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.2.m1.1d">720 × 480</annotation></semantics></math></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.7">
<td class="ltx_td ltx_align_left" id="S3.T1.2.7.1"><span class="ltx_text" id="S3.T1.2.7.1.1" style="font-size:144%;">Number of frames</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.7.2"><span class="ltx_text" id="S3.T1.2.7.2.1" style="font-size:144%;">16</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.7.3"><span class="ltx_text" id="S3.T1.2.7.3.1" style="font-size:144%;">49</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.8">
<td class="ltx_td ltx_align_left" id="S3.T1.2.8.1"><span class="ltx_rule" style="width:100%;height:1.0pt;background:black;display:inline-block;"> </span></td>
<td class="ltx_td" id="S3.T1.2.8.2"></td>
<td class="ltx_td" id="S3.T1.2.8.3"></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in the implementation of MagicComp, a training-free dual-phase refinement method for compositional video generation.  It shows the settings for both CogVideoX and VideoCrafter2 models, covering aspects like the sampler, denoising steps, guidance scale, resolution, and number of frames generated.
> <details>
> <summary>read the caption</summary>
> Table 1: More implementation details.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.14428/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.14428/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}