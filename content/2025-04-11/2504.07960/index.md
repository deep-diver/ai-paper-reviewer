---
title: "VisualCloze: A Universal Image Generation Framework via Visual In-Context Learning"
summary: "VisualCloze: Universal image generation via visual learning."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 Nankai University",]
showSummary: true
date: 2025-04-10
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.07960 {{< /keyword >}}
{{< keyword icon="writer" >}} Zhong-Yu Li et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-11 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.07960" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.07960" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.07960/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current image generation focuses on task-specific models, limiting efficiency. Universal models face challenges in task instruction, distribution, and architecture. Existing methods rely on language, leading to task ambiguity and weak generalization. **The sparsity of visual task distributions also limits transferable knowledge.**



VisualCloze addresses these issues using visual in-context learning, enabling models to identify tasks from visual examples. It introduces Graph200K, a graph-structured dataset enhancing task density and transfer. **It leverages pre-trained infilling models**, achieving universal generation with minimal data.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} Visual in-context learning improves generalization in image generation tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} A graph-structured dataset enhances knowledge transfer between visual tasks. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Leveraging pre-trained infilling models can boost universal image generation. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper introduces a new approach to universal image generation, offering a more adaptable and efficient framework. It leverages visual in-context learning and a novel dataset to achieve strong performance across various tasks and opens new avenues for exploring generalizable AI models. The core idea from the paper can be leveraged for other generative tasks such as video generation, and 3D generation. **It also reduces reliance on task-specific fine-tuning.**

------
#### Visual Insights





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T1.19">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T1.19.20.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.19.20.1.1" rowspan="2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.1.1" style="font-size:90%;">Condition</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.19.20.1.2" rowspan="2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.2.1" style="font-size:90%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S5.T1.19.20.1.3" rowspan="2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.3.1" style="font-size:90%;">Context</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="2" id="S5.T1.19.20.1.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.4.1" style="font-size:90%;">Controllability</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="4" id="S5.T1.19.20.1.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.5.1" style="font-size:90%;">Quality</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T1.19.20.1.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.20.1.6.1" style="font-size:90%;">Text Consistency</span></th>
</tr>
<tr class="ltx_tr" id="S5.T1.7.7">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.1.1.1" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{F1}\uparrow" class="ltx_Math" display="inline" id="S5.T1.1.1.1.m1.1"><semantics id="S5.T1.1.1.1.m1.1a"><mrow id="S5.T1.1.1.1.m1.1.1" xref="S5.T1.1.1.1.m1.1.1.cmml"><mtext id="S5.T1.1.1.1.m1.1.1.2" mathsize="90%" xref="S5.T1.1.1.1.m1.1.1.2a.cmml">F1</mtext><mo id="S5.T1.1.1.1.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.1.1.1.m1.1.1.1.cmml">↑</mo><mi id="S5.T1.1.1.1.m1.1.1.3" xref="S5.T1.1.1.1.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.1.1.1.m1.1b"><apply id="S5.T1.1.1.1.m1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1"><ci id="S5.T1.1.1.1.m1.1.1.1.cmml" xref="S5.T1.1.1.1.m1.1.1.1">↑</ci><ci id="S5.T1.1.1.1.m1.1.1.2a.cmml" xref="S5.T1.1.1.1.m1.1.1.2"><mtext id="S5.T1.1.1.1.m1.1.1.2.cmml" mathsize="90%" xref="S5.T1.1.1.1.m1.1.1.2">F1</mtext></ci><csymbol cd="latexml" id="S5.T1.1.1.1.m1.1.1.3.cmml" xref="S5.T1.1.1.1.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.1.1.1.m1.1c">\text{F1}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.1.1.1.m1.1d">F1 ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.2.2.2" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{RMSE}\downarrow" class="ltx_Math" display="inline" id="S5.T1.2.2.2.m1.1"><semantics id="S5.T1.2.2.2.m1.1a"><mrow id="S5.T1.2.2.2.m1.1.1" xref="S5.T1.2.2.2.m1.1.1.cmml"><mtext id="S5.T1.2.2.2.m1.1.1.2" mathsize="90%" xref="S5.T1.2.2.2.m1.1.1.2a.cmml">RMSE</mtext><mo id="S5.T1.2.2.2.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.2.2.2.m1.1.1.1.cmml">↓</mo><mi id="S5.T1.2.2.2.m1.1.1.3" xref="S5.T1.2.2.2.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.2.2.2.m1.1b"><apply id="S5.T1.2.2.2.m1.1.1.cmml" xref="S5.T1.2.2.2.m1.1.1"><ci id="S5.T1.2.2.2.m1.1.1.1.cmml" xref="S5.T1.2.2.2.m1.1.1.1">↓</ci><ci id="S5.T1.2.2.2.m1.1.1.2a.cmml" xref="S5.T1.2.2.2.m1.1.1.2"><mtext id="S5.T1.2.2.2.m1.1.1.2.cmml" mathsize="90%" xref="S5.T1.2.2.2.m1.1.1.2">RMSE</mtext></ci><csymbol cd="latexml" id="S5.T1.2.2.2.m1.1.1.3.cmml" xref="S5.T1.2.2.2.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.2.2.2.m1.1c">\text{RMSE}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.2.2.2.m1.1d">RMSE ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.3.3.3" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{FID~{}\cite[cite]{[\@@bibref{Number}{heusel2017gans}{}{}]}}\downarrow" class="ltx_Math" display="inline" id="S5.T1.3.3.3.m1.1"><semantics id="S5.T1.3.3.3.m1.1a"><mrow id="S5.T1.3.3.3.m1.1.1" xref="S5.T1.3.3.3.m1.1.1.cmml"><mrow id="S5.T1.3.3.3.m1.1.1.2" xref="S5.T1.3.3.3.m1.1.1.2h.cmml"><mtext id="S5.T1.3.3.3.m1.1.1.2a" mathsize="90%" xref="S5.T1.3.3.3.m1.1.1.2h.cmml">FID </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.3.3.3.m1.1.1.2b" xref="S5.T1.3.3.3.m1.1.1.2h.cmml"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.3.3.3.m1.1.1.2.2.1nest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S5.T1.3.3.3.m1.1.1.2.3.2nest" style="font-size:90%;">]</span></cite></mtext></mrow><mo id="S5.T1.3.3.3.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.3.3.3.m1.1.1.1.cmml">↓</mo><mi id="S5.T1.3.3.3.m1.1.1.3" xref="S5.T1.3.3.3.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.3.3.3.m1.1b"><apply id="S5.T1.3.3.3.m1.1.1.cmml" xref="S5.T1.3.3.3.m1.1.1"><ci id="S5.T1.3.3.3.m1.1.1.1.cmml" xref="S5.T1.3.3.3.m1.1.1.1">↓</ci><ci id="S5.T1.3.3.3.m1.1.1.2h.cmml" xref="S5.T1.3.3.3.m1.1.1.2"><mrow id="S5.T1.3.3.3.m1.1.1.2.cmml" xref="S5.T1.3.3.3.m1.1.1.2"><mtext id="S5.T1.3.3.3.m1.1.1.2a.cmml" mathsize="90%" xref="S5.T1.3.3.3.m1.1.1.2">FID </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.3.3.3.m1.1.1.2b.cmml" xref="S5.T1.3.3.3.m1.1.1.2"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.3.3.3.m1.1.1.2.2.1anest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib23" title=""><span class="ltx_text" style="font-size:90%;">23</span></a><span class="ltx_text" id="S5.T1.3.3.3.m1.1.1.2.3.2anest" style="font-size:90%;">]</span></cite></mtext></mrow></ci><csymbol cd="latexml" id="S5.T1.3.3.3.m1.1.1.3.cmml" xref="S5.T1.3.3.3.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.3.3.3.m1.1c">\text{FID~{}\cite[cite]{[\@@bibref{Number}{heusel2017gans}{}{}]}}\downarrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.3.3.3.m1.1d">FID ↓</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.4.4.4" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{SSIM}\uparrow" class="ltx_Math" display="inline" id="S5.T1.4.4.4.m1.1"><semantics id="S5.T1.4.4.4.m1.1a"><mrow id="S5.T1.4.4.4.m1.1.1" xref="S5.T1.4.4.4.m1.1.1.cmml"><mtext id="S5.T1.4.4.4.m1.1.1.2" mathsize="90%" xref="S5.T1.4.4.4.m1.1.1.2a.cmml">SSIM</mtext><mo id="S5.T1.4.4.4.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.4.4.4.m1.1.1.1.cmml">↑</mo><mi id="S5.T1.4.4.4.m1.1.1.3" xref="S5.T1.4.4.4.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.4.4.4.m1.1b"><apply id="S5.T1.4.4.4.m1.1.1.cmml" xref="S5.T1.4.4.4.m1.1.1"><ci id="S5.T1.4.4.4.m1.1.1.1.cmml" xref="S5.T1.4.4.4.m1.1.1.1">↑</ci><ci id="S5.T1.4.4.4.m1.1.1.2a.cmml" xref="S5.T1.4.4.4.m1.1.1.2"><mtext id="S5.T1.4.4.4.m1.1.1.2.cmml" mathsize="90%" xref="S5.T1.4.4.4.m1.1.1.2">SSIM</mtext></ci><csymbol cd="latexml" id="S5.T1.4.4.4.m1.1.1.3.cmml" xref="S5.T1.4.4.4.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.4.4.4.m1.1c">\text{SSIM}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.4.4.4.m1.1d">SSIM ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.5.5.5" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{MAN-IQA~{}\cite[cite]{[\@@bibref{Number}{yang2022maniqa}{}{}]}}\uparrow" class="ltx_Math" display="inline" id="S5.T1.5.5.5.m1.1"><semantics id="S5.T1.5.5.5.m1.1a"><mrow id="S5.T1.5.5.5.m1.1.1" xref="S5.T1.5.5.5.m1.1.1.cmml"><mrow id="S5.T1.5.5.5.m1.1.1.2" xref="S5.T1.5.5.5.m1.1.1.2h.cmml"><mtext id="S5.T1.5.5.5.m1.1.1.2a" mathsize="90%" xref="S5.T1.5.5.5.m1.1.1.2h.cmml">MAN-IQA </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.5.5.5.m1.1.1.2b" xref="S5.T1.5.5.5.m1.1.1.2h.cmml"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.5.5.5.m1.1.1.2.2.1nest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T1.5.5.5.m1.1.1.2.3.2nest" style="font-size:90%;">]</span></cite></mtext></mrow><mo id="S5.T1.5.5.5.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.5.5.5.m1.1.1.1.cmml">↑</mo><mi id="S5.T1.5.5.5.m1.1.1.3" xref="S5.T1.5.5.5.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.5.5.5.m1.1b"><apply id="S5.T1.5.5.5.m1.1.1.cmml" xref="S5.T1.5.5.5.m1.1.1"><ci id="S5.T1.5.5.5.m1.1.1.1.cmml" xref="S5.T1.5.5.5.m1.1.1.1">↑</ci><ci id="S5.T1.5.5.5.m1.1.1.2h.cmml" xref="S5.T1.5.5.5.m1.1.1.2"><mrow id="S5.T1.5.5.5.m1.1.1.2.cmml" xref="S5.T1.5.5.5.m1.1.1.2"><mtext id="S5.T1.5.5.5.m1.1.1.2a.cmml" mathsize="90%" xref="S5.T1.5.5.5.m1.1.1.2">MAN-IQA </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.5.5.5.m1.1.1.2b.cmml" xref="S5.T1.5.5.5.m1.1.1.2"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.5.5.5.m1.1.1.2.2.1anest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib75" title=""><span class="ltx_text" style="font-size:90%;">75</span></a><span class="ltx_text" id="S5.T1.5.5.5.m1.1.1.2.3.2anest" style="font-size:90%;">]</span></cite></mtext></mrow></ci><csymbol cd="latexml" id="S5.T1.5.5.5.m1.1.1.3.cmml" xref="S5.T1.5.5.5.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.5.5.5.m1.1c">\text{MAN-IQA~{}\cite[cite]{[\@@bibref{Number}{yang2022maniqa}{}{}]}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.5.5.5.m1.1d">MAN-IQA ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.6.6.6" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{MUSIQ~{}\cite[cite]{[\@@bibref{Number}{ke2021musiq}{}{}]}}\uparrow" class="ltx_Math" display="inline" id="S5.T1.6.6.6.m1.1"><semantics id="S5.T1.6.6.6.m1.1a"><mrow id="S5.T1.6.6.6.m1.1.1" xref="S5.T1.6.6.6.m1.1.1.cmml"><mrow id="S5.T1.6.6.6.m1.1.1.2" xref="S5.T1.6.6.6.m1.1.1.2h.cmml"><mtext id="S5.T1.6.6.6.m1.1.1.2a" mathsize="90%" xref="S5.T1.6.6.6.m1.1.1.2h.cmml">MUSIQ </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.6.6.6.m1.1.1.2b" xref="S5.T1.6.6.6.m1.1.1.2h.cmml"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.6.6.6.m1.1.1.2.2.1nest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S5.T1.6.6.6.m1.1.1.2.3.2nest" style="font-size:90%;">]</span></cite></mtext></mrow><mo id="S5.T1.6.6.6.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.6.6.6.m1.1.1.1.cmml">↑</mo><mi id="S5.T1.6.6.6.m1.1.1.3" xref="S5.T1.6.6.6.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.6.6.6.m1.1b"><apply id="S5.T1.6.6.6.m1.1.1.cmml" xref="S5.T1.6.6.6.m1.1.1"><ci id="S5.T1.6.6.6.m1.1.1.1.cmml" xref="S5.T1.6.6.6.m1.1.1.1">↑</ci><ci id="S5.T1.6.6.6.m1.1.1.2h.cmml" xref="S5.T1.6.6.6.m1.1.1.2"><mrow id="S5.T1.6.6.6.m1.1.1.2.cmml" xref="S5.T1.6.6.6.m1.1.1.2"><mtext id="S5.T1.6.6.6.m1.1.1.2a.cmml" mathsize="90%" xref="S5.T1.6.6.6.m1.1.1.2">MUSIQ </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.6.6.6.m1.1.1.2b.cmml" xref="S5.T1.6.6.6.m1.1.1.2"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.6.6.6.m1.1.1.2.2.1anest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib30" title=""><span class="ltx_text" style="font-size:90%;">30</span></a><span class="ltx_text" id="S5.T1.6.6.6.m1.1.1.2.3.2anest" style="font-size:90%;">]</span></cite></mtext></mrow></ci><csymbol cd="latexml" id="S5.T1.6.6.6.m1.1.1.3.cmml" xref="S5.T1.6.6.6.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.6.6.6.m1.1c">\text{MUSIQ~{}\cite[cite]{[\@@bibref{Number}{ke2021musiq}{}{}]}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.6.6.6.m1.1d">MUSIQ ↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T1.7.7.7" style="padding-left:3.1pt;padding-right:3.1pt;"><math alttext="\text{CLIP-Score~{}\cite[cite]{[\@@bibref{Number}{radford2021learning}{}{}]}}\uparrow" class="ltx_Math" display="inline" id="S5.T1.7.7.7.m1.1"><semantics id="S5.T1.7.7.7.m1.1a"><mrow id="S5.T1.7.7.7.m1.1.1" xref="S5.T1.7.7.7.m1.1.1.cmml"><mrow id="S5.T1.7.7.7.m1.1.1.2" xref="S5.T1.7.7.7.m1.1.1.2h.cmml"><mtext id="S5.T1.7.7.7.m1.1.1.2a" mathsize="90%" xref="S5.T1.7.7.7.m1.1.1.2h.cmml">CLIP-Score </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.7.7.7.m1.1.1.2b" xref="S5.T1.7.7.7.m1.1.1.2h.cmml"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.7.7.7.m1.1.1.2.2.1nest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S5.T1.7.7.7.m1.1.1.2.3.2nest" style="font-size:90%;">]</span></cite></mtext></mrow><mo id="S5.T1.7.7.7.m1.1.1.1" mathsize="90%" stretchy="false" xref="S5.T1.7.7.7.m1.1.1.1.cmml">↑</mo><mi id="S5.T1.7.7.7.m1.1.1.3" xref="S5.T1.7.7.7.m1.1.1.3.cmml"></mi></mrow><annotation-xml encoding="MathML-Content" id="S5.T1.7.7.7.m1.1b"><apply id="S5.T1.7.7.7.m1.1.1.cmml" xref="S5.T1.7.7.7.m1.1.1"><ci id="S5.T1.7.7.7.m1.1.1.1.cmml" xref="S5.T1.7.7.7.m1.1.1.1">↑</ci><ci id="S5.T1.7.7.7.m1.1.1.2h.cmml" xref="S5.T1.7.7.7.m1.1.1.2"><mrow id="S5.T1.7.7.7.m1.1.1.2.cmml" xref="S5.T1.7.7.7.m1.1.1.2"><mtext id="S5.T1.7.7.7.m1.1.1.2a.cmml" mathsize="90%" xref="S5.T1.7.7.7.m1.1.1.2">CLIP-Score </mtext><mtext class="ltx_citemacro_cite" id="S5.T1.7.7.7.m1.1.1.2b.cmml" xref="S5.T1.7.7.7.m1.1.1.2"><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.7.7.7.m1.1.1.2.2.1anest" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib49" title=""><span class="ltx_text" style="font-size:90%;">49</span></a><span class="ltx_text" id="S5.T1.7.7.7.m1.1.1.2.3.2anest" style="font-size:90%;">]</span></cite></mtext></mrow></ci><csymbol cd="latexml" id="S5.T1.7.7.7.m1.1.1.3.cmml" xref="S5.T1.7.7.7.m1.1.1.3">absent</csymbol></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T1.7.7.7.m1.1c">\text{CLIP-Score~{}\cite[cite]{[\@@bibref{Number}{radford2021learning}{}{}]}}\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T1.7.7.7.m1.1d">CLIP-Score ↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T1.19.21.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.21.1.1" rowspan="8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.1.1" style="font-size:90%;">Canny</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.21.1.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.2.1" style="font-size:90%;color:#808080;">ControlNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.21.1.3" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.4.1" style="font-size:90%;color:#808080;">0.13</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.5.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.6.1" style="font-size:90%;color:#808080;">46.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.7.1" style="font-size:90%;color:#808080;">0.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.8.1" style="font-size:90%;color:#808080;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.9.1" style="font-size:90%;color:#808080;">45.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.21.1.10" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.21.1.10.1" style="font-size:90%;color:#808080;">34.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.22.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.22.2.1" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.1.1" style="font-size:90%;color:#808080;">OminiControl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.22.2.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.3.1" style="font-size:90%;color:#808080;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.4.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.5.1" style="font-size:90%;color:#808080;">29.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.6.1" style="font-size:90%;color:#808080;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.7.1" style="font-size:90%;color:#808080;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.8.1" style="font-size:90%;color:#808080;">61.40</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.22.2.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.22.2.9.1" style="font-size:90%;color:#808080;">34.40</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.23.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.23.3.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.23.3.1.1" style="font-size:90%;">OneDiffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.23.3.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S5.T1.19.23.3.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.23.3.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.19.23.3.3.1" style="font-size:90%;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.23.3.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.23.3.5.1" style="font-size:90%;">32.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.23.3.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.23.3.7.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.23.3.8.1" style="font-size:90%;">59.99</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.23.3.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.19.23.3.9.1" style="font-size:90%;">34.99</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.24.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.24.4.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.24.4.1.1" style="font-size:90%;">OmniGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.24.4.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S5.T1.19.24.4.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.24.4.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.24.4.3.1" style="font-size:90%;">0.43</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.5.1" style="font-size:90%;">51.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.6.1" style="font-size:90%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.7.1" style="font-size:90%;">0.47</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.8.1" style="font-size:90%;">62.66</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.24.4.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.24.4.9.1" style="font-size:90%;">33.66</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.8.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.8.8.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.8.8.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.8.8.1.2"><span class="ltx_text" id="S5.T1.8.8.1.2.1" style="font-size:90%;">dev</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.8.8.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.8.8.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.8.8.3.1" style="font-size:90%;">0.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.8.8.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.5.1" style="font-size:90%;">30.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.6.1" style="font-size:90%;">0.61</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.8.8.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.8.8.8.1" style="font-size:90%;">61.13</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.8.8.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.8.8.9.1" style="font-size:90%;">35.03</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.9.9">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.9.9.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.9.9.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.9.9.1.2"><span class="ltx_text" id="S5.T1.9.9.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.9.9.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.9.9.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.9.9.3.1" style="font-size:90%;">0.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.9.9.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.9.9.5.1" style="font-size:90%;">30.60</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.9.9.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.9.9.8.1" style="font-size:90%;">64.39</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.9.9.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.9.9.9.1" style="font-size:90%;">34.98</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.10.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.10.10.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.10.10.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.10.10.1.2"><span class="ltx_text" id="S5.T1.10.10.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.10.10.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.2.1" style="font-size:90%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.3.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.5.1" style="font-size:90%;">31.34</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.6.1" style="font-size:90%;">0.55</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.10.10.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.10.10.8.1" style="font-size:90%;">64.12</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.10.10.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.10.10.9.1" style="font-size:90%;">34.96</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.11.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.11.11.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.11.11.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.11.11.1.2"><span class="ltx_text" id="S5.T1.11.11.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.11.11.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.2.1" style="font-size:90%;">2</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.3.1" style="font-size:90%;">0.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.5.1" style="font-size:90%;">31.15</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.11.11.6.1" style="font-size:90%;">0.56</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.11.11.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.8.1" style="font-size:90%;">64.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.11.11.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.11.11.9.1" style="font-size:90%;">34.85</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.25.5">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.25.5.1" rowspan="8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.1.1" style="font-size:90%;">Depth</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.25.5.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.2.1" style="font-size:90%;color:#808080;">ControlNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.25.5.3" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.4.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.5.1" style="font-size:90%;color:#808080;">23.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.6.1" style="font-size:90%;color:#808080;">36.83</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.7.1" style="font-size:90%;color:#808080;">0.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.8.1" style="font-size:90%;color:#808080;">0.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.9.1" style="font-size:90%;color:#808080;">60.17</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.25.5.10" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.25.5.10.1" style="font-size:90%;color:#808080;">34.49</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.26.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.26.6.1" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.1.1" style="font-size:90%;color:#808080;">OminiControl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.26.6.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.3.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.4.1" style="font-size:90%;color:#808080;">21.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.5.1" style="font-size:90%;color:#808080;">36.23</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.6.1" style="font-size:90%;color:#808080;">0.52</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.7.1" style="font-size:90%;color:#808080;">0.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.8.1" style="font-size:90%;color:#808080;">60.18</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.26.6.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.26.6.9.1" style="font-size:90%;color:#808080;">34.08</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.27.7">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.27.7.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.27.7.1.1" style="font-size:90%;">OneDiffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.27.7.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S5.T1.19.27.7.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.27.7.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.4.1" style="font-size:90%;">10.35</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.5.1" style="font-size:90%;">39.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.6.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.27.7.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.8.1" style="font-size:90%;">60.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.27.7.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.27.7.9.1" style="font-size:90%;">34.71</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.28.8">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.28.8.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.28.8.1.1" style="font-size:90%;">OmniGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.28.8.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S5.T1.19.28.8.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.28.8.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.28.8.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.28.8.4.1" style="font-size:90%;">15.07</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.28.8.5.1" style="font-size:90%;">86.08</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.28.8.6.1" style="font-size:90%;">0.26</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.28.8.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.28.8.8.1" style="font-size:90%;">64.90</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.28.8.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.28.8.9.1" style="font-size:90%;">29.72</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.12.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.12.12.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.12.12.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.12.12.1.2"><span class="ltx_text" id="S5.T1.12.12.1.2.1" style="font-size:90%;">dev</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.12.12.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.4.1" style="font-size:90%;">25.06</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.5.1" style="font-size:90%;">42.14</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.12.12.6.1" style="font-size:90%;">0.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.7.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.8.1" style="font-size:90%;">58.95</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.12.12.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.12.12.9.1" style="font-size:90%;">34.80</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.13.13">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.13.13.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.13.13.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.13.13.1.2"><span class="ltx_text" id="S5.T1.13.13.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.13.13.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.13.13.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.13.13.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.13.13.4.1" style="font-size:90%;">10.31</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.13.5.1" style="font-size:90%;">33.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.13.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.13.13.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.13.13.8.1" style="font-size:90%;">64.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.13.13.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.13.13.9.1" style="font-size:90%;">35.10</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.14.14">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.14.14.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.14.14.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.14.14.1.2"><span class="ltx_text" id="S5.T1.14.14.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.14.14.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.14.14.2.1" style="font-size:90%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.14.14.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.14.14.4.1" style="font-size:90%;">9.91</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.14.14.5.1" style="font-size:90%;">34.44</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.14.14.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.14.14.7.1" style="font-size:90%;">0.49</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.14.14.8.1" style="font-size:90%;">64.32</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.14.14.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.14.14.9.1" style="font-size:90%;">34.95</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.15.15">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.15.15.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.15.15.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.15.15.1.2"><span class="ltx_text" id="S5.T1.15.15.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.15.15.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.15.15.2.1" style="font-size:90%;">2</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.15.15.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.15.15.4.1" style="font-size:90%;">9.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.15.15.5.1" style="font-size:90%;">34.88</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.15.15.6.1" style="font-size:90%;">0.54</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.15.15.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.15.15.8.1" style="font-size:90%;">64.29</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.15.15.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.15.15.9.1" style="font-size:90%;">34.89</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.29.9">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S5.T1.19.29.9.1" rowspan="8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.1.1" style="font-size:90%;">Deblur</span></th>
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.29.9.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.2.1" style="font-size:90%;color:#808080;">ControlNet <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib80" title=""><span class="ltx_text" style="font-size:90%;">80</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row ltx_border_t" id="S5.T1.19.29.9.3" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.4.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.5.1" style="font-size:90%;color:#808080;">37.82</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.6.1" style="font-size:90%;color:#808080;">53.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.7.1" style="font-size:90%;color:#808080;">0.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.8.1" style="font-size:90%;color:#808080;">0.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.9.1" style="font-size:90%;color:#808080;">61.92</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T1.19.29.9.10" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.29.9.10.1" style="font-size:90%;color:#808080;">33.80</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.30.10">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.30.10.1" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.1.1" style="font-size:90%;color:#808080;">OminiControl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite></span></th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.30.10.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.3.1" style="font-size:90%;color:#808080;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.4.1" style="font-size:90%;color:#808080;">19.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.5.1" style="font-size:90%;color:#808080;">26.17</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.6.1" style="font-size:90%;color:#808080;">0.85</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.7.1" style="font-size:90%;color:#808080;">0.45</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.8.1" style="font-size:90%;color:#808080;">60.70</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.30.10.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.30.10.9.1" style="font-size:90%;color:#808080;">34.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.31.11">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.31.11.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.31.11.1.1" style="font-size:90%;">OneDiffusion </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.31.11.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a><span class="ltx_text" id="S5.T1.19.31.11.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.31.11.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.31.11.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.31.11.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.32.12">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.19.32.12.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.32.12.1.1" style="font-size:90%;">OmniGen </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S5.T1.19.32.12.1.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a><span class="ltx_text" id="S5.T1.19.32.12.1.3.2" style="font-size:90%;">]</span></cite>
</th>
<th class="ltx_td ltx_th ltx_th_row" id="S5.T1.19.32.12.2" style="padding-left:3.1pt;padding-right:3.1pt;"></th>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.4.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.5.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.6.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.7.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.8.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.19.32.12.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.32.12.9.1" style="font-size:90%;">-</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.16.16">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.16.16.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.16.16.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.16.16.1.2"><span class="ltx_text" id="S5.T1.16.16.1.2.1" style="font-size:90%;">dev</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.16.16.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.16.16.4.1" style="font-size:90%;">25.03</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.5.1" style="font-size:90%;">56.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.16.16.6.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.7.1" style="font-size:90%;">0.38</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.8.1" style="font-size:90%;">46.68</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.16.16.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.16.16.9.1" style="font-size:90%;">33.52</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.17.17">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.17.17.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.17.17.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.17.17.1.2"><span class="ltx_text" id="S5.T1.17.17.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.17.17.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.17.17.2.1" style="font-size:90%;">0</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.17.17.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.17.17.4.1" style="font-size:90%;">26.53</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.17.17.5.1" style="font-size:90%;">40.59</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.17.17.6.1" style="font-size:90%;">0.74</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.17.17.7.1" style="font-size:90%;">0.46</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.17.17.8.1" style="font-size:90%;">59.62</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.17.17.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.17.17.9.1" style="font-size:90%;">34.56</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.18.18">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T1.18.18.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.18.18.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.18.18.1.2"><span class="ltx_text" id="S5.T1.18.18.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S5.T1.18.18.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.18.18.2.1" style="font-size:90%;">1</span></th>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.18.18.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.18.18.4.1" style="font-size:90%;">25.87</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.18.18.5.1" style="font-size:90%;">36.93</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.18.6.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.18.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.18.18.8.1" style="font-size:90%;">61.58</span></td>
<td class="ltx_td ltx_align_center" id="S5.T1.18.18.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.18.18.9.1" style="font-size:90%;">34.82</span></td>
</tr>
<tr class="ltx_tr" id="S5.T1.19.19">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T1.19.19.1" style="padding-left:3.1pt;padding-right:3.1pt;">
<span class="ltx_text" id="S5.T1.19.19.1.1" style="font-size:90%;">Ours</span><sub class="ltx_sub" id="S5.T1.19.19.1.2"><span class="ltx_text" id="S5.T1.19.19.1.2.1" style="font-size:90%;">fill</span></sub>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T1.19.19.2" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.19.2.1" style="font-size:90%;">2</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.3" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text" id="S5.T1.19.19.3.1" style="font-size:90%;">-</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.4" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T1.19.19.4.1" style="font-size:90%;">25.57</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.5" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.19.5.1" style="font-size:90%;">36.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.6" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.19.6.1" style="font-size:90%;">0.76</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.7" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.19.7.1" style="font-size:90%;">0.48</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.8" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.19.8.1" style="font-size:90%;">61.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T1.19.19.9" style="padding-left:3.1pt;padding-right:3.1pt;"><span class="ltx_text ltx_font_bold" id="S5.T1.19.19.9.1" style="font-size:90%;">34.82</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of different methods for conditional image generation and image restoration.  The performance of each method is evaluated using several metrics, including F1 score, Root Mean Squared Error (RMSE), Fréchet Inception Distance (FID), Structural Similarity Index (SSIM), and scores from the algorithms MAN-IQA and MUSIQ, and CLIP.  The table includes results for various methods, including ControlNet, OmniControl, OneDiffusion, and OmniGen, and it compares their performance with the proposed method (Ours). For each method, results are shown for zero, one, and two in-context learning examples, to show the benefit of using in-context learning. Methods trained for specific tasks are highlighted in gray; for the others, the best-performing methods are bolded, and the second-best are underlined.
> <details>
> <summary>read the caption</summary>
> Table 1: Quantitative comparison on conditioning generation and image restoration. The methods that train a specialist for each task are marked as gray color. Except for these methods, the best method is bolded, and the second best method is underlined.
> </details>





### In-depth insights


#### Visually In-Context
Visual in-context learning presents a **paradigm shift** in image generation, moving away from heavy reliance on language instructions. This approach enables models to learn directly from visual demonstrations, potentially **reducing ambiguity** and improving generalization, particularly for tasks where language descriptions are insufficient or prone to misinterpretation. The method may involve presenting the model with several examples of input-output pairs, allowing it to infer the underlying task and apply it to new instances. Key advantages include **better handling** of complex or nuanced tasks and the ability to adapt to unseen tasks by observing a small number of relevant examples. This may be realized by a novel framework that unifies different generation tasks as image infilling problems leveraging **powerful prior knowledge** from the pre-trained infilling model without architectural changes.

#### Graph200K Density
**Graph200K Density** is crucial for transferable knowledge in visual generative models. The paper tackles the sparsity of visual tasks by introducing Graph200K, enhancing task density. A dense task space allows the model to learn shared features across different tasks. Increased density promotes knowledge transfer & better adaptability. The graph structure connects related tasks. A compact task space is necessary. Models can learn shared & transferable knowledge more effectively. The high degree of overlap facilitates learning more compact and shared representations. Increasing task density via Graph200K addresses a key limitation. This improves generalization capabilities of visual generative models. The model is able to achieve better results with reduced task ambiguity due to the denser connections between tasks.

#### Infilling Alignment
**Infilling alignment** is a crucial concept in image generation, especially when aiming for universal models. It focuses on ensuring a consistent objective across various tasks, which promotes seamless integration of different conditions and contexts. By formulating image generation as an infilling problem, we can leverage pre-trained infilling models and their generative priors. This approach simplifies the architecture design, as it eliminates the need for task-specific modules or complex input conditioning. Aligning all tasks with a unified infilling objective allows for a more streamlined training process, where the model can learn shared representations and transfer knowledge across diverse tasks. This strategy contributes to enhanced generalization capabilities, as the model learns to fill in missing information based on the surrounding context, rather than relying on specific task instructions. Consequently, **infilling alignment fosters a more robust and adaptable image generation framework**.

#### Unseen Gen Limits
When discussing the limitations of generating **unseen data**, several critical factors come into play. First, the model's ability to extrapolate beyond its training distribution significantly influences its success with novel inputs. If the unseen data deviates too drastically, the model may struggle to produce coherent or relevant outputs. Secondly, the reliance on existing datasets can hinder the generation of truly new content, as the model may simply recombine elements it has already encountered. The capability to adapt to **unseen task combinations** also presents a significant challenge. Transfer learning techniques and meta-learning approaches may mitigate these limitations, enabling models to better generalize and create more diverse and innovative outputs. In-context learning is a potential solution for such cases.

#### Bilateral Guide
**Bilateral generation** is an interesting concept presented in this research. It goes beyond the typical image generation task, which is about generating the target from the set of conditions. The model can also infer underlying conditions from the target image, which is reverse generation. This means the model understands the relationships between image representations. It can extract style and content. The ability to perform such reverse tasks highlights the **flexibility and robustness** in understanding complex relationships between different types of image representations. 


### More visual insights




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T2.4">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T2.4.5.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_tt" id="S5.T2.4.5.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Method</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_tt" id="S5.T2.4.5.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">Context</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.4.5.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">DINOv2</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.4.5.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">CLIP-I</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T2.4.5.1.5" style="padding-left:2.0pt;padding-right:2.0pt;">CLIP-T</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.6.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.4.6.2.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T2.4.6.2.1.1" style="color:#808080;">OminiControl <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib61" title=""><span class="ltx_text" style="font-size:90%;">61</span></a>]</cite></span></th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row ltx_border_t" id="S5.T2.4.6.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.4.6.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T2.4.6.2.3.1" style="color:#808080;">73.17</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.4.6.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T2.4.6.2.4.1" style="color:#808080;">87.70</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.4.6.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S5.T2.4.6.2.5.1" style="color:#808080;">33.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.7.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.7.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">OneDiffusion <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib35" title=""><span class="ltx_text" style="font-size:90%;">35</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S5.T2.4.7.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.7.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">73.88</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.7.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">86.91</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.7.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">34.85</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.8.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T2.4.8.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">OmniGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_th ltx_th_row" id="S5.T2.4.8.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"></th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.8.4.3" style="padding-left:2.0pt;padding-right:2.0pt;">67.73</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.8.4.4" style="padding-left:2.0pt;padding-right:2.0pt;">83.43</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.4.8.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">34.53</td>
</tr>
<tr class="ltx_tr" id="S5.T2.1.1">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours<sub class="ltx_sub" id="S5.T2.1.1.1.1">dev</sub>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S5.T2.1.1.2" style="padding-left:2.0pt;padding-right:2.0pt;">0</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.3" style="padding-left:2.0pt;padding-right:2.0pt;">78.05</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.4" style="padding-left:2.0pt;padding-right:2.0pt;">87.68</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T2.1.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.1.1.5.1">35.06</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.2.2">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T2.2.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours<sub class="ltx_sub" id="S5.T2.2.2.1.1">fill</sub>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;">0</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.2.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.3.1">80.41</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.2.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.4.1">89.63</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.2.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T2.2.2.5.1">35.16</span></td>
</tr>
<tr class="ltx_tr" id="S5.T2.3.3">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row" id="S5.T2.3.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours<sub class="ltx_sub" id="S5.T2.3.3.1.1">fill</sub>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row" id="S5.T2.3.3.2" style="padding-left:2.0pt;padding-right:2.0pt;">1</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;">79.33</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;">89.22</td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center" id="S5.T2.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;">35.02</td>
</tr>
<tr class="ltx_tr" id="S5.T2.4.4">
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">Ours<sub class="ltx_sub" id="S5.T2.4.4.1.1">fill</sub>
</th>
<th class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_th ltx_th_row ltx_border_bb" id="S5.T2.4.4.2" style="padding-left:2.0pt;padding-right:2.0pt;">2</th>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.4.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.4.3.1">80.32</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.4.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T2.4.4.4.1">89.36</span></td>
<td class="ltx_td ltx_nopad_l ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T2.4.4.5" style="padding-left:2.0pt;padding-right:2.0pt;">35.01</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for subject-driven image generation.  The metrics used are CLIP scores for text alignment and style consistency, reflecting how well the generated image matches the textual description and the intended style.  Methods that are specifically designed for this task (specialists) are highlighted in gray.  For the remaining methods (universal or multi-task models), the best performing one is shown in bold, while the second best is underlined. This allows for easy comparison of specialized methods to more general approaches in this specific image generation task.
> <details>
> <summary>read the caption</summary>
> Table 2: Quantitative comparison for subject-driven image generation. We report clip scores on text alignment and style consistency. Specialists are shaded in gray. Among the remaining methods, the best is emphasized in bold, while the second best is underlined.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S5.T3.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T3.2.2">
<th class="ltx_td ltx_th ltx_th_row ltx_border_tt" id="S5.T3.2.2.3" style="padding-left:19.1pt;padding-right:19.1pt;"></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.1.1.1" style="padding-left:19.1pt;padding-right:19.1pt;">      text<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.1.1.1.m1.1"><semantics id="S5.T3.1.1.1.m1.1a"><mo id="S5.T3.1.1.1.m1.1.1" stretchy="false" xref="S5.T3.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.1.1.1.m1.1b"><ci id="S5.T3.1.1.1.m1.1.1.cmml" xref="S5.T3.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.1.1.1.m1.1d">↑</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S5.T3.2.2.2" style="padding-left:19.1pt;padding-right:19.1pt;">      image<math alttext="\uparrow" class="ltx_Math" display="inline" id="S5.T3.2.2.2.m1.1"><semantics id="S5.T3.2.2.2.m1.1a"><mo id="S5.T3.2.2.2.m1.1.1" stretchy="false" xref="S5.T3.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S5.T3.2.2.2.m1.1b"><ci id="S5.T3.2.2.2.m1.1.1.cmml" xref="S5.T3.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S5.T3.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S5.T3.2.2.2.m1.1d">↑</annotation></semantics></math></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T3.4.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S5.T3.4.5.1.1" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text" id="S5.T3.4.5.1.1.1" style="color:#808080;"> InstantStyle <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib64" title=""><span class="ltx_text" style="font-size:90%;">64</span></a>]</cite></span>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.5.1.2" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text" id="S5.T3.4.5.1.2.1" style="color:#808080;"> 0.27</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T3.4.5.1.3" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text" id="S5.T3.4.5.1.3.1" style="color:#808080;"> 0.60</span>
</td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.4.6.2.1" style="padding-left:19.1pt;padding-right:19.1pt;">      OmniGen <cite class="ltx_cite ltx_citemacro_cite">[<a class="ltx_ref" href="https://arxiv.org/html/2504.07960v1#bib.bib71" title=""><span class="ltx_text" style="font-size:90%;">71</span></a>]</cite></th>
<td class="ltx_td ltx_align_center" id="S5.T3.4.6.2.2" style="padding-left:19.1pt;padding-right:19.1pt;">      0.27</td>
<td class="ltx_td ltx_align_center" id="S5.T3.4.6.2.3" style="padding-left:19.1pt;padding-right:19.1pt;">      0.52</td>
</tr>
<tr class="ltx_tr" id="S5.T3.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S5.T3.3.3.1" style="padding-left:19.1pt;padding-right:19.1pt;">      Ours<sub class="ltx_sub" id="S5.T3.3.3.1.1">dev</sub></th>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.2" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text ltx_font_bold" id="S5.T3.3.3.2.1">0.30</span></td>
<td class="ltx_td ltx_align_center" id="S5.T3.3.3.3" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.3.3.3.1">0.53</span></td>
</tr>
<tr class="ltx_tr" id="S5.T3.4.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S5.T3.4.4.1" style="padding-left:19.1pt;padding-right:19.1pt;">      Ours<sub class="ltx_sub" id="S5.T3.4.4.1.1">fill</sub></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.2" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text ltx_framed ltx_framed_underline" id="S5.T3.4.4.2.1">0.29</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T3.4.4.3" style="padding-left:19.1pt;padding-right:19.1pt;">      <span class="ltx_text ltx_font_bold" id="S5.T3.4.4.3.1">0.55</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for style transfer, focusing on their performance in terms of text alignment and style consistency.  The evaluation is performed using CLIP scores.  Methods specifically designed for style transfer (specialists) are highlighted in gray to distinguish them from more general-purpose methods. For the remaining methods (non-specialists), the top performer is indicated in bold, and the second-best is underlined.  The results offer a comparative analysis of the effectiveness of various approaches in achieving accurate text alignment and style consistency during style transfer tasks.
> <details>
> <summary>read the caption</summary>
> Table 3: Quantitative comparison for style transfer. We report CLIP scores on text alignment and style consistency. The specialists are indicated in gray. Among the others, the top-performing one is highlighted in bold, and the second best is underlined.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.07960/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.07960/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}