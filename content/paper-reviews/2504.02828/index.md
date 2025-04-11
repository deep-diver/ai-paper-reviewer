---
title: "Concept Lancet: Image Editing with Compositional Representation Transplant"
summary: "CoLan: Precise image edits via compositional representation transplant!"
categories: ["AI Generated", "🤗 Daily Papers"]
tags: ["Computer Vision", "Image Generation", "🏢 University of Pennsylvania",]
showSummary: true
date: 2025-04-03
draft: false
---

<br>

{{< keywordList >}}
{{< keyword icon="fingerprint" >}} 2504.02828 {{< /keyword >}}
{{< keyword icon="writer" >}} Jinqi Luo et el. {{< /keyword >}}
 
{{< keyword >}} 🤗 2025-04-08 {{< /keyword >}}
 
{{< /keywordList >}}

{{< button href="https://arxiv.org/abs/2504.02828" target="_self" >}}
↗ arXiv
{{< /button >}}
{{< button href="https://huggingface.co/papers/2504.02828" target="_self" >}}
↗ Hugging Face
{{< /button >}}



<audio controls>
    <source src="https://ai-paper-reviewer.com/2504.02828/podcast.wav" type="audio/wav">
    Your browser does not support the audio element.
</audio>


### TL;DR


{{< lead >}}

Diffusion models are powerful for image editing, yet existing methods struggle with determining the right editing strength. Overestimating can harm visual consistency, while underestimating fails to achieve the desired effect. Each image may require a unique editing strength, making a 'one-size-fits-all' approach ineffective and trial-and-error costly. Therefore, accurate estimation of concept presence is necessary for proper edit magnitude.



To address this, the paper introduces **Concept Lancet (CoLan)**, a zero-shot, plug-and-play framework for principled representation manipulation. CoLan decomposes source images into sparse linear combinations of visual concepts, enabling accurate estimation of concept presence. This informs a customized concept transplant process to impose the appropriate editing direction. To facilitate this, the authors curate CoLan-150K, a conceptual representation dataset.

{{< /lead >}}


#### Key Takeaways

{{< alert "star" >}}
{{< typeit speed=10 lifeLike=true >}} CoLan accurately estimates the presence of concepts in images to inform edits. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=1000 lifeLike=true >}} CoLan uses a customized transplant process for precise editing direction. {{< /typeit >}}
{{< /alert >}}

{{< alert "star" >}}
{{< typeit speed=10 startDelay=2000 lifeLike=true >}} The CoLan-150K dataset provides diverse visual concept representations. {{< /typeit >}}
{{< /alert >}}

#### Why does it matter?
This paper is important because it addresses the critical issue of **edit strength estimation** in diffusion-based image editing, offering a more robust and user-friendly approach. CoLan enhances editing effectiveness and visual consistency, setting a new standard for future research.

------
#### Visual Insights



![](https://arxiv.org/html/2504.02828/x1.png)

> 🔼 This figure illustrates the Concept Lancet (CoLan) framework for image editing.  Given a source image (e.g., a cat sitting on grass) and a desired edit (e.g., change the cat to a dog), CoLan first constructs a dictionary of visual concepts. This dictionary represents a collection of visual features extracted from a large dataset, allowing CoLan to understand the components of the image.  The source image is then decomposed into a sparse linear combination of these concepts in the latent space (either text embedding or diffusion score space). Finally, CoLan performs a concept transplant, replacing the cat concept with the dog concept, while preserving other aspects of the image such as background and pose. This precise manipulation of the latent space allows CoLan to generate an edited image where the target concept is seamlessly integrated. 
> <details>
> <summary>read the caption</summary>
> Figure 1: Given a source image and the editing task, our proposed CoLan generates a concept dictionary and performs sparse decomposition in the latent space to precisely transplant the target concept.
> </details>





{{< table-caption >}}
<table class="ltx_tabular ltx_align_middle" id="S3.T1.5">
<tr class="ltx_tr" id="S3.T1.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.2" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.2.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.1.1.2.1.1"></span> <span class="ltx_text" id="S3.T1.1.1.2.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.2.1.2.1">
<span class="ltx_tr" id="S3.T1.1.1.2.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.2.1.2.1.1.1">Representation</span></span>
<span class="ltx_tr" id="S3.T1.1.1.2.1.2.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.2.1.2.1.2.1">Manipulation</span></span>
</span></span> <span class="ltx_text" id="S3.T1.1.1.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S3.T1.1.1.3" rowspan="2"><span class="ltx_text" id="S3.T1.1.1.3.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.1.1.3.1.1"></span> <span class="ltx_text" id="S3.T1.1.1.3.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.1.1.3.1.2.1">
<span class="ltx_tr" id="S3.T1.1.1.3.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.1.1.3.1.2.1.1.1">Inversion</span></span>
</span></span> <span class="ltx_text" id="S3.T1.1.1.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_tt" id="S3.T1.1.1.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.1.1.4.1">
<span class="ltx_p" id="S3.T1.1.1.4.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.1.1.4.1.1.1" style="font-size:80%;">Backbone</span></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_tt" colspan="8" id="S3.T1.1.1.5"><span class="ltx_text" id="S3.T1.1.1.5.1" style="font-size:80%;">Consistency Preservation</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" colspan="2" id="S3.T1.1.1.1">
<span class="ltx_text" id="S3.T1.1.1.1.1" style="font-size:80%;">Edit Effectiveness (%, </span><math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.1.1.1.m1.1"><semantics id="S3.T1.1.1.1.m1.1a"><mo id="S3.T1.1.1.1.m1.1.1" mathsize="80%" stretchy="false" xref="S3.T1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.1.1.1.m1.1b"><ci id="S3.T1.1.1.1.m1.1.1.cmml" xref="S3.T1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.1.1.1.m1.1d">↑</annotation></semantics></math><span class="ltx_text" id="S3.T1.1.1.1.2" style="font-size:80%;">)</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.5">
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.5.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.5.1">
<span class="ltx_p" id="S3.T1.5.5.5.1.1" style="width:49.8pt;"></span>
</span>
</td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T1.2.2.1"><span class="ltx_text" id="S3.T1.2.2.1.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.2.2.1.1.2"></span> <span class="ltx_text" id="S3.T1.2.2.1.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.2.2.1.1.1.1">
<span class="ltx_tr" id="S3.T1.2.2.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.1.1.1.1.2.1">StruDist</span></span>
<span class="ltx_tr" id="S3.T1.2.2.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.2.2.1.1.1.1.1.1">(<math alttext="\times 10^{-3},\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.2.2.1.1.1.1.1.1.m1.1"><semantics id="S3.T1.2.2.1.1.1.1.1.1.m1.1a"><mrow id="S3.T1.2.2.1.1.1.1.1.1.m1.1b"><mo id="S3.T1.2.2.1.1.1.1.1.1.m1.1.1" rspace="0.222em">×</mo><msup id="S3.T1.2.2.1.1.1.1.1.1.m1.1.2"><mn id="S3.T1.2.2.1.1.1.1.1.1.m1.1.2.2">10</mn><mrow id="S3.T1.2.2.1.1.1.1.1.1.m1.1.2.3"><mo id="S3.T1.2.2.1.1.1.1.1.1.m1.1.2.3a">−</mo><mn id="S3.T1.2.2.1.1.1.1.1.1.m1.1.2.3.2">3</mn></mrow></msup><mo id="S3.T1.2.2.1.1.1.1.1.1.m1.1.3">,</mo><mo id="S3.T1.2.2.1.1.1.1.1.1.m1.1.4" lspace="0em" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S3.T1.2.2.1.1.1.1.1.1.m1.1c">\times 10^{-3},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.2.2.1.1.1.1.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT , ↓</annotation></semantics></math>)</span></span>
</span></span> <span class="ltx_text" id="S3.T1.2.2.1.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T1.3.3.2"><span class="ltx_text" id="S3.T1.3.3.2.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.3.3.2.1.2"></span> <span class="ltx_text" id="S3.T1.3.3.2.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.3.3.2.1.1.1">
<span class="ltx_tr" id="S3.T1.3.3.2.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.3.3.2.1.1.1.1.1">PSNR (<math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.3.3.2.1.1.1.1.1.m1.1"><semantics id="S3.T1.3.3.2.1.1.1.1.1.m1.1a"><mo id="S3.T1.3.3.2.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.3.3.2.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.3.3.2.1.1.1.1.1.m1.1b"><ci id="S3.T1.3.3.2.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.3.3.2.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.3.3.2.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.3.3.2.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></span>
</span></span> <span class="ltx_text" id="S3.T1.3.3.2.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T1.4.4.3"><span class="ltx_text" id="S3.T1.4.4.3.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.4.4.3.1.2"></span> <span class="ltx_text" id="S3.T1.4.4.3.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.4.4.3.1.1.1">
<span class="ltx_tr" id="S3.T1.4.4.3.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.4.3.1.1.1.2.1">LPIPS</span></span>
<span class="ltx_tr" id="S3.T1.4.4.3.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.4.4.3.1.1.1.1.1">(<math alttext="\times 10^{-3},\downarrow" class="ltx_math_unparsed" display="inline" id="S3.T1.4.4.3.1.1.1.1.1.m1.1"><semantics id="S3.T1.4.4.3.1.1.1.1.1.m1.1a"><mrow id="S3.T1.4.4.3.1.1.1.1.1.m1.1b"><mo id="S3.T1.4.4.3.1.1.1.1.1.m1.1.1" rspace="0.222em">×</mo><msup id="S3.T1.4.4.3.1.1.1.1.1.m1.1.2"><mn id="S3.T1.4.4.3.1.1.1.1.1.m1.1.2.2">10</mn><mrow id="S3.T1.4.4.3.1.1.1.1.1.m1.1.2.3"><mo id="S3.T1.4.4.3.1.1.1.1.1.m1.1.2.3a">−</mo><mn id="S3.T1.4.4.3.1.1.1.1.1.m1.1.2.3.2">3</mn></mrow></msup><mo id="S3.T1.4.4.3.1.1.1.1.1.m1.1.3">,</mo><mo id="S3.T1.4.4.3.1.1.1.1.1.m1.1.4" lspace="0em" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S3.T1.4.4.3.1.1.1.1.1.m1.1c">\times 10^{-3},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.4.4.3.1.1.1.1.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT , ↓</annotation></semantics></math>)</span></span>
</span></span> <span class="ltx_text" id="S3.T1.4.4.3.1.3"></span></span></td>
<td class="ltx_td ltx_align_center ltx_align_top ltx_border_t" colspan="2" id="S3.T1.5.5.4"><span class="ltx_text" id="S3.T1.5.5.4.1" style="font-size:80%;"><span class="ltx_text" id="S3.T1.5.5.4.1.2"></span> <span class="ltx_text" id="S3.T1.5.5.4.1.1">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.5.4.1.1.1">
<span class="ltx_tr" id="S3.T1.5.5.4.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.4.1.1.1.2.1">SSIM</span></span>
<span class="ltx_tr" id="S3.T1.5.5.4.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.4.1.1.1.1.1">(%, <math alttext="\uparrow" class="ltx_Math" display="inline" id="S3.T1.5.5.4.1.1.1.1.1.m1.1"><semantics id="S3.T1.5.5.4.1.1.1.1.1.m1.1a"><mo id="S3.T1.5.5.4.1.1.1.1.1.m1.1.1" stretchy="false" xref="S3.T1.5.5.4.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S3.T1.5.5.4.1.1.1.1.1.m1.1b"><ci id="S3.T1.5.5.4.1.1.1.1.1.m1.1.1.cmml" xref="S3.T1.5.5.4.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S3.T1.5.5.4.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S3.T1.5.5.4.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></span>
</span></span> <span class="ltx_text" id="S3.T1.5.5.4.1.3"></span></span></td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.5.5.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.6.1">
<span class="ltx_p" id="S3.T1.5.5.6.1.1"><span class="ltx_text" id="S3.T1.5.5.6.1.1.1"></span><span class="ltx_text" id="S3.T1.5.5.6.1.1.2" style="font-size:80%;"> </span><span class="ltx_text" id="S3.T1.5.5.6.1.1.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.5.6.1.1.3.1">
<span class="ltx_tr" id="S3.T1.5.5.6.1.1.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.6.1.1.3.1.1.1">Target</span></span>
<span class="ltx_tr" id="S3.T1.5.5.6.1.1.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.5.6.1.1.3.1.2.1">Image</span></span>
</span></span><span class="ltx_text" id="S3.T1.5.5.6.1.1.4" style="font-size:80%;"> </span><span class="ltx_text" id="S3.T1.5.5.6.1.1.5"></span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="S3.T1.5.5.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.5.7.1">
<span class="ltx_p" id="S3.T1.5.5.7.1.1"><span class="ltx_text" id="S3.T1.5.5.7.1.1.1" style="font-size:80%;">Target Concept</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.1"><span class="ltx_text" id="S3.T1.5.6.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.6.1.1.1" style="width:16.4pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.4pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.6.1.1.1.1">N.A.</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.6.2"><span class="ltx_text" id="S3.T1.5.6.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.6.2.1.1" style="width:22.4pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:22.4pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.6.2.1.1.1">DDIM</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.3.1">
<span class="ltx_p" id="S3.T1.5.6.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.6.3.1.1.1" style="font-size:80%;">P2P </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.6.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S3.T1.5.6.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.4.1">
<span class="ltx_p" id="S3.T1.5.6.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.4.1.1.1" style="font-size:80%;">69.01</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.5.1">
<span class="ltx_p" id="S3.T1.5.6.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.5.1.1.1" style="font-size:80%;">39.09</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.6.1">
<span class="ltx_p" id="S3.T1.5.6.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.6.1.1.1" style="font-size:80%;">15.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.7.1">
<span class="ltx_p" id="S3.T1.5.6.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.7.1.1.1" style="font-size:80%;">17.19</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.8.1">
<span class="ltx_p" id="S3.T1.5.6.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.8.1.1.1" style="font-size:80%;">340.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.9.1">
<span class="ltx_p" id="S3.T1.5.6.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.9.1.1.1" style="font-size:80%;">221.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.10.1">
<span class="ltx_p" id="S3.T1.5.6.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.10.1.1.1" style="font-size:80%;">56.56</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.6.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.11.1">
<span class="ltx_p" id="S3.T1.5.6.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.6.11.1.1.1" style="font-size:80%;">70.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.5.6.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.12.1">
<span class="ltx_p" id="S3.T1.5.6.12.1.1"><span class="ltx_text" id="S3.T1.5.6.12.1.1.1" style="font-size:80%;">24.35</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="S3.T1.5.6.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.6.13.1">
<span class="ltx_p" id="S3.T1.5.6.13.1.1"><span class="ltx_text" id="S3.T1.5.6.13.1.1.1" style="font-size:80%;">21.10</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.7">
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.1"><span class="ltx_text" id="S3.T1.5.7.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.7.1.1.1" style="width:16.4pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.4pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.7.1.1.1.1">N.A.</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.7.2"><span class="ltx_text" id="S3.T1.5.7.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.7.2.1.1" style="width:9.0pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:9.0pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.7.2.1.1.1">DI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.3.1">
<span class="ltx_p" id="S3.T1.5.7.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.7.3.1.1.1" style="font-size:80%;">P2P </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.7.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib11" title=""><span class="ltx_text" style="font-size:90%;">11</span></a><span class="ltx_text" id="S3.T1.5.7.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.4.1">
<span class="ltx_p" id="S3.T1.5.7.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.4.1.1.1" style="font-size:80%;">11.02</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.5.1">
<span class="ltx_p" id="S3.T1.5.7.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.7.5.1.1.1" style="font-size:80%;">5.963</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.6.1">
<span class="ltx_p" id="S3.T1.5.7.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.7.6.1.1.1" style="font-size:80%;">22.71</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.7.1">
<span class="ltx_p" id="S3.T1.5.7.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.7.7.1.1.1" style="font-size:80%;">27.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.8.1">
<span class="ltx_p" id="S3.T1.5.7.8.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.7.8.1.1.1" style="font-size:80%;">114.1</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.9.1">
<span class="ltx_p" id="S3.T1.5.7.9.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.7.9.1.1.1" style="font-size:80%;">54.68</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.10.1">
<span class="ltx_p" id="S3.T1.5.7.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.7.10.1.1.1" style="font-size:80%;">75.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.7.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.11.1">
<span class="ltx_p" id="S3.T1.5.7.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.7.11.1.1.1" style="font-size:80%;">84.57</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.5.7.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.12.1">
<span class="ltx_p" id="S3.T1.5.7.12.1.1"><span class="ltx_text" id="S3.T1.5.7.12.1.1.1" style="font-size:80%;">24.82</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T1.5.7.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.7.13.1">
<span class="ltx_p" id="S3.T1.5.7.13.1.1"><span class="ltx_text" id="S3.T1.5.7.13.1.1.1" style="font-size:80%;">22.07</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.8">
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.1"><span class="ltx_text" id="S3.T1.5.8.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.8.1.1.1" style="width:16.4pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:16.4pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.8.1.1.1.1">N.A.</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.8.2"><span class="ltx_text" id="S3.T1.5.8.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.8.2.1.1" style="width:9.0pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:9.0pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.8.2.1.1.1">DI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.3.1">
<span class="ltx_p" id="S3.T1.5.8.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.8.3.1.1.1" style="font-size:80%;">MasaCtrl </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.8.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib4" title=""><span class="ltx_text" style="font-size:90%;">4</span></a><span class="ltx_text" id="S3.T1.5.8.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.4.1">
<span class="ltx_p" id="S3.T1.5.8.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.4.1.1.1" style="font-size:80%;">23.34</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.5.1">
<span class="ltx_p" id="S3.T1.5.8.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.5.1.1.1" style="font-size:80%;">10.40</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.6.1">
<span class="ltx_p" id="S3.T1.5.8.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.6.1.1.1" style="font-size:80%;">19.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.7.1">
<span class="ltx_p" id="S3.T1.5.8.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.7.1.1.1" style="font-size:80%;">22.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.8.1">
<span class="ltx_p" id="S3.T1.5.8.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.8.1.1.1" style="font-size:80%;">160.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.9.1">
<span class="ltx_p" id="S3.T1.5.8.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.9.1.1.1" style="font-size:80%;">87.38</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.10.1">
<span class="ltx_p" id="S3.T1.5.8.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.10.1.1.1" style="font-size:80%;">71.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.8.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.11.1">
<span class="ltx_p" id="S3.T1.5.8.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.8.11.1.1.1" style="font-size:80%;">81.36</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.5.8.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.12.1">
<span class="ltx_p" id="S3.T1.5.8.12.1.1"><span class="ltx_text" id="S3.T1.5.8.12.1.1.1" style="font-size:80%;">24.42</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T1.5.8.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.8.13.1">
<span class="ltx_p" id="S3.T1.5.8.13.1.1"><span class="ltx_text" id="S3.T1.5.8.13.1.1.1" style="font-size:80%;">21.37</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.9">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.1"><span class="ltx_text" id="S3.T1.5.9.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.9.1.1.1" style="width:27.3pt;height:5.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.3pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.9.1.1.1.1">VecAdd</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.9.2"><span class="ltx_text" id="S3.T1.5.9.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.9.2.1.1" style="width:9.0pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:9.0pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.9.2.1.1.1">DI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.3.1">
<span class="ltx_p" id="S3.T1.5.9.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.9.3.1.1.1" style="font-size:80%;">P2P-Zero </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.9.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S3.T1.5.9.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.4.1">
<span class="ltx_p" id="S3.T1.5.9.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.4.1.1.1" style="font-size:80%;">53.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.5.1">
<span class="ltx_p" id="S3.T1.5.9.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.5.1.1.1" style="font-size:80%;">25.54</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.6.1">
<span class="ltx_p" id="S3.T1.5.9.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.6.1.1.1" style="font-size:80%;">17.65</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.7.1">
<span class="ltx_p" id="S3.T1.5.9.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.7.1.1.1" style="font-size:80%;">21.59</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.8.1">
<span class="ltx_p" id="S3.T1.5.9.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.8.1.1.1" style="font-size:80%;">273.8</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.9.1">
<span class="ltx_p" id="S3.T1.5.9.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.9.1.1.1" style="font-size:80%;">142.4</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.10.1">
<span class="ltx_p" id="S3.T1.5.9.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.10.1.1.1" style="font-size:80%;">61.78</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.9.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.11.1">
<span class="ltx_p" id="S3.T1.5.9.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.9.11.1.1.1" style="font-size:80%;">76.60</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.5.9.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.12.1">
<span class="ltx_p" id="S3.T1.5.9.12.1.1"><span class="ltx_text" id="S3.T1.5.9.12.1.1.1" style="font-size:80%;">23.16</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="S3.T1.5.9.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.9.13.1">
<span class="ltx_p" id="S3.T1.5.9.13.1.1"><span class="ltx_text" id="S3.T1.5.9.13.1.1.1" style="font-size:80%;">20.81</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.10">
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.1"><span class="ltx_text" id="S3.T1.5.10.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.10.1.1.1" style="width:34.6pt;height:18pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.6pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.10.1.1.1.1"><span class="ltx_text" id="S3.T1.5.10.1.1.1.1.1"></span> <span class="ltx_text" id="S3.T1.5.10.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.10.1.1.1.1.2.1">
<span class="ltx_tr" id="S3.T1.5.10.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.10.1.1.1.1.2.1.1.1">CoLan</span></span>
</span></span> <span class="ltx_text" id="S3.T1.5.10.1.1.1.1.3"></span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.10.2"><span class="ltx_text" id="S3.T1.5.10.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.10.2.1.1" style="width:9.0pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:9.0pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.10.2.1.1.1">DI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.3.1">
<span class="ltx_p" id="S3.T1.5.10.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.10.3.1.1.1" style="font-size:80%;">P2P-Zero </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.10.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib40" title=""><span class="ltx_text" style="font-size:90%;">40</span></a><span class="ltx_text" id="S3.T1.5.10.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.4.1">
<span class="ltx_p" id="S3.T1.5.10.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.4.1.1.1" style="font-size:80%;">15.91</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.5.1">
<span class="ltx_p" id="S3.T1.5.10.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.5.1.1.1" style="font-size:80%;">6.606</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.6.1">
<span class="ltx_p" id="S3.T1.5.10.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.10.6.1.1.1" style="font-size:80%;">23.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.7.1">
<span class="ltx_p" id="S3.T1.5.10.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.7.1.1.1" style="font-size:80%;">26.08</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.8.1">
<span class="ltx_p" id="S3.T1.5.10.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.8.1.1.1" style="font-size:80%;">120.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.9.1">
<span class="ltx_p" id="S3.T1.5.10.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.9.1.1.1" style="font-size:80%;">68.43</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.10.1">
<span class="ltx_p" id="S3.T1.5.10.10.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.10.10.1.1.1" style="font-size:80%;">75.82</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.10.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.11.1">
<span class="ltx_p" id="S3.T1.5.10.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.10.11.1.1.1" style="font-size:80%;">83.55</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.5.10.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.12.1">
<span class="ltx_p" id="S3.T1.5.10.12.1.1"><span class="ltx_text" id="S3.T1.5.10.12.1.1.1" style="font-size:80%;">23.84</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T1.5.10.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.10.13.1">
<span class="ltx_p" id="S3.T1.5.10.13.1.1"><span class="ltx_text" id="S3.T1.5.10.13.1.1.1" style="font-size:80%;">21.13</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.11">
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.1"><span class="ltx_text" id="S3.T1.5.11.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.11.1.1.1" style="width:27.3pt;height:5.6pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:27.3pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.11.1.1.1.1">VecAdd</span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S3.T1.5.11.2"><span class="ltx_text" id="S3.T1.5.11.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.11.2.1.1" style="width:8.9pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:8.9pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.11.2.1.1.1">VI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.3.1">
<span class="ltx_p" id="S3.T1.5.11.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.11.3.1.1.1" style="font-size:80%;">InfEdit </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.11.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S3.T1.5.11.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.4.1">
<span class="ltx_p" id="S3.T1.5.11.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.4.1.1.1" style="font-size:80%;">27.18</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.5.1">
<span class="ltx_p" id="S3.T1.5.11.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.5.1.1.1" style="font-size:80%;">17.24</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.6.1">
<span class="ltx_p" id="S3.T1.5.11.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.6.1.1.1" style="font-size:80%;">21.83</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.7.1">
<span class="ltx_p" id="S3.T1.5.11.7.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.7.1.1.1" style="font-size:80%;">27.99</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.8.1">
<span class="ltx_p" id="S3.T1.5.11.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.8.1.1.1" style="font-size:80%;">136.6</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.9.1">
<span class="ltx_p" id="S3.T1.5.11.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.9.1.1.1" style="font-size:80%;">56.65</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.10.1">
<span class="ltx_p" id="S3.T1.5.11.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.10.1.1.1" style="font-size:80%;">71.70</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_t" id="S3.T1.5.11.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.11.1">
<span class="ltx_p" id="S3.T1.5.11.11.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.11.11.1.1.1" style="font-size:80%;">84.64</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_t" id="S3.T1.5.11.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.12.1">
<span class="ltx_p" id="S3.T1.5.11.12.1.1"><span class="ltx_text" id="S3.T1.5.11.12.1.1.1" style="font-size:80%;">24.80</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_t" id="S3.T1.5.11.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.11.13.1">
<span class="ltx_p" id="S3.T1.5.11.13.1.1"><span class="ltx_text" id="S3.T1.5.11.13.1.1.1" style="font-size:80%;">22.04</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.12">
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.1"><span class="ltx_text" id="S3.T1.5.12.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.12.1.1.1" style="width:34.6pt;height:18pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.6pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.12.1.1.1.1"><span class="ltx_text" id="S3.T1.5.12.1.1.1.1.1"></span> <span class="ltx_text" id="S3.T1.5.12.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.12.1.1.1.1.2.1">
<span class="ltx_tr" id="S3.T1.5.12.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.12.1.1.1.1.2.1.1.1">CoLan</span></span>
</span></span> <span class="ltx_text" id="S3.T1.5.12.1.1.1.1.3"></span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center" id="S3.T1.5.12.2"><span class="ltx_text" id="S3.T1.5.12.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.12.2.1.1" style="width:8.9pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:8.9pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.12.2.1.1.1">VI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.3.1">
<span class="ltx_p" id="S3.T1.5.12.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.12.3.1.1.1" style="font-size:80%;">InfEdit (E) </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.12.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S3.T1.5.12.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.4.1">
<span class="ltx_p" id="S3.T1.5.12.4.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.4.1.1.1" style="font-size:80%;">16.21</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.5.1">
<span class="ltx_p" id="S3.T1.5.12.5.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.5.1.1.1" style="font-size:80%;">8.025</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.6.1">
<span class="ltx_p" id="S3.T1.5.12.6.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.6.1.1.1" style="font-size:80%;">22.13</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.7.1">
<span class="ltx_p" id="S3.T1.5.12.7.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.12.7.1.1.1" style="font-size:80%;">28.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.8.1">
<span class="ltx_p" id="S3.T1.5.12.8.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.8.1.1.1" style="font-size:80%;">125.9</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.9.1">
<span class="ltx_p" id="S3.T1.5.12.9.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.9.1.1.1" style="font-size:80%;">55.05</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.10.1">
<span class="ltx_p" id="S3.T1.5.12.10.1.1" style="width:19.9pt;"><span class="ltx_text" id="S3.T1.5.12.10.1.1.1" style="font-size:80%;">74.96</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top" id="S3.T1.5.12.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.11.1">
<span class="ltx_p" id="S3.T1.5.12.11.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.12.11.1.1.1" style="font-size:80%;">84.72</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify" id="S3.T1.5.12.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.12.1">
<span class="ltx_p" id="S3.T1.5.12.12.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.12.12.1.1.1" style="font-size:80%;">24.90</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify" id="S3.T1.5.12.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.12.13.1">
<span class="ltx_p" id="S3.T1.5.12.13.1.1"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.12.13.1.1.1" style="font-size:80%;">22.12</span></span>
</span>
</td>
</tr>
<tr class="ltx_tr" id="S3.T1.5.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.13.1"><span class="ltx_text" id="S3.T1.5.13.1.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.13.1.1.1" style="width:34.6pt;height:18pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:34.6pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.13.1.1.1.1"><span class="ltx_text" id="S3.T1.5.13.1.1.1.1.1"></span> <span class="ltx_text" id="S3.T1.5.13.1.1.1.1.2">
<span class="ltx_tabular ltx_align_middle" id="S3.T1.5.13.1.1.1.1.2.1">
<span class="ltx_tr" id="S3.T1.5.13.1.1.1.1.2.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S3.T1.5.13.1.1.1.1.2.1.1.1">CoLan</span></span>
</span></span> <span class="ltx_text" id="S3.T1.5.13.1.1.1.1.3"></span></span>
</span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S3.T1.5.13.2"><span class="ltx_text" id="S3.T1.5.13.2.1" style="font-size:80%;">
<span class="ltx_inline-block ltx_transformed_outer" id="S3.T1.5.13.2.1.1" style="width:8.9pt;height:5.5pt;vertical-align:-0.0pt;"><span class="ltx_transformed_inner" style="width:8.9pt;transform:translate(0pt,0pt) rotate(-0deg) ;">
<span class="ltx_p" id="S3.T1.5.13.2.1.1.1">VI</span>
</span></span></span></td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.3">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.3.1">
<span class="ltx_p" id="S3.T1.5.13.3.1.1" style="width:49.8pt;"><span class="ltx_text" id="S3.T1.5.13.3.1.1.1" style="font-size:80%;">InfEdit (S) </span><cite class="ltx_cite ltx_centering ltx_citemacro_cite"><span class="ltx_text" id="S3.T1.5.13.3.1.1.2.1" style="font-size:80%;">[</span><a class="ltx_ref" href="https://arxiv.org/html/2504.02828v1#bib.bib65" title=""><span class="ltx_text" style="font-size:90%;">65</span></a><span class="ltx_text" id="S3.T1.5.13.3.1.1.3.2" style="font-size:80%;">]</span></cite></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.4">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.4.1">
<span class="ltx_p" id="S3.T1.5.13.4.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.13.4.1.1.1" style="font-size:80%;">13.97</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.5">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.5.1">
<span class="ltx_p" id="S3.T1.5.13.5.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.13.5.1.1.1" style="font-size:80%;">6.199</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.6">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.6.1">
<span class="ltx_p" id="S3.T1.5.13.6.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.6.1.1.1" style="font-size:80%;">23.42</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.7">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.7.1">
<span class="ltx_p" id="S3.T1.5.13.7.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.7.1.1.1" style="font-size:80%;">28.46</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.8">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.8.1">
<span class="ltx_p" id="S3.T1.5.13.8.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.8.1.1.1" style="font-size:80%;">110.3</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.9">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.9.1">
<span class="ltx_p" id="S3.T1.5.13.9.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.9.1.1.1" style="font-size:80%;">53.04</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.10">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.10.1">
<span class="ltx_p" id="S3.T1.5.13.10.1.1" style="width:19.9pt;"><span class="ltx_text ltx_framed ltx_framed_underline" id="S3.T1.5.13.10.1.1.1" style="font-size:80%;">75.51</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_align_top ltx_border_bb" id="S3.T1.5.13.11">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.11.1">
<span class="ltx_p" id="S3.T1.5.13.11.1.1" style="width:19.9pt;"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.11.1.1.1" style="font-size:80%;">85.12</span></span>
</span>
</td>
<td class="ltx_td ltx_align_justify ltx_border_bb" id="S3.T1.5.13.12">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.12.1">
<span class="ltx_p" id="S3.T1.5.13.12.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.12.1.1.1" style="font-size:80%;">24.94</span></span>
</span>
</td>
<td class="ltx_td ltx_nopad_r ltx_align_justify ltx_border_bb" id="S3.T1.5.13.13">
<span class="ltx_inline-block ltx_align_top" id="S3.T1.5.13.13.1">
<span class="ltx_p" id="S3.T1.5.13.13.1.1"><span class="ltx_text ltx_font_bold" id="S3.T1.5.13.13.1.1.1" style="font-size:80%;">22.45</span></span>
</span>
</td>
</tr>
</table>{{< /table-caption >}}

> 🔼 This table presents a quantitative comparison of image editing performance using different baselines, including methods with and without Concept Lancet (CoLan).  It evaluates both 'Edit Effectiveness' (how accurately the edits reflect the desired changes) and 'Consistency Preservation' (how well the original image's visual aspects are maintained).  Edit effectiveness is measured using Target Image and Target Concept metrics based on CLIP similarity scores. Consistency preservation is measured by Structure Distance (StruDist), Peak Signal-to-Noise Ratio (PSNR), Learned Perceptual Image Patch Similarity (LPIPS), and Structural Similarity Index (SSIM), considering both the whole image and the background separately. The table shows results for several different backbone models using both vector addition and CoLan, demonstrating CoLan's superior performance.
> <details>
> <summary>read the caption</summary>
> Table 1:  Evaluation of different baselines using Concept Lancet or Vector Addition. The best performance of each category is in bold and the second best is underlined. For each metric under Consistency Preservation, the number on the left is evaluated on the whole image, and the number on the right is evaluated on the background (outside the edit mask).
> </details>





### In-depth insights


#### Sparse Concept Edit
The 'Sparse Concept Edit' paradigm represents a significant advancement in image manipulation. **By decomposing images into sparse combinations of learned concepts**, edits become more precise and controllable. This approach avoids the pitfalls of directly manipulating latent spaces, which can lead to unintended artifacts. **The reliance on sparsity ensures that only the most relevant concepts are modified**, preserving the overall image structure. The introduction of vision-language models (VLMs) for identifying pertinent concepts further enhances the efficiency of the editing process. Overall, the concept unlocks nuanced image alterations, balancing effectiveness and visual consistency.

#### CoLan-150K Data
The **CoLan-150K dataset** is the crux of this innovative approach for enhanced image editing. As a **conceptual representation dataset**, CoLan-150K plays a pivotal role in the system's ability to perform **accurate estimation of concept presence** within images. Unlike existing resources, CoLan-150K distinguishes itself through a deliberate and comprehensive compilation of visual concepts, each accompanied by a diverse range of descriptions and scenarios. This attention to detail ensures the latent dictionary used for sparse decomposition isn't just populated with terms, but with meaningful, visually relevant representations of those terms. This strategic scaling up of concept coverage, coupled with the nuanced representation of individual concepts, enables the system to accurately interpret and effectively manipulate images, transplant target ideas, and enhance the robustness of the results.

#### VLM Concept Parse
Analyzing the potential of a "VLM Concept Parse" involves considering its role in bridging vision-language models (VLMs) with concept-level understanding. It could be a module or technique designed to **extract and represent explicit concepts** present in images and text. The module would serve as an intermediary, facilitating a more structured and interpretable exchange between modalities. This opens doors for applications like **improved image captioning, targeted image editing based on conceptual instructions, and enhanced visual question answering**. VLMs often struggle with abstract concepts or require extensive training data to grasp nuances. A dedicated concept parse could alleviate this by **explicitly identifying and encoding relevant concepts**, enabling VLMs to reason and generate more accurate responses. It could potentially leverage existing knowledge graphs or ontologies to enhance concept recognition. A challenge would be managing the complexity and ambiguity of natural language and visual scenes, ensuring accurate concept extraction and linking across modalities. A VLM parse has the power to drastically improve performance of current image editing paradigms.

#### Edit Strength Key
The concept of "edit strength" is not explicitly mentioned as a heading, but the paper implicitly emphasizes its importance through the analysis of different concepts and their coefficients. The paper highlights the challenge of **determining the appropriate magnitude of edits** to images. It advocates for a well-estimated edit strength that is not a fixed hyperparameter but is tailored for each source image by its composition of visual concepts. The approach involves sparse decomposition, **accurately decomposing images** into base visual components. This strategy is based on the insight that **different images require different amounts of adjustment**. The aim is to maintain a balance during image editing. If it's underestimated then the editing task might be insufficient, if it's overestimated then consistency with surrounding visual is lost. Thus, the estimation must be precise which is achieved by sparse decomposition and transplantation.

#### Spatial Edit Limit
**Spatial Edit Limit** is a key challenge in diffusion-based image editing, as it concerns the extent to which edits can be localized and contained within specific regions of an image. Overly aggressive spatial edits can disrupt the visual consistency and coherence of the image, leading to unnatural or unrealistic results. Conversely, excessively constrained edits may fail to achieve the desired transformation or integration with the surrounding context. Addressing this limit requires sophisticated techniques such as attention control or region-specific manipulation of latent representations. These methods enable precise and localized edits while preserving the overall structural integrity and visual harmony of the image. The ability to overcome the spatial edit limit is crucial for achieving high-quality and visually plausible image editing results.


### More visual insights

<details>
<summary>More on figures
</summary>


![](https://arxiv.org/html/2504.02828/x2.png)

> 🔼 This figure illustrates the core concept of Concept Lancet (CoLan), a method for precise image editing using diffusion models.  It highlights the problem of accurately estimating the magnitude of an edit direction when modifying an image's representation in the latent space.  Simply shifting the representation towards a target concept (as in existing methods) often leads to either an overestimation (too strong an edit, harming visual consistency) or an underestimation (too weak an edit, failing to achieve the desired change). CoLan addresses this by decomposing the source image's latent representation into a sparse linear combination of concept vectors, which allows for an accurate estimation of the presence and strength of different concepts within the image. This informed approach enables CoLan to precisely transplant the target concept with the correct magnitude, preserving visual consistency while effectively implementing the edit.  Further examples illustrating the effectiveness of this approach are shown in Figures 5 and 7.
> <details>
> <summary>read the caption</summary>
> Figure 2: Representation manipulation in diffusion models involves adding an accurate magnitude of edit direction (e.g., Image (3) by CoLan) to the latent source representation. Figure 5 and Figure 7 show more examples.
> </details>



![](https://arxiv.org/html/2504.02828/x3.png)

> 🔼 The figure illustrates the Concept Lancet (CoLan) framework for image editing.  The process begins with a source image and its corresponding prompt. A vision-language model (VLM) analyzes this input and identifies key visual concepts (e.g., 'cat,' 'grass,' 'sitting'). These concepts form a 'concept dictionary,' a set of vectors representing the concepts in the model's latent space. The source image's representation in this latent space is then decomposed into a sparse linear combination of these concept vectors.  To perform the edit (e.g., changing a cat to a dog), the concept vector corresponding to the source concept ('cat') is replaced with the target concept vector ('dog'). This modified representation is then fed into an image editing backbone (a diffusion model), generating a new image with the desired change.  The framework is designed to ensure that the edit is precise and only affects the target concept, preserving the other visual elements of the original image.
> <details>
> <summary>read the caption</summary>
> Figure 3: The CoLan framework. Starting with a source image and prompt, a vision-language model extracts visual concepts (e.g., cat, grass, sitting) to construct a concept dictionary. The source representation is then decomposed along this dictionary, and the target concept (dog) is transplanted to replace the corresponding atom to achieve precise edits. Finally, the image editing backbone generates an edited image where the desired target concept is incorporated without disrupting other visual elements.
> </details>



![](https://arxiv.org/html/2504.02828/x4.png)

> 🔼 This figure displays example stimuli from the CoLan-150K dataset, a collection of diverse visual concept descriptions used to train the Concept Lancet model.  Each concept within the dataset is represented by numerous examples. These samples show the variety of phrasing and contexts included, illustrating that the descriptions are not just single words but also phrases and descriptive sentences covering multiple aspects of a concept.  The goal of the dataset is to ensure the model can accurately represent and manipulate concepts in various scenarios, improving editing precision and consistency.  Additional examples beyond those shown here can be found in the paper's Appendix §8.
> <details>
> <summary>read the caption</summary>
> Figure 4: Samples of the concept stimuli from CoLan-150K. Additional samples are attached in the Appendix §8.
> </details>



![](https://arxiv.org/html/2504.02828/x5.png)

> 🔼 This figure showcases the effectiveness of Concept Lancet (CoLan) in image editing by comparing its performance with the P2P-Zero baseline.  Each row displays a source image, the results of using P2P-Zero alone, and the results of using P2P-Zero combined with CoLan.  The source image captions are presented in gray, while the specific editing tasks (replace, add, or remove a concept) are highlighted in blue.  Brackets, [ ], around a word or phrase denote the specific concept targeted by the edit.  Empty brackets, [], indicate the removal of a concept. The figure highlights how CoLan improves the accuracy and consistency of edits by effectively transplanting the desired concepts while preserving other aspects of the original image.
> <details>
> <summary>read the caption</summary>
> Figure 5: Visual comparisons of CoLan in the text embedding space of P2P-Zero. Texts in gray are the original captions of the source images from PIE-Bench, and texts in blue are the corresponding edit task (replace, add, remove). [x] represents the concepts of interest, and [] represents the null concept.
> </details>



![](https://arxiv.org/html/2504.02828/x6.png)

> 🔼 This figure displays bar charts illustrating the magnitudes of the top 10 concept atoms derived from the Concept Lancet (CoLan) decomposition method applied to text embedding space. Each bar chart represents a different image from the dataset. The height of each bar corresponds to the magnitude of a particular concept's coefficient in the sparse decomposition.  The x-axis labels represent the names of the concepts while the y-axis denotes the magnitude of the concept vector. This visualization helps to understand the relative importance of different concepts in each image and how CoLan decomposes the image representation into a sparse combination of these concepts.
> <details>
> <summary>read the caption</summary>
> Figure 6: The histograms of solved magnitudes of the concept atoms in CoLan decomposition (text embedding space). As there are tens of concepts in a single dictionary, the histogram includes the concepts whose CoLan coefficients have the top 10 largest magnitudes.
> </details>



![](https://arxiv.org/html/2504.02828/x7.png)

> 🔼 Figure 7 presents a visual comparison of the image editing results obtained using Concept Lancet (CoLan) integrated with the InfEdit model.  The top row showcases results from using CoLan in InfEdit's score space, while the bottom row demonstrates its application in InfEdit's text embedding space.  Each image pair shows the original source image and the corresponding edited image. The original image caption is displayed in gray, and the specific editing task (replace, add, or remove a concept) is indicated in blue. This figure illustrates CoLan's ability to effectively and consistently edit images regardless of the chosen latent space (score or text embedding).
> <details>
> <summary>read the caption</summary>
> Figure 7: Visual comparisons of CoLan in the score space (first row) and text embedding space (second row) of InfEdit. Texts in gray are the original captions of the source images from PIE-Bench, and texts in blue are the corresponding edit task (replace, add, remove).
> </details>



![](https://arxiv.org/html/2504.02828/x8.png)

> 🔼 This figure displays bar charts illustrating the magnitudes of the top 10 most significant concept components derived from the sparse decomposition process within Concept Lancet (CoLan) when operating in the score space. Each bar chart represents a distinct image from the dataset, with the height of each bar reflecting the magnitude of its corresponding concept vector. This visualization helps demonstrate how CoLan effectively identifies and weights the most relevant concepts for each image in the editing process.
> <details>
> <summary>read the caption</summary>
> Figure 8: The histograms of solved magnitudes of the concept atoms in CoLan decomposition (score space). The histogram includes the concepts whose CoLan coefficients have the top 10 largest magnitudes.
> </details>



![](https://arxiv.org/html/2504.02828/x9.png)

> 🔼 This figure displays the results of applying concept removal editing to apples and lotuses using the Concept Lancet (CoLan) method. By varying the coefficient  𝒘fresh{ w}_{ fresh} for removing the concept of 'freshness' (represented by 𝒅fresh{ d}_{ fresh}), the image is progressively altered.  The top row shows the original images, while subsequent rows show the images edited with decreasing amounts of 'freshness', corresponding to increasing negative values of  𝒘fresh{ w}_{ fresh}. The specific coefficients  𝒘fresh∗{ w}_{ fresh}^{*} obtained by CoLan are -0.977 for the apple and -1.16 for the lotus.  The figure demonstrates how CoLan controls the intensity of the editing effect.
> <details>
> <summary>read the caption</summary>
> Figure 9: Visualizations of edited images with decreasing strength of the concept [fresh] extracted from our CoLan-150K dataset. The values on top correspond to the coefficient 𝒘freshsubscript𝒘fresh{\boldsymbol{w}}_{\text{fresh}}bold_italic_w start_POSTSUBSCRIPT fresh end_POSTSUBSCRIPT for removing the concept 𝒅freshsubscript𝒅fresh{\boldsymbol{d}}_{\text{fresh}}bold_italic_d start_POSTSUBSCRIPT fresh end_POSTSUBSCRIPT. CoLan solves 𝒘fresh∗subscriptsuperscript𝒘fresh{\boldsymbol{w}}^{*}_{\text{fresh}}bold_italic_w start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT fresh end_POSTSUBSCRIPT of −0.9770.977-0.977- 0.977 for the apple and −1.161.16-1.16- 1.16 for the lotus.
> </details>



![](https://arxiv.org/html/2504.02828/x10.png)

> 🔼 This figure visualizes how changing the coefficient  **w<sub>green</sub>** in the concept vector **d<sub>green</sub>** affects the generated image.  The coefficient controls the intensity of the 'green' concept added to the base image.  The experiment uses apples and roses as examples.  The results show that a coefficient of 0.586 produces the optimal 'green' hue for the apple, while 0.695 is optimal for the rose.  Increasing the coefficient beyond these values leads to unnatural and over-saturated results. This demonstrates the importance of precisely controlling the magnitude of concept addition for effective image editing.
> <details>
> <summary>read the caption</summary>
> Figure 10: Visualizations of edited images with increasing strength of the concept [green] extracted from our CoLan-150K dataset. The values on top correspond to the coefficient 𝒘greensubscript𝒘green{\boldsymbol{w}}_{\text{green}}bold_italic_w start_POSTSUBSCRIPT green end_POSTSUBSCRIPT for adding the concept vector 𝒅greensubscript𝒅green{\boldsymbol{d}}_{\text{green}}bold_italic_d start_POSTSUBSCRIPT green end_POSTSUBSCRIPT. CoLan solves 𝒘green∗subscriptsuperscript𝒘green{\boldsymbol{w}}^{*}_{\text{green}}bold_italic_w start_POSTSUPERSCRIPT ∗ end_POSTSUPERSCRIPT start_POSTSUBSCRIPT green end_POSTSUBSCRIPT of 0.5860.5860.5860.586 for the apple and 0.6950.6950.6950.695 for the rose.
> </details>



![](https://arxiv.org/html/2504.02828/x11.png)

> 🔼 This figure displays a visual comparison of image editing results obtained using the P2P-Zero model with and without the Concept Lancet (CoLan) framework.  Multiple image editing tasks are shown, each with the original image, the result from P2P-Zero alone, and the result from P2P-Zero enhanced by CoLan. The goal is to demonstrate how CoLan improves the visual quality of edited images by more accurately aligning them with the user's specified edits.
> <details>
> <summary>read the caption</summary>
> Figure 11: Additional visual comparison of CoLan in the text embedding space of P2P-Zero. We observe that the backbone plugging with CoLan has editing results that visually better align with the task.
> </details>



![](https://arxiv.org/html/2504.02828/x12.png)

> 🔼 This figure demonstrates the impact of CoLan on image editing by comparing results with and without its usage.  The top row displays the original source images. The middle row shows the results of applying a fixed edit strength (0.7) to the concept '[dog]' in the source images without employing CoLan. This fixed strength approach lacks the adaptability to account for the varying prominence of the '[dog]' concept across different images. The bottom row presents the results obtained with CoLan. CoLan's adaptive concept analysis and magnitude estimation ensures that the editing strength is appropriately determined for each image. This leads to more consistent and effective editing results compared to the fixed strength method.
> <details>
> <summary>read the caption</summary>
> Figure 12: Visualizations of editing results. The first row shows the source images, the second row shows the results with the fixed edit strength of 0.70.70.70.7 for the concept [dog] without CoLan analysis, and the third row shows the edit results with CoLan analysis.
> </details>



![](https://arxiv.org/html/2504.02828/x13.png)

> 🔼 This figure displays examples from the CoLan-150K dataset, demonstrating the concept grounding of three selected concept vectors: [watercolor], [dog], and [wearing hat]. For each concept, several source images were chosen, and the corresponding edited images are shown after applying the concept vector using the P2P-Zero backbone with CoLan. The results visually confirm that the extracted concept vectors effectively convey the intended semantics, showcasing the quality of the CoLan-150K dataset and the effectiveness of the CoLan method in generating grounded concept representations.
> <details>
> <summary>read the caption</summary>
> Figure 13: Visualizations of concept grounding for sampled concepts from our CoLan-150K dataset. We observe that the extracted concept vectors from our dataset corresponds to the desired semantics by visualization.
> </details>



![](https://arxiv.org/html/2504.02828/x14.png)

> 🔼 Figure 14 presents a subset of the CoLan-150K dataset, showcasing example stimuli for various concepts relevant to image editing.  Each concept within the dataset has around 30 associated stimuli, offering diverse descriptions and contextual variations. This figure displays only the first three stimuli for a selection of these concepts, illustrating the rich and varied nature of the data used to train the Concept Lancet model. The stimuli encompass various styles, contexts, and perspectives to enhance the model's understanding and application of each concept.
> <details>
> <summary>read the caption</summary>
> Figure 14: Additional samples of the concept stimuli from CoLan-150K. Each concept consists of approximately 30303030 stimuli and this figure samples the first three for a concept.
> </details>



</details>




<details>
<summary>More on tables
</summary>


{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T2.6">
<tr class="ltx_tr" id="S4.T2.6.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.1"><span class="ltx_text" id="S4.T2.6.1.1.1" style="font-size:80%;">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.2">
<span class="ltx_text" id="S4.T2.6.1.2.1"></span><span class="ltx_text" id="S4.T2.6.1.2.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T2.6.1.2.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.6.1.2.3.1">
<span class="ltx_tr" id="S4.T2.6.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.1.2.3.1.1.1">Metric</span></span>
</span></span><span class="ltx_text" id="S4.T2.6.1.2.4"></span><span class="ltx_text" id="S4.T2.6.1.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.3">
<span class="ltx_text" id="S4.T2.6.1.3.1"></span><span class="ltx_text" id="S4.T2.6.1.3.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T2.6.1.3.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.6.1.3.3.1">
<span class="ltx_tr" id="S4.T2.6.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.1.3.3.1.1.1">Time</span></span>
<span class="ltx_tr" id="S4.T2.6.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.1.3.3.1.2.1">(s)</span></span>
</span></span><span class="ltx_text" id="S4.T2.6.1.3.4"></span><span class="ltx_text" id="S4.T2.6.1.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T2.6.1.4">
<span class="ltx_text" id="S4.T2.6.1.4.1"></span><span class="ltx_text" id="S4.T2.6.1.4.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T2.6.1.4.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T2.6.1.4.3.1">
<span class="ltx_tr" id="S4.T2.6.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.1.4.3.1.1.1">Proportion</span></span>
<span class="ltx_tr" id="S4.T2.6.1.4.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T2.6.1.4.3.1.2.1">(%)</span></span>
</span></span><span class="ltx_text" id="S4.T2.6.1.4.4"></span><span class="ltx_text" id="S4.T2.6.1.4.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.1" rowspan="2"><span class="ltx_text" id="S4.T2.6.2.1.1" style="font-size:80%;">P2P-Zero</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.2"><span class="ltx_text" id="S4.T2.6.2.2.1" style="font-size:80%;">Editing Process</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.3"><span class="ltx_text" id="S4.T2.6.2.3.1" style="font-size:80%;">38.74</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.2.4"><span class="ltx_text" id="S4.T2.6.2.4.1" style="font-size:80%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.3">
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.1"><span class="ltx_text" id="S4.T2.6.3.1.1" style="font-size:80%;">Sparse Decomposition</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.2"><span class="ltx_text" id="S4.T2.6.3.2.1" style="font-size:80%;">0.153</span></td>
<td class="ltx_td ltx_align_center" id="S4.T2.6.3.3"><span class="ltx_text" id="S4.T2.6.3.3.1" style="font-size:80%;">0.394</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.4">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T2.6.4.1" rowspan="2"><span class="ltx_text" id="S4.T2.6.4.1.1" style="font-size:80%;">Infedit (S)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.2"><span class="ltx_text" id="S4.T2.6.4.2.1" style="font-size:80%;">Editing Process</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.3"><span class="ltx_text" id="S4.T2.6.4.3.1" style="font-size:80%;">2.198</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T2.6.4.4"><span class="ltx_text" id="S4.T2.6.4.4.1" style="font-size:80%;">100</span></td>
</tr>
<tr class="ltx_tr" id="S4.T2.6.5">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.5.1"><span class="ltx_text" id="S4.T2.6.5.1.1" style="font-size:80%;">Sparse Decomposition</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.5.2"><span class="ltx_text" id="S4.T2.6.5.2.1" style="font-size:80%;">0.084</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T2.6.5.3"><span class="ltx_text" id="S4.T2.6.5.3.1" style="font-size:80%;">3.82</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the average computation time required for the sparse decomposition step within the Concept Lancet (CoLan) framework, broken down by different image editing backbones.  It highlights the efficiency of CoLan's sparse decomposition process in relation to the overall image editing pipeline.
> <details>
> <summary>read the caption</summary>
> Table 2:  Average time of sparse decomposition in CoLan for different backbones.
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T3.8">
<tr class="ltx_tr" id="S4.T3.6.4">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.4.5" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.6.4.5.1" style="font-size:80%;">Backbone</span></td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.4.6" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.6.4.6.1"></span><span class="ltx_text" id="S4.T3.6.4.6.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T3.6.4.6.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.6.4.6.3.1">
<span class="ltx_tr" id="S4.T3.6.4.6.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.6.4.6.3.1.1.1" style="padding-left:3.2pt;padding-right:3.2pt;">Metric</span></span>
</span></span><span class="ltx_text" id="S4.T3.6.4.6.4"></span><span class="ltx_text" id="S4.T3.6.4.6.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.3.1.1" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.3.1.1.2"></span><span class="ltx_text" id="S4.T3.3.1.1.3" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T3.3.1.1.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.3.1.1.1.1">
<span class="ltx_tr" id="S4.T3.3.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.3.1.1.1.1.1.1" style="padding-left:3.2pt;padding-right:3.2pt;"><math alttext="N=5" class="ltx_Math" display="inline" id="S4.T3.3.1.1.1.1.1.1.m1.1"><semantics id="S4.T3.3.1.1.1.1.1.1.m1.1a"><mrow id="S4.T3.3.1.1.1.1.1.1.m1.1.1" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.3.1.1.1.1.1.1.m1.1.1.2" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.T3.3.1.1.1.1.1.1.m1.1.1.1" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.3.1.1.1.1.1.1.m1.1.1.3" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.3.cmml">5</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.3.1.1.1.1.1.1.m1.1b"><apply id="S4.T3.3.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1"><eq id="S4.T3.3.1.1.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.3.1.1.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.T3.3.1.1.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.3.1.1.1.1.1.1.m1.1.1.3">5</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.3.1.1.1.1.1.1.m1.1c">N=5</annotation><annotation encoding="application/x-llamapun" id="S4.T3.3.1.1.1.1.1.1.m1.1d">italic_N = 5</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S4.T3.3.1.1.4"></span><span class="ltx_text" id="S4.T3.3.1.1.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.4.2.2" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.4.2.2.2"></span><span class="ltx_text" id="S4.T3.4.2.2.3" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T3.4.2.2.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.4.2.2.1.1">
<span class="ltx_tr" id="S4.T3.4.2.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.4.2.2.1.1.1.1" style="padding-left:3.2pt;padding-right:3.2pt;"><math alttext="N=10" class="ltx_Math" display="inline" id="S4.T3.4.2.2.1.1.1.1.m1.1"><semantics id="S4.T3.4.2.2.1.1.1.1.m1.1a"><mrow id="S4.T3.4.2.2.1.1.1.1.m1.1.1" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.4.2.2.1.1.1.1.m1.1.1.2" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.T3.4.2.2.1.1.1.1.m1.1.1.1" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.4.2.2.1.1.1.1.m1.1.1.3" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.3.cmml">10</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.4.2.2.1.1.1.1.m1.1b"><apply id="S4.T3.4.2.2.1.1.1.1.m1.1.1.cmml" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1"><eq id="S4.T3.4.2.2.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.4.2.2.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.T3.4.2.2.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.4.2.2.1.1.1.1.m1.1.1.3">10</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.4.2.2.1.1.1.1.m1.1c">N=10</annotation><annotation encoding="application/x-llamapun" id="S4.T3.4.2.2.1.1.1.1.m1.1d">italic_N = 10</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S4.T3.4.2.2.4"></span><span class="ltx_text" id="S4.T3.4.2.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.5.3.3" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.5.3.3.2"></span><span class="ltx_text" id="S4.T3.5.3.3.3" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T3.5.3.3.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.5.3.3.1.1">
<span class="ltx_tr" id="S4.T3.5.3.3.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.5.3.3.1.1.1.1" style="padding-left:3.2pt;padding-right:3.2pt;"><math alttext="N=20" class="ltx_Math" display="inline" id="S4.T3.5.3.3.1.1.1.1.m1.1"><semantics id="S4.T3.5.3.3.1.1.1.1.m1.1a"><mrow id="S4.T3.5.3.3.1.1.1.1.m1.1.1" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.5.3.3.1.1.1.1.m1.1.1.2" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.T3.5.3.3.1.1.1.1.m1.1.1.1" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.5.3.3.1.1.1.1.m1.1.1.3" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.3.cmml">20</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.5.3.3.1.1.1.1.m1.1b"><apply id="S4.T3.5.3.3.1.1.1.1.m1.1.1.cmml" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1"><eq id="S4.T3.5.3.3.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.5.3.3.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.T3.5.3.3.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.5.3.3.1.1.1.1.m1.1.1.3">20</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.5.3.3.1.1.1.1.m1.1c">N=20</annotation><annotation encoding="application/x-llamapun" id="S4.T3.5.3.3.1.1.1.1.m1.1d">italic_N = 20</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S4.T3.5.3.3.4"></span><span class="ltx_text" id="S4.T3.5.3.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T3.6.4.4" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.6.4.4.2"></span><span class="ltx_text" id="S4.T3.6.4.4.3" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T3.6.4.4.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T3.6.4.4.1.1">
<span class="ltx_tr" id="S4.T3.6.4.4.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T3.6.4.4.1.1.1.1" style="padding-left:3.2pt;padding-right:3.2pt;"><math alttext="N=30" class="ltx_Math" display="inline" id="S4.T3.6.4.4.1.1.1.1.m1.1"><semantics id="S4.T3.6.4.4.1.1.1.1.m1.1a"><mrow id="S4.T3.6.4.4.1.1.1.1.m1.1.1" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.cmml"><mi id="S4.T3.6.4.4.1.1.1.1.m1.1.1.2" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.2.cmml">N</mi><mo id="S4.T3.6.4.4.1.1.1.1.m1.1.1.1" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.1.cmml">=</mo><mn id="S4.T3.6.4.4.1.1.1.1.m1.1.1.3" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.3.cmml">30</mn></mrow><annotation-xml encoding="MathML-Content" id="S4.T3.6.4.4.1.1.1.1.m1.1b"><apply id="S4.T3.6.4.4.1.1.1.1.m1.1.1.cmml" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1"><eq id="S4.T3.6.4.4.1.1.1.1.m1.1.1.1.cmml" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.1"></eq><ci id="S4.T3.6.4.4.1.1.1.1.m1.1.1.2.cmml" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.2">𝑁</ci><cn id="S4.T3.6.4.4.1.1.1.1.m1.1.1.3.cmml" type="integer" xref="S4.T3.6.4.4.1.1.1.1.m1.1.1.3">30</cn></apply></annotation-xml><annotation encoding="application/x-tex" id="S4.T3.6.4.4.1.1.1.1.m1.1c">N=30</annotation><annotation encoding="application/x-llamapun" id="S4.T3.6.4.4.1.1.1.1.m1.1d">italic_N = 30</annotation></semantics></math></span></span>
</span></span><span class="ltx_text" id="S4.T3.6.4.4.4"></span><span class="ltx_text" id="S4.T3.6.4.4.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T3.7.5">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.2" rowspan="2" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.7.5.2.1" style="font-size:80%;">P2P-Zero</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.1" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.7.5.1.1" style="font-size:80%;">LPIPS (</span><math alttext="\times 10^{-3},\downarrow" class="ltx_math_unparsed" display="inline" id="S4.T3.7.5.1.m1.1"><semantics id="S4.T3.7.5.1.m1.1a"><mrow id="S4.T3.7.5.1.m1.1b"><mo id="S4.T3.7.5.1.m1.1.1" mathsize="80%" rspace="0.222em">×</mo><msup id="S4.T3.7.5.1.m1.1.2"><mn id="S4.T3.7.5.1.m1.1.2.2" mathsize="80%">10</mn><mrow id="S4.T3.7.5.1.m1.1.2.3"><mo id="S4.T3.7.5.1.m1.1.2.3a" mathsize="80%">−</mo><mn id="S4.T3.7.5.1.m1.1.2.3.2" mathsize="80%">3</mn></mrow></msup><mo id="S4.T3.7.5.1.m1.1.3" mathsize="80%">,</mo><mo id="S4.T3.7.5.1.m1.1.4" lspace="0em" mathsize="80%" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.7.5.1.m1.1c">\times 10^{-3},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.7.5.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT , ↓</annotation></semantics></math><span class="ltx_text" id="S4.T3.7.5.1.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.3" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.7.5.3.1" style="font-size:80%;">135.6</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.4" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.7.5.4.1" style="font-size:80%;">107.1</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.5" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.7.5.5.1" style="font-size:80%;">80.12</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.7.5.6" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.7.5.6.1" style="font-size:80%;">72.85</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.7">
<td class="ltx_td ltx_align_center" id="S4.T3.8.7.1" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.7.1.1" style="font-size:80%;">Target Concept</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.7.2" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.7.2.1" style="font-size:80%;">20.83</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.7.3" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.7.3.1" style="font-size:80%;">20.99</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.7.4" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.7.4.1" style="font-size:80%;">21.10</span></td>
<td class="ltx_td ltx_align_center" id="S4.T3.8.7.5" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.7.5.1" style="font-size:80%;">21.14</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.6">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T3.8.6.2" rowspan="2" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.6.2.1" style="font-size:80%;">Infedit (S)</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.6.1" style="padding-left:3.2pt;padding-right:3.2pt;">
<span class="ltx_text" id="S4.T3.8.6.1.1" style="font-size:80%;">LPIPS (</span><math alttext="\times 10^{-3},\downarrow" class="ltx_math_unparsed" display="inline" id="S4.T3.8.6.1.m1.1"><semantics id="S4.T3.8.6.1.m1.1a"><mrow id="S4.T3.8.6.1.m1.1b"><mo id="S4.T3.8.6.1.m1.1.1" mathsize="80%" rspace="0.222em">×</mo><msup id="S4.T3.8.6.1.m1.1.2"><mn id="S4.T3.8.6.1.m1.1.2.2" mathsize="80%">10</mn><mrow id="S4.T3.8.6.1.m1.1.2.3"><mo id="S4.T3.8.6.1.m1.1.2.3a" mathsize="80%">−</mo><mn id="S4.T3.8.6.1.m1.1.2.3.2" mathsize="80%">3</mn></mrow></msup><mo id="S4.T3.8.6.1.m1.1.3" mathsize="80%">,</mo><mo id="S4.T3.8.6.1.m1.1.4" lspace="0em" mathsize="80%" stretchy="false">↓</mo></mrow><annotation encoding="application/x-tex" id="S4.T3.8.6.1.m1.1c">\times 10^{-3},\downarrow</annotation><annotation encoding="application/x-llamapun" id="S4.T3.8.6.1.m1.1d">× 10 start_POSTSUPERSCRIPT - 3 end_POSTSUPERSCRIPT , ↓</annotation></semantics></math><span class="ltx_text" id="S4.T3.8.6.1.2" style="font-size:80%;">)</span>
</td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.6.3" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.6.3.1" style="font-size:80%;">56.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.6.4" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.6.4.1" style="font-size:80%;">55.87</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.6.5" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.6.5.1" style="font-size:80%;">53.96</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T3.8.6.6" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.6.6.1" style="font-size:80%;">53.11</span></td>
</tr>
<tr class="ltx_tr" id="S4.T3.8.8">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.1" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.8.1.1" style="font-size:80%;">Target Concept</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.2" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.8.2.1" style="font-size:80%;">22.05</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.3" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.8.3.1" style="font-size:80%;">22.09</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.4" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.8.4.1" style="font-size:80%;">22.38</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T3.8.8.5" style="padding-left:3.2pt;padding-right:3.2pt;"><span class="ltx_text" id="S4.T3.8.8.5.1" style="font-size:80%;">22.40</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents the quantitative results of different image editing backbones when integrated with Concept Lancet (CoLan).  It shows how the performance varies across different dictionary sizes (N), indicating the impact of the size and diversity of visual concepts on the editing effectiveness and consistency.  Metrics such as LPIPS (lower is better) and Target Concept (higher is better) are used to evaluate the quality of the edited image and how well it aligns with the target concept.
> <details>
> <summary>read the caption</summary>
> Table 3:  Average performance of backbones with CoLan for different dictionary sizes (N𝑁Nitalic_N).
> </details>

{{< table-caption >}}
<table class="ltx_tabular ltx_centering ltx_align_middle" id="S4.T4.1">
<tr class="ltx_tr" id="S4.T4.1.1">
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.2">
<span class="ltx_text" id="S4.T4.1.1.2.1"></span><span class="ltx_text" id="S4.T4.1.1.2.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T4.1.1.2.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.2.3.1">
<span class="ltx_tr" id="S4.T4.1.1.2.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.2.3.1.1.1">Concept</span></span>
<span class="ltx_tr" id="S4.T4.1.1.2.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.2.3.1.2.1">Direction</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.2.4"></span><span class="ltx_text" id="S4.T4.1.1.2.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.3">
<span class="ltx_text" id="S4.T4.1.1.3.1"></span><span class="ltx_text" id="S4.T4.1.1.3.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T4.1.1.3.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.3.3.1">
<span class="ltx_tr" id="S4.T4.1.1.3.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.3.3.1.1.1">Image</span></span>
<span class="ltx_tr" id="S4.T4.1.1.3.3.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.3.3.1.2.1">Type</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.3.4"></span><span class="ltx_text" id="S4.T4.1.1.3.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.4">
<span class="ltx_text" id="S4.T4.1.1.4.1"></span><span class="ltx_text" id="S4.T4.1.1.4.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T4.1.1.4.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.4.3.1">
<span class="ltx_tr" id="S4.T4.1.1.4.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.4.3.1.1.1">Source</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.4.4"></span><span class="ltx_text" id="S4.T4.1.1.4.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.5">
<span class="ltx_text" id="S4.T4.1.1.5.1"></span><span class="ltx_text" id="S4.T4.1.1.5.2" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T4.1.1.5.3" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.5.3.1">
<span class="ltx_tr" id="S4.T4.1.1.5.3.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.5.3.1.1.1">Edited</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.5.4"></span><span class="ltx_text" id="S4.T4.1.1.5.5" style="font-size:80%;"></span>
</td>
<td class="ltx_td ltx_align_center ltx_border_tt" id="S4.T4.1.1.1">
<span class="ltx_text" id="S4.T4.1.1.1.2"></span><span class="ltx_text" id="S4.T4.1.1.1.3" style="font-size:80%;"> </span><span class="ltx_text" id="S4.T4.1.1.1.1" style="font-size:80%;">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.1.1.1.1">
<span class="ltx_tr" id="S4.T4.1.1.1.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.1.1.2.1">Increase</span></span>
<span class="ltx_tr" id="S4.T4.1.1.1.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.1.1.1.1.1.1">(%, <math alttext="\uparrow" class="ltx_Math" display="inline" id="S4.T4.1.1.1.1.1.1.1.m1.1"><semantics id="S4.T4.1.1.1.1.1.1.1.m1.1a"><mo id="S4.T4.1.1.1.1.1.1.1.m1.1.1" stretchy="false" xref="S4.T4.1.1.1.1.1.1.1.m1.1.1.cmml">↑</mo><annotation-xml encoding="MathML-Content" id="S4.T4.1.1.1.1.1.1.1.m1.1b"><ci id="S4.T4.1.1.1.1.1.1.1.m1.1.1.cmml" xref="S4.T4.1.1.1.1.1.1.1.m1.1.1">↑</ci></annotation-xml><annotation encoding="application/x-tex" id="S4.T4.1.1.1.1.1.1.1.m1.1c">\uparrow</annotation><annotation encoding="application/x-llamapun" id="S4.T4.1.1.1.1.1.1.1.m1.1d">↑</annotation></semantics></math>)</span></span>
</span></span><span class="ltx_text" id="S4.T4.1.1.1.4"></span><span class="ltx_text" id="S4.T4.1.1.1.5" style="font-size:80%;"></span>
</td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.2">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.1" rowspan="4"><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.2.1.1" style="font-size:80%;">[watercolor]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.2"><span class="ltx_text" id="S4.T4.1.2.2.1" style="font-size:80%;">Artificial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.3"><span class="ltx_text" id="S4.T4.1.2.3.1" style="font-size:80%;">15.20</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.4"><span class="ltx_text" id="S4.T4.1.2.4.1" style="font-size:80%;">18.08</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.2.5"><span class="ltx_text" id="S4.T4.1.2.5.1" style="font-size:80%;">18.95</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.3">
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.1"><span class="ltx_text" id="S4.T4.1.3.1.1" style="font-size:80%;">Natural</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.2"><span class="ltx_text" id="S4.T4.1.3.2.1" style="font-size:80%;">12.37</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.3"><span class="ltx_text" id="S4.T4.1.3.3.1" style="font-size:80%;">18.31</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.3.4"><span class="ltx_text" id="S4.T4.1.3.4.1" style="font-size:80%;">48.02</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.4">
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.1"><span class="ltx_text" id="S4.T4.1.4.1.1" style="font-size:80%;">Indoor</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.2"><span class="ltx_text" id="S4.T4.1.4.2.1" style="font-size:80%;">12.94</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.3"><span class="ltx_text" id="S4.T4.1.4.3.1" style="font-size:80%;">16.69</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.4.4"><span class="ltx_text" id="S4.T4.1.4.4.1" style="font-size:80%;">28.98</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.5">
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.1"><span class="ltx_text" id="S4.T4.1.5.1.1" style="font-size:80%;">Outdoor</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.2"><span class="ltx_text" id="S4.T4.1.5.2.1" style="font-size:80%;">14.19</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.3"><span class="ltx_text" id="S4.T4.1.5.3.1" style="font-size:80%;">19.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.5.4"><span class="ltx_text" id="S4.T4.1.5.4.1" style="font-size:80%;">34.46</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.6">
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.1" rowspan="4"><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.6.1.1" style="font-size:80%;">[dog]</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.2"><span class="ltx_text" id="S4.T4.1.6.2.1" style="font-size:80%;">Artificial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.3"><span class="ltx_text" id="S4.T4.1.6.3.1" style="font-size:80%;">14.18</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.4"><span class="ltx_text" id="S4.T4.1.6.4.1" style="font-size:80%;">19.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.6.5"><span class="ltx_text" id="S4.T4.1.6.5.1" style="font-size:80%;">35.97</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.7">
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.1"><span class="ltx_text" id="S4.T4.1.7.1.1" style="font-size:80%;">Natural</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.2"><span class="ltx_text" id="S4.T4.1.7.2.1" style="font-size:80%;">13.28</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.3"><span class="ltx_text" id="S4.T4.1.7.3.1" style="font-size:80%;">18.65</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.7.4"><span class="ltx_text" id="S4.T4.1.7.4.1" style="font-size:80%;">40.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.8">
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.1"><span class="ltx_text" id="S4.T4.1.8.1.1" style="font-size:80%;">Indoor</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.2"><span class="ltx_text" id="S4.T4.1.8.2.1" style="font-size:80%;">12.46</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.3"><span class="ltx_text" id="S4.T4.1.8.3.1" style="font-size:80%;">18.29</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.8.4"><span class="ltx_text" id="S4.T4.1.8.4.1" style="font-size:80%;">46.81</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.9">
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.1"><span class="ltx_text" id="S4.T4.1.9.1.1" style="font-size:80%;">Outdoor</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.2"><span class="ltx_text" id="S4.T4.1.9.2.1" style="font-size:80%;">13.08</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.3"><span class="ltx_text" id="S4.T4.1.9.3.1" style="font-size:80%;">18.35</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.9.4"><span class="ltx_text" id="S4.T4.1.9.4.1" style="font-size:80%;">40.29</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.10">
<td class="ltx_td ltx_align_center ltx_border_bb ltx_border_t" id="S4.T4.1.10.1" rowspan="4"><span class="ltx_text" id="S4.T4.1.10.1.1" style="font-size:80%;"><span class="ltx_text" id="S4.T4.1.10.1.1.1"></span><span class="ltx_text ltx_font_typewriter" id="S4.T4.1.10.1.1.2"> <span class="ltx_text" id="S4.T4.1.10.1.1.2.1">
<span class="ltx_tabular ltx_align_middle" id="S4.T4.1.10.1.1.2.1.1">
<span class="ltx_tr" id="S4.T4.1.10.1.1.2.1.1.1">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.10.1.1.2.1.1.1.1">[wearing</span></span>
<span class="ltx_tr" id="S4.T4.1.10.1.1.2.1.1.2">
<span class="ltx_td ltx_nopad_r ltx_align_center" id="S4.T4.1.10.1.1.2.1.1.2.1">hat]</span></span>
</span></span> <span class="ltx_text" id="S4.T4.1.10.1.1.2.2"></span></span></span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.2"><span class="ltx_text" id="S4.T4.1.10.2.1" style="font-size:80%;">Artificial</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.3"><span class="ltx_text" id="S4.T4.1.10.3.1" style="font-size:80%;">12.58</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.4"><span class="ltx_text" id="S4.T4.1.10.4.1" style="font-size:80%;">14.77</span></td>
<td class="ltx_td ltx_align_center ltx_border_t" id="S4.T4.1.10.5"><span class="ltx_text" id="S4.T4.1.10.5.1" style="font-size:80%;">17.41</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.11">
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.1"><span class="ltx_text" id="S4.T4.1.11.1.1" style="font-size:80%;">Natural</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.2"><span class="ltx_text" id="S4.T4.1.11.2.1" style="font-size:80%;">11.73</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.3"><span class="ltx_text" id="S4.T4.1.11.3.1" style="font-size:80%;">14.02</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.11.4"><span class="ltx_text" id="S4.T4.1.11.4.1" style="font-size:80%;">19.49</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.12">
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.1"><span class="ltx_text" id="S4.T4.1.12.1.1" style="font-size:80%;">Indoor</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.2"><span class="ltx_text" id="S4.T4.1.12.2.1" style="font-size:80%;">10.25</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.3"><span class="ltx_text" id="S4.T4.1.12.3.1" style="font-size:80%;">12.18</span></td>
<td class="ltx_td ltx_align_center" id="S4.T4.1.12.4"><span class="ltx_text" id="S4.T4.1.12.4.1" style="font-size:80%;">18.83</span></td>
</tr>
<tr class="ltx_tr" id="S4.T4.1.13">
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.1"><span class="ltx_text" id="S4.T4.1.13.1.1" style="font-size:80%;">Outdoor</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.2"><span class="ltx_text" id="S4.T4.1.13.2.1" style="font-size:80%;">11.28</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.3"><span class="ltx_text" id="S4.T4.1.13.3.1" style="font-size:80%;">13.34</span></td>
<td class="ltx_td ltx_align_center ltx_border_bb" id="S4.T4.1.13.4"><span class="ltx_text" id="S4.T4.1.13.4.1" style="font-size:80%;">18.28</span></td>
</tr>
</table>{{< /table-caption >}}
> 🔼 This table presents a quantitative evaluation of the grounding of concept vectors generated from the CoLan-150K dataset.  It demonstrates how well the extracted concept vectors align with their corresponding visual semantics in edited images. For each of three example concepts—'watercolor', 'dog', and 'wearing hat'—the table shows the average increase in CLIP similarity between the original source image and the edited image after applying the concept vector, broken down by image type (artificial, natural, indoor, outdoor).  Higher increases in CLIP similarity indicate stronger grounding, suggesting the concept vector effectively guides the editing process towards the intended visual concept.
> <details>
> <summary>read the caption</summary>
> Table 4:  Grounding of sampled concept directions in CoLan-150K.
> </details>

</details>




### Full paper

{{< gallery >}}
<img src="https://ai-paper-reviewer.com/2504.02828/1.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/2.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/3.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/4.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/5.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/6.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/7.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/8.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/9.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/10.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/11.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/12.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/13.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/14.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/15.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/16.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/17.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/18.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
<img src="https://ai-paper-reviewer.com/2504.02828/19.png" class="grid-w50 md:grid-w33 xl:grid-w25" />
{{< /gallery >}}