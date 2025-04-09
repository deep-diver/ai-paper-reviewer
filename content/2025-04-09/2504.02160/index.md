---
title: "Less-to-More Generalization: Unlocking More Controllability by In-Context Generation"
summary: "UNO unlocks highly controllable in-context generation by a novel model-data co-evolution!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 ByteDance",]
showSummary: true
date: 2025-04-02
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02160 {{< /keyword >}}
{{< keyword icon="writer" >}} Shaojin Wu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-09 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02160" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02160" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02160/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Subject-driven image generation is limited by data scalability & subject expandability. Scaling single-subject datasets to multi-subject ones is difficult.  Existing methods struggle w/ multi-subject scenarios. This paper proposes a data synthesis pipeline using diffusion transformers, generating consistent multi-subject paired data.



To address this, the paper introduces UNO, featuring progressive cross-modal alignment and universal rotary position embedding. Trained iteratively, UNO achieves high consistency while ensuring controllability in both single & multi-subject generation. Code & models are publicly available.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Introduces a data synthesis pipeline for high-consistency multi-subject paired data. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Presents UNO, a multi-image conditioned subject-to-image model with progressive cross-modal alignment. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Achieves state-of-the-art results in subject similarity and text controllability on DreamBench. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This research pioneers a novel model-data co-evolution, tackling data bottlenecks in customized image generation. **By balancing subject similarity and text controllability**, this work provides a new direction for future research in controllable AI content creation.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02160/extracted/6331841/figs/intro_motivation.jpg)

> 🔼 This figure showcases the UNO model's ability to perform universal customization, progressing from single-subject to multi-subject image generation.  Each row demonstrates a different type of generation task: One2One (single image to single image), Two2One (two images to single image), Many2One (multiple images to single image), stylized generation, virtual try-on, product design, and identity preservation. The figure visually represents the model's capacity to incorporate multiple image inputs and textual descriptions, resulting in highly customized image outputs that preserve identity across subject variations.
> <details>
> <summary>read the caption</summary>
> Figure 1: Our UNO evolves as an universal customization from single to multi-subject.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T1.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T1.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T1.1.1.1.1" style="font-size:90%;">DINO</span><span class="ltx_text" id="S4.T1.1.1.1.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T1.2.2.2.1" style="font-size:90%;">CLIP-I</span><span class="ltx_text" id="S4.T1.2.2.2.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T1.3.3.3.1" style="font-size:90%;">CLIP-T</span><span class="ltx_text" id="S4.T1.3.3.3.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.3.3.3.m1.1"><semantics id="S4.T1.3.3.3.m1.1a"><mo id="S4.T1.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T1.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.m1.1b"><ci id="S4.T1.3.3.3.m1.1.1.cmml" xref="S4.T1.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
<tr class="ltx_tr" id="S4.T1.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T1.3.4.1.1"><span class="ltx_text" id="S4.T1.3.4.1.1.1" style="font-size:90%;">Oracle(reference images)</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.4.1.2"><span class="ltx_text" id="S4.T1.3.4.1.2.1" style="font-size:90%;">0.774</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.4.1.3"><span class="ltx_text" id="S4.T1.3.4.1.3.1" style="font-size:90%;">0.885</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T1.3.4.1.4"><span class="ltx_text" id="S4.T1.3.4.1.4.1" style="font-size:90%;">-</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.5.1.1">
<span class="ltx_text" id="S4.T1.3.5.1.1.1" style="font-size:90%;">Textual Inversion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.5.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib8" title=""><span class="ltx_text" style="font-size:90%;">8</span></a><span class="ltx_text" id="S4.T1.3.5.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.1.2"><span class="ltx_text" id="S4.T1.3.5.1.2.1" style="font-size:90%;">0.569</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.1.3"><span class="ltx_text" id="S4.T1.3.5.1.3.1" style="font-size:90%;">0.780</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.5.1.4"><span class="ltx_text" id="S4.T1.3.5.1.4.1" style="font-size:90%;">0.255</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.6.2.1">
<span class="ltx_text" id="S4.T1.3.6.2.1.1" style="font-size:90%;">DreamBooth </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.6.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T1.3.6.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.2.2"><span class="ltx_text" id="S4.T1.3.6.2.2.1" style="font-size:90%;">0.668</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.2.3"><span class="ltx_text" id="S4.T1.3.6.2.3.1" style="font-size:90%;">0.803</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.6.2.4"><span class="ltx_text" id="S4.T1.3.6.2.4.1" style="font-size:90%;">0.305</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.7.3.1">
<span class="ltx_text" id="S4.T1.3.7.3.1.1" style="font-size:90%;">BLIP-Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.7.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T1.3.7.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.3.2"><span class="ltx_text" id="S4.T1.3.7.3.2.1" style="font-size:90%;">0.670</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.3.3"><span class="ltx_text" id="S4.T1.3.7.3.3.1" style="font-size:90%;">0.805</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.7.3.4"><span class="ltx_text" id="S4.T1.3.7.3.4.1" style="font-size:90%;">0.302</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T1.3.8.4.1">
<span class="ltx_text" id="S4.T1.3.8.4.1.1" style="font-size:90%;">ELITE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.8.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib43" title=""><span class="ltx_text" style="font-size:90%;">43</span></a><span class="ltx_text" id="S4.T1.3.8.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.8.4.2"><span class="ltx_text" id="S4.T1.3.8.4.2.1" style="font-size:90%;">0.647</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.8.4.3"><span class="ltx_text" id="S4.T1.3.8.4.3.1" style="font-size:90%;">0.772</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.8.4.4"><span class="ltx_text" id="S4.T1.3.8.4.4.1" style="font-size:90%;">0.296</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.9.5.1">
<span class="ltx_text" id="S4.T1.3.9.5.1.1" style="font-size:90%;">Re-Imagen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.9.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib5" title=""><span class="ltx_text" style="font-size:90%;">5</span></a><span class="ltx_text" id="S4.T1.3.9.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.5.2"><span class="ltx_text" id="S4.T1.3.9.5.2.1" style="font-size:90%;">0.600</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.5.3"><span class="ltx_text" id="S4.T1.3.9.5.3.1" style="font-size:90%;">0.740</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.9.5.4"><span class="ltx_text" id="S4.T1.3.9.5.4.1" style="font-size:90%;">0.270</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.10.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.10.6.1">
<span class="ltx_text" id="S4.T1.3.10.6.1.1" style="font-size:90%;">BootPIG</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.10.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T1.3.10.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.6.2"><span class="ltx_text" id="S4.T1.3.10.6.2.1" style="font-size:90%;">0.674</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.6.3"><span class="ltx_text" id="S4.T1.3.10.6.3.1" style="font-size:90%;">0.797</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.10.6.4"><span class="ltx_text" id="S4.T1.3.10.6.4.1" style="font-size:90%;">0.311</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.11.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.11.7.1">
<span class="ltx_text" id="S4.T1.3.11.7.1.1" style="font-size:90%;">SSR-Encoder</span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.11.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib48" title=""><span class="ltx_text" style="font-size:90%;">48</span></a><span class="ltx_text" id="S4.T1.3.11.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.7.2"><span class="ltx_text" id="S4.T1.3.11.7.2.1" style="font-size:90%;">0.612</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.7.3"><span class="ltx_text" id="S4.T1.3.11.7.3.1" style="font-size:90%;background-color:#D2C8FA;">0.821</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.11.7.4"><span class="ltx_text" id="S4.T1.3.11.7.4.1" style="font-size:90%;">0.308</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.12.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.12.8.1">
<span class="ltx_text" id="S4.T1.3.12.8.1.1" style="font-size:90%;">RealCustom++ </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.12.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib14" title=""><span class="ltx_text" style="font-size:90%;">14</span></a>, <a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib20" title=""><span class="ltx_text" style="font-size:90%;">20</span></a><span class="ltx_text" id="S4.T1.3.12.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.8.2"><span class="ltx_text" id="S4.T1.3.12.8.2.1" style="font-size:90%;background-color:#D2C8FA;">0.702</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.8.3"><span class="ltx_text" id="S4.T1.3.12.8.3.1" style="font-size:90%;">0.794</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.12.8.4"><span class="ltx_text ltx_font_bold" id="S4.T1.3.12.8.4.1" style="font-size:90%;background-color:#FFCCCC;">0.318</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.13.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.13.9.1">
<span class="ltx_text" id="S4.T1.3.13.9.1.1" style="font-size:90%;">OmniGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.13.9.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T1.3.13.9.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.9.2"><span class="ltx_text" id="S4.T1.3.13.9.2.1" style="font-size:90%;">0.693</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.9.3"><span class="ltx_text" id="S4.T1.3.13.9.3.1" style="font-size:90%;">0.801</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.13.9.4"><span class="ltx_text" id="S4.T1.3.13.9.4.1" style="font-size:90%;background-color:#D2C8FA;">0.315</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.14.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.14.10.1">
<span class="ltx_text" id="S4.T1.3.14.10.1.1" style="font-size:90%;">OminiControl </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.14.10.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib38" title=""><span class="ltx_text" style="font-size:90%;">38</span></a><span class="ltx_text" id="S4.T1.3.14.10.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.14.10.2"><span class="ltx_text" id="S4.T1.3.14.10.2.1" style="font-size:90%;">0.684</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.14.10.3"><span class="ltx_text" id="S4.T1.3.14.10.3.1" style="font-size:90%;">0.799</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.14.10.4"><span class="ltx_text" id="S4.T1.3.14.10.4.1" style="font-size:90%;">0.312</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.15.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T1.3.15.11.1"><span class="ltx_text" id="S4.T1.3.15.11.1.1" style="font-size:90%;">FLUX.1 IP-Adapter</span></th>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.11.2"><span class="ltx_text" id="S4.T1.3.15.11.2.1" style="font-size:90%;">0.582</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.11.3"><span class="ltx_text" id="S4.T1.3.15.11.3.1" style="font-size:90%;">0.820</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.3.15.11.4"><span class="ltx_text" id="S4.T1.3.15.11.4.1" style="font-size:90%;">0.288</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.16.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T1.3.16.12.1"><span class="ltx_text ltx_font_bold" id="S4.T1.3.16.12.1.1" style="font-size:90%;">UNO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.16.12.2"><span class="ltx_text ltx_font_bold" id="S4.T1.3.16.12.2.1" style="font-size:90%;background-color:#FFCCCC;">0.760</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.16.12.3"><span class="ltx_text ltx_font_bold" id="S4.T1.3.16.12.3.1" style="font-size:90%;background-color:#FFCCCC;">0.835</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.3.16.12.4"><span class="ltx_text" id="S4.T1.3.16.12.4.1" style="font-size:90%;">0.304</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for single-subject image generation, using the DreamBench benchmark.  The first row shows the ideal or 'oracle' results, representing a perfect generation. The remaining rows compare various methods, categorized as either tuning methods (requiring adjustments to pre-trained models) or tuning-free methods (requiring no model adjustments).  Three metrics are used to evaluate performance: DINO (a measure of subject similarity), CLIP-I (another measure of subject similarity), and CLIP-T (a measure of text fidelity). The highest and second-highest values are highlighted for each metric to clearly indicate top-performing methods.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative results for single-subject driven generation on Dreambench. We present the oracle results in the first row and compare both tuning methods and tuning-free methods. We highlight the best and second-best values for each metric.
> </details>





### In-depth insights


#### Data Bottleneck
**Data scarcity** is a significant hurdle in customized generation. Creating models that generate diverse poses and attributes requires comprehensive datasets, which are **difficult to acquire**. Multi-perspective subject variations are needed, but obtaining such real paired datasets is impractical. Existing methods use real images with **limited diversity**, or synthetic data of **lower quality** and domain coverage. Customized models often trade off between subject similarity and text controllability due to these data limitations. Addressing the data bottleneck is crucial for unlocking more controllable and scalable customized generation.

#### Model-Data CoEvo
**Model-Data Co-evolution** presents a paradigm shift in AI, moving beyond static datasets and models. The central idea is that models should be trained from data to improve each other iteratively. **Less controllable models systematically generate customization data** used to further train more controllable variants to bridge the gap between the model and real world data. Thus there is a **persistent co-evolution** between the model and data.

#### Progressive S2I
Progressive Subject-to-Image (S2I) generation aims to refine image generation by **incrementally incorporating subject details** from reference images. This approach tackles the challenge of preserving subject fidelity while maintaining controllability over the generated image. The **key idea is to transition smoothly** from text-to-image generation (T2I) to S2I. This often involves a two-stage process: initial training on single-subject data to learn basic subject alignment, followed by training on multi-subject data to handle more complex scenarios. **Cross-modal alignment is crucial** to prevent disruptions to the original T2I convergence. The progressive strategy aims to **mitigate training instability** and achieve better subject similarity and controllability. The **goal is to unlock better quality** and customization.

#### Synthetic Curation
**Synthetic data curation** is presented as a vital solution to overcome the scarcity of high-quality, subject-consistent datasets, which has been a major impediment for subject-driven generation. The technique addresses the challenge of model training by constructing innovative pipelines. Specifically, it involves methods to create single-subject and multi-subject paired data through strategic text prompts. This also incorporates techniques like chaining to construct a better visual data. **Data filtering methods** based on vision-language models (VLMs) are employed to refine the synthesized data. The VLM metrics, coupled with strategies to remove inconsistencies, significantly improve dataset quality. This careful generation and refinement ensures that models trained on these data can achieve high levels of detail, adherence to textual descriptions, and subject similarity, thus pushing the boundaries of what is possible in controllable content generation.

#### Text Controllable
While the paper doesn't explicitly have a section titled "Text Controllable," the concept is interwoven throughout. The research aims to enhance image generation, ensuring the output aligns with provided textual prompts. **Achieving precise text control** is a core challenge, preventing models from ignoring or misinterpreting the text. The success hinges on a **robust understanding** of the text and translating it accurately into visual attributes, styles, and relationships within the generated image. The paper's methodology emphasizes meticulously crafted prompts. A progressive data synthesis pipeline is used where a large language model (LLM) is used to generate varied subjects and settings, and a vision-language model filters out poorly consistent pairs. The results emphasize a balance: preserving visual detail from reference images, while also being able to **edit** attributes, specifically colors, where other methods may struggle. This demonstrates the model's capacity to **adhere to specific editing instructions** from the text, further showcasing its control.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02160/x2.png)

> 🔼 This figure illustrates the core concept of the paper: model-data co-evolution.  It starts with a less controllable model (e.g., a simple text-to-image model) that generates data. This data, though not perfect, is then used to train a more controllable model. This iterative process, where the output of one model improves the input for the next, leads to increasingly sophisticated and better-performing models. The cycle continues, with each iteration improving both the model and the quality of the data it generates. This approach addresses the challenges of data scarcity and subject limitations in customized image generation, enabling better controllability with improved data quality. The figure visually represents this iterative refinement, showing how less controllable models generate data which then informs the creation of more advanced and controllable models.
> <details>
> <summary>read the caption</summary>
> Figure 2: The illustration of our motivation. We propose a novel model-data co-evolution paradigm, where less-controllable preceding models systematically synthesize better customization data for successive more-controllable variants, enabling persistent co-evolution between enhanced model and enriched data.
> </details>



![](https://arxiv.org/html/2504.02160/x3.png)

> 🔼 This figure illustrates the two-stage pipeline used for synthetic data generation. Stage 1 focuses on single-subject in-context generation, where a text prompt is used to generate a pair of images featuring the same subject in different scenes. This stage employs a Vision-Language Model (VLM) for filtering out low-quality image pairs. Stage 2 involves multi-subject in-context generation, building on the single-subject data from Stage 1.  This stage includes cropping subjects to isolate them and reusing them as multi-subject prompts. The resulting image pairs are again filtered using the VLM.
> <details>
> <summary>read the caption</summary>
> Figure 3: Illustration of our proposed synthetic data curation framework based on in-context data generation.
> </details>



![](https://arxiv.org/html/2504.02160/x4.png)

> 🔼 UNO's training framework is illustrated, highlighting two key improvements: progressive cross-modal alignment (a two-stage process starting with single-subject data and progressing to multiple-subject data) and universal rotary position embedding (UnoPE), which addresses attribute confusion when handling multiple visual subjects.
> <details>
> <summary>read the caption</summary>
> Figure 4: Illustration of the training framework of UNO. It introduces two pivotal enhancements to the model: progressive cross-modal alignment and universal rotary position embedding(UnoPE). The progressive cross-modal alignment is divided into two stages. In the Stage II\mathrm{I}roman_I, we use single-subject in-context generated data to finetune the pretrained T2I model into an S2I model. In the Stage IIII\mathrm{II}roman_II, we continue training on generated multiple-subject data pairs. The UnoPE can effectively equip UNO with the capability of mitigating the attribute confusion issue when scaling visual subject controls.
> </details>



![](https://arxiv.org/html/2504.02160/x5.png)

> 🔼 This figure shows the performance of the UNO model on the DreamBench benchmark, specifically focusing on how different levels of data quality impact the model's performance.  The graphs display the DINO and CLIP-I scores across multiple training steps, with each line representing a different quality score range of the generated data. This visualization demonstrates the correlation between data quality and model performance, highlighting the importance of high-quality data in achieving better results.  The x-axis represents training steps, and the y-axis represents the DINO and CLIP-I scores.
> <details>
> <summary>read the caption</summary>
> Figure 5: Model performance on Dreambench [33]. We conduct experiments under different quality score levels.
> </details>



![](https://arxiv.org/html/2504.02160/x6.png)

> 🔼 Figure 6 presents a qualitative comparison of different image generation methods in scenarios involving single-subject image generation.  Several methods are compared, showing their ability to generate images based on a text prompt and a single reference image. This comparison highlights the relative strengths and weaknesses of each model in terms of subject fidelity, image quality, and adherence to the given text prompts.  The visual comparison helps to assess how well each approach handles single-subject image customization.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative comparison with different methods on single-subject driven generation.
> </details>



![](https://arxiv.org/html/2504.02160/x7.png)

> 🔼 Figure 7 displays a qualitative comparison of various image generation methods on multi-subject scenarios.  Each row presents a prompt with two reference images specifying multiple subjects, and the resulting images generated by different models, including UNO (the authors' model), OmniGen, MS-Diffusion, MIP-Adapter, and SSR-Encoder.  This allows for a visual assessment of each model's ability to successfully incorporate multiple subjects specified in the input prompt, highlighting differences in subject fidelity, controllability, and overall image quality.
> <details>
> <summary>read the caption</summary>
> Figure 7: Qualitative comparison with different methods on multi-subject driven generation.
> </details>



![](https://arxiv.org/html/2504.02160/x8.png)

> 🔼 Figure 8 presents a comparative analysis of user evaluations for various image generation methods. It uses radar charts to visually represent the performance across several key dimensions, including 'text fidelity' (for both subject and background), 'visual appeal', 'composition', and 'subject similarity'.  The charts separately evaluate the models' performance on single-subject and multi-subject driven image generation tasks, enabling a direct comparison of their strengths and weaknesses in handling different complexities of image synthesis.
> <details>
> <summary>read the caption</summary>
> Figure 8: Radar charts of user evaluation of methods for single-subject driven and multi-subject driven generation on different dimensions
> </details>



![](https://arxiv.org/html/2504.02160/x9.png)

> 🔼 Figure 9 shows the results of an ablation study conducted on the UNO model.  Different components of the UNO model were removed or altered to evaluate their individual contributions to the model's performance. Specifically, the figure likely displays the impact of removing or modifying the following: the in-context data generation process, the cross-modal alignment process, and the UNO's Universal Rotary Position Embedding (UnoPE). For each ablation, the results (likely quantitative metrics like DINO and CLIP scores) are presented, demonstrating how each component affects the overall performance of the UNO model in subject similarity and text controllability. Zooming in on the image will provide more detailed information about the specific quantitative values shown for each ablation experiment.
> <details>
> <summary>read the caption</summary>
> Figure 9: Ablation study of UNO. Zoom in for details.
> </details>



![](https://arxiv.org/html/2504.02160/x10.png)

> 🔼 This figure illustrates the taxonomy tree used for generating diverse subjects and scenes in the paper.  The tree begins with broad categories (like Person, Object), which then branch out into more specific subclasses, such as different types of people (e.g., scientist, doctor), and types of objects (e.g., hat, umbrella).  For each subclass, example instances are provided to show the variety of subjects, and descriptive prompts are generated for their corresponding scene contexts.
> <details>
> <summary>read the caption</summary>
> Figure 10: Illustration of the taxonomy tree.
> </details>



![](https://arxiv.org/html/2504.02160/x11.png)

> 🔼 This figure shows two text templates used to generate paired images of a subject. The first template generates two images of the same subject in different scenes. The second template generates a top and bottom image of the same subject, with the bottom image including another subject.
> <details>
> <summary>read the caption</summary>
> Figure 11: Diptych text template for generating subject-consistent image-pair with FLUX.1[17].
> </details>



![](https://arxiv.org/html/2504.02160/x12.png)

> 🔼 This figure shows the system prompt used to instruct a Large Language Model (LLM) to generate creative subject instances for image generation.  The prompt guides the LLM to produce a diverse set of brief subject descriptions, each limited to 12 words or less, following specific rules. These rules ensure that each generated prompt is unique, utilizes realistic descriptions or brand references, and avoids repetition. The goal is to create varied and imaginative training data for a subject-to-image model, providing a range of descriptive inputs for generating diverse and interesting images.
> <details>
> <summary>read the caption</summary>
> (a) System prompt of LLM used to generate subject instances in creative type.
> </details>



![](https://arxiv.org/html/2504.02160/x13.png)

> 🔼 This figure shows the system prompt used to instruct a Large Language Model (LLM) to generate realistic subject instance descriptions for image generation.  The prompt provides instructions and examples to guide the LLM in creating descriptions that are grounded in reality, avoiding fantastical or impossible scenarios.  The goal is to create training data for a subject-to-image model that focuses on realistic depictions.
> <details>
> <summary>read the caption</summary>
> (b) System prompt of LLM used to generate subject instances in realistic type.
> </details>



![](https://arxiv.org/html/2504.02160/x14.png)

> 🔼 This figure shows the system prompt used to instruct a large language model (LLM) to generate creative text-decorated subject instances.  The prompt provides guidelines, examples, and constraints to ensure the generated instances are suitable for use in generating customized images. Specifically, it instructs the LLM to create subject prompts for image generation, emphasizing that the descriptions should incorporate textual elements, be realistic and creative, not exceed 12 words, and avoid repetition. The asset category is provided as input to guide the LLM's generation. This process helps create varied and high-quality data for training image generation models.
> <details>
> <summary>read the caption</summary>
> (c) System prompt of LLM used to generate subject instances in text-decorated type.
> </details>



![](https://arxiv.org/html/2504.02160/x15.png)

> 🔼 This figure shows the system prompts used to instruct the large language model (LLM) to generate diverse subject instances for image generation.  It showcases three distinct prompt styles: creative, realistic, and text-decorated, each designed to elicit different types of subject descriptions from the LLM. The prompts provide clear instructions regarding the desired format, length, and style of the generated descriptions.
> <details>
> <summary>read the caption</summary>
> Figure 12: System prompt of LLM used to generate subject instances.
> </details>



![](https://arxiv.org/html/2504.02160/x16.png)

> 🔼 This figure shows the prompt used to instruct a large language model (LLM) to generate creative scene descriptions for given subject prompts.  The prompt instructs the LLM to generate eight detailed scene descriptions for each subject, varying the background, environment, camera view, and lighting to showcase creativity and diverse contexts. The LLM should maintain brevity (under 77 tokens per description).
> <details>
> <summary>read the caption</summary>
> Figure 13: System prompt of LLM used to generate scene descriptions.
> </details>



![](https://arxiv.org/html/2504.02160/x17.png)

> 🔼 The figure shows the system prompt used for the Vision-Language Model (VLM) which is part of a multi-stage filtering process for synthetic data curation. This prompt instructs the VLM to perform a detailed comparison of the subject in two images, breaking down the subject into its constituent parts and assigning a score (0-4) to each part based on the degree of similarity between the two images.  The prompt emphasizes objective evaluation, ignoring factors like background, position, and actions.
> <details>
> <summary>read the caption</summary>
> (a) System prompt of the filter VLM.
> </details>



![](https://arxiv.org/html/2504.02160/x18.png)

> 🔼 This figure shows the prompt used in the first round of the Chain-of-Thought (CoT) filtering process for evaluating the consistency of subjects in image pairs. The prompt instructs the Vision-Language Model (VLM) to analyze the differences between corresponding subject parts in two images. It directs the model to provide a quantitative score (0-4) for each part, considering the degree of resemblance. The prompt emphasizes the importance of focusing on the subject itself, ignoring background elements and variations in actions, poses, etc.  Each part's score reflects the level of similarity, with 0 indicating no resemblance and 4 representing near-identical parts. The prompt also guides the model on how to handle perspective changes and additional accessories, which may not appear in all images, and should be ignored when assessing similarity.
> <details>
> <summary>read the caption</summary>
> (b) Prompt for the first round CoT of the filter VLM.
> </details>



![](https://arxiv.org/html/2504.02160/x19.png)

> 🔼 This figure shows the prompt for the second round of the Chain-of-Thought (CoT) reasoning process used to filter the synthesized image pairs.  The goal is to assign a numerical score (0-4) to each identified part of the subject in the image pairs, indicating the degree of consistency between the subject in the reference and target images. A higher score means greater similarity.  The prompt guides the evaluator to focus on specific details of the subject, ignoring background and contextual differences.  Scores are assigned based on detailed comparison of the subject's visual aspects, aiming for a more objective and thorough assessment of subject consistency.
> <details>
> <summary>read the caption</summary>
> (c) Prompt for the second round CoT of the filter VLM.
> </details>



![](https://arxiv.org/html/2504.02160/x20.png)

> 🔼 This figure shows the prompt used in the third round of the Chain-of-Thought (CoT) filtering process for synthetic image data.  The CoT process aims to improve the quality of the generated image pairs by iteratively refining the evaluation criteria.  This specific prompt instructs the Vision-Language Model (VLM) to assign a numerical score (0-4) to different aspects of the subject in the images, based on their degree of similarity or difference. The higher the score, the more similar the subject is across the images.
> <details>
> <summary>read the caption</summary>
> (d) Prompt for the third round CoT of the filter VLM.
> </details>



![](https://arxiv.org/html/2504.02160/x21.png)

> 🔼 This figure shows the three-step Chain-of-Thought (CoT) prompt engineering used to filter the image pairs generated by the in-context learning method.  Step 1 instructs the VLM to describe the two images and identify the subject. Step 2 directs the VLM to compare specific aspects of the subject across both images, noting differences in detail. Step 3 instructs the VLM to assign a score (0-4) to each aspect based on the similarity between the two images. The goal is to objectively assess the consistency of the subject across the images, filtering out those with low consistency scores.
> <details>
> <summary>read the caption</summary>
> Figure 14: CoT prompt of the filter VLM.
> </details>



![](https://arxiv.org/html/2504.02160/x22.png)

> 🔼 This figure displays samples of synthetic data generated using a Vision-Language Model (VLM) filter, categorized by VLM score intervals.  The purpose is to demonstrate the effect of the VLM filter on data quality and consistency. Higher VLM scores (e.g., 4) indicate better quality and more consistent image pairs, while lower scores (e.g., 0-1) indicate lower quality and less consistent image pairs. The images show that higher scores correspond to generated images with higher quality and better subject consistency, which proves the effectiveness of the data filtering method.
> <details>
> <summary>read the caption</summary>
> Figure 15: Sampled data from different VLM score intervals.
> </details>



![](https://arxiv.org/html/2504.02160/x23.png)

> 🔼 This figure displays examples from the final multi-subject dataset generated using the in-context learning method.  It showcases the diversity and quality of the synthetic images produced, demonstrating the model's ability to generate images with multiple, consistent subjects in various settings.
> <details>
> <summary>read the caption</summary>
> Figure 16: Sampled data from our final multi-subject in-context data.
> </details>



![](https://arxiv.org/html/2504.02160/x24.png)

> 🔼 This figure is a pie chart showing the distribution of the synthetic dataset across different Visual Language Model (VLM) score intervals.  The VLM score is a measure of the quality and consistency of the generated image pairs, with higher scores indicating better quality and higher consistency.  The chart visualizes the percentage of generated image pairs that fall into each score range, highlighting the proportion of high-quality, consistent data versus lower-quality data after filtering.
> <details>
> <summary>read the caption</summary>
> Figure 17: Amount of data in each VLM score interval.
> </details>



![](https://arxiv.org/html/2504.02160/x25.png)

> 🔼 This figure shows the impact of varying the LoRA (Low-Rank Adaptation) rank on the performance of the UNO model.  The LoRA rank controls the number of parameters updated during fine-tuning, affecting the model's ability to adapt to new data. The graph likely presents metrics such as FID (Fréchet Inception Distance) or other relevant image quality scores across different LoRA ranks, showing how increasing the rank improves performance up to a certain point, beyond which improvements may diminish or even plateau due to overfitting or computational constraints.
> <details>
> <summary>read the caption</summary>
> Figure 18: Analysis of model performance under different LoRA ranks.
> </details>



![](https://arxiv.org/html/2504.02160/x26.png)

> 🔼 Figure 19 presents a qualitative comparison of various image generation models' performance on multi-subject scenarios.  Several methods are tested, including the authors' UNO model, against others like OmniGen, MS-Diffusion, MIP-Adapter, and SSR-Encoder. The figure shows how each model responds to prompts involving multiple subjects and subject-specific edits. The prompts' subject-related parts are italicized to highlight what modifications are being requested.  The results illustrate how well each model can maintain consistency of the original subjects while incorporating the desired changes and additional subjects.
> <details>
> <summary>read the caption</summary>
> Figure 19: More comparison with different methods on multi-subject driven generation. We italicize the subject-related editing part of the prompts.
> </details>



![](https://arxiv.org/html/2504.02160/x27.png)

> 🔼 This figure showcases the UNO model's ability to generate images with multiple subjects and diverse contextual elements.  Each row presents an input (reference images and a text prompt) and the corresponding output generated by the UNO model. The examples demonstrate the model's capacity to combine multiple subjects seamlessly while adhering to the specified text prompt. For instance, one example shows a black cat wearing a hat riding a yellow duck in a forest scene.
> <details>
> <summary>read the caption</summary>
> Figure 20: More multi-subject generation results from our UNO model.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T2.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T2.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T2.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.3.4.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T2.1.1.1.1" style="font-size:90%;">DINO</span><span class="ltx_text" id="S4.T2.1.1.1.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T2.2.2.2.1" style="font-size:90%;">CLIP-I</span><span class="ltx_text" id="S4.T2.2.2.2.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.m1.1"><semantics id="S4.T2.2.2.2.m1.1a"><mo id="S4.T2.2.2.2.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.m1.1b"><ci id="S4.T2.2.2.2.m1.1.1.cmml" xref="S4.T2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T2.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T2.3.3.3.1" style="font-size:90%;">CLIP-T</span><span class="ltx_text" id="S4.T2.3.3.3.2" style="font-size:90%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.m1.1"><semantics id="S4.T2.3.3.3.m1.1a"><mo id="S4.T2.3.3.3.m1.1.1" mathsize="90%" stretchy="false" xref="S4.T2.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.m1.1b"><ci id="S4.T2.3.3.3.m1.1.1.cmml" xref="S4.T2.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T2.3.4.1.1">
<span class="ltx_text" id="S4.T2.3.4.1.1.1" style="font-size:90%;">DreamBooth </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.4.1.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T2.3.4.1.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.2"><span class="ltx_text" id="S4.T2.3.4.1.2.1" style="font-size:90%;">0.430</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.3"><span class="ltx_text" id="S4.T2.3.4.1.3.1" style="font-size:90%;">0.695</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.4.1.4"><span class="ltx_text" id="S4.T2.3.4.1.4.1" style="font-size:90%;">0.308</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.5.2.1">
<span class="ltx_text" id="S4.T2.3.5.2.1.1" style="font-size:90%;">BLIP-Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.5.2.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib18" title=""><span class="ltx_text" style="font-size:90%;">18</span></a><span class="ltx_text" id="S4.T2.3.5.2.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.2"><span class="ltx_text" id="S4.T2.3.5.2.2.1" style="font-size:90%;">0.464</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.3"><span class="ltx_text" id="S4.T2.3.5.2.3.1" style="font-size:90%;">0.698</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.5.2.4"><span class="ltx_text" id="S4.T2.3.5.2.4.1" style="font-size:90%;">0.300</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T2.3.6.3.1">
<span class="ltx_text" id="S4.T2.3.6.3.1.1" style="font-size:90%;">Subject Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.6.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib19" title=""><span class="ltx_text" style="font-size:90%;">19</span></a><span class="ltx_text" id="S4.T2.3.6.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.2"><span class="ltx_text" id="S4.T2.3.6.3.2.1" style="font-size:90%;">0.506</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.3"><span class="ltx_text" id="S4.T2.3.6.3.3.1" style="font-size:90%;">0.696</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.6.3.4"><span class="ltx_text" id="S4.T2.3.6.3.4.1" style="font-size:90%;">0.310</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.7.4.1">
<span class="ltx_text" id="S4.T2.3.7.4.1.1" style="font-size:90%;">MIP-Adapter </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.7.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib15" title=""><span class="ltx_text" style="font-size:90%;">15</span></a><span class="ltx_text" id="S4.T2.3.7.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.2"><span class="ltx_text" id="S4.T2.3.7.4.2.1" style="font-size:90%;">0.482</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T2.3.7.4.3.1" style="font-size:90%;">0.726</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.4"><span class="ltx_text" id="S4.T2.3.7.4.4.1" style="font-size:90%;">0.311</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.8.5.1">
<span class="ltx_text" id="S4.T2.3.8.5.1.1" style="font-size:90%;">MS-Diffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.8.5.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib41" title=""><span class="ltx_text" style="font-size:90%;">41</span></a><span class="ltx_text" id="S4.T2.3.8.5.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.2"><span class="ltx_text" id="S4.T2.3.8.5.2.1" style="font-size:90%;background-color:#D2C8FA;">0.525</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.3"><span class="ltx_text" id="S4.T2.3.8.5.3.1" style="font-size:90%;background-color:#D2C8FA;">0.726</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.4"><span class="ltx_text" id="S4.T2.3.8.5.4.1" style="font-size:90%;">0.319</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T2.3.9.6.1">
<span class="ltx_text" id="S4.T2.3.9.6.1.1" style="font-size:90%;">OmniGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.9.6.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02160v1#bib.bib44" title=""><span class="ltx_text" style="font-size:90%;">44</span></a><span class="ltx_text" id="S4.T2.3.9.6.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.2"><span class="ltx_text" id="S4.T2.3.9.6.2.1" style="font-size:90%;">0.511</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.3"><span class="ltx_text" id="S4.T2.3.9.6.3.1" style="font-size:90%;">0.722</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.9.6.4.1" style="font-size:90%;background-color:#FFCCCC;">0.331</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.10.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T2.3.10.7.1"><span class="ltx_text ltx_font_bold" id="S4.T2.3.10.7.1.1" style="font-size:90%;">UNO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.3.10.7.2.1" style="font-size:90%;background-color:#FFCCCC;">0.542</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.7.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.10.7.3.1" style="font-size:90%;background-color:#FFCCCC;">0.733</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.10.7.4"><span class="ltx_text" id="S4.T2.3.10.7.4.1" style="font-size:90%;background-color:#D2C8FA;">0.322</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 2 presents a quantitative comparison of different methods for multi-subject image generation.  The metrics used are DINO (a measure of subject similarity), CLIP-I (another measure of subject similarity), and CLIP-T (a measure of text fidelity).  The results demonstrate that the UNO model achieves superior performance compared to other methods, excelling in both subject consistency and alignment with text prompts.  This is notable because it outperforms methods that fine-tune the model (tuning methods) as well as those that do not (tuning-free methods).
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative results for multi-subject driven generation. Our method achieves state-of-the-art performance among both tuning methods and tuning-free methods.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.3.4.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T3.1.1.1.1" style="font-size:80%;">DINO</span><span class="ltx_text" id="S4.T3.1.1.1.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T3.2.2.2.1" style="font-size:80%;">CLIP-I</span><span class="ltx_text" id="S4.T3.2.2.2.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T3.3.3.3.1" style="font-size:80%;">CLIP-T</span><span class="ltx_text" id="S4.T3.3.3.3.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T3.4.4.1">
<span class="ltx_text" id="S4.T3.4.4.1.1" style="font-size:80%;">w/o generated </span><math alttext="I_{\text{ref}}^{2}" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><msubsup id="S4.T3.4.4.1.m1.1.1" xref="S4.T3.4.4.1.m1.1.1.cmml"><mi id="S4.T3.4.4.1.m1.1.1.2.2" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.2.2.cmml">I</mi><mtext id="S4.T3.4.4.1.m1.1.1.2.3" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.2.3a.cmml">ref</mtext><mn id="S4.T3.4.4.1.m1.1.1.3" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.3.cmml">2</mn></msubsup><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><apply id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.1.m1.1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1">superscript</csymbol><apply id="S4.T3.4.4.1.m1.1.1.2.cmml" xref="S4.T3.4.4.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T3.4.4.1.m1.1.1.2.1.cmml" xref="S4.T3.4.4.1.m1.1.1">subscript</csymbol><ci id="S4.T3.4.4.1.m1.1.1.2.2.cmml" xref="S4.T3.4.4.1.m1.1.1.2.2">𝐼</ci><ci id="S4.T3.4.4.1.m1.1.1.2.3a.cmml" xref="S4.T3.4.4.1.m1.1.1.2.3"><mtext id="S4.T3.4.4.1.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T3.4.4.1.m1.1.1.2.3">ref</mtext></ci></apply><cn id="S4.T3.4.4.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.4.4.1.m1.1.1.3">2</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">I_{\text{ref}}^{2}</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">italic_I start_POSTSUBSCRIPT ref end_POSTSUBSCRIPT start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>
</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.2"><span class="ltx_text" id="S4.T3.4.4.2.1" style="font-size:80%;">0.529</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.3"><span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:80%;">0.730</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.4.4"><span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:80%;">0.308</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.5.1.1"><span class="ltx_text" id="S4.T3.4.5.1.1.1" style="font-size:80%;">w/o cross-modal alignment</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.1.2"><span class="ltx_text" id="S4.T3.4.5.1.2.1" style="font-size:80%;">0.511</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.1.3"><span class="ltx_text" id="S4.T3.4.5.1.3.1" style="font-size:80%;">0.721</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.5.1.4"><span class="ltx_text" id="S4.T3.4.5.1.4.1" style="font-size:80%;">0.322</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T3.4.6.2.1"><span class="ltx_text" id="S4.T3.4.6.2.1.1" style="font-size:80%;">w/o UnoPE</span></th>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.2"><span class="ltx_text" id="S4.T3.4.6.2.2.1" style="font-size:80%;">0.386</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.3"><span class="ltx_text" id="S4.T3.4.6.2.3.1" style="font-size:80%;">0.674</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.4.6.2.4"><span class="ltx_text ltx_font_bold" id="S4.T3.4.6.2.4.1" style="font-size:80%;">0.323</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.4.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T3.4.7.3.1"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.1.1" style="font-size:80%;">UNO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.7.3.2"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.2.1" style="font-size:80%;">0.542</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.7.3.3"><span class="ltx_text ltx_font_bold" id="S4.T3.4.7.3.3.1" style="font-size:80%;">0.733</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.4.7.3.4"><span class="ltx_text" id="S4.T3.4.7.3.4.1" style="font-size:80%;">0.322</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of an ablation study conducted to evaluate the impact of different components of the proposed in-context data generation and training method on multi-subject driven image generation.  The study systematically removes or modifies aspects of the method to isolate their individual contributions. The results, measured using DINO, CLIP-I, and CLIP-T metrics on a multi-subject generation benchmark, demonstrate the effectiveness of each component in improving the model's performance.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation Study of our proposed in-context data generation and in-context training method. We report the results on the multi-subject driven generation benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.3.4.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T4.1.1.1.1" style="font-size:80%;">DINO</span><span class="ltx_text" id="S4.T4.1.1.1.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T4.2.2.2.1" style="font-size:80%;">CLIP-I</span><span class="ltx_text" id="S4.T4.2.2.2.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T4.3.3.3.1" style="font-size:80%;">CLIP-T</span><span class="ltx_text" id="S4.T4.3.3.3.2" style="font-size:80%;"> </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T4.3.4.1.1"><span class="ltx_text" id="S4.T4.3.4.1.1.1" style="font-size:80%;">w/ single subject pair-data</span></th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.4.1.2"><span class="ltx_text" id="S4.T4.3.4.1.2.1" style="font-size:80%;">0.730</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.4.1.3"><span class="ltx_text" id="S4.T4.3.4.1.3.1" style="font-size:80%;">0.821</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.4.1.4.1" style="font-size:80%;">0.309</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T4.3.5.2.1"><span class="ltx_text" id="S4.T4.3.5.2.1.1" style="font-size:80%;">w/ cross-modal alignment</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.5.2.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.5.2.2.1" style="font-size:80%;">0.760</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.5.2.3.1" style="font-size:80%;">0.835</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.3.5.2.4"><span class="ltx_text" id="S4.T4.3.5.2.4.1" style="font-size:80%;">0.304</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the impact of progressive cross-modal alignment on model performance. Two models were trained: one using only single-subject data and another using progressive cross-modal alignment which starts with single-subject data and then adds multi-subject data. Both models received the same number of training steps. The results, evaluated on the DreamBench benchmark [33], show that the model trained with progressive cross-modal alignment exhibits significantly better performance.
> <details>
> <summary>read the caption</summary>
> Table 4: Effect of progressive cross-modal alignment. The model exhibits superior performance on DreamBench [33] after undergoing progressive cross-modal alignment, in contrast to being trained exclusively on single-subject pair-data, despite both models undergoing an identical number of training steps.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T5.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T5.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T5.1.1.1.1.1">DINO</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T5.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T5.2.2.2.2.1">CLIP-I</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T5.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T5.3.3.3.3.1">CLIP-T</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T5.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T5.3.3.4.1.1">w/o offset</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.4.1.2">0.470</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.4.1.3">0.722</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T5.3.3.4.1.4">0.308</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.3.3.5.2.1">w/ width-offset</th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.5.2.2">0.717</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.5.2.3">0.813</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.5.2.4">0.304</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T5.3.3.6.3.1">w/ height-offset</th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.3.2">0.678</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.3.3">0.797</td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.3.6.3.4">0.308</td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T5.3.3.7.4.1"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.7.4.1.1">UNO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.7.4.2.1">0.730</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.7.4.3.1">0.821</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T5.3.3.7.4.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.3.7.4.4.1">0.309</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the UNO model's performance on the DreamBench benchmark [33] using various position index offset configurations.  It demonstrates the impact of different methods for incorporating positional information when using multiple reference images during image generation, showing how various offset techniques affect the model's ability to maintain subject similarity and text controllability.
> <details>
> <summary>read the caption</summary>
> Table 5: Comparison with different forms of position index offsets. We report the results on DreamBench[33].
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.3.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T6.3.3.3.4"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.4.1">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1">
<span class="ltx_text ltx_font_bold" id="S4.T6.1.1.1.1.1">DINO</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><mo id="S4.T6.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T6.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><ci id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.2.2">
<span class="ltx_text ltx_font_bold" id="S4.T6.2.2.2.2.1">CLIP-I</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><mo id="S4.T6.2.2.2.2.m1.1.1" stretchy="false" xref="S4.T6.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><ci id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.3.3">
<span class="ltx_text ltx_font_bold" id="S4.T6.3.3.3.3.1">CLIP-T</span> <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T6.3.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.3.m1.1a"><mo id="S4.T6.3.3.3.3.m1.1.1" stretchy="false" xref="S4.T6.3.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.3.m1.1b"><ci id="S4.T6.3.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.3.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S4.T6.3.3.4.1.1">w/o offset</th>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.4.1.2">0.386</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.4.1.3">0.674</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T6.3.3.4.1.4"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.4.1.4.1">0.323</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.3.3.5.2.1">w/ width-offset</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.2.2">0.508</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.2.3">0.724</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.5.2.4">0.321</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T6.3.3.6.3.1">w/ height-offset</th>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.3.2">0.501</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.3.3">0.719</td>
<td class="ltx_td ltx_align_center" id="S4.T6.3.3.6.3.4">0.306</td>
</tr>
<tr class="ltx_tr" id="S4.T6.3.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T6.3.3.7.4.1"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.7.4.1.1">UNO (Ours)</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.3.3.7.4.2"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.7.4.2.1">0.542</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.3.3.7.4.3"><span class="ltx_text ltx_font_bold" id="S4.T6.3.3.7.4.3.1">0.733</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T6.3.3.7.4.4">0.322</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the UNO model's performance on a multi-subject driven generation benchmark using different position index offset configurations.  It showcases the impact of altering how positional information from multiple reference images is incorporated into the model's latent space, specifically examining the effects of varying the width, height, and absence of offsets.  The results highlight the importance of appropriate position encoding strategies for successful multi-subject image generation.
> <details>
> <summary>read the caption</summary>
> Table 6: Comparison with different forms of position index offsets. We report the results on the multi-subject driven generation benchmark.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S8.T7.2">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S8.T7.2.1.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S8.T7.2.1.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.2.1.1.1.1">Scenarios</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S8.T7.2.1.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"><span class="ltx_text ltx_font_bold" id="S8.T7.2.1.1.2.1">Prompt</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S8.T7.2.2.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.2.1.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">One2One</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.2.1.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A clock on the beach is under a red sun umbrella"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.3.2">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.3.2.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.3.2.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A doll holds a ‘UNO’ sign under the rainbow on the grass"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.4.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.4.3.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Two2One</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.4.3.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The figurine is in the crystal ball"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.5.4">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.5.4.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.5.4.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The boy and girl are walking in the street"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.6.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.6.5.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Many2One</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.6.5.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A penguin doll, a car and a pillow are scattered on the bed"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.7.6">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.7.6.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.7.6.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A boy in a red hat wear a sunglasses"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.8.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.8.7.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Stylized Generation</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.8.7.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“Ghibli style, a woman"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.9.8">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.9.8.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.9.8.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“Ghibli style, a man"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.10.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.10.9.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Virtual Try-on</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.10.9.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A man wears the black hoodie and pants"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.11.10">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.11.10.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.11.10.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A girl wears the blue dress in the snow"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.12.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.12.11.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Product Design</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.12.11.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The logo and words ‘Let us unlock!’ are printed on the clothes"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.13.12">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.13.12.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.13.12.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The logo is printed on the cup"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.14.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.14.13.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Identity-preservation</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.14.13.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The figurine is in the crystal ball"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.15.14">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.15.14.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.15.14.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A penguin doll, a car and a pillow are scattered on the bed"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.16.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S8.T7.2.16.15.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">Story Generation</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S8.T7.2.16.15.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A boy in green is in the arcade"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.17.16">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.17.16.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.17.16.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“A man strolls down a bustling city street under moonlight"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.18.17">
<th class="ltx_td ltx_th ltx_th_row" id="S8.T7.2.18.17.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center" id="S8.T7.2.18.17.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The man and a boy in green clothes are standing among the flowers by the lake"</td>
</tr>
<tr class="ltx_tr" id="S8.T7.2.19.18">
<th class="ltx_td ltx_th ltx_th_row ltx_border_bb" id="S8.T7.2.19.18.1" style="padding-top:-0.5pt;padding-bottom:-0.5pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S8.T7.2.19.18.2" style="padding-top:-0.5pt;padding-bottom:-0.5pt;">“The man met a boy dressed in green at the foot of the tower"</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table lists the text prompts that were used to generate the images shown in Figure 1 of the paper.  The prompts are categorized by the type of image generation task they represent: One2One, Two2One, Many2One, Stylized Generation, Virtual Try-on, Product Design, Identity Preservation, and Story Generation. Each prompt provides a brief description of the image content that was generated.
> <details>
> <summary>read the caption</summary>
> Table 7: Text prompts used in Fig. 1.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02160/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02160/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}