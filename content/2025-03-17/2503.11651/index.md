---
title: "VGGT: Visual Geometry Grounded Transformer"
summary: "VGGT: a fast, end-to-end transformer that infers complete 3D scene attributes from multiple views, outperforming optimization-based methods."
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "3D Vision", "🏢 University of Oxford",]
showSummary: true
date: 2025-03-14
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2503.11651 {{< /keyword >}}
{{< keyword icon="writer" >}} Jianyuan Wang et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-03-17 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2503.11651" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2503.11651" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2503.11651/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Traditional 3D reconstruction uses visual geometry methods that require iterative optimization, increasing complexity. Also machine learning assists tasks that cannot be solved by geometry alone, such as feature matching and monocular depth prediction. State-of-the-art SfM methods combine ML and visual geometry end-to-end. But visual geometry still plays a major role which increases computational cost.



This paper introduces **VGGT**, a feed-forward neural network for 3D reconstruction from multiple views. **VGGT** directly predicts 3D attributes like camera parameters, depth maps, and point tracks in a single pass, outperforming optimization-based alternatives. It is based on a standard transformer trained on 3D-annotated datasets. Furthermore, **VGGT** features enhance downstream tasks like point tracking and view synthesis.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} VGGT, a feed-forward transformer, predicts 3D scene attributes (camera parameters, depth maps, point clouds, point tracks) in seconds. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} VGGT often surpasses optimization-based methods, even without iterative post-processing. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} Pretrained VGGT features boost performance in downstream tasks like non-rigid point tracking and novel view synthesis. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
**VGGT** offers a novel approach to 3D scene understanding, reducing reliance on complex optimization. Its potential for fast and versatile 3D reconstruction can impact robotics, AR/VR, and more, spurring new research into end-to-end trainable 3D vision systems.

------
#### Visual Insights



![](https://arxiv.org/html/2503.11651/x2.png)

> 🔼 VGGT, a large feed-forward transformer, processes up to hundreds of images simultaneously to predict 3D scene properties such as camera poses, point clouds, depth maps, and point tracks.  Its design minimizes reliance on explicit 3D inductive biases, relying instead on a large dataset of 3D-annotated data for training. The model's speed is a key feature, performing the complete 3D reconstruction in under one second, often exceeding the accuracy of optimization-based methods without requiring additional processing.
> <details>
> <summary>read the caption</summary>
> Figure 1:  VGGT is a large feed-forward transformer with minimal 3D-inductive biases trained on a trove of 3D-annotated data. It accepts up to hundreds of images and predicts cameras, point maps, depth maps, and point tracks for all images at once in less than a second, which often outperforms optimization-based alternatives without further processing.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S4.T1.18.18">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T1.18.18.19.1">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.18.18.19.1.1" rowspan="2"><span class="ltx_text" id="S4.T1.18.18.19.1.1.1" style="font-size:80%;">Methods</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.18.18.19.1.2">
<span class="ltx_text" id="S4.T1.18.18.19.1.2.1" style="font-size:80%;">Re10K </span><span class="ltx_text ltx_font_italic" id="S4.T1.18.18.19.1.2.2" style="font-size:80%;">(unseen)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_tt" id="S4.T1.18.18.19.1.3"><span class="ltx_text" id="S4.T1.18.18.19.1.3.1" style="font-size:80%;">CO3Dv2</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T1.18.18.19.1.4" rowspan="2"><span class="ltx_text" id="S4.T1.18.18.19.1.4.1" style="font-size:80%;">Time</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.2.2.2">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.1.1.1.1">
<span class="ltx_text" id="S4.T1.1.1.1.1.1" style="font-size:80%;">AUC@30 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.1.1.1.1.m1.1"><semantics id="S4.T1.1.1.1.1.m1.1a"><mo id="S4.T1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.1.1.1.1.m1.1b"><ci id="S4.T1.1.1.1.1.m1.1.1.cmml" xref="S4.T1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.2.2.2.2">
<span class="ltx_text" id="S4.T1.2.2.2.2.1" style="font-size:80%;">AUC@30 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T1.2.2.2.2.m1.1"><semantics id="S4.T1.2.2.2.2.m1.1a"><mo id="S4.T1.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T1.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T1.2.2.2.2.m1.1b"><ci id="S4.T1.2.2.2.2.m1.1.1.cmml" xref="S4.T1.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T1.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3.2">
<span class="ltx_text" id="S4.T1.3.3.3.2.1" style="font-size:80%;">Colmap+SPSG </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.3.3.3.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S4.T1.3.3.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3.3"><span class="ltx_text" id="S4.T1.3.3.3.3.1" style="font-size:80%;">45.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.3.3.3.4"><span class="ltx_text" id="S4.T1.3.3.3.4.1" style="font-size:80%;">25.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.3.3.3.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.3.3.3.1.m1.1"><semantics id="S4.T1.3.3.3.1.m1.1a"><mo id="S4.T1.3.3.3.1.m1.1.1" mathsize="80%" xref="S4.T1.3.3.3.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.3.3.3.1.m1.1b"><csymbol cd="latexml" id="S4.T1.3.3.3.1.m1.1.1.cmml" xref="S4.T1.3.3.3.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.3.3.3.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.3.3.3.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.3.3.3.1.1" style="font-size:80%;"> 15s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.2">
<span class="ltx_text" id="S4.T1.4.4.4.2.1" style="font-size:80%;">PixSfM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.4.4.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="S4.T1.4.4.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.3"><span class="ltx_text" id="S4.T1.4.4.4.3.1" style="font-size:80%;">49.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.4.4.4.4"><span class="ltx_text" id="S4.T1.4.4.4.4.1" style="font-size:80%;">30.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.4.4.4.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="S4.T1.4.4.4.1.m1.1"><semantics id="S4.T1.4.4.4.1.m1.1a"><mo id="S4.T1.4.4.4.1.m1.1.1" mathsize="80%" xref="S4.T1.4.4.4.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="S4.T1.4.4.4.1.m1.1b"><gt id="S4.T1.4.4.4.1.m1.1.1.cmml" xref="S4.T1.4.4.4.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.4.4.4.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="S4.T1.4.4.4.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="S4.T1.4.4.4.1.1" style="font-size:80%;"> 20s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.5.5.5">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.2">
<span class="ltx_text" id="S4.T1.5.5.5.2.1" style="font-size:80%;">PoseDiff </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.5.5.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib124" title=""><span class="ltx_text" style="font-size:90%;">124</span></a><span class="ltx_text" id="S4.T1.5.5.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.3"><span class="ltx_text" id="S4.T1.5.5.5.3.1" style="font-size:80%;">48.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.5.5.5.4"><span class="ltx_text" id="S4.T1.5.5.5.4.1" style="font-size:80%;">66.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.5.5.5.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.5.5.5.1.m1.1"><semantics id="S4.T1.5.5.5.1.m1.1a"><mo id="S4.T1.5.5.5.1.m1.1.1" mathsize="80%" xref="S4.T1.5.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.5.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T1.5.5.5.1.m1.1.1.cmml" xref="S4.T1.5.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.5.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.5.5.5.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.5.5.5.1.1" style="font-size:80%;"> 7s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.6.6.6">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.6.2">
<span class="ltx_text" id="S4.T1.6.6.6.2.1" style="font-size:80%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.6.6.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib129" title=""><span class="ltx_text" style="font-size:90%;">129</span></a><span class="ltx_text" id="S4.T1.6.6.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.6.3"><span class="ltx_text" id="S4.T1.6.6.6.3.1" style="font-size:80%;">67.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.6.6.6.4"><span class="ltx_text" id="S4.T1.6.6.6.4.1" style="font-size:80%;">76.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.6.6.6.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.6.6.6.1.m1.1"><semantics id="S4.T1.6.6.6.1.m1.1a"><mo id="S4.T1.6.6.6.1.m1.1.1" mathsize="80%" xref="S4.T1.6.6.6.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.6.6.6.1.m1.1b"><csymbol cd="latexml" id="S4.T1.6.6.6.1.m1.1.1.cmml" xref="S4.T1.6.6.6.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.6.6.6.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.6.6.6.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.6.6.6.1.1" style="font-size:80%;"> 7s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.7.7.7">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.7.2">
<span class="ltx_text" id="S4.T1.7.7.7.2.1" style="font-size:80%;">MASt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.7.7.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S4.T1.7.7.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.7.3"><span class="ltx_text" id="S4.T1.7.7.7.3.1" style="font-size:80%;">76.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.7.7.7.4"><span class="ltx_text" id="S4.T1.7.7.7.4.1" style="font-size:80%;">81.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.7.7.7.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.7.7.7.1.m1.1"><semantics id="S4.T1.7.7.7.1.m1.1a"><mo id="S4.T1.7.7.7.1.m1.1.1" mathsize="80%" xref="S4.T1.7.7.7.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.7.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T1.7.7.7.1.m1.1.1.cmml" xref="S4.T1.7.7.7.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.7.7.7.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.7.7.7.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.7.7.7.1.1" style="font-size:80%;"> 9s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.8.8.8">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.8.8.2">
<span class="ltx_text" id="S4.T1.8.8.8.2.1" style="font-size:80%;">VGGSfM v2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.8.8.8.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="S4.T1.8.8.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.8.8.3"><span class="ltx_text" id="S4.T1.8.8.8.3.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.8.8.8.4"><span class="ltx_text" id="S4.T1.8.8.8.4.1" style="font-size:80%;">83.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.8.8.8.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.8.8.8.1.m1.1"><semantics id="S4.T1.8.8.8.1.m1.1a"><mo id="S4.T1.8.8.8.1.m1.1.1" mathsize="80%" xref="S4.T1.8.8.8.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.8.8.8.1.m1.1b"><csymbol cd="latexml" id="S4.T1.8.8.8.1.m1.1.1.cmml" xref="S4.T1.8.8.8.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.8.8.8.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.8.8.8.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.8.8.8.1.1" style="font-size:80%;"> 10s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.10.10.10">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.9.9.9.1">
<span class="ltx_text" id="S4.T1.9.9.9.1.1" style="font-size:80%;">MV-DUSt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.9.9.9.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib111" title=""><span class="ltx_text" style="font-size:90%;">111</span></a><span class="ltx_text" id="S4.T1.9.9.9.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.9.9.9.1.4" style="font-size:80%;"> </span><sup class="ltx_sup" id="S4.T1.9.9.9.1.5"><span class="ltx_text ltx_font_italic" id="S4.T1.9.9.9.1.5.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.3"><span class="ltx_text" id="S4.T1.10.10.10.3.1" style="font-size:80%;">71.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.10.10.10.4"><span class="ltx_text" id="S4.T1.10.10.10.4.1" style="font-size:80%;">69.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.10.10.10.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.10.10.10.2.m1.1"><semantics id="S4.T1.10.10.10.2.m1.1a"><mo id="S4.T1.10.10.10.2.m1.1.1" mathsize="80%" xref="S4.T1.10.10.10.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.10.10.10.2.m1.1b"><csymbol cd="latexml" id="S4.T1.10.10.10.2.m1.1.1.cmml" xref="S4.T1.10.10.10.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.10.10.10.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.10.10.10.2.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.10.10.10.2.1" style="font-size:80%;"> 0.6s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.12.12.12">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.11.11.11.1">
<span class="ltx_text" id="S4.T1.11.11.11.1.1" style="font-size:80%;">CUT3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.11.11.11.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib127" title=""><span class="ltx_text" style="font-size:90%;">127</span></a><span class="ltx_text" id="S4.T1.11.11.11.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.11.11.11.1.4" style="font-size:80%;"> </span><sup class="ltx_sup" id="S4.T1.11.11.11.1.5"><span class="ltx_text ltx_font_italic" id="S4.T1.11.11.11.1.5.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.3"><span class="ltx_text" id="S4.T1.12.12.12.3.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.12.12.12.4"><span class="ltx_text" id="S4.T1.12.12.12.4.1" style="font-size:80%;">82.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.12.12.12.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.12.12.12.2.m1.1"><semantics id="S4.T1.12.12.12.2.m1.1a"><mo id="S4.T1.12.12.12.2.m1.1.1" mathsize="80%" xref="S4.T1.12.12.12.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.12.12.12.2.m1.1b"><csymbol cd="latexml" id="S4.T1.12.12.12.2.m1.1.1.cmml" xref="S4.T1.12.12.12.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.12.12.12.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.12.12.12.2.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.12.12.12.2.1" style="font-size:80%;"> 0.6s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.14.14.14">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.13.13.13.1">
<span class="ltx_text" id="S4.T1.13.13.13.1.1" style="font-size:80%;">FLARE </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.13.13.13.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib156" title=""><span class="ltx_text" style="font-size:90%;">156</span></a><span class="ltx_text" id="S4.T1.13.13.13.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.13.13.13.1.4" style="font-size:80%;"> </span><sup class="ltx_sup" id="S4.T1.13.13.13.1.5"><span class="ltx_text ltx_font_italic" id="S4.T1.13.13.13.1.5.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.14.14.3"><span class="ltx_text" id="S4.T1.14.14.14.3.1" style="font-size:80%;">78.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.14.14.14.4"><span class="ltx_text" id="S4.T1.14.14.14.4.1" style="font-size:80%;">83.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.14.14.14.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.14.14.14.2.1" style="font-size:80%;"><math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.14.14.14.2.1.m1.1"><semantics id="S4.T1.14.14.14.2.1.m1.1a"><mo id="S4.T1.14.14.14.2.1.m1.1.1" xref="S4.T1.14.14.14.2.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.14.14.14.2.1.m1.1b"><csymbol cd="latexml" id="S4.T1.14.14.14.2.1.m1.1.1.cmml" xref="S4.T1.14.14.14.2.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.14.14.14.2.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.14.14.14.2.1.m1.1d">∼</annotation></semantics></math> 0.5s</span></td>
</tr>
<tr class="ltx_tr" id="S4.T1.16.16.16">
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.15.15.15.1">
<span class="ltx_text" id="S4.T1.15.15.15.1.1" style="font-size:80%;">Fast3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T1.15.15.15.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib141" title=""><span class="ltx_text" style="font-size:90%;">141</span></a><span class="ltx_text" id="S4.T1.15.15.15.1.3.2" style="font-size:80%;">]</span></cite><span class="ltx_text" id="S4.T1.15.15.15.1.4" style="font-size:80%;"> </span><sup class="ltx_sup" id="S4.T1.15.15.15.1.5"><span class="ltx_text ltx_font_italic" id="S4.T1.15.15.15.1.5.1" style="font-size:80%;">‡</span></sup>
</td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.3"><span class="ltx_text" id="S4.T1.16.16.16.3.1" style="font-size:80%;">72.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_r" id="S4.T1.16.16.16.4"><span class="ltx_text" id="S4.T1.16.16.16.4.1" style="font-size:80%;">82.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T1.16.16.16.2">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.16.16.16.2.m1.1"><semantics id="S4.T1.16.16.16.2.m1.1a"><mo id="S4.T1.16.16.16.2.m1.1.1" mathsize="80%" xref="S4.T1.16.16.16.2.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.16.16.16.2.m1.1b"><csymbol cd="latexml" id="S4.T1.16.16.16.2.m1.1.1.cmml" xref="S4.T1.16.16.16.2.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.16.16.16.2.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.16.16.16.2.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.16.16.16.2.1" style="font-size:80%;"> 0.2s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.17.17.17">
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.17.17.17.2"><span class="ltx_text" id="S4.T1.17.17.17.2.1" style="font-size:80%;">Ours (Feed-Forward)</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.17.17.17.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.17.17.3.1" style="font-size:80%;">85.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_r ltx_border_t" id="S4.T1.17.17.17.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T1.17.17.17.4.1" style="font-size:80%;">88.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T1.17.17.17.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.17.17.17.1.m1.1"><semantics id="S4.T1.17.17.17.1.m1.1a"><mo id="S4.T1.17.17.17.1.m1.1.1" mathsize="80%" xref="S4.T1.17.17.17.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.17.17.17.1.m1.1b"><csymbol cd="latexml" id="S4.T1.17.17.17.1.m1.1.1.cmml" xref="S4.T1.17.17.17.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.17.17.17.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.17.17.17.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text ltx_font_bold" id="S4.T1.17.17.17.1.1" style="font-size:80%;"> 0.2s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T1.18.18.18">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.18.18.18.2"><span class="ltx_text" id="S4.T1.18.18.18.2.1" style="font-size:80%;">Ours (with BA)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.18.18.18.3"><span class="ltx_text ltx_font_bold" id="S4.T1.18.18.18.3.1" style="font-size:80%;">93.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_r" id="S4.T1.18.18.18.4"><span class="ltx_text ltx_font_bold" id="S4.T1.18.18.18.4.1" style="font-size:80%;">91.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T1.18.18.18.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T1.18.18.18.1.m1.1"><semantics id="S4.T1.18.18.18.1.m1.1a"><mo id="S4.T1.18.18.18.1.m1.1.1" mathsize="80%" xref="S4.T1.18.18.18.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T1.18.18.18.1.m1.1b"><csymbol cd="latexml" id="S4.T1.18.18.18.1.m1.1.1.cmml" xref="S4.T1.18.18.18.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T1.18.18.18.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T1.18.18.18.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T1.18.18.18.1.1" style="font-size:80%;"> 1.8s</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}

> 🔼 Table 1 presents a comparison of various methods for camera pose estimation, evaluated using the RealEstate10K and CO3Dv2 datasets.  Ten random frames from each dataset were used for evaluation.  The metrics reported (AUC@30, RRA, RTA, Time) are higher is better, meaning higher values are more accurate. Importantly, none of the methods were trained on the RealEstate10K dataset, making this a true test of generalization performance.  Runtimes were measured using a single NVIDIA H100 GPU.  A '+' symbol next to the method name indicates that it represents concurrent work, meaning it was published around the same time as the paper this table comes from.
> <details>
> <summary>read the caption</summary>
> Table 1: Camera Pose Estimation on RealEstate10K [161] and CO3Dv2 [88] with 10 random frames. All metrics the higher the better. None of the methods were trained on the Re10K dataset. Runtime were measured using one H100 GPU. Methods marked with ‡ represent concurrent work.
> </details>





### In-depth insights


#### 3D Neural Nets
3D neural networks represent a significant advancement in computer vision, enabling machines to directly process and understand three-dimensional data. Unlike traditional methods that rely on 2D image projections, these networks operate on volumetric data such as point clouds or voxels, offering a more complete geometric representation. This approach is **particularly beneficial for tasks like object recognition, scene understanding, and robotic navigation**, where spatial relationships and 3D structures are crucial. Recent progress has focused on developing efficient architectures and training strategies to handle the computational demands of processing 3D data, leading to improved accuracy and scalability. The ability to learn directly from 3D data **reduces the need for complex preprocessing steps and hand-engineered features**, paving the way for more robust and versatile 3D vision systems.

#### Multi-view Power
Multi-view approaches in computer vision leverage information from multiple images of the same scene to enhance understanding and reconstruction. The power of multi-view stems from its ability to resolve ambiguities inherent in single-view analysis, enabling more robust and accurate estimations of 3D geometry, camera parameters, and object relationships. **By fusing data from different perspectives,** algorithms can overcome occlusions, improve depth perception, and refine feature matching. **This leads to superior performance in tasks like 3D reconstruction**, simultaneous localization and mapping (SLAM), and object recognition. **The key challenge lies in effectively integrating information from multiple views**, addressing issues such as viewpoint variations, illumination changes, and computational complexity. Advanced techniques like bundle adjustment and deep learning-based multi-view stereo have significantly advanced the field, pushing the boundaries of what's achievable in 3D scene understanding.

#### VGGT's Versatility
VGGT's versatility stems from its **feed-forward design**, enabling rapid processing of multiple images. Unlike methods requiring iterative optimization or pairwise fusion, VGGT directly infers 3D scene attributes in a single pass. Its architecture, based on a **standard transformer** with alternating attention, minimizes specialized 3D inductive biases, allowing it to learn from diverse 3D-annotated datasets. This adaptability allows VGGT to achieve state-of-the-art results across various 3D tasks, including **camera pose estimation, multi-view depth estimation, and point tracking**. Furthermore, VGGT features can be **fine-tuned** for downstream tasks like novel view synthesis, demonstrating its potential as a versatile feature extractor. The ability to process hundreds of images simultaneously and its competitive performance compared to optimization-based methods, highlight VGGT's broad applicability and potential impact.

#### AA Transformer
The AA Transformer, likely short for **Alternating Attention Transformer**, suggests an architecture employing alternating attention mechanisms. This could involve alternating between **different forms of attention**, such as self-attention and cross-attention, or between **different granularities of attention**, like local and global attention. The motivation likely stems from capturing both fine-grained details and long-range dependencies effectively. By alternating, the model might prevent over-reliance on one type of attention, promoting a more balanced representation. The architecture's effectiveness is shown to improve **performance gains** while also demonstrating that it is **permutation equivariant** for all but the first frame.

#### BA Refinement
Bundle Adjustment (BA) refinement enhances the **accuracy** of 3D reconstruction by iteratively optimizing camera parameters and 3D point positions. It **minimizes the reprojection error**, the difference between the projected 3D points and their corresponding image locations. **VGGT's** initial estimates provide a solid foundation, making BA more efficient and less prone to local minima. Unlike traditional methods needing triangulation and refinement, VGGT directly predicts accurate maps, streamlining the BA process. While VGGT alone outperforms alternatives, combining it with BA yields state-of-the-art results. BA can serve as supervision signal.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2503.11651/x3.png)

> 🔼 This figure illustrates the architecture of the Visual Geometry Grounded Transformer (VGGT) model.  The process begins with input images that are initially divided into patches using the DINO (DETR with Improved DeNoising) method. These image patches are then converted into tokens, which are numerical representations used by the transformer network. To predict camera parameters, the model adds special 'camera tokens' to the image tokens. The core of VGGT is a transformer network that uses alternating layers of frame-wise and global self-attention. Frame-wise attention processes information within each individual image, while global self-attention integrates information across all input images.  Finally, a dedicated 'camera head' in the network produces the final estimates for camera extrinsics (position and orientation) and intrinsics (focal length and sensor dimensions). A separate DPT (Depth Prediction Transformer) head generates the dense outputs such as depth maps and point clouds.
> <details>
> <summary>read the caption</summary>
> Figure 2: Architecture Overview. Our model first patchifies the input images into tokens by DINO, and appends camera tokens for camera prediction. It then alternates between frame-wise and global self attention layers. A camera head makes the final prediction for camera extrinsics and intrinsics, and a DPT [87] head for any dense output.
> </details>



![](https://arxiv.org/html/2503.11651/x4.png)

> 🔼 This figure qualitatively compares the 3D point cloud predictions of the proposed VGGT method and the DUSt3R method on real-world images.  It showcases VGGT's superior performance in three scenarios: reconstructing the geometry of an oil painting (where DUSt3R produces a distorted plane), recovering a 3D scene from only two images with no overlap (a task DUSt3R fails), and handling an image with repetitive textures (where VGGT maintains high quality).  The figure highlights VGGT's ability to produce accurate 3D reconstructions even in challenging situations, unlike DUSt3R, which is limited by memory constraints for scenes with more than 32 images.
> <details>
> <summary>read the caption</summary>
> Figure 3: Qualitative comparison of our predicted 3D points to DUSt3R on in-the-wild images. As shown in the top row, our method successfully predicts the geometric structure of an oil painting, while DUSt3R predicts a slightly distorted plane. In the second row, our method correctly recovers a 3D scene from two images with no overlap, while DUSt3R fails. The third row provides a challenging example with repeated textures, while our prediction is still high-quality. We do not include examples with more than 32 frames, as DUSt3R runs out of memory beyond this limit.
> </details>



![](https://arxiv.org/html/2503.11651/x5.png)

> 🔼 Figure 4 presents supplementary visualizations enhancing the understanding of point map estimation from the paper.  It showcases multiple examples of 3D point cloud reconstructions, with camera frustums overlaid to clearly illustrate the estimated camera poses and orientations for each scene.  The caption encourages users to explore an interactive demo for an improved and more detailed visualization experience, suggesting that the static figure is a limited representation of the full capabilities of the model.
> <details>
> <summary>read the caption</summary>
> Figure 4: Additional Visualizations of Point Map Estimation. Camera frustums illustrate the estimated camera poses. Explore our interactive demo for better visualization quality.
> </details>



![](https://arxiv.org/html/2503.11651/x6.png)

> 🔼 Figure 5 demonstrates the application of VGGT's tracking module for both static and dynamic scenes. The top row showcases the tracking module's ability to generate keypoint tracks from an unordered set of images depicting a static scene.  The bottom row illustrates how finetuning VGGT's backbone improves the performance of a dynamic point tracker (CoTracker), which typically processes sequential inputs. This highlights VGGT's versatility and adaptability to various tracking scenarios.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visualization of Rigid and Dynamic Point Tracking. Top: VGGT’s tracking module 𝒯𝒯\mathcal{T}caligraphic_T outputs keypoint tracks for an unordered set of input images depicting a static scene. Bottom: We finetune the backbone of VGGT to enhance a dynamic point tracker CoTracker [56], which processes sequential inputs.
> </details>



![](https://arxiv.org/html/2503.11651/x7.png)

> 🔼 This figure showcases qualitative examples of novel view synthesis.  The top row displays the input images used for synthesis. The middle row shows the corresponding ground truth images from the target viewpoints, providing a reference for comparison. The bottom row presents the novel views synthesized by the VGGT model, illustrating its ability to generate realistic and visually consistent images from unseen perspectives.
> <details>
> <summary>read the caption</summary>
> Figure 6: Qualitative Examples of Novel View Synthesis. The top row shows the input images, the middle row displays the ground truth images from target viewpoints, and the bottom row presents our synthesized images.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.3">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T2.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.4"><span class="ltx_text" id="S4.T2.3.3.4.1" style="font-size:80%;">Known GT</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.5" rowspan="2"><span class="ltx_text" id="S4.T2.3.3.5.1" style="font-size:80%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.1.1.1" rowspan="2"><span class="ltx_text" id="S4.T2.1.1.1.1" style="font-size:80%;">Acc.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.1.1.1.1.m1.1"><semantics id="S4.T2.1.1.1.1.m1.1a"><mo id="S4.T2.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T2.1.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.1.1.1.1.m1.1b"><ci id="S4.T2.1.1.1.1.m1.1.1.cmml" xref="S4.T2.1.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.1.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.1.1.1.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.2.2.2" rowspan="2"><span class="ltx_text" id="S4.T2.2.2.2.1" style="font-size:80%;">Comp.<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.2.2.2.1.m1.1"><semantics id="S4.T2.2.2.2.1.m1.1a"><mo id="S4.T2.2.2.2.1.m1.1.1" stretchy="false" xref="S4.T2.2.2.2.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.2.2.2.1.m1.1b"><ci id="S4.T2.2.2.2.1.m1.1.1.cmml" xref="S4.T2.2.2.2.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.2.2.2.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.2.2.2.1.m1.1d">↓</annotation></semantics></math></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.3.3.3" rowspan="2"><span class="ltx_text" id="S4.T2.3.3.3.1" style="font-size:80%;">Overall<math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T2.3.3.3.1.m1.1"><semantics id="S4.T2.3.3.3.1.m1.1a"><mo id="S4.T2.3.3.3.1.m1.1.1" stretchy="false" xref="S4.T2.3.3.3.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T2.3.3.3.1.m1.1b"><ci id="S4.T2.3.3.3.1.m1.1.1.cmml" xref="S4.T2.3.3.3.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T2.3.3.3.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T2.3.3.3.1.m1.1d">↓</annotation></semantics></math></span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.4.1">
<td class="ltx_td ltx_align_center" id="S4.T2.3.4.1.1"><span class="ltx_text" id="S4.T2.3.4.1.1.1" style="font-size:80%;">camera</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.5.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.2.1"><span class="ltx_text" id="S4.T2.3.5.2.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.2.2">
<span class="ltx_text" id="S4.T2.3.5.2.2.1" style="font-size:80%;">Gipuma </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.5.2.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S4.T2.3.5.2.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.2.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.5.2.3.1" style="font-size:80%;">0.283</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.2.4"><span class="ltx_text" id="S4.T2.3.5.2.4.1" style="font-size:80%;">0.873</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.5.2.5"><span class="ltx_text" id="S4.T2.3.5.2.5.1" style="font-size:80%;">0.578</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.6.3">
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3.1"><span class="ltx_text" id="S4.T2.3.6.3.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3.2">
<span class="ltx_text" id="S4.T2.3.6.3.2.1" style="font-size:80%;">MVSNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.6.3.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib144" title=""><span class="ltx_text" style="font-size:90%;">144</span></a><span class="ltx_text" id="S4.T2.3.6.3.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3.3"><span class="ltx_text" id="S4.T2.3.6.3.3.1" style="font-size:80%;">0.396</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3.4"><span class="ltx_text" id="S4.T2.3.6.3.4.1" style="font-size:80%;">0.527</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.6.3.5"><span class="ltx_text" id="S4.T2.3.6.3.5.1" style="font-size:80%;">0.462</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.7.4">
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.1"><span class="ltx_text" id="S4.T2.3.7.4.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.2">
<span class="ltx_text" id="S4.T2.3.7.4.2.1" style="font-size:80%;">CIDER </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.7.4.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib139" title=""><span class="ltx_text" style="font-size:90%;">139</span></a><span class="ltx_text" id="S4.T2.3.7.4.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.3"><span class="ltx_text" id="S4.T2.3.7.4.3.1" style="font-size:80%;">0.417</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.4"><span class="ltx_text" id="S4.T2.3.7.4.4.1" style="font-size:80%;">0.437</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.7.4.5"><span class="ltx_text" id="S4.T2.3.7.4.5.1" style="font-size:80%;">0.427</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.8.5">
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.1"><span class="ltx_text" id="S4.T2.3.8.5.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.2">
<span class="ltx_text" id="S4.T2.3.8.5.2.1" style="font-size:80%;">PatchmatchNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.8.5.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib121" title=""><span class="ltx_text" style="font-size:90%;">121</span></a><span class="ltx_text" id="S4.T2.3.8.5.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.3"><span class="ltx_text" id="S4.T2.3.8.5.3.1" style="font-size:80%;">0.427</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.4"><span class="ltx_text" id="S4.T2.3.8.5.4.1" style="font-size:80%;">0.377</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.8.5.5"><span class="ltx_text" id="S4.T2.3.8.5.5.1" style="font-size:80%;">0.417</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.9.6">
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.1"><span class="ltx_text" id="S4.T2.3.9.6.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.2">
<span class="ltx_text" id="S4.T2.3.9.6.2.1" style="font-size:80%;">MASt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.9.6.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="S4.T2.3.9.6.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.3"><span class="ltx_text" id="S4.T2.3.9.6.3.1" style="font-size:80%;">0.403</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.4"><span class="ltx_text" id="S4.T2.3.9.6.4.1" style="font-size:80%;">0.344</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.9.6.5"><span class="ltx_text" id="S4.T2.3.9.6.5.1" style="font-size:80%;">0.374</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.10.7">
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.1"><span class="ltx_text" id="S4.T2.3.10.7.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.2">
<span class="ltx_text" id="S4.T2.3.10.7.2.1" style="font-size:80%;">GeoMVSNet </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.10.7.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib157" title=""><span class="ltx_text" style="font-size:90%;">157</span></a><span class="ltx_text" id="S4.T2.3.10.7.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.3"><span class="ltx_text" id="S4.T2.3.10.7.3.1" style="font-size:80%;">0.331</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.10.7.4.1" style="font-size:80%;">0.259</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.3.10.7.5"><span class="ltx_text ltx_font_bold" id="S4.T2.3.10.7.5.1" style="font-size:80%;">0.295</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.11.8">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.11.8.1"><span class="ltx_text" id="S4.T2.3.11.8.1.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.11.8.2">
<span class="ltx_text" id="S4.T2.3.11.8.2.1" style="font-size:80%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T2.3.11.8.2.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib129" title=""><span class="ltx_text" style="font-size:90%;">129</span></a><span class="ltx_text" id="S4.T2.3.11.8.2.3.2" style="font-size:80%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.11.8.3"><span class="ltx_text" id="S4.T2.3.11.8.3.1" style="font-size:80%;">2.677</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.11.8.4"><span class="ltx_text" id="S4.T2.3.11.8.4.1" style="font-size:80%;">0.805</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.3.11.8.5"><span class="ltx_text" id="S4.T2.3.11.8.5.1" style="font-size:80%;">1.741</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.3.12.9">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.12.9.1"><span class="ltx_text" id="S4.T2.3.12.9.1.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.12.9.2"><span class="ltx_text" id="S4.T2.3.12.9.2.1" style="font-size:80%;">Ours</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.12.9.3"><span class="ltx_text ltx_font_bold" id="S4.T2.3.12.9.3.1" style="font-size:80%;">0.389</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.12.9.4"><span class="ltx_text ltx_font_bold" id="S4.T2.3.12.9.4.1" style="font-size:80%;">0.374</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.3.12.9.5"><span class="ltx_text ltx_font_bold" id="S4.T2.3.12.9.5.1" style="font-size:80%;">0.382</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of different methods for dense multi-view stereo (MVS) estimation on the DTU dataset.  The methods are categorized into two groups: those that utilize ground-truth camera poses (top section) and those that do not (bottom section).  The performance is evaluated using Accuracy, Completeness, and Overall metrics (average of Accuracy and Completeness).  This demonstrates the capabilities of methods operating under ideal conditions versus those working with real-world constraints where ground truth camera information might not be available.
> <details>
> <summary>read the caption</summary>
> Table 2:  Dense MVS Estimation on the DTU [51] Dataset. Methods operating with known ground-truth camera are in the top part of the table, while the bottom part contains the methods that do not know the ground-truth camera.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T3.7">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.4"><span class="ltx_text" id="S4.T3.3.3.4.1" style="font-size:80%;">Methods</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.1.1.1">
<span class="ltx_text" id="S4.T3.1.1.1.1" style="font-size:80%;">Acc.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.1.1.1.m1.1"><semantics id="S4.T3.1.1.1.m1.1a"><mo id="S4.T3.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.1.1.1.m1.1b"><ci id="S4.T3.1.1.1.m1.1.1.cmml" xref="S4.T3.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.2.2.2">
<span class="ltx_text" id="S4.T3.2.2.2.1" style="font-size:80%;">Comp.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.2.2.2.m1.1"><semantics id="S4.T3.2.2.2.m1.1a"><mo id="S4.T3.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.2.2.2.m1.1b"><ci id="S4.T3.2.2.2.m1.1.1.cmml" xref="S4.T3.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.3">
<span class="ltx_text" id="S4.T3.3.3.3.1" style="font-size:80%;">Overall</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T3.3.3.3.m1.1"><semantics id="S4.T3.3.3.3.m1.1a"><mo id="S4.T3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T3.3.3.3.m1.1b"><ci id="S4.T3.3.3.3.m1.1.1.cmml" xref="S4.T3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T3.3.3.5"><span class="ltx_text" id="S4.T3.3.3.5.1" style="font-size:80%;">Time</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T3.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.2"><span class="ltx_text" id="S4.T3.4.4.2.1" style="font-size:80%;">DUSt3R</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.3"><span class="ltx_text" id="S4.T3.4.4.3.1" style="font-size:80%;">1.167</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.4"><span class="ltx_text" id="S4.T3.4.4.4.1" style="font-size:80%;">0.842</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.5"><span class="ltx_text" id="S4.T3.4.4.5.1" style="font-size:80%;">1.005</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.4.4.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.4.4.1.m1.1"><semantics id="S4.T3.4.4.1.m1.1a"><mo id="S4.T3.4.4.1.m1.1.1" mathsize="80%" xref="S4.T3.4.4.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.4.4.1.m1.1b"><csymbol cd="latexml" id="S4.T3.4.4.1.m1.1.1.cmml" xref="S4.T3.4.4.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.4.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.4.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T3.4.4.1.1" style="font-size:80%;"> 7s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.5.5">
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.2"><span class="ltx_text" id="S4.T3.5.5.2.1" style="font-size:80%;">MASt3R</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.3"><span class="ltx_text" id="S4.T3.5.5.3.1" style="font-size:80%;">0.968</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.4"><span class="ltx_text" id="S4.T3.5.5.4.1" style="font-size:80%;">0.684</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.5"><span class="ltx_text" id="S4.T3.5.5.5.1" style="font-size:80%;">0.826</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.5.5.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.5.5.1.m1.1"><semantics id="S4.T3.5.5.1.m1.1a"><mo id="S4.T3.5.5.1.m1.1.1" mathsize="80%" xref="S4.T3.5.5.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.5.5.1.m1.1b"><csymbol cd="latexml" id="S4.T3.5.5.1.m1.1.1.cmml" xref="S4.T3.5.5.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.5.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.5.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T3.5.5.1.1" style="font-size:80%;"> 9s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.6.6">
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.2"><span class="ltx_text" id="S4.T3.6.6.2.1" style="font-size:80%;">Ours (Point)</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.6.3.1" style="font-size:80%;">0.901</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.6.4.1" style="font-size:80%;">0.518</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T3.6.6.5.1" style="font-size:80%;">0.709</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.6.6.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.6.6.1.m1.1"><semantics id="S4.T3.6.6.1.m1.1a"><mo id="S4.T3.6.6.1.m1.1.1" mathsize="80%" xref="S4.T3.6.6.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.6.6.1.m1.1b"><csymbol cd="latexml" id="S4.T3.6.6.1.m1.1.1.cmml" xref="S4.T3.6.6.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.6.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.6.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T3.6.6.1.1" style="font-size:80%;"> 0.2s</span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.7">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.2"><span class="ltx_text" id="S4.T3.7.7.2.1" style="font-size:80%;">Ours (Depth + Cam)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.3"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.3.1" style="font-size:80%;">0.873</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.4"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.4.1" style="font-size:80%;">0.482</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.5"><span class="ltx_text ltx_font_bold" id="S4.T3.7.7.5.1" style="font-size:80%;">0.677</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.7.7.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="S4.T3.7.7.1.m1.1"><semantics id="S4.T3.7.7.1.m1.1a"><mo id="S4.T3.7.7.1.m1.1.1" mathsize="80%" xref="S4.T3.7.7.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="S4.T3.7.7.1.m1.1b"><csymbol cd="latexml" id="S4.T3.7.7.1.m1.1.1.cmml" xref="S4.T3.7.7.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.7.7.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.7.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="S4.T3.7.7.1.1" style="font-size:80%;"> 0.2s</span>
</td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a comparison of point map estimation results on the ETH3D dataset among different methods.  It highlights the speed advantage of the proposed feed-forward approach (VGGT) compared to optimization-based methods (DUSt3R and MASt3R) which rely on global alignment. The table also shows that combining depth and camera predictions to construct the point cloud (Ours (Depth + Cam)) results in better accuracy than directly using the point map head output (Ours (Point)).  Metrics used include Accuracy, Completeness, and Overall (Chamfer distance).
> <details>
> <summary>read the caption</summary>
> Table 3:  Point Map Estimation on ETH3D [97]. DUSt3R and MASt3R use global alignment while ours is feed-forward and, hence, much faster. The row Ours (Point) indicates the results using the point map head directly, while Ours (Depth + Cam) denotes constructing point clouds from the depth map head combined with the camera head.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T4.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T4.3.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T4.3.3.4"><span class="ltx_text" id="S4.T4.3.3.4.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:80%;">AUC@5 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.2.2.2">
<span class="ltx_text" id="S4.T4.2.2.2.1" style="font-size:80%;">AUC@10 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.2.2.2.m1.1"><semantics id="S4.T4.2.2.2.m1.1a"><mo id="S4.T4.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.2.2.2.m1.1b"><ci id="S4.T4.2.2.2.m1.1.1.cmml" xref="S4.T4.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T4.3.3.3">
<span class="ltx_text" id="S4.T4.3.3.3.1" style="font-size:80%;">AUC@20 </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.3.3.3.m1.1"><semantics id="S4.T4.3.3.3.m1.1a"><mo id="S4.T4.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T4.3.3.3.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.3.3.3.m1.1b"><ci id="S4.T4.3.3.3.m1.1.1.cmml" xref="S4.T4.3.3.3.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.3.3.3.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.3.3.3.m1.1d">↑</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T4.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T4.3.4.1.1">
<span class="ltx_text" id="S4.T4.3.4.1.1.1" style="font-size:80%;">SuperGlue </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.3.4.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib92" title=""><span class="ltx_text" style="font-size:90%;">92</span></a><span class="ltx_text" id="S4.T4.3.4.1.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.2"><span class="ltx_text" id="S4.T4.3.4.1.2.1" style="font-size:80%;">16.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.3"><span class="ltx_text" id="S4.T4.3.4.1.3.1" style="font-size:80%;">33.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.3.4.1.4"><span class="ltx_text" id="S4.T4.3.4.1.4.1" style="font-size:80%;">51.8</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.5.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.5.2.1">
<span class="ltx_text" id="S4.T4.3.5.2.1.1" style="font-size:80%;">LoFTR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.3.5.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib105" title=""><span class="ltx_text" style="font-size:90%;">105</span></a><span class="ltx_text" id="S4.T4.3.5.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.2"><span class="ltx_text" id="S4.T4.3.5.2.2.1" style="font-size:80%;">22.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.3"><span class="ltx_text" id="S4.T4.3.5.2.3.1" style="font-size:80%;">40.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.5.2.4"><span class="ltx_text" id="S4.T4.3.5.2.4.1" style="font-size:80%;">57.6</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.6.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.6.3.1">
<span class="ltx_text" id="S4.T4.3.6.3.1.1" style="font-size:80%;">DKM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.3.6.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib32" title=""><span class="ltx_text" style="font-size:90%;">32</span></a><span class="ltx_text" id="S4.T4.3.6.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.2"><span class="ltx_text" id="S4.T4.3.6.3.2.1" style="font-size:80%;">29.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.3"><span class="ltx_text" id="S4.T4.3.6.3.3.1" style="font-size:80%;">50.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.6.3.4"><span class="ltx_text" id="S4.T4.3.6.3.4.1" style="font-size:80%;">68.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.7.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.7.4.1">
<span class="ltx_text" id="S4.T4.3.7.4.1.1" style="font-size:80%;">CasMTR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.3.7.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib9" title=""><span class="ltx_text" style="font-size:90%;">9</span></a><span class="ltx_text" id="S4.T4.3.7.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.7.4.2"><span class="ltx_text" id="S4.T4.3.7.4.2.1" style="font-size:80%;">27.1</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.7.4.3"><span class="ltx_text" id="S4.T4.3.7.4.3.1" style="font-size:80%;">47.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.7.4.4"><span class="ltx_text" id="S4.T4.3.7.4.4.1" style="font-size:80%;">64.4</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.8.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T4.3.8.5.1">
<span class="ltx_text" id="S4.T4.3.8.5.1.1" style="font-size:80%;">Roma </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T4.3.8.5.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib33" title=""><span class="ltx_text" style="font-size:90%;">33</span></a><span class="ltx_text" id="S4.T4.3.8.5.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T4.3.8.5.2"><span class="ltx_text" id="S4.T4.3.8.5.2.1" style="font-size:80%;">31.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.8.5.3"><span class="ltx_text" id="S4.T4.3.8.5.3.1" style="font-size:80%;">53.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.3.8.5.4"><span class="ltx_text" id="S4.T4.3.8.5.4.1" style="font-size:80%;">70.9</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.3.9.6">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb ltx_border_t" id="S4.T4.3.9.6.1"><span class="ltx_text" id="S4.T4.3.9.6.1.1" style="font-size:80%;">Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.9.6.2"><span class="ltx_text ltx_font_bold" id="S4.T4.3.9.6.2.1" style="font-size:80%;">33.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.9.6.3"><span class="ltx_text ltx_font_bold" id="S4.T4.3.9.6.3.1" style="font-size:80%;">55.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.3.9.6.4"><span class="ltx_text ltx_font_bold" id="S4.T4.3.9.6.4.1" style="font-size:80%;">73.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 4 presents a comparison of different methods for two-view image matching on the ScanNet-1500 dataset.  The table shows the performance of various techniques, including the proposed VGGT method and state-of-the-art approaches, in terms of AUC (Area Under the Curve) scores, a common metric for evaluating matching performance.  The results demonstrate that despite not being specifically designed for two-view matching, VGGT outperforms the existing best-performing method, Roma, indicating its strong generalizability across different 3D vision tasks.
> <details>
> <summary>read the caption</summary>
> Table 4: Two-View matching comparison on ScanNet-1500 [18, 92]. Although our tracking head is not specialized for the two-view setting, it outperforms the state-of-the-art two-view matching method Roma. Measured in AUC (higher is better).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T5.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T5.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_tt" id="S4.T5.3.3.4"><span class="ltx_text" id="S4.T5.3.3.4.1" style="font-size:80%;">ETH3D Dataset</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.1.1.1">
<span class="ltx_text" id="S4.T5.1.1.1.1" style="font-size:80%;">Acc.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.1.1.1.m1.1"><semantics id="S4.T5.1.1.1.m1.1a"><mo id="S4.T5.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.1.1.1.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.1.1.1.m1.1b"><ci id="S4.T5.1.1.1.m1.1.1.cmml" xref="S4.T5.1.1.1.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.1.1.1.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.1.1.1.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.2.2.2">
<span class="ltx_text" id="S4.T5.2.2.2.1" style="font-size:80%;">Comp.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.2.2.2.m1.1"><semantics id="S4.T5.2.2.2.m1.1a"><mo id="S4.T5.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.2.2.2.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.2.2.2.m1.1b"><ci id="S4.T5.2.2.2.m1.1.1.cmml" xref="S4.T5.2.2.2.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.2.2.2.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.2.2.2.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T5.3.3.3">
<span class="ltx_text" id="S4.T5.3.3.3.1" style="font-size:80%;">Overall</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T5.3.3.3.m1.1"><semantics id="S4.T5.3.3.3.m1.1a"><mo id="S4.T5.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T5.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T5.3.3.3.m1.1b"><ci id="S4.T5.3.3.3.m1.1.1.cmml" xref="S4.T5.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T5.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T5.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T5.3.4.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T5.3.4.1.1"><span class="ltx_text" id="S4.T5.3.4.1.1.1" style="font-size:80%;">Cross-Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.2"><span class="ltx_text" id="S4.T5.3.4.1.2.1" style="font-size:80%;">1.287</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.3"><span class="ltx_text" id="S4.T5.3.4.1.3.1" style="font-size:80%;">0.835</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T5.3.4.1.4"><span class="ltx_text" id="S4.T5.3.4.1.4.1" style="font-size:80%;">1.061</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.5.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T5.3.5.2.1"><span class="ltx_text" id="S4.T5.3.5.2.1.1" style="font-size:80%;">Global Self-Attention Only</span></th>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.2"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.5.2.2.1" style="font-size:80%;">1.032</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.3"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.5.2.3.1" style="font-size:80%;">0.621</span></td>
<td class="ltx_td ltx_align_center" id="S4.T5.3.5.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T5.3.5.2.4.1" style="font-size:80%;">0.827</span></td>
</tr>
<tr class="ltx_tr" id="S4.T5.3.6.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_bb ltx_border_r" id="S4.T5.3.6.3.1"><span class="ltx_text" id="S4.T5.3.6.3.1.1" style="font-size:80%;">Alternating-Attention</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.2"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.2.1" style="font-size:80%;">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.3"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.3.1" style="font-size:80%;">0.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T5.3.6.3.4"><span class="ltx_text ltx_font_bold" id="S4.T5.3.6.3.4.1" style="font-size:80%;">0.709</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This ablation study investigates the impact of different attention mechanisms on the performance of the VGGT model for point map estimation using the ETH3D dataset. Three transformer backbone architectures are compared: one with only global self-attention, one with cross-attention, and the proposed alternating-attention mechanism.  The results show the effectiveness of the alternating-attention approach in improving accuracy compared to the other two methods.
> <details>
> <summary>read the caption</summary>
> Table 5:  Ablation Study for Transformer Backbone on ETH3D. We compare our alternating-attention architecture against two variants: one using only global self-attention and another employing cross-attention.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T6.6.6">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T6.6.6.6">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.1.1.1.1">
<span class="ltx_text" id="S4.T6.1.1.1.1.1" style="font-size:80%;">w. </span><math alttext="\mathcal{L}_{\text{camera}}" class="ltx_Math" display="inline" id="S4.T6.1.1.1.1.m1.1"><semantics id="S4.T6.1.1.1.1.m1.1a"><msub id="S4.T6.1.1.1.1.m1.1.1" xref="S4.T6.1.1.1.1.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T6.1.1.1.1.m1.1.1.2" mathsize="80%" xref="S4.T6.1.1.1.1.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T6.1.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T6.1.1.1.1.m1.1.1.3a.cmml">camera</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.1.1.1.1.m1.1b"><apply id="S4.T6.1.1.1.1.m1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.1.1.1.1.m1.1.1.1.cmml" xref="S4.T6.1.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T6.1.1.1.1.m1.1.1.2.cmml" xref="S4.T6.1.1.1.1.m1.1.1.2">ℒ</ci><ci id="S4.T6.1.1.1.1.m1.1.1.3a.cmml" xref="S4.T6.1.1.1.1.m1.1.1.3"><mtext id="S4.T6.1.1.1.1.m1.1.1.3.cmml" mathsize="56%" xref="S4.T6.1.1.1.1.m1.1.1.3">camera</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.1.1.1.1.m1.1c">\mathcal{L}_{\text{camera}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.1.1.1.1.m1.1d">caligraphic_L start_POSTSUBSCRIPT camera end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.2.2.2.2">
<span class="ltx_text" id="S4.T6.2.2.2.2.1" style="font-size:80%;">w. </span><math alttext="\mathcal{L}_{\text{depth}}" class="ltx_Math" display="inline" id="S4.T6.2.2.2.2.m1.1"><semantics id="S4.T6.2.2.2.2.m1.1a"><msub id="S4.T6.2.2.2.2.m1.1.1" xref="S4.T6.2.2.2.2.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T6.2.2.2.2.m1.1.1.2" mathsize="80%" xref="S4.T6.2.2.2.2.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T6.2.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T6.2.2.2.2.m1.1.1.3a.cmml">depth</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.2.2.2.2.m1.1b"><apply id="S4.T6.2.2.2.2.m1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.2.2.2.2.m1.1.1.1.cmml" xref="S4.T6.2.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T6.2.2.2.2.m1.1.1.2.cmml" xref="S4.T6.2.2.2.2.m1.1.1.2">ℒ</ci><ci id="S4.T6.2.2.2.2.m1.1.1.3a.cmml" xref="S4.T6.2.2.2.2.m1.1.1.3"><mtext id="S4.T6.2.2.2.2.m1.1.1.3.cmml" mathsize="56%" xref="S4.T6.2.2.2.2.m1.1.1.3">depth</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.2.2.2.2.m1.1c">\mathcal{L}_{\text{depth}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.2.2.2.2.m1.1d">caligraphic_L start_POSTSUBSCRIPT depth end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.3.3.3.3">
<span class="ltx_text" id="S4.T6.3.3.3.3.1" style="font-size:80%;">w. </span><math alttext="\mathcal{L}_{\text{track}}" class="ltx_Math" display="inline" id="S4.T6.3.3.3.3.m1.1"><semantics id="S4.T6.3.3.3.3.m1.1a"><msub id="S4.T6.3.3.3.3.m1.1.1" xref="S4.T6.3.3.3.3.m1.1.1.cmml"><mi class="ltx_font_mathcaligraphic" id="S4.T6.3.3.3.3.m1.1.1.2" mathsize="80%" xref="S4.T6.3.3.3.3.m1.1.1.2.cmml">ℒ</mi><mtext id="S4.T6.3.3.3.3.m1.1.1.3" mathsize="80%" xref="S4.T6.3.3.3.3.m1.1.1.3a.cmml">track</mtext></msub><annotation-xml encoding="MathML-Content" id="S4.T6.3.3.3.3.m1.1b"><apply id="S4.T6.3.3.3.3.m1.1.1.cmml" xref="S4.T6.3.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T6.3.3.3.3.m1.1.1.1.cmml" xref="S4.T6.3.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T6.3.3.3.3.m1.1.1.2.cmml" xref="S4.T6.3.3.3.3.m1.1.1.2">ℒ</ci><ci id="S4.T6.3.3.3.3.m1.1.1.3a.cmml" xref="S4.T6.3.3.3.3.m1.1.1.3"><mtext id="S4.T6.3.3.3.3.m1.1.1.3.cmml" mathsize="56%" xref="S4.T6.3.3.3.3.m1.1.1.3">track</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.3.3.3.3.m1.1c">\mathcal{L}_{\text{track}}</annotation><annotation encoding="application/x-llamapun" id="S4.T6.3.3.3.3.m1.1d">caligraphic_L start_POSTSUBSCRIPT track end_POSTSUBSCRIPT</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.4.4.4.4">
<span class="ltx_text" id="S4.T6.4.4.4.4.1" style="font-size:80%;">Acc.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.4.4.4.4.m1.1"><semantics id="S4.T6.4.4.4.4.m1.1a"><mo id="S4.T6.4.4.4.4.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T6.4.4.4.4.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.4.4.4.4.m1.1b"><ci id="S4.T6.4.4.4.4.m1.1.1.cmml" xref="S4.T6.4.4.4.4.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.4.4.4.4.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.4.4.4.4.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.5.5.5.5">
<span class="ltx_text" id="S4.T6.5.5.5.5.1" style="font-size:80%;">Comp.</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.5.5.5.5.m1.1"><semantics id="S4.T6.5.5.5.5.m1.1a"><mo id="S4.T6.5.5.5.5.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T6.5.5.5.5.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.5.5.5.5.m1.1b"><ci id="S4.T6.5.5.5.5.m1.1.1.cmml" xref="S4.T6.5.5.5.5.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.5.5.5.5.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.5.5.5.5.m1.1d">↓</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" id="S4.T6.6.6.6.6">
<span class="ltx_text" id="S4.T6.6.6.6.6.1" style="font-size:80%;">Overall</span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T6.6.6.6.6.m1.1"><semantics id="S4.T6.6.6.6.6.m1.1a"><mo id="S4.T6.6.6.6.6.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T6.6.6.6.6.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T6.6.6.6.6.m1.1b"><ci id="S4.T6.6.6.6.6.m1.1.1.cmml" xref="S4.T6.6.6.6.6.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T6.6.6.6.6.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T6.6.6.6.6.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T6.6.6.7.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.1"><span class="ltx_text" id="S4.T6.6.6.7.1.1.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.2"><span class="ltx_text" id="S4.T6.6.6.7.1.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.3"><span class="ltx_text" id="S4.T6.6.6.7.1.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.4"><span class="ltx_text" id="S4.T6.6.6.7.1.4.1" style="font-size:80%;">1.042</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.5"><span class="ltx_text" id="S4.T6.6.6.7.1.5.1" style="font-size:80%;">0.627</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T6.6.6.7.1.6"><span class="ltx_text" id="S4.T6.6.6.7.1.6.1" style="font-size:80%;">0.834</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.8.2">
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.1"><span class="ltx_text" id="S4.T6.6.6.8.2.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.2"><span class="ltx_text" id="S4.T6.6.6.8.2.2.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.3"><span class="ltx_text" id="S4.T6.6.6.8.2.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.6.6.8.2.4.1" style="font-size:80%;">0.920</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.6.6.8.2.5.1" style="font-size:80%;">0.534</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.8.2.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T6.6.6.8.2.6.1" style="font-size:80%;">0.727</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.9.3">
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.1"><span class="ltx_text" id="S4.T6.6.6.9.3.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.2"><span class="ltx_text" id="S4.T6.6.6.9.3.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.3"><span class="ltx_text" id="S4.T6.6.6.9.3.3.1" style="font-size:80%;">✗</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.4"><span class="ltx_text" id="S4.T6.6.6.9.3.4.1" style="font-size:80%;">0.976</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.5"><span class="ltx_text" id="S4.T6.6.6.9.3.5.1" style="font-size:80%;">0.603</span></td>
<td class="ltx_td ltx_align_center" id="S4.T6.6.6.9.3.6"><span class="ltx_text" id="S4.T6.6.6.9.3.6.1" style="font-size:80%;">0.790</span></td>
</tr>
<tr class="ltx_tr" id="S4.T6.6.6.10.4">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.1"><span class="ltx_text" id="S4.T6.6.6.10.4.1.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.2"><span class="ltx_text" id="S4.T6.6.6.10.4.2.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.3"><span class="ltx_text" id="S4.T6.6.6.10.4.3.1" style="font-size:80%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.4"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.10.4.4.1" style="font-size:80%;">0.901</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.5"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.10.4.5.1" style="font-size:80%;">0.518</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T6.6.6.10.4.6"><span class="ltx_text ltx_font_bold" id="S4.T6.6.6.10.4.6.1" style="font-size:80%;">0.709</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents an ablation study evaluating the impact of multi-task learning on point map estimation accuracy within the ETH3D dataset.  By selectively including or excluding the training of camera, depth, and track estimation components, the study demonstrates that a multi-task learning approach, encompassing all three elements, results in superior point map estimation accuracy compared to single-task learning.
> <details>
> <summary>read the caption</summary>
> Table 6:  Ablation Study for Multi-task Learning, which shows that simultaneous training with camera, depth and track estimation yields the highest accuracy in point map estimation on ETH3D.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S4.T7.4.4.4">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T7.3.3.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T7.3.3.3.3.4"><span class="ltx_text" id="S4.T7.3.3.3.3.4.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_t" id="S4.T7.3.3.3.3.5"><span class="ltx_text" id="S4.T7.3.3.3.3.5.1" style="font-size:70%;">Known Input Cam</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.3.3.3.3.6"><span class="ltx_text" id="S4.T7.3.3.3.3.6.1" style="font-size:80%;">Size</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.1.1.1.1.1">
<span class="ltx_text" id="S4.T7.1.1.1.1.1.1" style="font-size:80%;">PSNR </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.1.1.1.1.1.m1.1"><semantics id="S4.T7.1.1.1.1.1.m1.1a"><mo id="S4.T7.1.1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.1.1.1.1.1.m1.1b"><ci id="S4.T7.1.1.1.1.1.m1.1.1.cmml" xref="S4.T7.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.2.2.2.2.2">
<span class="ltx_text" id="S4.T7.2.2.2.2.2.1" style="font-size:80%;">SSIM </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T7.2.2.2.2.2.m1.1"><semantics id="S4.T7.2.2.2.2.2.m1.1a"><mo id="S4.T7.2.2.2.2.2.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.2.2.2.2.2.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T7.2.2.2.2.2.m1.1b"><ci id="S4.T7.2.2.2.2.2.m1.1.1.cmml" xref="S4.T7.2.2.2.2.2.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.2.2.2.2.2.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.2.2.2.2.2.m1.1d">↑</annotation></semantics></math>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T7.3.3.3.3.3">
<span class="ltx_text" id="S4.T7.3.3.3.3.3.1" style="font-size:80%;">LPIPS </span><math alttext="\downarrow" class="ltx_Math" display="inline" id="S4.T7.3.3.3.3.3.m1.1"><semantics id="S4.T7.3.3.3.3.3.m1.1a"><mo id="S4.T7.3.3.3.3.3.m1.1.1" mathsize="80%" stretchy="false" xref="S4.T7.3.3.3.3.3.m1.1.1.cmml">↓</mo><annotation-xml encoding="MathML-Content" id="S4.T7.3.3.3.3.3.m1.1b"><ci id="S4.T7.3.3.3.3.3.m1.1.1.cmml" xref="S4.T7.3.3.3.3.3.m1.1.1">↓</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T7.3.3.3.3.3.m1.1c">\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T7.3.3.3.3.3.m1.1d">↓</annotation></semantics></math>
</th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T7.4.4.4.5.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.4.4.4.5.1.1">
<span class="ltx_text" id="S4.T7.4.4.4.5.1.1.1" style="font-size:80%;">LGM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T7.4.4.4.5.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib110" title=""><span class="ltx_text" style="font-size:90%;">110</span></a><span class="ltx_text" id="S4.T7.4.4.4.5.1.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_t" id="S4.T7.4.4.4.5.1.2"><span class="ltx_text" id="S4.T7.4.4.4.5.1.2.1" style="font-size:80%;">✓</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S4.T7.4.4.4.5.1.3"><span class="ltx_text" id="S4.T7.4.4.4.5.1.3.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.5.1.4"><span class="ltx_text" id="S4.T7.4.4.4.5.1.4.1" style="font-size:80%;">21.44</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.5.1.5"><span class="ltx_text" id="S4.T7.4.4.4.5.1.5.1" style="font-size:80%;">0.832</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T7.4.4.4.5.1.6"><span class="ltx_text" id="S4.T7.4.4.4.5.1.6.1" style="font-size:80%;">0.122</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4.6.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.4.4.4.6.2.1">
<span class="ltx_text" id="S4.T7.4.4.4.6.2.1.1" style="font-size:80%;">GS-LRM </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T7.4.4.4.6.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib154" title=""><span class="ltx_text" style="font-size:90%;">154</span></a><span class="ltx_text" id="S4.T7.4.4.4.6.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.4.4.4.6.2.2"><span class="ltx_text" id="S4.T7.4.4.4.6.2.2.1" style="font-size:80%;">✓</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.4.4.6.2.3"><span class="ltx_text" id="S4.T7.4.4.4.6.2.3.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.6.2.4"><span class="ltx_text" id="S4.T7.4.4.4.6.2.4.1" style="font-size:80%;">29.59</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.6.2.5"><span class="ltx_text" id="S4.T7.4.4.4.6.2.5.1" style="font-size:80%;">0.944</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.6.2.6"><span class="ltx_text" id="S4.T7.4.4.4.6.2.6.1" style="font-size:80%;">0.051</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4.7.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.4.4.4.7.3.1">
<span class="ltx_text" id="S4.T7.4.4.4.7.3.1.1" style="font-size:80%;">LVSM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="S4.T7.4.4.4.7.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib53" title=""><span class="ltx_text" style="font-size:90%;">53</span></a><span class="ltx_text" id="S4.T7.4.4.4.7.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row" id="S4.T7.4.4.4.7.3.2"><span class="ltx_text" id="S4.T7.4.4.4.7.3.2.1" style="font-size:80%;">✓</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r" id="S4.T7.4.4.4.7.3.3"><span class="ltx_text" id="S4.T7.4.4.4.7.3.3.1" style="font-size:80%;">256</span></th>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.7.3.4"><span class="ltx_text" id="S4.T7.4.4.4.7.3.4.1" style="font-size:80%;">31.71</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.7.3.5"><span class="ltx_text" id="S4.T7.4.4.4.7.3.5.1" style="font-size:80%;">0.957</span></td>
<td class="ltx_td ltx_align_center" id="S4.T7.4.4.4.7.3.6"><span class="ltx_text" id="S4.T7.4.4.4.7.3.6.1" style="font-size:80%;">0.027</span></td>
</tr>
<tr class="ltx_tr" id="S4.T7.4.4.4.4">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T7.4.4.4.4.1">
<span class="ltx_text" id="S4.T7.4.4.4.4.1.1" style="font-size:80%;">Ours-NVS</span><sup class="ltx_sup" id="S4.T7.4.4.4.4.1.2"><span class="ltx_text" id="S4.T7.4.4.4.4.1.2.1" style="font-size:80%;">∗</span></sup>
</th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_t" id="S4.T7.4.4.4.4.2"><span class="ltx_text" id="S4.T7.4.4.4.4.2.1" style="font-size:80%;">✗</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r ltx_border_t" id="S4.T7.4.4.4.4.3"><span class="ltx_text" id="S4.T7.4.4.4.4.3.1" style="font-size:80%;">224</span></th>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T7.4.4.4.4.4"><span class="ltx_text" id="S4.T7.4.4.4.4.4.1" style="font-size:80%;">30.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T7.4.4.4.4.5"><span class="ltx_text" id="S4.T7.4.4.4.4.5.1" style="font-size:80%;">0.949</span></td>
<td class="ltx_td ltx_align_center ltx_border_b ltx_border_t" id="S4.T7.4.4.4.4.6"><span class="ltx_text" id="S4.T7.4.4.4.4.6.1" style="font-size:80%;">0.033</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative comparison of different methods for novel view synthesis using the GSO dataset.  The key metric is the performance of each method in generating new views of a scene, measured using PSNR, SSIM, and LPIPS scores.  The table highlights the competitive performance of VGGT even when trained on a limited dataset (only 20% of the available data) and without requiring explicit knowledge of camera parameters.
> <details>
> <summary>read the caption</summary>
> Table 7: Quantitative comparisons for view synthesis on GSO [28] dataset. Finetuning VGGT for feed-forward novel view synthesis, it demonstrates competitive performance even without knowing camera extrinsic and intrinsic parameters for the input images. Note that ∗ indicates using a small training set (only 20%).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_guessed_headers ltx_align_middle" id="S4.T8.3">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S4.T8.3.4.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_column ltx_th_row ltx_border_tt" id="S4.T8.3.4.1.1" rowspan="2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.4.1.1.1" style="font-size:80%;">Method</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T8.3.4.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.4.1.2.1" style="font-size:80%;">Kinetics</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T8.3.4.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.4.1.3.1" style="font-size:80%;">RGB-S</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_tt" colspan="3" id="S4.T8.3.4.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.4.1.4.1" style="font-size:80%;">DAVIS</span></th>
</tr>
<tr class="ltx_tr" id="S4.T8.3.3">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.4.1" style="font-size:80%;">AJ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.1.1.1" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\delta_{\text{avg}}^{\text{vis}}" class="ltx_Math" display="inline" id="S4.T8.1.1.1.m1.1"><semantics id="S4.T8.1.1.1.m1.1a"><msubsup id="S4.T8.1.1.1.m1.1.1" xref="S4.T8.1.1.1.m1.1.1.cmml"><mi id="S4.T8.1.1.1.m1.1.1.2.2" mathsize="80%" xref="S4.T8.1.1.1.m1.1.1.2.2.cmml">δ</mi><mtext id="S4.T8.1.1.1.m1.1.1.2.3" mathsize="80%" xref="S4.T8.1.1.1.m1.1.1.2.3a.cmml">avg</mtext><mtext id="S4.T8.1.1.1.m1.1.1.3" mathsize="80%" xref="S4.T8.1.1.1.m1.1.1.3a.cmml">vis</mtext></msubsup><annotation-xml encoding="MathML-Content" id="S4.T8.1.1.1.m1.1b"><apply id="S4.T8.1.1.1.m1.1.1.cmml" xref="S4.T8.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.1.1.1.m1.1.1.1.cmml" xref="S4.T8.1.1.1.m1.1.1">superscript</csymbol><apply id="S4.T8.1.1.1.m1.1.1.2.cmml" xref="S4.T8.1.1.1.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.1.1.1.m1.1.1.2.1.cmml" xref="S4.T8.1.1.1.m1.1.1">subscript</csymbol><ci id="S4.T8.1.1.1.m1.1.1.2.2.cmml" xref="S4.T8.1.1.1.m1.1.1.2.2">𝛿</ci><ci id="S4.T8.1.1.1.m1.1.1.2.3a.cmml" xref="S4.T8.1.1.1.m1.1.1.2.3"><mtext id="S4.T8.1.1.1.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T8.1.1.1.m1.1.1.2.3">avg</mtext></ci></apply><ci id="S4.T8.1.1.1.m1.1.1.3a.cmml" xref="S4.T8.1.1.1.m1.1.1.3"><mtext id="S4.T8.1.1.1.m1.1.1.3.cmml" mathsize="56%" xref="S4.T8.1.1.1.m1.1.1.3">vis</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.1.1.1.m1.1c">\delta_{\text{avg}}^{\text{vis}}</annotation><annotation encoding="application/x-llamapun" id="S4.T8.1.1.1.m1.1d">italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT start_POSTSUPERSCRIPT vis end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.5.1" style="font-size:80%;">OA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.6.1" style="font-size:80%;">AJ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.2.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\delta_{\text{avg}}^{\text{vis}}" class="ltx_Math" display="inline" id="S4.T8.2.2.2.m1.1"><semantics id="S4.T8.2.2.2.m1.1a"><msubsup id="S4.T8.2.2.2.m1.1.1" xref="S4.T8.2.2.2.m1.1.1.cmml"><mi id="S4.T8.2.2.2.m1.1.1.2.2" mathsize="80%" xref="S4.T8.2.2.2.m1.1.1.2.2.cmml">δ</mi><mtext id="S4.T8.2.2.2.m1.1.1.2.3" mathsize="80%" xref="S4.T8.2.2.2.m1.1.1.2.3a.cmml">avg</mtext><mtext id="S4.T8.2.2.2.m1.1.1.3" mathsize="80%" xref="S4.T8.2.2.2.m1.1.1.3a.cmml">vis</mtext></msubsup><annotation-xml encoding="MathML-Content" id="S4.T8.2.2.2.m1.1b"><apply id="S4.T8.2.2.2.m1.1.1.cmml" xref="S4.T8.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.2.2.2.m1.1.1.1.cmml" xref="S4.T8.2.2.2.m1.1.1">superscript</csymbol><apply id="S4.T8.2.2.2.m1.1.1.2.cmml" xref="S4.T8.2.2.2.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.2.2.2.m1.1.1.2.1.cmml" xref="S4.T8.2.2.2.m1.1.1">subscript</csymbol><ci id="S4.T8.2.2.2.m1.1.1.2.2.cmml" xref="S4.T8.2.2.2.m1.1.1.2.2">𝛿</ci><ci id="S4.T8.2.2.2.m1.1.1.2.3a.cmml" xref="S4.T8.2.2.2.m1.1.1.2.3"><mtext id="S4.T8.2.2.2.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T8.2.2.2.m1.1.1.2.3">avg</mtext></ci></apply><ci id="S4.T8.2.2.2.m1.1.1.3a.cmml" xref="S4.T8.2.2.2.m1.1.1.3"><mtext id="S4.T8.2.2.2.m1.1.1.3.cmml" mathsize="56%" xref="S4.T8.2.2.2.m1.1.1.3">vis</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.2.2.2.m1.1c">\delta_{\text{avg}}^{\text{vis}}</annotation><annotation encoding="application/x-llamapun" id="S4.T8.2.2.2.m1.1d">italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT start_POSTSUPERSCRIPT vis end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.7.1" style="font-size:80%;">OA</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.8.1" style="font-size:80%;">AJ</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><math alttext="\delta_{\text{avg}}^{\text{vis}}" class="ltx_Math" display="inline" id="S4.T8.3.3.3.m1.1"><semantics id="S4.T8.3.3.3.m1.1a"><msubsup id="S4.T8.3.3.3.m1.1.1" xref="S4.T8.3.3.3.m1.1.1.cmml"><mi id="S4.T8.3.3.3.m1.1.1.2.2" mathsize="80%" xref="S4.T8.3.3.3.m1.1.1.2.2.cmml">δ</mi><mtext id="S4.T8.3.3.3.m1.1.1.2.3" mathsize="80%" xref="S4.T8.3.3.3.m1.1.1.2.3a.cmml">avg</mtext><mtext id="S4.T8.3.3.3.m1.1.1.3" mathsize="80%" xref="S4.T8.3.3.3.m1.1.1.3a.cmml">vis</mtext></msubsup><annotation-xml encoding="MathML-Content" id="S4.T8.3.3.3.m1.1b"><apply id="S4.T8.3.3.3.m1.1.1.cmml" xref="S4.T8.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.3.3.3.m1.1.1.1.cmml" xref="S4.T8.3.3.3.m1.1.1">superscript</csymbol><apply id="S4.T8.3.3.3.m1.1.1.2.cmml" xref="S4.T8.3.3.3.m1.1.1"><csymbol cd="ambiguous" id="S4.T8.3.3.3.m1.1.1.2.1.cmml" xref="S4.T8.3.3.3.m1.1.1">subscript</csymbol><ci id="S4.T8.3.3.3.m1.1.1.2.2.cmml" xref="S4.T8.3.3.3.m1.1.1.2.2">𝛿</ci><ci id="S4.T8.3.3.3.m1.1.1.2.3a.cmml" xref="S4.T8.3.3.3.m1.1.1.2.3"><mtext id="S4.T8.3.3.3.m1.1.1.2.3.cmml" mathsize="56%" xref="S4.T8.3.3.3.m1.1.1.2.3">avg</mtext></ci></apply><ci id="S4.T8.3.3.3.m1.1.1.3a.cmml" xref="S4.T8.3.3.3.m1.1.1.3"><mtext id="S4.T8.3.3.3.m1.1.1.3.cmml" mathsize="56%" xref="S4.T8.3.3.3.m1.1.1.3">vis</mtext></ci></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T8.3.3.3.m1.1c">\delta_{\text{avg}}^{\text{vis}}</annotation><annotation encoding="application/x-llamapun" id="S4.T8.3.3.3.m1.1d">italic_δ start_POSTSUBSCRIPT avg end_POSTSUBSCRIPT start_POSTSUPERSCRIPT vis end_POSTSUPERSCRIPT</annotation></semantics></math></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S4.T8.3.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.3.9.1" style="font-size:80%;">OA</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S4.T8.3.5.1">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.3.5.1.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T8.3.5.1.1.1" style="font-size:80%;">TAPTR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T8.3.5.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib63" title=""><span class="ltx_text" style="font-size:90%;">63</span></a><span class="ltx_text" id="S4.T8.3.5.1.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.2.1" style="font-size:80%;">49.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.3.1" style="font-size:80%;">64.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.4.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.5.1" style="font-size:80%;">60.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.6.1" style="font-size:80%;">76.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.5.1.7.1" style="font-size:80%;">87.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.5.1.8.1" style="font-size:80%;">63.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.5.1.9.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.5.1.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.5.1.10.1" style="font-size:80%;">91.1</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.6.2">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T8.3.6.2.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T8.3.6.2.1.1" style="font-size:80%;">LocoTrack </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T8.3.6.2.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib13" title=""><span class="ltx_text" style="font-size:90%;">13</span></a><span class="ltx_text" id="S4.T8.3.6.2.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.2.1" style="font-size:80%;">52.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.3.1" style="font-size:80%;">66.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.4.1" style="font-size:80%;">85.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.5.1" style="font-size:80%;">69.7</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.6.2.6.1" style="font-size:80%;">83.2</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.6.2.7.1" style="font-size:80%;">89.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.8.1" style="font-size:80%;">62.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.9.1" style="font-size:80%;">75.3</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.6.2.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.6.2.10.1" style="font-size:80%;">87.2</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.7.3">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row" id="S4.T8.3.7.3.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T8.3.7.3.1.1" style="font-size:80%;">BootsTAPIR </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T8.3.7.3.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib26" title=""><span class="ltx_text" style="font-size:90%;">26</span></a><span class="ltx_text" id="S4.T8.3.7.3.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.7.3.2.1" style="font-size:80%;">54.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.7.3.3.1" style="font-size:80%;">68.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.7.3.4.1" style="font-size:80%;">86.5</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S4.T8.3.7.3.5.1" style="font-size:80%;">70.8</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.7.3.6.1" style="font-size:80%;">83.0</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.7.3.7.1" style="font-size:80%;">89.9</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.7.3.8.1" style="font-size:80%;">61.4</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.7.3.9.1" style="font-size:80%;">73.6</span></td>
<td class="ltx_td ltx_align_center" id="S4.T8.3.7.3.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.7.3.10.1" style="font-size:80%;">88.7</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.8.4">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_t" id="S4.T8.3.8.4.1" style="padding-left:2.0pt;padding-right:2.0pt;">
<span class="ltx_text" id="S4.T8.3.8.4.1.1" style="font-size:80%;">CoTracker </span><cite class="ltx_cite ltx_citemacro_citep"><span class="ltx_text" id="S4.T8.3.8.4.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib56" title=""><span class="ltx_text" style="font-size:90%;">56</span></a><span class="ltx_text" id="S4.T8.3.8.4.1.3.2" style="font-size:80%;">]</span></cite>
</th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.2.1" style="font-size:80%;">49.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.3.1" style="font-size:80%;">64.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.4.1" style="font-size:80%;">83.3</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.5.1" style="font-size:80%;">67.4</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.6.1" style="font-size:80%;">78.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.7.1" style="font-size:80%;">85.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.8.1" style="font-size:80%;">61.8</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.9.1" style="font-size:80%;">76.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T8.3.8.4.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.8.4.10.1" style="font-size:80%;">88.3</span></td>
</tr>
<tr class="ltx_tr" id="S4.T8.3.9.5">
<th class="ltx_td ltx_align_left ltx_th ltx_th_row ltx_border_bb" id="S4.T8.3.9.5.1" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text" id="S4.T8.3.9.5.1.1" style="font-size:80%;">CoTracker + Ours</span></th>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.2" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.2.1" style="font-size:80%;">57.2</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.3" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.3.1" style="font-size:80%;">69.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.4" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.4.1" style="font-size:80%;">88.9</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.5" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.5.1" style="font-size:80%;">72.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.6" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.6.1" style="font-size:80%;">84.0</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.7" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.7.1" style="font-size:80%;">91.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.8" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.8.1" style="font-size:80%;">64.7</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.9" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.9.1" style="font-size:80%;">77.5</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T8.3.9.5.10" style="padding-left:2.0pt;padding-right:2.0pt;"><span class="ltx_text ltx_font_bold" id="S4.T8.3.9.5.10.1" style="font-size:80%;">91.4</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the results of dynamic point tracking experiments using the TAP-Vid benchmark.  The authors compared their method (CoTracker fine-tuned with weights from their pre-trained Visual Geometry Grounded Transformer (VGGT) model) against other state-of-the-art tracking methods.  The results demonstrate that even though the VGGT model wasn't specifically trained for dynamic scenes, integrating its learned features significantly improves the performance of CoTracker, highlighting the robustness and generalizability of VGGT's feature extraction capabilities.  Metrics such as Occlusion Accuracy (OA), Average Jaccard (AJ), and others are used to evaluate the tracker's performance across various datasets.  The findings strongly support the effectiveness of VGGT's learned representations when applied to downstream tasks.
> <details>
> <summary>read the caption</summary>
> Table 8: Dynamic Point Tracking Results on the TAP-Vid benchmarks. Although our model was not designed for dynamic scenes, simply fine-tuning CoTracker with our pretrained weights significantly enhances performance, demonstrating the robustness and effectiveness of our learned features.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_guessed_headers ltx_align_middle" id="S5.T9.2.1">
<thead class="ltx_thead">
<tr class="ltx_tr" id="S5.T9.2.1.1.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_th_row ltx_border_r ltx_border_t" id="S5.T9.2.1.1.1.1"><span class="ltx_text ltx_font_bold" id="S5.T9.2.1.1.1.1.1" style="font-size:80%;">Input Frames</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.2"><span class="ltx_text" id="S5.T9.2.1.1.1.2.1" style="font-size:80%;">1</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.3"><span class="ltx_text" id="S5.T9.2.1.1.1.3.1" style="font-size:80%;">2</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.4"><span class="ltx_text" id="S5.T9.2.1.1.1.4.1" style="font-size:80%;">4</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.5"><span class="ltx_text" id="S5.T9.2.1.1.1.5.1" style="font-size:80%;">8</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.6"><span class="ltx_text" id="S5.T9.2.1.1.1.6.1" style="font-size:80%;">10</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.7"><span class="ltx_text" id="S5.T9.2.1.1.1.7.1" style="font-size:80%;">20</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.8"><span class="ltx_text" id="S5.T9.2.1.1.1.8.1" style="font-size:80%;">50</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.9"><span class="ltx_text" id="S5.T9.2.1.1.1.9.1" style="font-size:80%;">100</span></th>
<th class="ltx_td ltx_align_center ltx_th ltx_th_column ltx_border_t" id="S5.T9.2.1.1.1.10"><span class="ltx_text" id="S5.T9.2.1.1.1.10.1" style="font-size:80%;">200</span></th>
</tr>
</thead>
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="S5.T9.2.1.2.1">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_r ltx_border_t" id="S5.T9.2.1.2.1.1"><span class="ltx_text ltx_font_bold" id="S5.T9.2.1.2.1.1.1" style="font-size:80%;">Time (s)</span></th>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.2"><span class="ltx_text" id="S5.T9.2.1.2.1.2.1" style="font-size:80%;">0.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.3"><span class="ltx_text" id="S5.T9.2.1.2.1.3.1" style="font-size:80%;">0.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.4"><span class="ltx_text" id="S5.T9.2.1.2.1.4.1" style="font-size:80%;">0.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.5"><span class="ltx_text" id="S5.T9.2.1.2.1.5.1" style="font-size:80%;">0.11</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.6"><span class="ltx_text" id="S5.T9.2.1.2.1.6.1" style="font-size:80%;">0.14</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.7"><span class="ltx_text" id="S5.T9.2.1.2.1.7.1" style="font-size:80%;">0.31</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.8"><span class="ltx_text" id="S5.T9.2.1.2.1.8.1" style="font-size:80%;">1.04</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.9"><span class="ltx_text" id="S5.T9.2.1.2.1.9.1" style="font-size:80%;">3.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S5.T9.2.1.2.1.10"><span class="ltx_text" id="S5.T9.2.1.2.1.10.1" style="font-size:80%;">8.75</span></td>
</tr>
<tr class="ltx_tr" id="S5.T9.2.1.3.2">
<th class="ltx_td ltx_align_center ltx_th ltx_th_row ltx_border_b ltx_border_r" id="S5.T9.2.1.3.2.1"><span class="ltx_text ltx_font_bold" id="S5.T9.2.1.3.2.1.1" style="font-size:80%;">Mem. (GB)</span></th>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.2"><span class="ltx_text" id="S5.T9.2.1.3.2.2.1" style="font-size:80%;">1.88</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.3"><span class="ltx_text" id="S5.T9.2.1.3.2.3.1" style="font-size:80%;">2.07</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.4"><span class="ltx_text" id="S5.T9.2.1.3.2.4.1" style="font-size:80%;">2.45</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.5"><span class="ltx_text" id="S5.T9.2.1.3.2.5.1" style="font-size:80%;">3.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.6"><span class="ltx_text" id="S5.T9.2.1.3.2.6.1" style="font-size:80%;">3.63</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.7"><span class="ltx_text" id="S5.T9.2.1.3.2.7.1" style="font-size:80%;">5.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.8"><span class="ltx_text" id="S5.T9.2.1.3.2.8.1" style="font-size:80%;">11.41</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.9"><span class="ltx_text" id="S5.T9.2.1.3.2.9.1" style="font-size:80%;">21.15</span></td>
<td class="ltx_td ltx_align_center ltx_border_b" id="S5.T9.2.1.3.2.10"><span class="ltx_text" id="S5.T9.2.1.3.2.10.1" style="font-size:80%;">40.63</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 This table presents the runtime and GPU memory usage of the VGGT model's feature backbone when processing varying numbers of input images.  The runtime is measured in seconds, and the peak GPU memory usage is reported in gigabytes. This data allows readers to assess the computational efficiency and resource requirements of the model as the number of input frames increases.
> <details>
> <summary>read the caption</summary>
> Table 9: Runtime and peak GPU memory usage across different numbers of input frames. Runtime is measured in seconds, and GPU memory usage is reported in gigabytes.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="A3.T10.12.12">
<tbody class="ltx_tbody">
<tr class="ltx_tr" id="A3.T10.3.3.3">
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.3.3.3.4"><span class="ltx_text" id="A3.T10.3.3.3.4.1" style="font-size:90%;">Method</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.3.3.3.5"><span class="ltx_text" id="A3.T10.3.3.3.5.1" style="font-size:90%;">Test-time Opt.</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.1.1.1.1">
<span class="ltx_text" id="A3.T10.1.1.1.1.1" style="font-size:90%;">AUC@3</span><math alttext="\degree" class="ltx_Math" display="inline" id="A3.T10.1.1.1.1.m1.1"><semantics id="A3.T10.1.1.1.1.m1.1a"><mi id="A3.T10.1.1.1.1.m1.1.1" mathsize="90%" mathvariant="normal" xref="A3.T10.1.1.1.1.m1.1.1.cmml">°</mi><annotation-xml encoding="MathML-Content" id="A3.T10.1.1.1.1.m1.1b"><ci id="A3.T10.1.1.1.1.m1.1.1.cmml" xref="A3.T10.1.1.1.1.m1.1.1">°</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.1.1.1.1.m1.1c">\degree</annotation><annotation encoding="application/x-llamapun" id="A3.T10.1.1.1.1.m1.1d">°</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.2.2.2.2">
<span class="ltx_text" id="A3.T10.2.2.2.2.1" style="font-size:90%;">AUC@5</span><math alttext="\degree" class="ltx_Math" display="inline" id="A3.T10.2.2.2.2.m1.1"><semantics id="A3.T10.2.2.2.2.m1.1a"><mi id="A3.T10.2.2.2.2.m1.1.1" mathsize="90%" mathvariant="normal" xref="A3.T10.2.2.2.2.m1.1.1.cmml">°</mi><annotation-xml encoding="MathML-Content" id="A3.T10.2.2.2.2.m1.1b"><ci id="A3.T10.2.2.2.2.m1.1.1.cmml" xref="A3.T10.2.2.2.2.m1.1.1">°</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.2.2.2.2.m1.1c">\degree</annotation><annotation encoding="application/x-llamapun" id="A3.T10.2.2.2.2.m1.1d">°</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.3.3.3.3">
<span class="ltx_text" id="A3.T10.3.3.3.3.1" style="font-size:90%;">AUC@10</span><math alttext="\degree" class="ltx_Math" display="inline" id="A3.T10.3.3.3.3.m1.1"><semantics id="A3.T10.3.3.3.3.m1.1a"><mi id="A3.T10.3.3.3.3.m1.1.1" mathsize="90%" mathvariant="normal" xref="A3.T10.3.3.3.3.m1.1.1.cmml">°</mi><annotation-xml encoding="MathML-Content" id="A3.T10.3.3.3.3.m1.1b"><ci id="A3.T10.3.3.3.3.m1.1.1.cmml" xref="A3.T10.3.3.3.3.m1.1.1">°</ci></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.3.3.3.3.m1.1c">\degree</annotation><annotation encoding="application/x-llamapun" id="A3.T10.3.3.3.3.m1.1d">°</annotation></semantics></math>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="A3.T10.3.3.3.6"><span class="ltx_text" id="A3.T10.3.3.3.6.1" style="font-size:90%;">Runtime</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.4.4.4">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.2">
<span class="ltx_text" id="A3.T10.4.4.4.2.1" style="font-size:90%;">COLMAP (SIFT+NN) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.4.4.4.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib94" title=""><span class="ltx_text" style="font-size:90%;">94</span></a><span class="ltx_text" id="A3.T10.4.4.4.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.3"><span class="ltx_text" id="A3.T10.4.4.4.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.4"><span class="ltx_text" id="A3.T10.4.4.4.4.1" style="font-size:90%;">23.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.5"><span class="ltx_text" id="A3.T10.4.4.4.5.1" style="font-size:90%;">32.66</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.6"><span class="ltx_text" id="A3.T10.4.4.4.6.1" style="font-size:90%;">44.79</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.4.4.4.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T10.4.4.4.1.m1.1"><semantics id="A3.T10.4.4.4.1.m1.1a"><mo id="A3.T10.4.4.4.1.m1.1.1" mathsize="90%" xref="A3.T10.4.4.4.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T10.4.4.4.1.m1.1b"><gt id="A3.T10.4.4.4.1.m1.1.1.cmml" xref="A3.T10.4.4.4.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.4.4.4.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T10.4.4.4.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="A3.T10.4.4.4.1.1" style="font-size:90%;">10s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.5.5.5">
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.2">
<span class="ltx_text" id="A3.T10.5.5.5.2.1" style="font-size:90%;">PixSfM (SIFT + NN) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.5.5.5.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="A3.T10.5.5.5.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.3"><span class="ltx_text" id="A3.T10.5.5.5.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.4"><span class="ltx_text" id="A3.T10.5.5.5.4.1" style="font-size:90%;">25.54</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.5"><span class="ltx_text" id="A3.T10.5.5.5.5.1" style="font-size:90%;">34.80</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.6"><span class="ltx_text" id="A3.T10.5.5.5.6.1" style="font-size:90%;">46.73</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.5.5.5.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T10.5.5.5.1.m1.1"><semantics id="A3.T10.5.5.5.1.m1.1a"><mo id="A3.T10.5.5.5.1.m1.1.1" mathsize="90%" xref="A3.T10.5.5.5.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T10.5.5.5.1.m1.1b"><gt id="A3.T10.5.5.5.1.m1.1.1.cmml" xref="A3.T10.5.5.5.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.5.5.5.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T10.5.5.5.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="A3.T10.5.5.5.1.1" style="font-size:90%;">20s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.6.6.6">
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.2">
<span class="ltx_text" id="A3.T10.6.6.6.2.1" style="font-size:90%;">PixSfM (LoFTR) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.6.6.6.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="A3.T10.6.6.6.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.3"><span class="ltx_text" id="A3.T10.6.6.6.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.4"><span class="ltx_text" id="A3.T10.6.6.6.4.1" style="font-size:90%;">44.06</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.5"><span class="ltx_text" id="A3.T10.6.6.6.5.1" style="font-size:90%;">56.16</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.6"><span class="ltx_text" id="A3.T10.6.6.6.6.1" style="font-size:90%;">69.61</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.6.6.6.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T10.6.6.6.1.m1.1"><semantics id="A3.T10.6.6.6.1.m1.1a"><mo id="A3.T10.6.6.6.1.m1.1.1" mathsize="90%" xref="A3.T10.6.6.6.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T10.6.6.6.1.m1.1b"><gt id="A3.T10.6.6.6.1.m1.1.1.cmml" xref="A3.T10.6.6.6.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.6.6.6.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T10.6.6.6.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="A3.T10.6.6.6.1.1" style="font-size:90%;">20s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.7.7.7">
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.2">
<span class="ltx_text" id="A3.T10.7.7.7.2.1" style="font-size:90%;">PixSfM (SP + SG) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.7.7.7.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib66" title=""><span class="ltx_text" style="font-size:90%;">66</span></a><span class="ltx_text" id="A3.T10.7.7.7.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.3"><span class="ltx_text" id="A3.T10.7.7.7.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.4"><span class="ltx_text" id="A3.T10.7.7.7.4.1" style="font-size:90%;">45.19</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.5"><span class="ltx_text" id="A3.T10.7.7.7.5.1" style="font-size:90%;">57.22</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.6"><span class="ltx_text" id="A3.T10.7.7.7.6.1" style="font-size:90%;">70.47</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.7.7.7.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T10.7.7.7.1.m1.1"><semantics id="A3.T10.7.7.7.1.m1.1a"><mo id="A3.T10.7.7.7.1.m1.1.1" mathsize="90%" xref="A3.T10.7.7.7.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T10.7.7.7.1.m1.1b"><gt id="A3.T10.7.7.7.1.m1.1.1.cmml" xref="A3.T10.7.7.7.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.7.7.7.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T10.7.7.7.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="A3.T10.7.7.7.1.1" style="font-size:90%;">20s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.8.8.8">
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.2">
<span class="ltx_text" id="A3.T10.8.8.8.2.1" style="font-size:90%;">DFSfM (LoFTR) </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.8.8.8.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib47" title=""><span class="ltx_text" style="font-size:90%;">47</span></a><span class="ltx_text" id="A3.T10.8.8.8.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.3"><span class="ltx_text" id="A3.T10.8.8.8.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.4"><span class="ltx_text" id="A3.T10.8.8.8.4.1" style="font-size:90%;">46.55</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.5"><span class="ltx_text" id="A3.T10.8.8.8.5.1" style="font-size:90%;">58.74</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.6"><span class="ltx_text" id="A3.T10.8.8.8.6.1" style="font-size:90%;">72.19</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.8.8.8.1">
<math alttext="&gt;" class="ltx_Math" display="inline" id="A3.T10.8.8.8.1.m1.1"><semantics id="A3.T10.8.8.8.1.m1.1a"><mo id="A3.T10.8.8.8.1.m1.1.1" mathsize="90%" xref="A3.T10.8.8.8.1.m1.1.1.cmml">&gt;</mo><annotation-xml encoding="MathML-Content" id="A3.T10.8.8.8.1.m1.1b"><gt id="A3.T10.8.8.8.1.m1.1.1.cmml" xref="A3.T10.8.8.8.1.m1.1.1"></gt></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.8.8.8.1.m1.1c">&gt;</annotation><annotation encoding="application/x-llamapun" id="A3.T10.8.8.8.1.m1.1d">&gt;</annotation></semantics></math><span class="ltx_text" id="A3.T10.8.8.8.1.1" style="font-size:90%;">10s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.9.9.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.2">
<span class="ltx_text" id="A3.T10.9.9.9.2.1" style="font-size:90%;">DUSt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.9.9.9.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib129" title=""><span class="ltx_text" style="font-size:90%;">129</span></a><span class="ltx_text" id="A3.T10.9.9.9.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.3"><span class="ltx_text" id="A3.T10.9.9.9.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.4"><span class="ltx_text" id="A3.T10.9.9.9.4.1" style="font-size:90%;">13.46</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.5"><span class="ltx_text" id="A3.T10.9.9.9.5.1" style="font-size:90%;">21.24</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.6"><span class="ltx_text" id="A3.T10.9.9.9.6.1" style="font-size:90%;">35.62</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.9.9.9.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.9.9.9.1.m1.1"><semantics id="A3.T10.9.9.9.1.m1.1a"><mo id="A3.T10.9.9.9.1.m1.1.1" mathsize="90%" xref="A3.T10.9.9.9.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.9.9.9.1.m1.1b"><csymbol cd="latexml" id="A3.T10.9.9.9.1.m1.1.1.cmml" xref="A3.T10.9.9.9.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.9.9.9.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.9.9.9.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="A3.T10.9.9.9.1.1" style="font-size:90%;"> 7s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.10.10.10">
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.2">
<span class="ltx_text" id="A3.T10.10.10.10.2.1" style="font-size:90%;">MASt3R </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.10.10.10.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib62" title=""><span class="ltx_text" style="font-size:90%;">62</span></a><span class="ltx_text" id="A3.T10.10.10.10.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.3"><span class="ltx_text" id="A3.T10.10.10.10.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.4"><span class="ltx_text" id="A3.T10.10.10.10.4.1" style="font-size:90%;">30.25</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.5"><span class="ltx_text" id="A3.T10.10.10.10.5.1" style="font-size:90%;">46.79</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.6"><span class="ltx_text" id="A3.T10.10.10.10.6.1" style="font-size:90%;">57.42</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.10.10.10.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.10.10.10.1.m1.1"><semantics id="A3.T10.10.10.10.1.m1.1a"><mo id="A3.T10.10.10.10.1.m1.1.1" mathsize="90%" xref="A3.T10.10.10.10.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.10.10.10.1.m1.1b"><csymbol cd="latexml" id="A3.T10.10.10.10.1.m1.1.1.cmml" xref="A3.T10.10.10.10.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.10.10.10.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.10.10.10.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="A3.T10.10.10.10.1.1" style="font-size:90%;"> 9s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.11.11.11">
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.2">
<span class="ltx_text" id="A3.T10.11.11.11.2.1" style="font-size:90%;">VGGSfM </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.11.11.11.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="A3.T10.11.11.11.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.3"><span class="ltx_text" id="A3.T10.11.11.11.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.4"><span class="ltx_text" id="A3.T10.11.11.11.4.1" style="font-size:90%;">45.23</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.5"><span class="ltx_text" id="A3.T10.11.11.11.5.1" style="font-size:90%;">58.89</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.6"><span class="ltx_text" id="A3.T10.11.11.11.6.1" style="font-size:90%;">73.92</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.11.11.11.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.11.11.11.1.m1.1"><semantics id="A3.T10.11.11.11.1.m1.1a"><mo id="A3.T10.11.11.11.1.m1.1.1" mathsize="90%" xref="A3.T10.11.11.11.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.11.11.11.1.m1.1b"><csymbol cd="latexml" id="A3.T10.11.11.11.1.m1.1.1.cmml" xref="A3.T10.11.11.11.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.11.11.11.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.11.11.11.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="A3.T10.11.11.11.1.1" style="font-size:90%;"> 6s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.12.12.12">
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.2">
<span class="ltx_text" id="A3.T10.12.12.12.2.1" style="font-size:90%;">VGGSfMv2 </span><cite class="ltx_cite ltx_citemacro_cite"><span class="ltx_text" id="A3.T10.12.12.12.2.2.1" style="font-size:90%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2503.11651v1#bib.bib125" title=""><span class="ltx_text" style="font-size:90%;">125</span></a><span class="ltx_text" id="A3.T10.12.12.12.2.3.2" style="font-size:90%;">]</span></cite>
</td>
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.3"><span class="ltx_text" id="A3.T10.12.12.12.3.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.4"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T10.12.12.12.4.1" style="font-size:90%;">59.32</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.5"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T10.12.12.12.5.1" style="font-size:90%;">67.78</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.6"><span class="ltx_text ltx_framed ltx_framed_underline" id="A3.T10.12.12.12.6.1" style="font-size:90%;">76.82</span></td>
<td class="ltx_td ltx_align_center" id="A3.T10.12.12.12.1">
<math alttext="\sim" class="ltx_Math" display="inline" id="A3.T10.12.12.12.1.m1.1"><semantics id="A3.T10.12.12.12.1.m1.1a"><mo id="A3.T10.12.12.12.1.m1.1.1" mathsize="90%" xref="A3.T10.12.12.12.1.m1.1.1.cmml">∼</mo><annotation-xml encoding="MathML-Content" id="A3.T10.12.12.12.1.m1.1b"><csymbol cd="latexml" id="A3.T10.12.12.12.1.m1.1.1.cmml" xref="A3.T10.12.12.12.1.m1.1.1">similar-to</csymbol></annotation-xml><annotation encoding="application/x-tex" id="A3.T10.12.12.12.1.m1.1c">\sim</annotation><annotation encoding="application/x-llamapun" id="A3.T10.12.12.12.1.m1.1d">∼</annotation></semantics></math><span class="ltx_text" id="A3.T10.12.12.12.1.1" style="font-size:90%;"> 10s</span>
</td>
</tr>
<tr class="ltx_tr" id="A3.T10.12.12.13.1">
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.1"><span class="ltx_text" id="A3.T10.12.12.13.1.1.1" style="font-size:90%;">VGGT (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.2"><span class="ltx_text" id="A3.T10.12.12.13.1.2.1" style="font-size:90%;">✗</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.3"><span class="ltx_text" id="A3.T10.12.12.13.1.3.1" style="font-size:90%;">39.23</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.4"><span class="ltx_text" id="A3.T10.12.12.13.1.4.1" style="font-size:90%;">52.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.5"><span class="ltx_text" id="A3.T10.12.12.13.1.5.1" style="font-size:90%;">71.26</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="A3.T10.12.12.13.1.6"><span class="ltx_text ltx_font_bold" id="A3.T10.12.12.13.1.6.1" style="font-size:90%;">0.2s</span></td>
</tr>
<tr class="ltx_tr" id="A3.T10.12.12.14.2">
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.1"><span class="ltx_text" id="A3.T10.12.12.14.2.1.1" style="font-size:90%;">VGGT + BA (ours)</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.2"><span class="ltx_text" id="A3.T10.12.12.14.2.2.1" style="font-size:90%;">✓</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.3"><span class="ltx_text ltx_font_bold" id="A3.T10.12.12.14.2.3.1" style="font-size:90%;">66.37</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.4"><span class="ltx_text ltx_font_bold" id="A3.T10.12.12.14.2.4.1" style="font-size:90%;">75.16</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.5"><span class="ltx_text ltx_font_bold" id="A3.T10.12.12.14.2.5.1" style="font-size:90%;">84.91</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="A3.T10.12.12.14.2.6"><span class="ltx_text" id="A3.T10.12.12.14.2.6.1" style="font-size:90%;">1.8s</span></td>
</tr>
</tbody>
</table>{{< /table-caption >}}
> 🔼 Table 10 presents a comparison of camera pose estimation methods on the Image Matching Challenge (IMC) dataset [54], focusing on phototourism data.  The results show that the proposed method achieves state-of-the-art performance, surpassing even VGGSfMv2 [125], the top performer in the recent CVPR 2024 IMC challenge. The table evaluates the accuracy of camera pose estimation (both rotation and translation) using various metrics and compares the performance of different algorithms, highlighting the speed and accuracy advantages of the proposed approach.
> <details>
> <summary>read the caption</summary>
> Table 10: Camera Pose Estimation on IMC [54]. Our method achieves state-of-the-art performance on the challenging phototropism data, outperforming VGGSfMv2 [125] which ranked first on the latest CVPR’24 IMC Challenge in camera pose (rotation and translation) estimation.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2503.11651/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2503.11651/20.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}