---
title: "Improving Video Generation with Human Feedback"
summary: "Human feedback boosts video generation!  New VideoReward model & alignment algorithms significantly improve video quality and user prompt alignment, exceeding prior methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Video Understanding", "🏢 Tsinghua University",]
showSummary: true
date: 2025-01-23
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2501.13918 {{< /keyword >}}
{{< keyword icon="writer" >}} Jie Liu et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-01-24 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2501.13918" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2501.13918" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2501.13918/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Current video generation models struggle with issues like unstable motion, visual quality, and alignment with user prompts.  This is mainly due to limited high-quality preference data and the difficulty of adapting existing alignment methods to advanced flow-based models. 

This paper tackles these problems by introducing VideoReward, a multi-dimensional reward model trained on a large-scale human preference dataset.  It also proposes three novel alignment algorithms that leverage human feedback to improve the quality of flow-based video generation models. Experimental results show that VideoReward and these algorithms significantly outperform existing models, leading to videos with smoother motion, better visual quality, and improved alignment with user prompts.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} A novel multi-dimensional reward model (VideoReward) was developed to evaluate video generation quality based on human preferences. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} Three new alignment algorithms for flow-based video generation models (Flow-DPO, Flow-RWR, Flow-NRG) were introduced. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Extensive experiments demonstrate that VideoReward and the proposed algorithms significantly outperform existing approaches in terms of video quality and alignment with user prompts. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is crucial for researchers in video generation because it directly addresses the persistent challenges of unstable motion, misalignment with user prompts, and unsatisfactory visual quality.  The proposed method of using human feedback to improve the alignment of video generation models is highly relevant to current research trends focused on improving generative models using human preferences.  It introduces novel techniques for flow-based models, pushing the boundaries of what's possible and opening new avenues for further research.

------
#### Visual Insights



![](https://arxiv.org/html/2501.13918/x1.png)

> 🔼 This figure illustrates the pipeline for aligning video generation models with human preferences.  Panel (a) shows the creation of a human preference dataset: 182,000 triplets of video pairs (A and B) generated from prompts, rated by human evaluators across three dimensions: Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA). Panel (b) details the training of a Vision-Language Model (VLM) based reward model using the Bradley-Terry model with ties to predict preference scores based on the dataset. Panel (c) outlines the three alignment algorithms applied to flow-based video generation models: Direct Preference Optimization (DPO), Reward Weighted Regression (RWR), and reward guidance, comparing their effectiveness.
> <details>
> <summary>read the caption</summary>
> Figure 1: Overview of Our Video Alignment Paradigm. (a) Human Preference Annotation (Sec. 3.1). We construct a dataset of 182k (prompt, video A, video B) triplets, collecting preference annotations on Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) from human evaluators. (b) Reward Mode Training (Sec. 3.2). We train a VLM-based reward model using the Bradley-Terry-Model-with-Ties formulation. (c) Video Alignment (Sec. 4). We adapt alignment techniques — DPO, RWR, and reward guidance — to flow-based video generation models and provide a comprehensive comparison of their effectiveness.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S3.T1.12">
<tr class="ltx_tr" id="S3.T1.12.13">
<td class="ltx_td ltx_border_tt" id="S3.T1.12.13.1"></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_tt" id="S3.T1.12.13.2"><span class="ltx_text" id="S3.T1.12.13.2.1" style="font-size:90%;">T2V Model</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.13.3"><span class="ltx_text" id="S3.T1.12.13.3.1" style="font-size:90%;">Date</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.13.4"><span class="ltx_text" id="S3.T1.12.13.4.1" style="font-size:90%;">#Videos</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.13.5"><span class="ltx_text" id="S3.T1.12.13.5.1" style="font-size:90%;">#Anno Triplets</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.13.6"><span class="ltx_text" id="S3.T1.12.13.6.1" style="font-size:90%;">Resolution</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.12.13.7"><span class="ltx_text" id="S3.T1.12.13.7.1" style="font-size:90%;">Duration</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.1.1.2"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.1.1.2.1" style="font-size:90%;">Pre-Sora-Era Models</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.1.1.3">
<span class="ltx_text" id="S3.T1.1.1.3.1" style="font-size:90%;">Gen2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.1.1.3.2.1" style="font-size:90%;">(</span>Runway<span class="ltx_text" id="S3.T1.1.1.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib60" title="">2023</a><span class="ltx_text" id="S3.T1.1.1.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.4"><span class="ltx_text" id="S3.T1.1.1.4.1" style="font-size:90%;">23.06</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.5"><span class="ltx_text" id="S3.T1.1.1.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.6"><span class="ltx_text" id="S3.T1.1.1.6.1" style="font-size:90%;">13k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.1">
<span class="ltx_text" id="S3.T1.1.1.1.1" style="font-size:90%;">768 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" mathsize="90%" xref="S3.T1.1.1.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><times id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.1.1.1.2" style="font-size:90%;"> 1408</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.1.1.7"><span class="ltx_text" id="S3.T1.1.1.7.1" style="font-size:90%;">4s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.2.2">
<td class="ltx_td" id="S3.T1.2.2.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.2.2.3">
<span class="ltx_text" id="S3.T1.2.2.3.1" style="font-size:90%;">SVD </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.2.2.3.2.1" style="font-size:90%;">(</span>Blattmann et al.<span class="ltx_text" id="S3.T1.2.2.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib3" title="">2023</a><span class="ltx_text" id="S3.T1.2.2.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.4"><span class="ltx_text" id="S3.T1.2.2.4.1" style="font-size:90%;">23.11</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.5"><span class="ltx_text" id="S3.T1.2.2.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.6"><span class="ltx_text" id="S3.T1.2.2.6.1" style="font-size:90%;">13k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.1">
<span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:90%;">576 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.2.2.1.m1.1"><semantics id="S3.T1.2.2.1.m1.1a"><mo id="S3.T1.2.2.1.m1.1.1" mathsize="90%" xref="S3.T1.2.2.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.2.2.1.m1.1b"><times id="S3.T1.2.2.1.m1.1.1.cmml" xref="S3.T1.2.2.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.2.2.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.2.2.1.2" style="font-size:90%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.2.2.7"><span class="ltx_text" id="S3.T1.2.2.7.1" style="font-size:90%;">4s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.3.3">
<td class="ltx_td" id="S3.T1.3.3.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.3.3.3">
<span class="ltx_text" id="S3.T1.3.3.3.1" style="font-size:90%;">Pika 1.0 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.3.3.3.2.1" style="font-size:90%;">(</span>Labs<span class="ltx_text" id="S3.T1.3.3.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib33" title="">2023</a><span class="ltx_text" id="S3.T1.3.3.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.4"><span class="ltx_text" id="S3.T1.3.3.4.1" style="font-size:90%;">23.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.5"><span class="ltx_text" id="S3.T1.3.3.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.6"><span class="ltx_text" id="S3.T1.3.3.6.1" style="font-size:90%;">13k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.1">
<span class="ltx_text" id="S3.T1.3.3.1.1" style="font-size:90%;">720 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.3.3.1.m1.1"><semantics id="S3.T1.3.3.1.m1.1a"><mo id="S3.T1.3.3.1.m1.1.1" mathsize="90%" xref="S3.T1.3.3.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.1.m1.1b"><times id="S3.T1.3.3.1.m1.1.1.cmml" xref="S3.T1.3.3.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.3.3.1.2" style="font-size:90%;"> 1280</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.3.3.7"><span class="ltx_text" id="S3.T1.3.3.7.1" style="font-size:90%;">3s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.4.4">
<td class="ltx_td" id="S3.T1.4.4.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.4.4.3">
<span class="ltx_text" id="S3.T1.4.4.3.1" style="font-size:90%;">Vega </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.4.4.3.2.1" style="font-size:90%;">(</span>VegaAI<span class="ltx_text" id="S3.T1.4.4.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib67" title="">2023</a><span class="ltx_text" id="S3.T1.4.4.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.4"><span class="ltx_text" id="S3.T1.4.4.4.1" style="font-size:90%;">23.12</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.5"><span class="ltx_text" id="S3.T1.4.4.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.6"><span class="ltx_text" id="S3.T1.4.4.6.1" style="font-size:90%;">13k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.1">
<span class="ltx_text" id="S3.T1.4.4.1.1" style="font-size:90%;">576 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.4.4.1.m1.1"><semantics id="S3.T1.4.4.1.m1.1a"><mo id="S3.T1.4.4.1.m1.1.1" mathsize="90%" xref="S3.T1.4.4.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.4.4.1.m1.1b"><times id="S3.T1.4.4.1.m1.1.1.cmml" xref="S3.T1.4.4.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.4.4.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.4.4.1.2" style="font-size:90%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.4.4.7"><span class="ltx_text" id="S3.T1.4.4.7.1" style="font-size:90%;">4s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td" id="S3.T1.5.5.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.5.5.3">
<span class="ltx_text" id="S3.T1.5.5.3.1" style="font-size:90%;">Pixverse v1 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.5.5.3.2.1" style="font-size:90%;">(</span>PixVerse<span class="ltx_text" id="S3.T1.5.5.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib53" title="">2024</a><span class="ltx_text" id="S3.T1.5.5.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.4"><span class="ltx_text" id="S3.T1.5.5.4.1" style="font-size:90%;">24.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.5"><span class="ltx_text" id="S3.T1.5.5.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.6"><span class="ltx_text" id="S3.T1.5.5.6.1" style="font-size:90%;">13k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.1">
<span class="ltx_text" id="S3.T1.5.5.1.1" style="font-size:90%;">768 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.5.5.1.m1.1"><semantics id="S3.T1.5.5.1.m1.1a"><mo id="S3.T1.5.5.1.m1.1.1" mathsize="90%" xref="S3.T1.5.5.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.1.m1.1b"><times id="S3.T1.5.5.1.m1.1.1.cmml" xref="S3.T1.5.5.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.5.5.1.2" style="font-size:90%;"> 1408</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.5.7"><span class="ltx_text" id="S3.T1.5.5.7.1" style="font-size:90%;">4s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.6.6">
<td class="ltx_td" id="S3.T1.6.6.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.6.6.3">
<span class="ltx_text" id="S3.T1.6.6.3.1" style="font-size:90%;">HiDream </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.6.6.3.2.1" style="font-size:90%;">(</span>HidreamAI<span class="ltx_text" id="S3.T1.6.6.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib19" title="">2024</a><span class="ltx_text" id="S3.T1.6.6.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.4"><span class="ltx_text" id="S3.T1.6.6.4.1" style="font-size:90%;">24.01</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.5"><span class="ltx_text" id="S3.T1.6.6.5.1" style="font-size:90%;">0.3k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.6"><span class="ltx_text" id="S3.T1.6.6.6.1" style="font-size:90%;">0.3k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.1">
<span class="ltx_text" id="S3.T1.6.6.1.1" style="font-size:90%;">768 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.6.6.1.m1.1"><semantics id="S3.T1.6.6.1.m1.1a"><mo id="S3.T1.6.6.1.m1.1.1" mathsize="90%" xref="S3.T1.6.6.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.6.6.1.m1.1b"><times id="S3.T1.6.6.1.m1.1.1.cmml" xref="S3.T1.6.6.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.6.6.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.6.6.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.6.6.1.2" style="font-size:90%;"> 1344</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.6.6.7"><span class="ltx_text" id="S3.T1.6.6.7.1" style="font-size:90%;">5s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.7.7">
<td class="ltx_td ltx_align_left ltx_border_t" id="S3.T1.7.7.2"><span class="ltx_text ltx_font_bold ltx_font_italic" id="S3.T1.7.7.2.1" style="font-size:90%;">Modern Models</span></td>
<td class="ltx_td ltx_align_left ltx_border_r ltx_border_t" id="S3.T1.7.7.3">
<span class="ltx_text" id="S3.T1.7.7.3.1" style="font-size:90%;">Dreamina </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.7.7.3.2.1" style="font-size:90%;">(</span>Capcut<span class="ltx_text" id="S3.T1.7.7.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib6" title="">2024</a><span class="ltx_text" id="S3.T1.7.7.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.4"><span class="ltx_text" id="S3.T1.7.7.4.1" style="font-size:90%;">24.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.5"><span class="ltx_text" id="S3.T1.7.7.5.1" style="font-size:90%;">16k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.6"><span class="ltx_text" id="S3.T1.7.7.6.1" style="font-size:90%;">68k</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.1">
<span class="ltx_text" id="S3.T1.7.7.1.1" style="font-size:90%;">720 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.7.7.1.m1.1"><semantics id="S3.T1.7.7.1.m1.1a"><mo id="S3.T1.7.7.1.m1.1.1" mathsize="90%" xref="S3.T1.7.7.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.7.7.1.m1.1b"><times id="S3.T1.7.7.1.m1.1.1.cmml" xref="S3.T1.7.7.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.7.7.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.7.7.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.7.7.1.2" style="font-size:90%;"> 1280</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.7.7.7"><span class="ltx_text" id="S3.T1.7.7.7.1" style="font-size:90%;">6s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.8.8">
<td class="ltx_td" id="S3.T1.8.8.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.8.8.3">
<span class="ltx_text" id="S3.T1.8.8.3.1" style="font-size:90%;">Luma </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.8.8.3.2.1" style="font-size:90%;">(</span>LumaLabs<span class="ltx_text" id="S3.T1.8.8.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib48" title="">2024</a><span class="ltx_text" id="S3.T1.8.8.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.4"><span class="ltx_text" id="S3.T1.8.8.4.1" style="font-size:90%;">24.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.5"><span class="ltx_text" id="S3.T1.8.8.5.1" style="font-size:90%;">16k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.6"><span class="ltx_text" id="S3.T1.8.8.6.1" style="font-size:90%;">57k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.1">
<span class="ltx_text" id="S3.T1.8.8.1.1" style="font-size:90%;">752 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.8.8.1.m1.1"><semantics id="S3.T1.8.8.1.m1.1a"><mo id="S3.T1.8.8.1.m1.1.1" mathsize="90%" xref="S3.T1.8.8.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.8.8.1.m1.1b"><times id="S3.T1.8.8.1.m1.1.1.cmml" xref="S3.T1.8.8.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.8.8.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.8.8.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.8.8.1.2" style="font-size:90%;"> 1360</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.8.8.7"><span class="ltx_text" id="S3.T1.8.8.7.1" style="font-size:90%;">5s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.9.9">
<td class="ltx_td" id="S3.T1.9.9.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.9.9.3">
<span class="ltx_text" id="S3.T1.9.9.3.1" style="font-size:90%;">Gen3 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.9.9.3.2.1" style="font-size:90%;">(</span>Runway<span class="ltx_text" id="S3.T1.9.9.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib61" title="">2024</a><span class="ltx_text" id="S3.T1.9.9.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.4"><span class="ltx_text" id="S3.T1.9.9.4.1" style="font-size:90%;">24.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.5"><span class="ltx_text" id="S3.T1.9.9.5.1" style="font-size:90%;">16k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.6"><span class="ltx_text" id="S3.T1.9.9.6.1" style="font-size:90%;">55k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.1">
<span class="ltx_text" id="S3.T1.9.9.1.1" style="font-size:90%;">768 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.9.9.1.m1.1"><semantics id="S3.T1.9.9.1.m1.1a"><mo id="S3.T1.9.9.1.m1.1.1" mathsize="90%" xref="S3.T1.9.9.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.9.9.1.m1.1b"><times id="S3.T1.9.9.1.m1.1.1.cmml" xref="S3.T1.9.9.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.9.9.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.9.9.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.9.9.1.2" style="font-size:90%;"> 1280</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.9.9.7"><span class="ltx_text" id="S3.T1.9.9.7.1" style="font-size:90%;">5s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.10.10">
<td class="ltx_td" id="S3.T1.10.10.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.10.10.3">
<span class="ltx_text" id="S3.T1.10.10.3.1" style="font-size:90%;">Kling 1.0 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.10.10.3.2.1" style="font-size:90%;">(</span>Kuaishou<span class="ltx_text" id="S3.T1.10.10.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib32" title="">2024</a><span class="ltx_text" id="S3.T1.10.10.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.4"><span class="ltx_text" id="S3.T1.10.10.4.1" style="font-size:90%;">24.06</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.5"><span class="ltx_text" id="S3.T1.10.10.5.1" style="font-size:90%;">6k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.6"><span class="ltx_text" id="S3.T1.10.10.6.1" style="font-size:90%;">33k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.1">
<span class="ltx_text" id="S3.T1.10.10.1.1" style="font-size:90%;">384 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.10.10.1.m1.1"><semantics id="S3.T1.10.10.1.m1.1a"><mo id="S3.T1.10.10.1.m1.1.1" mathsize="90%" xref="S3.T1.10.10.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.10.10.1.m1.1b"><times id="S3.T1.10.10.1.m1.1.1.cmml" xref="S3.T1.10.10.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.10.10.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.10.10.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.10.10.1.2" style="font-size:90%;"> 672</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.10.10.7"><span class="ltx_text" id="S3.T1.10.10.7.1" style="font-size:90%;">5s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.11.11">
<td class="ltx_td" id="S3.T1.11.11.2"></td>
<td class="ltx_td ltx_align_left ltx_border_r" id="S3.T1.11.11.3">
<span class="ltx_text" id="S3.T1.11.11.3.1" style="font-size:90%;">Pixverse v2 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.11.11.3.2.1" style="font-size:90%;">(</span>PixVerse<span class="ltx_text" id="S3.T1.11.11.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib53" title="">2024</a><span class="ltx_text" id="S3.T1.11.11.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.4"><span class="ltx_text" id="S3.T1.11.11.4.1" style="font-size:90%;">24.07</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.5"><span class="ltx_text" id="S3.T1.11.11.5.1" style="font-size:90%;">16k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.6"><span class="ltx_text" id="S3.T1.11.11.6.1" style="font-size:90%;">58k</span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.1">
<span class="ltx_text" id="S3.T1.11.11.1.1" style="font-size:90%;">576 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.11.11.1.m1.1"><semantics id="S3.T1.11.11.1.m1.1a"><mo id="S3.T1.11.11.1.m1.1.1" mathsize="90%" xref="S3.T1.11.11.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.11.11.1.m1.1b"><times id="S3.T1.11.11.1.m1.1.1.cmml" xref="S3.T1.11.11.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.11.11.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.11.11.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.11.11.1.2" style="font-size:90%;"> 1024</span>
</td>
<td class="ltx_td ltx_align_center" id="S3.T1.11.11.7"><span class="ltx_text" id="S3.T1.11.11.7.1" style="font-size:90%;">5s</span></td>
</tr>
<tr class="ltx_tr" id="S3.T1.12.12">
<td class="ltx_td ltx_border_bb" id="S3.T1.12.12.2"></td>
<td class="ltx_td ltx_align_left ltx_border_bb ltx_border_r" id="S3.T1.12.12.3">
<span class="ltx_text" id="S3.T1.12.12.3.1" style="font-size:90%;">Kling 1.5 </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S3.T1.12.12.3.2.1" style="font-size:90%;">(</span>Kuaishou<span class="ltx_text" id="S3.T1.12.12.3.3.2.1.1" style="font-size:90%;">, </span><a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib32" title="">2024</a><span class="ltx_text" id="S3.T1.12.12.3.4.3" style="font-size:90%;">)</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.4"><span class="ltx_text" id="S3.T1.12.12.4.1" style="font-size:90%;">24.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.5"><span class="ltx_text" id="S3.T1.12.12.5.1" style="font-size:90%;">7k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.6"><span class="ltx_text" id="S3.T1.12.12.6.1" style="font-size:90%;">28k</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.1">
<span class="ltx_text" id="S3.T1.12.12.1.1" style="font-size:90%;">704 </span><math alttext="\times" class="ltx_Math" display="inline" id="S3.T1.12.12.1.m1.1"><semantics id="S3.T1.12.12.1.m1.1a"><mo id="S3.T1.12.12.1.m1.1.1" mathsize="90%" xref="S3.T1.12.12.1.m1.1.1.cmml">×</mo><annotation-xml encoding="MathML-Content" id="S3.T1.12.12.1.m1.1b"><times id="S3.T1.12.12.1.m1.1.1.cmml" xref="S3.T1.12.12.1.m1.1.1"></times></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.12.12.1.m1.1c">\times</annotation><annotation encoding="application/x-llamapun" id="S3.T1.12.12.1.m1.1d">×</annotation></semantics></math><span class="ltx_text" id="S3.T1.12.12.1.2" style="font-size:90%;"> 1280</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.12.12.7"><span class="ltx_text" id="S3.T1.12.12.7.1" style="font-size:90%;">5s</span></td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a summary of the dataset used to train the video reward model.  It details the number of videos generated, the number of unique prompts used, and the final number of annotated triplets.  Each triplet contains a prompt and two videos, with human annotations indicating which video is preferred.  The table also specifies the pre- and post-Sora era models used to generate the videos, reflecting the evolution in video generation technology.
> <details>
> <summary>read the caption</summary>
> Table 1: Statistics of the collected training dataset. We utilized 12 text-to-video models to generate a total of 108k videos from 16k unique prompts. This process ultimately resulted in 182k annotated triplets, each consisting of a prompt paired with two videos and corresponding preference annotations.
> </details>





### In-depth insights


#### Human Feedback in VideoGen
Human feedback is crucial for enhancing video generation models.  **VideoGen models often struggle with issues like unstable motion, misalignment with prompts, and subpar visual quality.** Integrating human feedback provides a way to address these shortcomings. This could involve creating large-scale preference datasets where users rate the quality of generated videos along various dimensions, such as visual fidelity, motion coherence, and alignment with the prompt. These datasets can be used to train reward models that quantify video quality. Subsequently, reinforcement learning methods can be employed to align the video generation model with human preferences, as reflected in the reward signals. **A key aspect would involve developing sophisticated reward models capable of capturing the multifaceted nature of human preferences**, particularly in the context of video, which is more complex than static images.  Finally,  it's important to consider how to efficiently incorporate human feedback into the training process, balancing the need for large-scale data with the cost and time involved in human annotation. **The focus should be on developing techniques to mitigate reward hacking and ensuring that the alignment process doesn't negatively impact the model's capabilities in other aspects.**

#### Multi-Dimensional Reward
The concept of "Multi-Dimensional Reward" in video generation signifies a shift from simplistic, single-metric evaluations (like FID or CLIP scores) to a more nuanced approach.  It acknowledges that human judgment of video quality isn't solely based on visual fidelity but encompasses multiple facets. **The use of multiple dimensions**, such as visual quality, motion smoothness, and alignment with textual prompts, offers a more holistic understanding of video generation success.  This allows for the creation of reward models that **better capture human preferences**, leading to more effective reinforcement learning strategies.  However, designing and training these multi-dimensional reward models presents challenges. **Annotation becomes more complex**, requiring careful consideration of how each dimension is weighted and measured. There's also the risk of **dimensionality conflicts**, where improving one aspect negatively affects others.  Successfully addressing these challenges is crucial to creating truly human-aligned video generation systems that prioritize a balanced and comprehensive measure of quality.

#### Flow-Based Alignment
The section on 'Flow-Based Alignment' would delve into the **challenges of adapting existing alignment techniques from diffusion models to the newer flow-based video generation models**.  It would likely highlight the differences in how these models generate videos – diffusion models progressively denoise latent representations, whereas flow-based models directly predict velocities. This key difference necessitates the **development of novel alignment algorithms specifically tailored to the characteristics of flow-based models**. The discussion would likely cover the rationale behind extending the existing training-time (DPO and RWR) and inference-time (NRG) algorithms from diffusion to flow-based models.  A critical aspect would be the **evaluation and comparison of these three new alignment algorithms**.  The findings would demonstrate the effectiveness of these algorithms in optimizing flow-based video generation models according to human preferences and potentially highlight the performance differences between the proposed algorithms and traditional supervised fine-tuning approaches.  The section likely concludes with a discussion on the **trade-offs between training-time and inference-time methods**, emphasizing aspects like efficiency and user control over model alignment.

#### Reward Model Ablation
A reward model ablation study systematically investigates the impact of design choices on a reward model's effectiveness in aligning video generation models with human preferences.  **Different reward model architectures**, such as Bradley-Terry and regression models, are compared, revealing the strengths and weaknesses of each approach in capturing human preferences. The study further explores the impact of incorporating tie annotations, demonstrating that accounting for ties in the data improves the model's ability to capture nuanced preferences.  **Key design choices**, like the use of separate tokens for multi-dimensional rewards, are also examined and shown to significantly influence the reward model's performance by reducing coupling among reward dimensions.  The results highlight the **importance of carefully considering** both the model architecture and data handling techniques when designing reward models for video generation applications.

#### Future of Video Alignment
The future of video alignment hinges on addressing current limitations. **Scaling up high-quality human preference datasets** is crucial, moving beyond existing datasets limited in size and video quality.  **Developing more robust reward models** that avoid reward hacking, perhaps using techniques that incorporate uncertainty estimates or improved annotation methods, is vital.  **Exploring alternative alignment algorithms** beyond direct preference optimization (DPO) and reward-weighted regression (RWR) might yield improved results and address issues like instability.  Research should investigate the use of techniques that better handle multi-modal data and leverage the strengths of large language models (LLMs) for improved alignment.  Finally, **transfer learning** and **few-shot learning** approaches are promising avenues to reduce the significant computational cost associated with current alignment methods and make the process more accessible.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2501.13918/x2.png)

> 🔼 Figure 2 presents a comprehensive statistical overview of the training dataset used in the study. It includes visualizations of the distribution of prompts across different categories, a word cloud illustrating the most frequent words used in prompts, a bar chart illustrating prompt lengths, and a distribution of video durations and resolutions.
> <details>
> <summary>read the caption</summary>
> Figure 2: Statistics of our training data.
> </details>



![](https://arxiv.org/html/2501.13918/x3.png)

> 🔼 This figure compares the performance of two reward model types: Bradley-Terry (BT) and regression models, across different training dataset sizes.  The x-axis represents the fraction of the training data used (on a logarithmic scale), and the y-axis shows the resulting accuracy of each model type.  The plot demonstrates how the accuracy of both models improves as more training data is available. Notably, the Bradley-Terry model consistently outperforms the regression model, particularly with smaller datasets. This suggests that for limited data, pairwise comparisons (as used in BT) are more effective at capturing relative quality scores than direct regression.
> <details>
> <summary>read the caption</summary>
> Figure 3: Accuracy comparison between the BT and regression reward models across varying training data fractions (log scale).
> </details>



![](https://arxiv.org/html/2501.13918/x4.png)

> 🔼 This figure compares the distributions of the reward difference (Δr) between two videos for the Bradley-Terry (BT) model and the Bradley-Terry-with-Ties (BTT) model.  The BT model struggles to differentiate between videos rated as ties and those clearly preferred or rejected, exhibiting overlap in their Δr values. In contrast, the BTT model shows a clear separation between tied pairs and chosen/rejected pairs.  This demonstrates the BTT model's improved ability to handle tied preferences in reward modeling.
> <details>
> <summary>read the caption</summary>
> Figure 4: Visualization of the Δ⁢rΔ𝑟\Delta rroman_Δ italic_r distribution for the BT reward model (Left) and the BTT reward model (Right). The BTT model effectively distinguishes tie pairs from chosen/rejected pairs.
> </details>



![](https://arxiv.org/html/2501.13918/x5.png)

> 🔼 This figure presents a visual comparison of videos generated using two different methods: (1) a pretrained video generation model and (2) the same model after being aligned using the Flow-DPO algorithm.  The figure shows six video examples, each illustrating a scene described by a text prompt.  Each example includes a side-by-side comparison of the video generated by the pretrained model and the video generated by the Flow-DPO-aligned model, allowing viewers to visually assess the differences in visual quality, motion, and overall coherence between the two methods.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparison of videos generated by the original pretrained model and the Flow-DPO aligned model.
> </details>



![](https://arxiv.org/html/2501.13918/x6.png)

> 🔼 This figure presents the results of a human evaluation comparing videos generated by a pretrained video generation model and a Flow-DPO aligned model. The evaluation was conducted on the VideoGen-Eval dataset, which includes 400 prompts. The evaluation metrics used were Visual Quality, Motion Quality, and Text Alignment. The results are presented in a bar chart showing the percentage of wins for each model in each category. The chart displays the number of times videos from either model were preferred in terms of Visual Quality, Motion Quality, and Text Alignment, as well as the frequency of ties.
> <details>
> <summary>read the caption</summary>
> Figure 6: Human evaluation of Flow-DPO aligned model vs. pretrained model on VideoGen-Eval, which contains 400 prompts.
> </details>



![](https://arxiv.org/html/2501.13918/x7.png)

> 🔼 This figure compares the performance of Flow-DPO, a video generation alignment algorithm, using two different strategies for the KL divergence regularization term (β).  The first strategy uses a time-dependent β (βt = β(1-t)²), where β changes throughout the video generation process. The second uses a constant β. The results are shown for Text Alignment (TA) task. The figure shows that Flow-DPO with a constant β consistently outperforms the time-dependent β across various settings. This suggests that a fixed KL divergence regularization strength is more effective for aligning the model than a varying strength.
> <details>
> <summary>read the caption</summary>
> Figure 7: Accuracy of time-dependent βtsubscript𝛽𝑡\beta_{t}italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT vs. constant β𝛽\betaitalic_β for TA: Flow-DPO with a constant β𝛽\betaitalic_β consistently outperforms the timestep-dependent β𝛽\betaitalic_β across various settings.
> </details>



![](https://arxiv.org/html/2501.13918/x8.png)

> 🔼 This figure is a comparison of video durations and resolutions present in the GenAI-Bench and VideoGen-RewardBench datasets.  The GenAI-Bench dataset contains videos generated by models from before the release of the Sora model, while the VideoGen-RewardBench dataset includes videos from more modern, state-of-the-art models. The chart visually shows the distribution of video durations (in seconds) across different resolutions for both datasets, allowing for a direct comparison of the characteristics of videos included in each benchmark.
> <details>
> <summary>read the caption</summary>
> Figure 8: Video Duration and Resolution in GenAI-Bench and VideoGen-Reward Bench
> </details>



![](https://arxiv.org/html/2501.13918/x9.png)

> 🔼 Figure 9 is a timeline visualization showing the model coverage of various datasets used in the paper.  It illustrates the temporal distribution of different text-to-video (T2V) models used in the training sets of different baselines (VideoScore, VisionReward, GenAI-Bench) and the two evaluation benchmarks (GenAI-Bench and VideoGen-RewardBench). The figure highlights that earlier baselines primarily utilized pre-SoRA era models, while the paper's training set and newer VideoGen-RewardBench focus on state-of-the-art models. This shows the progression of models over time and the focus of the datasets utilized in the paper.
> <details>
> <summary>read the caption</summary>
> Figure 9: The model coverage across the training sets of different baselines and the two evaluation benchmarks. VideoScore, VisionReward, and GenAI-Bench primarily focus on pre-SoRA-era models, while our training set and VideoGen-RewardBench concentrate on state-of-the-art T2V models.
> </details>



![](https://arxiv.org/html/2501.13918/x10.png)

> 🔼 This figure presents a human evaluation comparing the performance of the Flow-DPO model (with a constant beta) against the original pretrained model on a set of challenging prompts focusing on Text Alignment (TA-Hard). The results are broken down across three key dimensions: Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA). The bar chart shows the percentage of wins for each model in each dimension, as well as the percentage of ties observed.  This allows for a detailed assessment of how effectively Flow-DPO improves text alignment in video generation while also considering the potential trade-offs in visual and motion quality.
> <details>
> <summary>read the caption</summary>
> Figure 10: Human evaluation of Flow-DPO on TA-Hard prompt.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T2.9.1">
<tr class="ltx_tr" id="S4.T2.9.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.9.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T2.9.1.1.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T2.9.1.1.2"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.1.2.1">GenAI-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="8" id="S4.T2.9.1.1.3"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.1.3.1">VideoGen-RewardBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.9.1.2.1">Overall Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.9.1.2.2">Overall Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.9.1.2.3">VQ Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.9.1.2.4">MQ Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T2.9.1.2.5">TA Accuracy</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.1">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.2">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.3">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.4">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.5">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.6">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.7">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.8">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.9">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.3.10">w/o Ties</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.1">Random</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.2">33.67</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.3">49.84</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.4">41.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.5">50.30</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.6">47.42</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.7">49.86</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.8">59.07</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.9">49.64</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.10">37.25</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.9.1.4.11">50.40</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.5">
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.1">VideoScore <cite class="ltx_cite ltx_citemacro_citep">(He et al., <a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib17" title="">2024</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.2">49.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.3">71.69</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.4">41.80</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.5">50.22</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.6">47.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.7">47.72</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.8">59.05</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.9">51.09</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.10">37.24</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.5.11">50.34</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.6">
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.1">LiFT* <cite class="ltx_cite ltx_citemacro_citep">(Wang et al., <a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib70" title="">2024b</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.2">37.06</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.3">58.39</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.4">39.08</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.5">57.26</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.6">47.53</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.7">55.97</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.8">59.04</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.9">54.91</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.10">33.79</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.6.11">55.43</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.7">
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.1">VisionRewrd <cite class="ltx_cite ltx_citemacro_citep">(Xu et al., <a class="ltx_ref" href="https://arxiv.org/html/2501.13918v1#bib.bib75" title="">2024a</a>)</cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.2"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.7.2.1">51.56</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.3">72.41</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.4">56.77</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.5">67.59</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.6">47.43</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.7">59.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.8">59.03</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.9">60.98</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.10">46.56</td>
<td class="ltx_td ltx_align_center" id="S4.T2.9.1.7.11">61.15</td>
</tr>
<tr class="ltx_tr" id="S4.T2.9.1.8" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.1"><span class="ltx_text" id="S4.T2.9.1.8.1.1" style="background-color:#E6E6E6;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.2"><span class="ltx_text" id="S4.T2.9.1.8.2.1" style="background-color:#E6E6E6;">49.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.3"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.3.1" style="background-color:#E6E6E6;">72.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.4"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.4.1" style="background-color:#E6E6E6;">61.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.5"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.5.1" style="background-color:#E6E6E6;">73.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.6"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.6.1" style="background-color:#E6E6E6;">59.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.7"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.7.1" style="background-color:#E6E6E6;">75.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.8"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.8.1" style="background-color:#E6E6E6;">66.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.9"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.9.1" style="background-color:#E6E6E6;">74.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.10"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.10.1" style="background-color:#E6E6E6;">53.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.9.1.8.11"><span class="ltx_text ltx_font_bold" id="S4.T2.9.1.8.11.1" style="background-color:#E6E6E6;">72.20</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of the performance of various reward models on two benchmark datasets: GenAI-Bench and VideoGen-RewardBench.  The GenAI-Bench dataset contains videos generated by pre-SOTA models, while the VideoGen-RewardBench dataset contains videos from modern models.  The table reports the overall accuracy, as well as the accuracy for three specific dimensions (Visual Quality, Motion Quality, and Text Alignment) on both datasets. Two accuracy metrics are reported: one including ties in the pairwise comparisons and another excluding ties.  A special note is made for the LiFT model, as its predictions on ties were randomly converted due to the high number of ties it generated. The model with the best performance in each category is shown in bold.
> <details>
> <summary>read the caption</summary>
> Table 2: Preference accuracy on GenAI-Bench and VideoGen-Eval. w/ Ties indicates that accuracy is calculated with ties included (Deutsch et al., 2023), and w/o Ties excludes tied pairs when calculating accuracy. * denotes that for LiFT, ties prediction are randomly converted to chosen/rejected with a 0.5 probability due to a large number of ties produced by the model. Bold: best performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T3.3.1">
<tr class="ltx_tr" id="S4.T3.3.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.1" rowspan="3"><span class="ltx_text" id="S4.T3.3.1.1.1.1">Variants</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1.2" rowspan="3"><span class="ltx_text" id="S4.T3.3.1.1.2.1">RM Type</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T3.3.1.1.3" rowspan="3"><span class="ltx_text" id="S4.T3.3.1.1.3.1">Separate Tokens</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S4.T3.3.1.1.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.4.1">GenAI-Bench</span></td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_tt" colspan="8" id="S4.T3.3.1.1.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.1.5.1">VideoGen-RewardBench</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.3.1.2.1">Overall Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_l ltx_border_t" colspan="2" id="S4.T3.3.1.2.2">Overall Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.3.1.2.3">VQ Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.3.1.2.4">MQ Accuracy</td>
<td class="ltx_td ltx_align_center ltx_border_t" colspan="2" id="S4.T3.3.1.2.5">TA Accuracy</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.1">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.3.2">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.3">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.4">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.5">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.6">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.7">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.8">w/o Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.9">w/ Ties</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.3.10">w/o Ties</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.1">I</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.2">Regression</td>
<td class="ltx_td ltx_border_r ltx_border_t" id="S4.T3.3.1.4.3"></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.4">48.28</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T3.3.1.4.5">71.13</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.6">58.39</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.7">70.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.8">54.23</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.9">73.61</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.10">61.16</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.11">65.56</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.12">52.60</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.3.1.4.13">70.95</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.5">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.1">II</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.2">BT</td>
<td class="ltx_td ltx_border_r" id="S4.T3.3.1.5.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.4">47.74</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.5.5">71.21</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.6">61.22</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.7">72.58</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.8">52.33</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.9"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.5.9.1">77.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.10">59.43</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.11">73.50</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.12">53.06</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.5.13">71.62</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.6">
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.1">III</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.2">BTT</td>
<td class="ltx_td ltx_border_r" id="S4.T3.3.1.6.3"></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.4">48.27</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T3.3.1.6.5">70.89</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.6"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.6.1">61.50</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.7">73.39</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.8"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.6.8.1">60.52</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.9">76.31</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.10">64.64</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.11">72.40</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.12">53.55</td>
<td class="ltx_td ltx_align_center" id="S4.T3.3.1.6.13">72.12</td>
</tr>
<tr class="ltx_tr" id="S4.T3.3.1.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.1"><span class="ltx_text" id="S4.T3.3.1.7.1.1" style="background-color:#E6E6E6;">IV</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.2"><span class="ltx_text" id="S4.T3.3.1.7.2.1" style="background-color:#E6E6E6;">BTT</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.1.7.3"><span class="ltx_text" id="S4.T3.3.1.7.3.1" style="background-color:#E6E6E6;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.4.1" style="background-color:#E6E6E6;">49.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T3.3.1.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.5.1" style="background-color:#E6E6E6;">72.89</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.6"><span class="ltx_text" id="S4.T3.3.1.7.6.1" style="background-color:#E6E6E6;">61.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.7"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.7.1" style="background-color:#E6E6E6;">73.59</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.8"><span class="ltx_text" id="S4.T3.3.1.7.8.1" style="background-color:#E6E6E6;">59.68</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.9"><span class="ltx_text" id="S4.T3.3.1.7.9.1" style="background-color:#E6E6E6;">75.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.10"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.10.1" style="background-color:#E6E6E6;">66.03</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.11"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.11.1" style="background-color:#E6E6E6;">74.70</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.12"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.12.1" style="background-color:#E6E6E6;">53.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.3.1.7.13"><span class="ltx_text ltx_font_bold" id="S4.T3.3.1.7.13.1" style="background-color:#E6E6E6;">72.20</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This ablation study analyzes the impact of different reward model architectures, token separation strategies, and data augmentation techniques on the overall performance of the reward model.  It compares the Bradley-Terry (BT), Bradley-Terry-with-Ties (BTT), and regression-based reward models. It also investigates the effect of using separate tokens for multi-dimensional reward modeling. Finally, it examines the influence of data augmentation techniques on the model's accuracy.  The results are presented as overall accuracy and the accuracy for Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA) dimensions. The bold values highlight the best-performing configurations.
> <details>
> <summary>read the caption</summary>
> Table 3: Ablation study on reward model type, seprate tokens and data augmentation. Bold: Best Performance.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T4.5.1">
<tr class="ltx_tr" id="S5.T4.5.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T4.5.1.2.1" rowspan="2"><span class="ltx_text" id="S5.T4.5.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="6" id="S5.T4.5.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.2.2.1">VBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T4.5.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.2.3.1">VideoGen-Eval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="3" id="S5.T4.5.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.2.4.1">TA-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.1">Total</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.2">Quality</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.3">Sementic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.4">VQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.5">MQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.6">TA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.7">VQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.8">MQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.9">TA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.10">VQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.11">MQ</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.3.12">TA</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.1">Pretrained</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.2">83.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.3"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.4.3.1">84.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.4">78.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.5">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.6">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.7">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.8">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.9">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.10">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.11">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.12">50.0</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T4.5.1.4.13">50.0</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.5">
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.2">82.31</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.3">83.13</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.4">79.04</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.5">51.28</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.6">65.21</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.7">52.84</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.8">61.27</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.9">76.13</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.10">46.35</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.11">57.75</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.12">76.06</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.5.13">57.75</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.6">
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.1">Flow-RWR</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.2">82.27</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.3">83.19</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.4">78.59</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.5">51.55</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.6">63.9</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.7">53.43</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.8">59.05</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.9">69.7</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.10">48.35</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.11">61.97</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.12">78.87</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.6.13">55.71</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.1">
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.1">Flow-DPO (<math alttext="\beta_{t}=\beta(1-t)^{2}" class="ltx_Math" display="inline" id="S5.T4.5.1.1.1.m1.1"><semantics id="S5.T4.5.1.1.1.m1.1a"><mrow id="S5.T4.5.1.1.1.m1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.cmml"><msub id="S5.T4.5.1.1.1.m1.1.1.3" xref="S5.T4.5.1.1.1.m1.1.1.3.cmml"><mi id="S5.T4.5.1.1.1.m1.1.1.3.2" xref="S5.T4.5.1.1.1.m1.1.1.3.2.cmml">β</mi><mi id="S5.T4.5.1.1.1.m1.1.1.3.3" xref="S5.T4.5.1.1.1.m1.1.1.3.3.cmml">t</mi></msub><mo id="S5.T4.5.1.1.1.m1.1.1.2" xref="S5.T4.5.1.1.1.m1.1.1.2.cmml">=</mo><mrow id="S5.T4.5.1.1.1.m1.1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.1.cmml"><mi id="S5.T4.5.1.1.1.m1.1.1.1.3" xref="S5.T4.5.1.1.1.m1.1.1.1.3.cmml">β</mi><mo id="S5.T4.5.1.1.1.m1.1.1.1.2" xref="S5.T4.5.1.1.1.m1.1.1.1.2.cmml">⁢</mo><msup id="S5.T4.5.1.1.1.m1.1.1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.1.1.cmml"><mrow id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.cmml"><mn id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.2" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.2.cmml">1</mn><mo id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.1" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.1.cmml">−</mo><mi id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.3" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.3.cmml">t</mi></mrow><mo id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mn id="S5.T4.5.1.1.1.m1.1.1.1.1.3" xref="S5.T4.5.1.1.1.m1.1.1.1.1.3.cmml">2</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T4.5.1.1.1.m1.1b"><apply id="S5.T4.5.1.1.1.m1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1"><eq id="S5.T4.5.1.1.1.m1.1.1.2.cmml" xref="S5.T4.5.1.1.1.m1.1.1.2"></eq><apply id="S5.T4.5.1.1.1.m1.1.1.3.cmml" xref="S5.T4.5.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T4.5.1.1.1.m1.1.1.3.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S5.T4.5.1.1.1.m1.1.1.3.2.cmml" xref="S5.T4.5.1.1.1.m1.1.1.3.2">𝛽</ci><ci id="S5.T4.5.1.1.1.m1.1.1.3.3.cmml" xref="S5.T4.5.1.1.1.m1.1.1.3.3">𝑡</ci></apply><apply id="S5.T4.5.1.1.1.m1.1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1"><times id="S5.T4.5.1.1.1.m1.1.1.1.2.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.2"></times><ci id="S5.T4.5.1.1.1.m1.1.1.1.3.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.3">𝛽</ci><apply id="S5.T4.5.1.1.1.m1.1.1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T4.5.1.1.1.m1.1.1.1.1.2.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.1">superscript</csymbol><apply id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1"><minus id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.1"></minus><cn id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.2.cmml" type="integer" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.2">1</cn><ci id="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S5.T4.5.1.1.1.m1.1.1.1.1.1.1.1.3">𝑡</ci></apply><cn id="S5.T4.5.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S5.T4.5.1.1.1.m1.1.1.1.1.3">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T4.5.1.1.1.m1.1c">\beta_{t}=\beta(1-t)^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T4.5.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_β ( 1 - italic_t ) start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.2">80.90</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.3">81.52</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.4">78.42</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.5">87.78</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.6"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.6.1">82.36</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.7">51.02</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.8">88.44</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.9"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.9.1">91.23</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.10">28.14</td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.11"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.11.1">84.29</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.12"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.1.12.1">83.10</span></td>
<td class="ltx_td ltx_align_center" id="S5.T4.5.1.1.13">38.03</td>
</tr>
<tr class="ltx_tr" id="S5.T4.5.1.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.1"><span class="ltx_text" id="S5.T4.5.1.7.1.1" style="background-color:#E6E6E6;">Flow-DPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.2"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.2.1" style="background-color:#E6E6E6;">83.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.3"><span class="ltx_text" id="S5.T4.5.1.7.3.1" style="background-color:#E6E6E6;">84.19</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.4"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.4.1" style="background-color:#E6E6E6;">80.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.5"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.5.1" style="background-color:#E6E6E6;">93.42</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.6"><span class="ltx_text" id="S5.T4.5.1.7.6.1" style="background-color:#E6E6E6;">69.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.7"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.7.1" style="background-color:#E6E6E6;">75.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.8"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.8.1" style="background-color:#E6E6E6;">90.95</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.9"><span class="ltx_text" id="S5.T4.5.1.7.9.1" style="background-color:#E6E6E6;">81.01</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.10"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.10.1" style="background-color:#E6E6E6;">68.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.11"><span class="ltx_text" id="S5.T4.5.1.7.11.1" style="background-color:#E6E6E6;">77.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.12"><span class="ltx_text" id="S5.T4.5.1.7.12.1" style="background-color:#E6E6E6;">71.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T4.5.1.7.13"><span class="ltx_text ltx_font_bold" id="S5.T4.5.1.7.13.1" style="background-color:#E6E6E6;">73.24</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of a multi-dimensional video alignment experiment using three different methods: supervised fine-tuning (SFT), reward-weighted regression (Flow-RWR), and direct preference optimization (Flow-DPO).  The experiment focuses on aligning a video generation model with human preferences across three dimensions: Visual Quality (VQ), Motion Quality (MQ), and Text Alignment (TA), with equal weighting (1:1:1).  The table shows that Flow-DPO with a constant beta (β) significantly outperforms SFT and Flow-RWR, achieving high scores in all three dimensions without exhibiting 'reward hacking' (where the model prioritizes high rewards at the expense of overall quality). In contrast, Flow-DPO with a time-dependent beta achieves high VQ and MQ win rates but shows signs of reward hacking.
> <details>
> <summary>read the caption</summary>
> Table 4: Multi-dimensional alignment with VQ:MQ:TA = 1:1:1. Bold: Best performance. Although Flow-DPO with a timestep-dependent β𝛽\betaitalic_β achieves high VQ and MQ reward win rates, it exhibits significant reward hacking. In contrast, Flow-DPO with a constant β𝛽\betaitalic_β achieves high VQ, MQ, and TA scores while avoiding reward hacking.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S5.T5.3.1">
<tr class="ltx_tr" id="S5.T5.3.1.2">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.2.1" rowspan="2"><span class="ltx_text" id="S5.T5.3.1.2.1.1">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="4" id="S5.T5.3.1.2.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.2.2.1">VBench</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.2.3"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.2.3.1">VideoGen-Eval</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T5.3.1.2.4"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.2.4.1">TA-Hard</span></td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.3">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.1">Total</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.2">Quality</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.3">Semantic</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.4">TA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.5">TA</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.3.6">TA</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.1">Pretrained</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.2">83.19</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.3"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.4.3.1">84.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.4">78.46</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.5">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.6">50.00</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T5.3.1.4.7">50.00</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.5">
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.1">SFT</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.2">82.71</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.3">83.48</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.4">79.62</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.5">52.88</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.6">53.81</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.5.7">64.79</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.6">
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.1">Flow-RWR</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.2">82.40</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.3">83.36</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.4">78.58</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.5">59.66</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.6">49.50</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.6.7">66.20</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.1">
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.1">Flow-DPO (<math alttext="\beta_{t}=\beta(1-t)^{2}" class="ltx_Math" display="inline" id="S5.T5.3.1.1.1.m1.1"><semantics id="S5.T5.3.1.1.1.m1.1a"><mrow id="S5.T5.3.1.1.1.m1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.cmml"><msub id="S5.T5.3.1.1.1.m1.1.1.3" xref="S5.T5.3.1.1.1.m1.1.1.3.cmml"><mi id="S5.T5.3.1.1.1.m1.1.1.3.2" xref="S5.T5.3.1.1.1.m1.1.1.3.2.cmml">β</mi><mi id="S5.T5.3.1.1.1.m1.1.1.3.3" xref="S5.T5.3.1.1.1.m1.1.1.3.3.cmml">t</mi></msub><mo id="S5.T5.3.1.1.1.m1.1.1.2" xref="S5.T5.3.1.1.1.m1.1.1.2.cmml">=</mo><mrow id="S5.T5.3.1.1.1.m1.1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.1.cmml"><mi id="S5.T5.3.1.1.1.m1.1.1.1.3" xref="S5.T5.3.1.1.1.m1.1.1.1.3.cmml">β</mi><mo id="S5.T5.3.1.1.1.m1.1.1.1.2" xref="S5.T5.3.1.1.1.m1.1.1.1.2.cmml">⁢</mo><msup id="S5.T5.3.1.1.1.m1.1.1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.1.1.cmml"><mrow id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.cmml"><mo id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.2" stretchy="false" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.cmml">(</mo><mrow id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.cmml"><mn id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.2" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.2.cmml">1</mn><mo id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.1" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.1.cmml">−</mo><mi id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.3" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.3.cmml">t</mi></mrow><mo id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.3" stretchy="false" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.cmml">)</mo></mrow><mn id="S5.T5.3.1.1.1.m1.1.1.1.1.3" xref="S5.T5.3.1.1.1.m1.1.1.1.1.3.cmml">2</mn></msup></mrow></mrow><annotation-xml encoding="MathML-Content" id="S5.T5.3.1.1.1.m1.1b"><apply id="S5.T5.3.1.1.1.m1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1"><eq id="S5.T5.3.1.1.1.m1.1.1.2.cmml" xref="S5.T5.3.1.1.1.m1.1.1.2"></eq><apply id="S5.T5.3.1.1.1.m1.1.1.3.cmml" xref="S5.T5.3.1.1.1.m1.1.1.3"><csymbol cd="ambiguous" id="S5.T5.3.1.1.1.m1.1.1.3.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1.3">subscript</csymbol><ci id="S5.T5.3.1.1.1.m1.1.1.3.2.cmml" xref="S5.T5.3.1.1.1.m1.1.1.3.2">𝛽</ci><ci id="S5.T5.3.1.1.1.m1.1.1.3.3.cmml" xref="S5.T5.3.1.1.1.m1.1.1.3.3">𝑡</ci></apply><apply id="S5.T5.3.1.1.1.m1.1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1"><times id="S5.T5.3.1.1.1.m1.1.1.1.2.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.2"></times><ci id="S5.T5.3.1.1.1.m1.1.1.1.3.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.3">𝛽</ci><apply id="S5.T5.3.1.1.1.m1.1.1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.1"><csymbol cd="ambiguous" id="S5.T5.3.1.1.1.m1.1.1.1.1.2.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.1">superscript</csymbol><apply id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1"><minus id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.1.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.1"></minus><cn id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.2.cmml" type="integer" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.2">1</cn><ci id="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.3.cmml" xref="S5.T5.3.1.1.1.m1.1.1.1.1.1.1.1.3">𝑡</ci></apply><cn id="S5.T5.3.1.1.1.m1.1.1.1.1.3.cmml" type="integer" xref="S5.T5.3.1.1.1.m1.1.1.1.1.3">2</cn></apply></apply></apply></annotation-xml><annotation encoding="application/x-tex" id="S5.T5.3.1.1.1.m1.1c">\beta_{t}=\beta(1-t)^{2}</annotation><annotation encoding="application/x-llamapun" id="S5.T5.3.1.1.1.m1.1d">italic_β start_POSTSUBSCRIPT italic_t end_POSTSUBSCRIPT = italic_β ( 1 - italic_t ) start_POSTSUPERSCRIPT 2 end_POSTSUPERSCRIPT</annotation></semantics></math>)</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.2">82.35</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.3">83.00</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.4">79.75</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.5">63.67</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.6">55.95</td>
<td class="ltx_td ltx_align_center" id="S5.T5.3.1.1.7">71.83</td>
</tr>
<tr class="ltx_tr" id="S5.T5.3.1.7" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.1"><span class="ltx_text" id="S5.T5.3.1.7.1.1" style="background-color:#E6E6E6;">Flow-DPO</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.2"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.7.2.1" style="background-color:#E6E6E6;">83.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.3"><span class="ltx_text" id="S5.T5.3.1.7.3.1" style="background-color:#E6E6E6;">84.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.4"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.7.4.1" style="background-color:#E6E6E6;">79.80</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.5"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.7.5.1" style="background-color:#E6E6E6;">69.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.6"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.7.6.1" style="background-color:#E6E6E6;">65.49</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T5.3.1.7.7"><span class="ltx_text ltx_font_bold" id="S5.T5.3.1.7.7.1" style="background-color:#E6E6E6;">84.51</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of single-dimensional alignment experiments focusing on Text Alignment (TA).  It compares the performance of several methods: Supervised Fine-Tuning (SFT), Reward Weighted Regression for Flow (Flow-RWR), and Direct Preference Optimization for Flow (Flow-DPO) with both a time-dependent and a constant beta parameter (β). The metrics presented likely include overall video quality scores as well as scores specific to TA.  The results show that Flow-DPO with a constant beta value is the most effective approach for aligning the model with human preferences on the TA dimension, achieving high performance without exhibiting undesirable side effects ('reward hacking').
> <details>
> <summary>read the caption</summary>
> Table 5: Single-dimensional alignment with TA. Bold: Best performance. Flow-DPO with a constant β𝛽\betaitalic_β is the most effective method, achieving best performance without reward hacking.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T6.1">
<tr class="ltx_tr" id="S5.T6.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.1.1.1" style="font-size:90%;">VQ:MQ:TA</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.2.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T6.1.1.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.3.1" style="font-size:90%;">MQ</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_tt" id="S5.T6.1.1.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T6.1.1.4.1" style="font-size:90%;">TA</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.2.1.1" style="font-size:90%;">0:0:1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.2.2.1" style="font-size:90%;">60.56</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T6.1.2.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.2.3.1" style="font-size:90%;">46.48</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_t" id="S5.T6.1.2.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.2.4.1" style="font-size:90%;">70.42</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.3">
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.3.1.1" style="font-size:90%;">0.1:0.1:0.8</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.3.2.1" style="font-size:90%;">66.50</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.3.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.3.3.1" style="font-size:90%;">63.73</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.1.3.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.3.4.1" style="font-size:90%;">60.86</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.4">
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.4.1.1" style="font-size:90%;">0.1:0.1:0.6</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.4.2.1" style="font-size:90%;">68.94</span></td>
<td class="ltx_td ltx_align_center" id="S5.T6.1.4.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.4.3.1" style="font-size:90%;">67.59</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center" id="S5.T6.1.4.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.4.4.1" style="font-size:90%;">53.28</span></td>
</tr>
<tr class="ltx_tr" id="S5.T6.1.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.1" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.5.1.1" style="font-size:90%;">0.5:0.5:0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.2" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.5.2.1" style="font-size:90%;">86.43</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T6.1.5.3" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.5.3.1" style="font-size:90%;">93.23</span></td>
<td class="ltx_td ltx_nopad_r ltx_align_center ltx_border_bb" id="S5.T6.1.5.4" style="padding-left:15.0pt;padding-right:15.0pt;"><span class="ltx_text" id="S5.T6.1.5.4.1" style="font-size:90%;">26.65</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents results demonstrating the effectiveness of reward guidance in aligning video generation models.  The experiment uses VideoGen-Eval prompts and applies different weights to visual quality (VQ), motion quality (MQ), and text alignment (TA) objectives during the inference stage.  This allows users to prioritize certain aspects of video quality, such as motion smoothness or text fidelity, leading to personalized video generation.
> <details>
> <summary>read the caption</summary>
> Table 6: Reward guidance using multi-dimensional rewards on VideoGen-Eval prompts. The weighted reward guidence allows users to apply arbitrary weightings to multiple alignment objectives during inference to meet personalized user requirements.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S5.T7.1">
<tr class="ltx_tr" id="S5.T7.1.1">
<td class="ltx_td ltx_border_tt" id="S5.T7.1.1.1" style="padding-left:8.0pt;padding-right:8.0pt;"></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.1.2.1" style="font-size:90%;">VQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text ltx_font_bold" id="S5.T7.1.1.3.1" style="font-size:90%;">MQ</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S5.T7.1.1.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.1.4.1" style="font-size:90%;">TA</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.2.1.1" style="font-size:90%;">VDM w/o noise</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.2.2.1" style="font-size:90%;">37.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.2.3.1" style="font-size:90%;">38.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T7.1.2.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.2.4.1" style="font-size:90%;">52.9</span></td>
</tr>
<tr class="ltx_tr" id="S5.T7.1.3" style="background-color:#E6E6E6;">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.3.1" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.3.1.1" style="font-size:90%;background-color:#E6E6E6;">VDM w/ noise</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.3.2" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.3.2.1" style="font-size:90%;background-color:#E6E6E6;">66.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.3.3" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.3.3.1" style="font-size:90%;background-color:#E6E6E6;">74.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S5.T7.1.3.4" style="padding-left:8.0pt;padding-right:8.0pt;"><span class="ltx_text" id="S5.T7.1.3.4.1" style="font-size:90%;background-color:#E6E6E6;">32.4</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study on the effect of using noisy versus clean latent representations when training a reward model for guiding video generation.  The task is text-to-video generation focusing on Text Alignment (TA), a challenging aspect where the goal is to align the video content with the prompt description.  The results show that a reward model trained with noisy latent representations (VDM w/ noise) effectively guides the video generation process, resulting in improved performance. Conversely, a model trained on clean latents (VDM w/o noise) fails to effectively guide generation when presented with noisy latents, highlighting the importance of training data that reflects the actual generation process.
> <details>
> <summary>read the caption</summary>
> Table 7: Reward guidance using only MQ rewards on TA-Hard. The reward model trained with noised latents guides the generation effectively, while the model trained on cleaned latents fails to provide meaningful gradient guidance for noised latents.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="A3.T8.1">
<tr class="ltx_tr" id="A3.T8.1.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="A3.T8.1.1.1"><span class="ltx_text" id="A3.T8.1.1.1.1" style="font-size:90%;">Evaluation Dimension</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T8.1.1.2"><span class="ltx_text" id="A3.T8.1.1.2.1" style="font-size:90%;">Key Points Summary</span></td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.1.2.1"><span class="ltx_text" id="A3.T8.1.2.1.1" style="font-size:90%;">Visual Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.2.2">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.2.2.1">
<tr class="ltx_tr" id="A3.T8.1.2.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.1.1.1.1.1" style="font-size:90%;">Considering the following dimensions introducted by </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.1.1.1.1.2" style="font-size:90%;">non-dynamic</span><span class="ltx_text" id="A3.T8.1.2.2.1.1.1.1.1.3" style="font-size:90%;"> factors:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.2.1.1.1.2" style="font-size:90%;">Image Reasonableness</span><span class="ltx_text" id="A3.T8.1.2.2.1.2.1.1.1.3" style="font-size:90%;">: The image should be objectively reasonable.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.3.1.1.1.2" style="font-size:90%;">Clarity</span><span class="ltx_text" id="A3.T8.1.2.2.1.3.1.1.1.3" style="font-size:90%;">: The image should be clear and visually sharp.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.4.1.1.1.2" style="font-size:90%;">Detail Richness</span><span class="ltx_text" id="A3.T8.1.2.2.1.4.1.1.1.3" style="font-size:90%;">: The level of intricacy in the generation of details.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.5.1.1.1.2" style="font-size:90%;">Aesthetic Creativity</span><span class="ltx_text" id="A3.T8.1.2.2.1.5.1.1.1.3" style="font-size:90%;">: The generated videos should be aesthetically pleasing.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.6.1.1.1.2" style="font-size:90%;">Safety</span><span class="ltx_text" id="A3.T8.1.2.2.1.6.1.1.1.3" style="font-size:90%;">: The generated video should not contain any disturbing or uncomfortable content.</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="A3.T8.1.3.1"><span class="ltx_text" id="A3.T8.1.3.1.1" style="font-size:90%;">Motion Quality</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T8.1.3.2">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.3.2.1">
<tr class="ltx_tr" id="A3.T8.1.3.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.1.1.1.1.1" style="font-size:90%;">Considering the following dimensions in the </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.1.1.1.1.2" style="font-size:90%;">dynamic</span><span class="ltx_text" id="A3.T8.1.3.2.1.1.1.1.1.3" style="font-size:90%;"> process of the video:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.2.1.1.1.2" style="font-size:90%;">Dynamic Stability</span><span class="ltx_text" id="A3.T8.1.3.2.1.2.1.1.1.3" style="font-size:90%;">: The continuity and stability between frames.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.3.1.1.1.2" style="font-size:90%;">Dynamic Reasonableness</span><span class="ltx_text" id="A3.T8.1.3.2.1.3.1.1.1.3" style="font-size:90%;">: The dynamic movement should align with natural physical laws.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.4.1.1.1.2" style="font-size:90%;">Motion Aesthetic Quality</span><span class="ltx_text" id="A3.T8.1.3.2.1.4.1.1.1.3" style="font-size:90%;">: The dynamic elements should be harmonious and not stiff.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.5.1.1.1.2" style="font-size:90%;">Naturalness of Dynamic Fusion</span><span class="ltx_text" id="A3.T8.1.3.2.1.5.1.1.1.3" style="font-size:90%;">: The edges should be clear during the dynamic process.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.6.1.1.1.2" style="font-size:90%;">Motion Clarity</span><span class="ltx_text" id="A3.T8.1.3.2.1.6.1.1.1.3" style="font-size:90%;">: The motion should be easy to identify.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.7.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.7.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.7.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.7.1.1.1.2" style="font-size:90%;">Dynamic Degree</span><span class="ltx_text" id="A3.T8.1.3.2.1.7.1.1.1.3" style="font-size:90%;">: The movement should be clear, avoiding still scenes.</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r ltx_border_t" id="A3.T8.1.4.1"><span class="ltx_text" id="A3.T8.1.4.1.1" style="font-size:90%;">Text Alignment</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="A3.T8.1.4.2">
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.4.2.1">
<tr class="ltx_tr" id="A3.T8.1.4.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.1.1.1.1.1" style="font-size:90%;">Considering the </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.1.1.1.1.2" style="font-size:90%;">relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.1.1.1.1.3" style="font-size:90%;"> to the input text prompt description.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.2.1.1.1.2" style="font-size:90%;">Subject Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.2.1.1.1.3" style="font-size:90%;"> Relevance to the described subject characteristics and subject details.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.3.1.1.1.2" style="font-size:90%;">Dynamic Information Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.3.1.1.1.3" style="font-size:90%;">: Relevance to actions and postures as described in the text.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.4.1.1.1.2" style="font-size:90%;">Environmental Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.4.1.1.1.3" style="font-size:90%;">: Relevance of the environment to the input text.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.5.1.1.1.2" style="font-size:90%;">Style Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.5.1.1.1.3" style="font-size:90%;">: Relevance to the style descriptions, if exists.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.6.1.1.1.2" style="font-size:90%;">Camera Movement Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.6.1.1.1.3" style="font-size:90%;">: Relevance to the camera descriptions, if exists.</span></span>
</span>
</td>
</tr>
</table>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table summarizes the key aspects annotators should focus on when evaluating videos based on three dimensions: Visual Quality, Motion Quality, and Text Alignment.  For each dimension, it lists several criteria and sub-criteria that annotators should consider, providing detailed guidance for consistent and accurate assessments of video generation quality.
> <details>
> <summary>read the caption</summary>
> Table 8: Key points summary outlined in annotation guidelines for each evaluation dimension.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.2.2.1">
<tr class="ltx_tr" id="A3.T8.1.2.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.1.1.1.1.1" style="font-size:90%;">Considering the following dimensions introducted by </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.1.1.1.1.2" style="font-size:90%;">non-dynamic</span><span class="ltx_text" id="A3.T8.1.2.2.1.1.1.1.1.3" style="font-size:90%;"> factors:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.2.1.1.1.2" style="font-size:90%;">Image Reasonableness</span><span class="ltx_text" id="A3.T8.1.2.2.1.2.1.1.1.3" style="font-size:90%;">: The image should be objectively reasonable.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.3.1.1.1.2" style="font-size:90%;">Clarity</span><span class="ltx_text" id="A3.T8.1.2.2.1.3.1.1.1.3" style="font-size:90%;">: The image should be clear and visually sharp.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.4.1.1.1.2" style="font-size:90%;">Detail Richness</span><span class="ltx_text" id="A3.T8.1.2.2.1.4.1.1.1.3" style="font-size:90%;">: The level of intricacy in the generation of details.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.5.1.1.1.2" style="font-size:90%;">Aesthetic Creativity</span><span class="ltx_text" id="A3.T8.1.2.2.1.5.1.1.1.3" style="font-size:90%;">: The generated videos should be aesthetically pleasing.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.2.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.2.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.2.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.2.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.2.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.2.2.1.6.1.1.1.2" style="font-size:90%;">Safety</span><span class="ltx_text" id="A3.T8.1.2.2.1.6.1.1.1.3" style="font-size:90%;">: The generated video should not contain any disturbing or uncomfortable content.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table compares two benchmark datasets used to evaluate video generation models: GenAI-Bench and VideoGen-RewardBench.  GenAI-Bench focuses on models from before the release of the Sora model (pre-Sora era), while VideoGen-RewardBench evaluates models released after Sora. The table details the number of samples, prompts, models (categorized as pre-Sora and post-Sora), video durations, and the number of human preference annotations in each dataset.  This comparison highlights the differences in the types of models and video characteristics included in each benchmark.
> <details>
> <summary>read the caption</summary>
> Table 9: Comparison between GenAI-Bench and VideoGen-RewardBench. Eariler Models indicates that pre-Sora-era T2V models, and Modern Models indicates that T2V models after Sora.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.3.2.1">
<tr class="ltx_tr" id="A3.T8.1.3.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.1.1.1.1.1" style="font-size:90%;">Considering the following dimensions in the </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.1.1.1.1.2" style="font-size:90%;">dynamic</span><span class="ltx_text" id="A3.T8.1.3.2.1.1.1.1.1.3" style="font-size:90%;"> process of the video:</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.2.1.1.1.2" style="font-size:90%;">Dynamic Stability</span><span class="ltx_text" id="A3.T8.1.3.2.1.2.1.1.1.3" style="font-size:90%;">: The continuity and stability between frames.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.3.1.1.1.2" style="font-size:90%;">Dynamic Reasonableness</span><span class="ltx_text" id="A3.T8.1.3.2.1.3.1.1.1.3" style="font-size:90%;">: The dynamic movement should align with natural physical laws.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.4.1.1.1.2" style="font-size:90%;">Motion Aesthetic Quality</span><span class="ltx_text" id="A3.T8.1.3.2.1.4.1.1.1.3" style="font-size:90%;">: The dynamic elements should be harmonious and not stiff.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.5.1.1.1.2" style="font-size:90%;">Naturalness of Dynamic Fusion</span><span class="ltx_text" id="A3.T8.1.3.2.1.5.1.1.1.3" style="font-size:90%;">: The edges should be clear during the dynamic process.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.6.1.1.1.2" style="font-size:90%;">Motion Clarity</span><span class="ltx_text" id="A3.T8.1.3.2.1.6.1.1.1.3" style="font-size:90%;">: The motion should be easy to identify.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.3.2.1.7">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.3.2.1.7.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.3.2.1.7.1.1">
<span class="ltx_p" id="A3.T8.1.3.2.1.7.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.3.2.1.7.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.3.2.1.7.1.1.1.2" style="font-size:90%;">Dynamic Degree</span><span class="ltx_text" id="A3.T8.1.3.2.1.7.1.1.1.3" style="font-size:90%;">: The movement should be clear, avoiding still scenes.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used for three different video alignment algorithms: Supervised Fine-Tuning (SFT), Reward Weighted Regression for Flow (Flow-RWR), and Direct Preference Optimization for Flow (Flow-DPO).  It lists the training strategy employed (using Low-Rank Adaptation, or LoRA), the LoRA hyperparameters (alpha, dropout, rank, and target modules), the optimizer used (Adam), the learning rate, the number of epochs, and the batch size. For Flow-DPO, the KL divergence regularization parameter (β) is also specified.
> <details>
> <summary>read the caption</summary>
> Table 10: Hyperparameters for Alignment Algorithms
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T8.1.4.2.1">
<tr class="ltx_tr" id="A3.T8.1.4.2.1.1">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.1.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.1.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.1.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.1.1.1.1.1" style="font-size:90%;">Considering the </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.1.1.1.1.2" style="font-size:90%;">relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.1.1.1.1.3" style="font-size:90%;"> to the input text prompt description.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.2">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.2.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.2.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.2.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.2.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.2.1.1.1.2" style="font-size:90%;">Subject Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.2.1.1.1.3" style="font-size:90%;"> Relevance to the described subject characteristics and subject details.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.3">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.3.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.3.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.3.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.3.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.3.1.1.1.2" style="font-size:90%;">Dynamic Information Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.3.1.1.1.3" style="font-size:90%;">: Relevance to actions and postures as described in the text.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.4">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.4.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.4.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.4.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.4.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.4.1.1.1.2" style="font-size:90%;">Environmental Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.4.1.1.1.3" style="font-size:90%;">: Relevance of the environment to the input text.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.5.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.5.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.5.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.5.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.5.1.1.1.2" style="font-size:90%;">Style Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.5.1.1.1.3" style="font-size:90%;">: Relevance to the style descriptions, if exists.</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T8.1.4.2.1.6">
<td class="ltx_td ltx_align_justify ltx_align_top" id="A3.T8.1.4.2.1.6.1">
<span class="ltx_inline-block ltx_align_top" id="A3.T8.1.4.2.1.6.1.1">
<span class="ltx_p" id="A3.T8.1.4.2.1.6.1.1.1" style="width:303.5pt;"><span class="ltx_text" id="A3.T8.1.4.2.1.6.1.1.1.1" style="font-size:90%;">- </span><span class="ltx_text ltx_font_bold" id="A3.T8.1.4.2.1.6.1.1.1.2" style="font-size:90%;">Camera Movement Relevance</span><span class="ltx_text" id="A3.T8.1.4.2.1.6.1.1.1.3" style="font-size:90%;">: Relevance to the camera descriptions, if exists.</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table details the hyperparameters used in training the reward model.  It breaks down the settings for both the Vision-Language Model (VLM) and the Video Diffusion Model (VDM) used in the reward model training process.  Specific hyperparameters shown include training strategy, use of LoRA (Low-Rank Adaptation), LoRA hyperparameters (alpha, dropout, r, target modules), optimizer, learning rate, number of epochs, batch size, and the number of reward dimensions used.
> <details>
> <summary>read the caption</summary>
> Table 11: Hyperparameters for reward modeling.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2501.13918/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2501.13918/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}